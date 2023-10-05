# **Kubernetes Assignment**

1. Write out deployment's yaml manifest that will create pods, replicasets, and nodePort service as seen [here](./deployment.yaml).
   
2. Create the resources by using this command:
    ```
    kubectl apply -f deployment.yaml
    ```

    Output:

    ![deployment-creation](images/deployment.png "deployment-creation")

    ![service-creation](images/web-app-service.png "service-creation")

3. Access the web app by using:
    ```
    curl <ip-address>:30007
    ```
    
    ![nginx-homepage](images/nginx-defaultpage.png "nginx-homepage")

    To get the IP address of the server, use this command on the terminal:

    ```
    ip addr
    ```

    ![ip-addr](images/ip-addr.png "ip-addr")

    In this case, the IP address is the one found in the second list.

