echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo 0 > /proc/sys/vm/swappiness
curl -O https://packages.couchbase.com/releases/couchbase-release/couchbase-release-1.0-x86_64.rpm
sudo rpm -i ./couchbase-release-1.0-x86_64.rpm
sudo yum -y install couchbase-server-6.5.2-6634
systemctl enable couchbase-server
