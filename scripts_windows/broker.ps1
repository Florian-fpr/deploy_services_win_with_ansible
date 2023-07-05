New-RDSessionDeployment -ConnectionBroker srv-test-ad-01.favb.local -SessionHost srv-test-ad-01.favb.local -WebAccessServer srv-test-ad-01.favb.local
New-RDSessionCollection -CollectionName "RdsApps" -CollectionDescription "Collection RDS pour accéder aux applications" -ConnectionBroker srv-test-ad-01.favb.local -SessionHost srv-test-ad-01.favb.local
Set-RDSessionCollectionConfiguration -CollectionName "RdsApps" -TemporaryFoldersPerSession $false -TemporaryFoldersDeletedOnExit $false
Set-RDSessionCollectionConfiguration -CollectionName "RdsApps" -DisconnectedSessionLimitMin 360 -IdleSessionLimitMin 120
New-RDRemoteApp -Alias Wordpad -DisplayName WordPad -FilePath "C:\Program Files\Windows NT\Accessoires\wordpad.exe" -ShowInWebAccess 1 -CollectionName "RdsApps" -ConnectionBroker srv-test-ad-01.favb.local
New-RDRemoteApp -Alias WinSCP -DisplayName WinSCP -FilePath "C:\Program Files (x86)\WinSCP\WinSCP.exe" -ShowInWebAccess 1 -CollectionName "RdsApps" -ConnectionBroker srv-test-ad-01.favb.local
Set-RDCertificate -Role RDS-RD-SERVER -ImportPath "C:\Users\Administrateur\Documents\rds_certificat.pfx" -Password (ConvertTo-SecureString -String "test@123" -AsPlainText -Force)
New-RDCertificate -Role RDWebAccess -DnsName "srv-test-ad-01.favb.local" -Password (ConvertTo-SecureString -String "test@123" -AsPlainText -Force) -ExportPath "C:\Users\Administrateur\Documents\rds_cert.pfx" -ConnectionBroker srv-test-ad-01.favb.local -Force
