package "wget"

execute "Install C# plugin" do
  command "wget http://repository.codehaus.org/org/codehaus/sonar-plugins/dotnet/csharp/sonar-csharp-plugin/3.3/sonar-csharp-plugin-3.3.jar"
  cwd "/opt/sonarqube-4.4/extensions/plugins"
end
