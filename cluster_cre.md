## need to change project name
## need to change service accountname according to your project
~~
gcloud config set accessibility/screen_reader false
~~

gcloud compute instances create couchbase-1 --project=rndproject3 --zone=europe-north1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=225189500300-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server --create-disk=auto-delete=yes,boot=yes,device-name=couchbase-1,image=projects/centos-cloud/global/images/centos-7-v20230711,mode=rw,size=25,type=projects/global-student-389911/zones/europe-north1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any

gcloud compute instances create couchbase-2 --project=rndproject3 --zone=europe-north1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=225189500300-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server --create-disk=auto-delete=yes,boot=yes,device-name=couchbase-2,image=projects/centos-cloud/global/images/centos-7-v20230711,mode=rw,size=25,type=projects/global-student-389911/zones/europe-north1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any

gcloud compute instances create couchbase-3 --project=rndproject3 --zone=europe-north1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=225189500300-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server --create-disk=auto-delete=yes,boot=yes,device-name=couchbase-3,image=projects/centos-cloud/global/images/centos-7-v20230711,mode=rw,size=25,type=projects/global-student-389911/zones/europe-north1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any

## to verify
~~~
tiru_sept07@cloudshell:~/couchbase (rndproject3)$ gcloud compute instances list
NAME         ZONE             MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
couchbase-1  europe-north1-a  e2-medium                  10.166.0.5   34.88.80.194    RUNNING
couchbase-2  europe-north1-a  e2-medium                  10.166.0.6   35.228.217.180  RUNNING
couchbase-3  europe-north1-a  e2-medium                  10.166.0.7   34.88.131.61    RUNNING
~~~