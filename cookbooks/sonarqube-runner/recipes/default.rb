execute "Download SonarQube runner" do
  command "wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip"
  cwd "/opt/sonarqube-4.4"
  not_if {File.exists?("/opt/sonarqube-4.4/sonar-runner-dist-2.4.zip")}
end

execute "Install SonarQube runner" do
  command "unzip /opt/sonarqube-4.4/sonar-runner-dist-2.4.zip"
  cwd "/opt/sonarqube-4.4"
  not_if {File.exists?("/opt/sonarqube-4.4/sonar-runner-2.4")}
end

magic_shell_environment 'SONAR_RUNNER_HOME' do
  value '/opt/sonarqube-4.4/sonar-runner-2.4'
end

magic_shell_environment 'PATH' do
  value '$PATH:/opt/sonarqube-4.4/sonar-runner-2.4/bin'
end
