sed -i 's/TESTING = "1"/TESTING = "0"/g' /etc/csf/csf.conf
sed -i 's/TCP_IN = "20,21,22,25,53,80,110,143,443,465,587,993,995"/TCP_IN = ""/g' /etc/csf/csf.conf
sed -i 's/TCP_OUT = "20,21,22,25,53,80,110,113,443,587,993,995"/TCP_OUT = "0:65535"/g' /etc/csf/csf.conf
sed -i 's/UDP_IN = "20,21,53"/UDP_IN = ""/g' /etc/csf/csf.conf
sed -i 's/UDP_OUT = "20,21,53,113,123"/UDP_OUT = "0:65535"/g' /etc/csf/csf.conf
sed -i 's/TCP6_IN = "20,21,22,25,53,80,110,143,443,465,587,993,995"/TCP6_IN = ""/g' /etc/csf/csf.conf
sed -i 's/TCP6_OUT = "20,21,22,25,53,80,110,113,443,587,993,995"/TCP6_OUT = "0:65535"/g' /etc/csf/csf.conf
sed -i 's/UDP6_IN = "20,21,53"/UDP6_IN = ""/g' /etc/csf/csf.conf
sed -i 's/UDP6_OUT = "20,21,53,113,123"/UDP6_OUT = "0:65535"/g' /etc/csf/csf.conf
