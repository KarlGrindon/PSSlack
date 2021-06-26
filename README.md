# PSSlack
 Module for Slack related functions

<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email, project_title, project_description
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![LinkedIn][linkedin-shield]][https://www.linkedin.com/in/%F0%9F%91%BE-karl-grindon-73a58059/]

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#How to Use">How to Use</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>

    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This is just a module to contain Powershell function(s) that I use for Slack.

Currently this contains a single function; if I come up with others later, I'll commit to this repo.

### Built With

* Powershell 7

<!-- How to use -->
## How to Use

* Clone the repo
* (Optional) add this to your Powershell modules path:
```Powershell
# Run this to get the module path(s)
$env:PSModulePath
```
  * Either manually copy the whole folder in this repo to one of the paths in $env:PSModulePath, or use Copy-Item.
```Powershell
Copy-Item -Path /Volumes/shared/apps/PSSlack -Destination /usr/local/microsoft/powershell/7/Modules -Force -Recurse
```
  * Now import
```Powershell
# If you didn't copy the module to your modules path, you'll need to speficy a full path to the module

Import-Module PSSlack.psd1 -Force
```
  * Now check that the module is loaded by running
```Powershell
Get-Module PSSlack
```

<!-- USAGE EXAMPLES -->
## Usage

``` Powershell
# Import the module if you haven't already
Import-module PSSlack

$params = @{
    SlackWebhookUri = <my webhook uri>
    Message         = <my message>
}

Send-PSSlackWebhookMessage @params

# This will return an "ok" if the message was posted to Slack successfully.
```

<!-- ROADMAP -->
## Roadmap

There really isn't one! If I think of more use cases, I'll add to this module.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://github.com/KarlGrindon