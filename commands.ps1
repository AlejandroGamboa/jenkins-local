docker build -t jenkins .

docker run -it --rm -p 8080:8080 -p 50000:50000 --group-add 0 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $pwd/repos:/var/jenkins_home/repos jenkins
