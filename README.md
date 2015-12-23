This composes atlassian-jira 7.0 with mysql 5.7.10 database docker containers
----------------------------------------------------------------------------

1. git clone https://github.com/maniankara/atlassian-jira-docker.git
2. cd atlassian-jira-docker
3. docker-compose up

You are ready to start configuring JIRA at https://localhost:8080

Configuring:
1. Define your company name
2. Add your license key or generate jira trial license (needs login to atlassian pages)
3. Setup the administrator account (Fullname, username, password etc.)
4. Configure email now or later
5. Choose the language and optionally choose the avatar
6. Skip quick tour
7. Skip first project creation 
8. All set !!

Supported versions:
docker-compose: 1.5 and above
