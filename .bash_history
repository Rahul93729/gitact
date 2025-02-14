clear
gcloud config set project kubernetesproj-449911
gcloud container clusters create-auto hello-cluster     --location=us-central1
gcloud container clusters get-credentials hello-cluster     --location us-central1
kubectl create deployment hello-server     --image=us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0
kubectl expose deployment hello-server     --type LoadBalancer     --port 80     --target-port 8080
kubectl get pods
kubectl get service hello-server
kubectl delete service hello-server
gcloud container clusters delete hello-cluster     --location us-central1
clear
/bin/python /home/rahul_chalwadi03/backend/app.py
clear
docker network create flask_network
docker build -t nginx-frontend ./frontend
docker build -t flask-backend ./backend
docker image
docker images ls
docker images
gcloud auth configure-docker us-central1-docker.pkg.dev
gcloud services enable artifactregistry.googleapis.com
gcloud config set project VALUE
clear
gcloud services enable artifactregistry.googleapis.com
gcloud config set project kubernetesproj-449911
gcloud config get-value project
gcloud services enable artifactregistry.googleapis.com
gcloud artifacts repositories create my-repo     --repository-format=docker     --location=us-central1     --description="Docker repository for my app"
gcloud auth configure-docker us-central1-docker.pkg.dev
docker tag flask-backend:latest us-central1-docker.pkg.dev/PROJECT_ID/my-repo/flask-backend:latest
docker tag flask-backend:latest us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/flask-backend:latest
docker tag nginx-frontend:latest us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
docker push us-central1-docker.pkg.dev/PROJECT_ID/my-repo/flask-backend:latest
docker push us-central1-docker.pkg.dev/PROJECT_ID/my-repo/nginx-frontend:latest
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/flask-backend:latest
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl createns flask-app 
kubectl create ns flask-app 
gcloud container clusters list
kubectl create ns flask-app 
gcloud container clusters get-credentials my-cluster --region us-central1
gcloud container clusters list
kubectl create ns flask-app 
cd backend
kubectl apply -f backend-deployment.yaml -n flask-app
cd ..
cd frontend
kubectl apply -f frontend-deployment.yaml -n flask-app
kubectl get pods -n flask-app
kubectl describe pod backend-deployment-c88d98474-kx4j4 -n flask-app
kubectl get nodes
kubectl get pods -n flask-app
kubectl describe pod backend-deployment-c88d98474-kx4j4 -n flask-app
kubectl apply -f backend-deployment.yaml -n flask-app
kubectl apply -f frontend-deployment.yaml -n flask-app
cd ..
cd backend
kubectl apply -f backend-deployment.yaml -n flask-app
kubectl get pods -n flask-app
kubectl apply -f backend-service.yaml -n flask-app
kubectl apply -f backend-deployment.yaml -n flask-app
cd ..
cd frontend
kubectl apply -f fronteend-eployment.yaml -n flask-app
kubectl apply -f fronteend-deployment.yaml -n flask-app
kubectl apply -f frontend-deployment.yaml -n flask-app
kubectl get services -n flask-app
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl apply -f frontend-deployment.yaml -n flask-app
kubectl get service frontend-service -n flask-app
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl rollout restart deployment frontend-deployment -n flask-app
kubectl get pods
kubectl get pods -n flask-app
kubectl get service frontend-service -n flask-app
kubectl get services -n flask-app
kubectl get pods -n flask-app
kubectl exec -it <backend-pod-name> -n flask-app -- curl http://localhost:5000/greet?name=rahul
kubectl exec -it backend-deployment-85f6bd4c8c-9cb6r -n flask-app -- curl http://localhost:5000/greet?name=rahul
kubectl exec -it backend-deployment-85f6bd4c8c-9cb6r -n flask-app -- curl http://backend-service:5000/greet?name=rahul
curl http://35.184.236.69:5000/greet?name=rahul
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl rollout restart deployment frontend-deployment -n flask-app
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl rollout restart deployment frontend-deployment -n flask-app
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl rollout restart deployment frontend-deployment -n flask-app
kubectl exec -it $(kubectl get pod -n flask-app -l app=frontend -o jsonpath="{.items[0].metadata.name}") -n flask-app -- cat /usr/share/nginx/html/index.html
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl rollout restart deployment frontend-deployment -n flask-app
kubectl exec -it $(kubectl get pod -n flask-app -l app=frontend -o jsonpath="{.items[0].metadata.name}") -n flask-app -- cat /usr/share/nginx/html/index.html
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl edit deployment frontend-deployment -n flask-app
kubectl rollout restart deployment frontend-deployment -n flask-app
kubectl exec -it $(kubectl get pod -n flask-app -l app=frontend -o jsonpath="{.items[0].metadata.name}") -n flask-app -- cat /usr/share/nginx/html/index.html
kubectl get pods -n flask-app
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest .
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/nginx-frontend:latest
kubectl rollout restart deployment frontend-deployment -n flask-app
kubectl get pods -n flask-app
kubectl exec -it $(kubectl get pod -n flask-app -l app=frontend -o jsonpath="{.items[0].metadata.name}") -n flask-app -- cat /usr/share/nginx/html/index.html
docker build -t frontend:latest .
docker images
docker tag frontend:latest us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/frontend:latest
docker push us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/frontend:latest
kubectl apply -f frontend-deployment.yaml
kubectl get pods -n flask-app # Replace with your namespace
kubectl get services -n flask-app # Replace with your namespace
kubectl get services -n flask-app
clear
gcloud services enable artifactregistry.googleapis.com
gcloud auth configure-docker us-central1-docker.pkg.dev
docker build -t us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/mrf .
clear
docker images
docker rm all
docker rm -f $(docker ps -aq)
docker ps -a
docker images
docker rmi -f $(docker images -aq)
docker images
clear
docker ps
docker images
clear
gcloud auth login
gcloud config set project final-450312
gcloud auth configure-docker us-central1-docker.pkg.dev
gcloud services enable artifactregistry.googleapis.com     container.googleapis.com     cloudbuild.googleapis.com
docker build -t us-central1-docker.pkg.dev/final-450312/my-repo/frontend1:v1 ./frontend 
docker push us-central1-docker.pkg.dev/final-450312/my-repo/frontend1:v1 
docker build -t us-central1-docker.pkg.dev/final-450312/my-repo/backend1:v1 ./backend 
docker push us-central1-docker.pkg.dev/final-450312/my-repo/backend1:v1 
gcloud container clusters get-credentials my-cluster --location us-central1
gcloud artifacts repositories list --location=us-central1
gcloud artifacts repositories create my-repo     --location=us-central1     --repository-format=docker
gcloud artifacts repositories list --location=us-central1
gcloud auth configure-docker us-central1-docker.pkg.dev
docker push us-central1-docker.pkg.dev/final-450312/my-repo/backend1:v1
docker push us-central1-docker.pkg.dev/final-450312/my-repo/frontend1:v1 
cd frontend
kubectl apply -f frontend-deployment.yaml
cd ..
cd backend
kubectl apply -f backend-deployment.yaml
kubectl get pods
kubectl get services
kubectl describe pod backend-deployment-68d6fcf76f-l2hgf
clear
docker build -t us-central1-docker.pkg.dev/final-450312/my-repo/frontend:v1 ./frontend
docker push us-central1-docker.pkg.dev/final-450312/my-repo/frontend:v1
docker build -t us-central1-docker.pkg.dev/final-450312/my-repo/backend:v1 ./backend
docker push us-central1-docker.pkg.dev/final-450312/my-repo/backend:v1
gcloud container clusters get-credentials my-cluster --location us-central1
gcloud container clusters create my-cluster     --location us-central1     --num-nodes 2
gcloud container clusters create my-cluster     --location us-central1     --num-nodes 2     --disk-type pd-standard
gcloud compute regions list
gcloud compute project-info describe --flatten="quotas[]"
gcloud container clusters create my-cluster     --location us-east1     --num-nodes 2
gcloud container clusters create my-cluster     --location us-west1     --num-nodes 2
[200~gcloud container clusters get-credentials my-cluster --location us-central1
gcloud container clusters get-credentials my-cluster --location us-central1
gcloud container clusters list --location us-central1
gcloud container clusters describe my-cluster --location us-central1
gcloud compute addresses list --filter="region:(us-central1)"
gcloud compute addresses list --filter="region:(us-central1)" --format="value(name)" | xargs -I {} gcloud compute addresses delete {} --region=us-central1 --quiet
gcloud compute instances list --filter="zone:(us-central1-*)"
gcloud compute instances list --filter="zone:(us-central1-*)" --format="value(name,zone)" | awk '{print "gcloud compute instances delete "$1" --zone="$2" --quiet"}' | bash
gcloud compute forwarding-rules list --filter="region:(us-central1)"
gcloud compute target-pools list --filter="region:(us-central1)"
gcloud compute project-info describe --flatten="quotas[]"
gcloud container clusters create my-cluster     --location us-central1     --num-nodes 2
gcloud container clusters get-credentials my-cluster --location us-central1
gcloud container clusters list --location us-central1
gcloud container clusters describe my-cluster --location us-central1
kubectl get pods
kubectl get services
kubectl get pods
gcloud services enable cloudbuild.googleapis.com containerregistry.googleapis.com
gcloud config set project kubernetesproj-449911
clear
gcloud services enable cloudbuild.googleapis.com containerregistry.googleapis.com
gcloud auth configure-docker
gcloud builds submit --tag gcr.io/kubernetesproj-449911/frontend-image ./frontend
gcloud builds submit --tag gcr.io/kubernetesproj-449911/backend-image ./backend
gcloud builds submit --tag us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/frontend-image ./frontend
gcloud builds submit --tag us-central1-docker.pkg.dev/kubernetesproj-449911/my-repo/backend-image ./backend
docker run -d -p 3000:80 gcr.io/kubernetesproj-449911/frontend-image
docker run -d -p 5000:5000 gcr.io/kubernetesproj-449911/backend-image
helm version
helm create my-webapp
gcloud services enable container.googleapis.com cloudbuild.googleapis.com artifactregistry.googleapis.com
gcloud container clusters create my-cluster --zone us-central1-a --num-nodes=2
gcloud container clusters get-credentials my-cluster --zone us-central1-a
rm -rf ~/*
ls
clear
mkdir my-proj
cd my-proj
clear
cloudshell edit .
git init
git clone https://github.com/Rahul93729/Devops_assignment.git
clear
git clone https://github.com/Rahul93729/Devops_assignment.git
clear
git clone https://github.com/Rahul93729/Devops_assignment.git
cd Devops_assignment
clear
ls
git clone https://github.com/Rahul93729/Devops_assignment.git
clear
ls
git clone https://github.com/Rahul93729/Devops_assignment.git
clear
ls
mkdir my-app && cd my-app
ls
tree
clear
tree
clear
git clone https://github.com/Rahul93729/yodev1.git
git clone https://github.com/Rahul93729/dev1.git
ls
mv app.py cloudbuild.yaml deployment.yaml Dockerfile service.yaml dev1/
cd dev1
git add .
git commit -m "Initial commit with Cloud Build pipeline"
git push origin main
git config --global user.name "Rahul93729"
git config --global user.email "rahul.chalwadi@spit.ac.in"
git add .
git commit -m "Initial commit with Cloud Build pipeline"
git push origin main
gcloud container clusters get-credentials devcluster --zone us-central1 --project devops-assignment-450605
kubectl apply -f deployment.yaml
kubectl get nodes
gcloud container clusters get-credentials devcluster --region us-central1 --project devops-assignment-450605
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
git add .
git commit -m "Add Cloud Build pipeline"
git push origin main
kubectl get pods
gcloud container images list
gcloud services enable containerregistry.googleapis.com
gcloud container images list
gcloud services enable artifactregistry.googleapis.com
gcloud artifacts repositories list --location=us-central1
gcloud artifacts repositories create devrepo     --repository-format=docker     --location=us-central1     --description="My Docker repository"
gcloud artifacts repositories list --location=us-central1
gcloud auth configure-docker us-central1-docker.pkg.dev
docker build -t us-central1-docker.pkg.dev/devops-assignment-450605/my-repo/my-app:latest .
docker push us-central1-docker.pkg.dev/devops-assignment-450605/my-repo/my-app:latest
docker build -t us-central1-docker.pkg.dev/devops-assignment-450605/devrepo/my-app:latest .
docker push us-central1-docker.pkg.dev/devops-assignment-450605/devrepo/my-app:latest
kubectl apply -f deployment.yaml
kubectl rollout restart deployment my-app-deployment
kubectl get pods
kubectl get svc
kubectl get svc my-app-service
git add app.py deployment.yaml
git commit -m "Updated greeting message in app.py"
git push origin main
kubectl rollout restart deployment my-app-deployment
kubectl get pods
kubectl get svc
docker build -t us-central1-docker.pkg.dev/devops-assignment-450605/my-repo/my-app:latest .
docker build -t us-central1-docker.pkg.dev/devops-assignment-450605/devrepo/my-app:latest .
docker push us-central1-docker.pkg.dev/devops-assignment-450605/devrepo/my-app:latest
kubectl rollout restart deployment my-app-deployment
kubectl get pods
kubectl get svc
gcloud services enable container.googleapis.com     containerregistry.googleapis.com     cloudbuild.googleapis.com     artifactregistry.googleapis.com
gcloud container clusters get-credentials devcluster --zone us-central1
kubectl get pods
kubectl get svc
kubectl get svc my-app-service
git add app.py
git commit -m "Updated greeting message"
git push origin main
kubectl rollout restart deployment my-app-deployment
docker build -t us-central1-docker.pkg.dev/devops-assignment-450605/devrepo/my-app:latest .
docker push us-central1-docker.pkg.dev/devops-assignment-450605/devrepo/my-app:latest 
kubectl rollout restart deployment my-app-deployment
kubectl get pods
kubectl get svc
kubectl get pods
kubectl get svc
gcloud builds list
gcloud builds log c70bf7c5-4dfe-4462-b28e-36ce877371e8
gcloud builds update-settings --logs-bucket=gs://my-cloud-build-logs/
Replace my-cloud-build-logs with a unique bucket name.
gcloud storage buckets list
gcloud storage buckets create gs://devops-build-logs-450605 --location=US
gcloud storage buckets list
gcloud builds update-settings --logs-bucket=gs://devops-build-logs-450605
gcloud builds triggers update devtrigger --region=global --build-config=cloudbuild.yaml --substitutions=_LOGS_BUCKET=gs://devops-build-logs-450605
gcloud builds triggers list --region=global
gcloud builds triggers update devtrigger --region=global --build-config=cloudbuild.yaml --substitutions=_LOGS_BUCKET=gs://devops-build-logs-450605 
gcloud builds triggers update 5158379e-1a13-4f7b-ab9a-443920834961   --region=global   --build-config=cloudbuild.yaml   --substitutions=_LOGS_BUCKET=gs://devops-build-logs-450605
gcloud builds triggers delete 5158379e-1a13-4f7b-ab9a-443920834961 --region=global
gcloud builds triggers create github   --name=devtrigger   --region=global   --repo-owner=Rahul93729   --repo-name=dev1   --branch-pattern="^main$"   --build-config=cloudbuild.yaml   --substitutions=_LOGS_BUCKET=gs://devops-build-logs-450605   --service-account=897191159826-compute@developer.gserviceaccount.com
gcloud builds triggers create github
--name=devtrigger
--region=global
--repo-owner=Rahul93729
--repo-name=dev1
--branch-pattern="^main$"
--substitutions=_LOGS_BUCKET=gs://devops-build-logs-450605
--service-account=897191159826-compute@developer.gserviceaccount.com
--project=devops-assignment-450605
gcloud builds triggers create github   --name=devtrigger   --region=global   --repo-owner=Rahul93729   --repo-name=dev1   --substitutions=_LOGS_BUCKET=gs://devops-build-logs-450605   --service-account=897191159826-compute@developer.gserviceaccount.com   --project=devops-assignment-450605
clear
ls
git clone https://github.com/Rahul93729/github-actions-poc.git
cd github-actions-poc
mkdir -p .github/workflows
touch .github/workflows/ci-workflow.yml
nano .github/workflows/ci-workflow.yml
git add .
git commit -m "Add CI workflow"
git push origin main
gcloud services enable run.googleapis.com   artifactregistry.googleapis.com   cloudbuild.googleapis.com
gcloud iam service-accounts create github-actions   --display-name "GitHub Actions Service Account"
gcloud projects add-iam-policy-binding devops-assignment-450605  --member="serviceAccount:github-actions@devops-assignment-450605.iam.gserviceaccount.com"   --role="roles/run.admin"
gcloud projects add-iam-policy-binding devops-assignment-450605  --member="serviceAccount:github-actions@devops-assignment-450605.iam.gserviceaccount.com"   --role="roles/storage.admin"
gcloud projects add-iam-policy-binding devops-assignment-450605  --member="serviceAccount:github-actions@devops-assignment-450605.iam.gserviceaccount.com"   --role="roles/iam.serviceAccountUser"
gcloud iam service-accounts keys create key.json   --iam-account=github-actions@PROJECT_ID.iam.gserviceaccount.com
gcloud iam service-accounts keys create key.json   --iam-account=github-actions@devops-assignment-450605.iam.gserviceaccount.com
cat key.json
mkdir cloud-run-cicd
cd cloud-run-cicd
npm init -y
npm install express
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/Rahul93729/cloud-run-cicd.git 
git push -u origin main
git branch -M main
git remote add origin https://github.com/Rahul93729/github-actions-poc.git 
git push -u origin main
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/Rahul93729/github-actions-poc.git 
git push -u origin main
git remote remove origin
git remote add origin https://github.com/Rahul93729/github-actions-poc.git
git push -u origin main
git pull --rebase origin main
git add .
git commit -m "Resolved merge conflicts"
git push -u origin main
cd ..
tree
ls
cd cloud-run-cicd/
ls
cd ..
mkdir -p .github/workflows
cd .github/workflows
touch ci-cd.yml
nano ci-cd.yml 
git add .
git commit -m "Add CI/CD pipeline"
git push origin main
git pull --rebase origin main
git add .
git commit -m "Resolved merge conflicts"
git push origin main
git add package.json
cd
cd github-actions-poc/
cd cloud-run-cicd/
ls
git add package.json
git commit -m "Added test script to fix CI issue"
git push origin main
git pull --rebase origin main
git add .
git commit -m "Resolved merge conflicts"
git push origin main
git add package.json
git commit -m "Fix CI by adding a test script"
git push origin main
gcloud projects add-iam-policy-binding devops-assignment-450605  --member="serviceAccount:github-actions@devops-assignment-450605.iam.gserviceaccount.com"   --role="roles/artifactregistry.writer"
gcloud projects add-iam-policy-binding devops-assignment-450605  --member="serviceAccount:github-actions@devops-assignment-450605.iam.gserviceaccount.com"   --role="roles/run.admin"
gcloud projects add-iam-policy-binding devops-assignment-450605  --member="serviceAccount:github-actions@devops-assignment-450605.iam.gserviceaccount.com"   --role="roles/storage.admin"
cat key.json
cd ..
cat key.json
ls
ls -a
gcloud artifacts repositories list --location=us-central1
gcloud projects add-iam-policy-binding ${{ secrets.GCP_PROJECT_ID }}   --member="serviceAccount:github-actions@${{ secrets.GCP_PROJECT_ID }}.iam.gserviceaccount.com"   --role="roles/artifactregistry.writer"
gcloud projects add-iam-policy-binding ${{ secrets.GCP_PROJECT_ID }}   --member="serviceAccount:github-actions@${{ secrets.GCP_PROJECT_ID }}.iam.gserviceaccount.com"   --role="roles/run.admin"
gcloud projects add-iam-policy-binding ${{ secrets.GCP_PROJECT_ID }}   --member="serviceAccount:github-actions@${{ secrets.GCP_PROJECT_ID }}.iam.gserviceaccount.com"   --role="roles/storage.admin"
git add .
git init
git remote -v
git remote add origin https://github.com/Rahul93729/github-actions-poc.git
git remote -v
git add .
git add -A
git status
