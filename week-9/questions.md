# Introduction to DevSecOps

1. What benefits do you stand to gain when security best practices is incorporated into software development life cycle/Devsecops project?

2. What could go wrong if security best practices are not applied to Devsecops projects?

3. Differentiate between a sink and source in a codebase?

4. It is bad to put secret info in public repo, is it bad to put them temporarily and remove them after successful commit?

5. What role can user input play in security bug introduction in an app and how can you prevent it?

6. Search "Google Dorks security" and follow the articles you find. Using this article state any 10 google dork commands to find sensitive information?

7. Create robots.txt file that prevent Google form indexing your website directories /admin /secrets /user_passwords

8. Make reference to the nodeexpressApp folder in this repo, make use of any CI/CD pipeline to build and push the image to any image registry of your choice. Before this goes to production, you have been tasked to make use of trivy to scan the image to detect vulnerabilities in the image.

https://www.youtube.com/watch?v=pZumqxTwLNw

Hint: docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.10.0 <image-name-on-repo>