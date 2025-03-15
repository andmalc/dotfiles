Import command
gpg --import-options restore --import andmalc-gpg-backup.gpg

Backup command
gpg -o andmalc-gpg-backup.gpg --export-options backup --export-secret-keys andmalc@gmail.com

