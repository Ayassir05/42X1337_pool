touch id_rsa_pub
"For generate ssh key we use the next command"
ssh-keygen

"After that , we take a copy from ssh public key and save it on id_rsa_pub"
Difference Between Public Key and Private Key:
* Public Key:

'+++ Shared openly with others.
+++ Used to encrypt data or verify a signature.
+++ In SSH, it is placed on the server you want to access.'
* Private Key:

'+++ Kept secret and stored securely.
+++ Used to decrypt data or sign data.
+++ In SSH, it is kept on your local machine & used for authentication.'

Usage:
* Public Key:
'+++ Placed on the server you want to access (in ~/.ssh/authorized_keys).
+++ Others can use it to encrypt messages that only your private key can decrypt.'

* Private Key:
'+++ Stored securely on your local machine.
+++ Used to decrypt or authenticate you when connecting to the server.'

SSH (Secure Shell):
'+++ A protocol for securely connecting to remote systems over a network.
+++ It encrypts communication between the client and server, ensuring privacy and security.
+++ Used commonly for remote login, file transfer, and executing commands on a remote machine.'

SSH Key:
'+++ A pair of public and private keys used for passwordless authentication in SSH connections.
+++ Replaces traditional password authentication for more secure, encrypted login.'

Summary:
'+++ Public key is for sharing, placed on servers.
+++ Private key is secret, kept on your machine.
+++ SSH is a secure protocol for remote access.
+++ SSH keys provide secure, passwordless authentication for SSH sessions.
