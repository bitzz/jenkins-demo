openssl s_client -connect 35.158.94.10:443 -showcerts \
</dev/null 2>/dev/null | openssl x509 -outform PEM | sudo tee \
/usr/local/share/ca-certificates/35.158.94.10.crt
sudo update-ca-certificates
/sbin/tini -- /usr/local/bin/jenkins.sh
