

````bash

oc login --token=sha256~zxwGF1b0XEPf6R6QS5ODeiSD67abErDsas0s63JbC4o --server=https://api.1e35f5fc927.ocp.techzone.ibm.com:6443
mkdir /root/mas_configs
kubectl get secret ibm-sls-sls-entitlement -n ibm-sls -o json | jq -r '.data.entitlement' | base64 --decode > /root/mas_configs/entitlement.lic

export IBM_ENTITLEMENT_KEY=$(kubectl get secret ibm-entitlement -n mas-inst1-core -o json | jq -r '.data[".dockerconfigjson"]' | base64 --decode | jq -r '.auths["cp.icr.io/cp"].password')
export DB2_INSTANCE_NAME=db2u-iot
export MAS_INSTANCE_ID=inst1
export MAS_CONFIG_DIR=/root/mas_configs

ansible-playbook ibm.mas_devops.oneclick_add_iot 
ansible-playbook ibm.mas_devops.oneclick_add_monitor

````