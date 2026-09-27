dockerhub command if arm used
docker buildx build --platform linux/arm64 -t bhawanidocker/telemetry-service:1.0.0 --push .

Create Namespace as default.
kubectl config set-context --current --namespace=axion-app

For view/check
kubectl config view --minify --output 'jsonpath={..namespace}'

cluster check if Error: ErrImagePull then run command

RUN kubectl get nodes -o wide
output:
NAME                                STATUS   ROLES    AGE   VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION     CONTAINER-RUNTIME
aks-agentpool-41056771-vmss000000   Ready    <none>   44m   v1.35.7   10.224.0.4    <none>        Ubuntu 24.04.4 LTS   6.8.0-1064-azure   containerd://2.3.3-2
RUN kubectl get nodes -o custom-columns=NAME:.metadata.name,ARCH:.status.nodeInfo.architecture
output:
NAME                                ARCH
aks-agentpool-41056771-vmss000000   amd64

Step for deploy Application

1. Firt setup database pgadmin & postgress DB

2. Login pgadmin & add database

3. run database query in the database schema table

4. ingestion:- Do the changes according you taken name in congig.py
# Example: postgresql://postgres:postgres@localhost:5432/axiondb

5. Build docker image & run pod

6. Data-simulator:- Do the changes according you taken name in simulator.py
# Example: API_URL = os.getenv("API_URL", "http://ingestion-service.axion-app.svc.cluster.local:80/api/v1/telemetry/ingest")

7. Telemetry:- Do the changes according you taken name in congig.py
 # Example: Format: postgresql://<user>:<password>@<host>:<port>/<database>
    DATABASE_URL: str = os.getenv(
        "DATABASE_URL",
        "postgresql://admin:admin123@axion-postgres:5432/axiondb",

8. UI:- Do the changes according you taken API name (const API_BASE = 'http://telemetry.bhawani.shop';)in 1. src-app.tx 2. dashboardView.tsx 3. HistoricalTrends.tsx file  

9. for login UI go to src-components-Login.tsx
chage it according to you 
# Example: email === 'bhawani@bid.com' && password === 'Ranchi@123')