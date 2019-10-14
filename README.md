#### Integration of Test Automation in DevOps cloud platform

Go to Projects, choose your Project(Banerasoft Assessments), now we move to creating pipeline.
First thing we want to do is install Python on your machine or other interpreter needed for running your code. Next, through pip package manager you’ll have to install Robot Framework, Selenium library, and chrome driver.
And that’s what our build steps will be about. Installing Python and necessary libraries, chromedriver, and running scripts through Powershell commands.


Steps to Create Pipeline
Click on Pipeline -> New Build Pipeline and select Azure Repos Git and select a repository (Automation Testing) with your framework/test scripts. 
 
 
Next, you’ll be asked to configure your pipeline, and Azure DevOps will present you with build steps that are most commonly used. We will Use Python package.
 

Now observe a default YAML file, which is basically a set of rules for an agent on cloud machine, with steps that will install Ubuntu OS (We will choose Windows10), different versions of Python, pytest library, and steps for Publish job.
Replace the YAML file code with below snippet.
trigger:
- master

pool:
  vmImage: 'vs2017-win2016'
strategy:
  matrix:
    Python27:
      python.version: '2.7'
  maxParallel: 1

steps:
- task: UsePythonVersion@0
  inputs:
   versionSpec: '$(python.version)'
   architecture: 'x64'
  displayName: 'Use Python $(python.version)'

- script: pip install robotframework robotframework-selenium2library robotframework-excellibrary && npm install chromedriver
  displayName: 'Install dependencies'

- powershell: robot --pythonpath . -x outputxunit.xml Tests/Skillscope.robot
  displayName: 'Run Robot Tests'

- task: PublishTestResults@1
  inputs:
   testResultsFiles: outputxunit.xml
   searchFolder: 'D:\a\1\s\'
  condition: succeededOrFailed()
  displayName: 'Publish Test Results outputxunit.xml'
   
Now, click Save and Run button on right top of the screen and watch how the cloud agent is setting up your build steps and running Robot tests. Under the Tests tab, graphics with tests results will be displayed.
Under the Tests tab, graphics with tests results will be displayed as below which contains passed and failed percentage of Tests.
 
Under Test Plans>Runs, you can check the history of your previous runs:
 


