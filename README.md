Greet WebApp (Java Maven WAR Project) - README.md
📌 Overview
A simple Java web application built with Maven that generates a WAR file for deployment on Apache Tomcat.
Includes integration with Jenkins (CI/CD) and SonarQube (Code Quality Analysis).

🚀 Features
✔ Simple JSP-based greeting page with Bootstrap styling
✔ Maven-based build (pom.xml)
✔ WAR packaging for Tomcat deployment
✔ Ready for Jenkins CI/CD pipelines
✔ SonarQube integration for code quality checks

🛠️ Prerequisites
Java 17 (matches pom.xml config)

Apache Maven (≥ 3.8.6)

Apache Tomcat 9.x (for deployment)

Jenkins (optional, for CI/CD)

SonarQube (optional, for static code analysis)

⚙️ Build & Run Locally
1. Clone the Repository
bash
git clone <your-repo-url>
cd greet-webapp
2. Build the WAR File
bash
mvn clean package
Output: target/greet-webapp-1.0-SNAPSHOT.war

3. Deploy to Tomcat
Copy the .war file to Tomcat’s webapps/ directory:

bash
cp target/greet-webapp-1.0-SNAPSHOT.war /var/lib/tomcat9/webapps/
Access the app at:
http://localhost:8080/greet-webapp-1.0-SNAPSHOT/

🔧 Jenkins Integration
1. Jenkins Setup
Install Maven Integration Plugin in Jenkins.

Create a new Maven project in Jenkins.

2. Configure Jenkins Job
Source Code Management: Git (your repo URL)

Build Trigger: Poll SCM or GitHub webhook

Build Command:

bash
mvn clean package
Post-Build Action:

Deploy WAR to Tomcat (use Deploy to container plugin)

Run SonarQube analysis (see below)

📊 SonarQube Integration
1. Add SonarQube Scanner in Jenkins
Install the SonarQube Scanner Plugin.

Configure SonarQube server in Jenkins (Manage Jenkins → Configure System).

2. Add to pom.xml
Your pom.xml already has the SonarQube plugin:

xml
<plugin>
    <groupId>org.sonarsource.scanner.maven</groupId>
    <artifactId>sonar-maven-plugin</artifactId>
    <version>3.11.0.3922</version>
</plugin>
3. Run Analysis
bash
mvn sonar:sonar -Dsonar.host.url=<SONARQUBE_SERVER_URL>
OR configure it in Jenkins as a post-build step.

🌐 Access the WebApp
After deployment, open:
http://<your-server>:8080/greet-webapp-1.0-SNAPSHOT/

Screenshot
Greet WebApp Screenshot
(A simple form that greets the user by name.)

**📂 Project Structure
greet-webapp/
├── src/
│   ├── main/
│   │   ├── java/           # Java source files (if any)
│   │   ├── resources/      # Config files (if any)
│   │   └── webapp/         # JSP/static files
│   │       ├── WEB-INF/
│   │       │   └── web.xml # Servlet config (optional)
│   │       └── index.jsp   # Main JSP page
│   └── test/               # JUnit tests
├── target/                 # Build output (WAR file here)
├── pom.xml                 # Maven config
└── README.md               # This file
🛠 Troubleshooting
Issue	Solution
404 Not Found after deploy	Check Tomcat logs, ensure WAR deployed correctly
Maven build fails	Run mvn clean install -U to update dependencies
SonarQube not working	Verify server URL in Jenkins/SonarQube config
📜 License
MIT License - Free to use and modify.

🎉 Happy Coding! Deploy your WAR and automate with Jenkins! 🚀
