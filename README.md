# DevOps Engineer Use Case Study

**Problems encountered while building the application and how to deal with:**
- **Kubernetes Networking Issues:** Faced networking issues and needed to examine pod logs. It was initially unclear how to proceed, so I decided to use kubectl describe on my pod to investigate further. That's the point of kubernetes networking issues.

- **CrashLoopBackOff Status:** My pod was stuck in a CrashLoopBackOff status. The logs were instrumental in identifying that the issue was due to a misconfigured Dockerfile, specifically an incorrect application file path.

- **Liveness/Health Endpoint Issues:** There were issues connecting to the liveness/health endpoint when accessing my app through the browser. Again, examining the logs revealed that the Kubernetes service was repeatedly restarting the application due to incorrect service configuration, making the app unreachable.

- **Container and Pod Debugging:** Occasionally needed to exec into my Docker containers and pods to troubleshoot issues.

- **Nginx Configuration:** Configuring Nginx for the first time was challenging. I had to rely heavily on resources like YouTube, Google, StackOverflow, and various posts to get it right. Firstly i set up my own nginix deployment , service and configmap then after researching i found ready configuration like:

!! Nginx ingress controller set up: `kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml`

