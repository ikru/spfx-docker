# Developing spfx (SharePoint Framework) inside docker container

## Hints
- VS Code
- Run tasks
    - docker-compose-up
    - spfx-gulp-serve
- Add record to host hosts file:
  - 127.0.0.1 spfx
  - Use urls:
        https://spfx:5432/workbench
        https://spfx:4321/temp/workbench.html 
- If needed to connect to container shell
    - docker-compose exec "spfx-debug" bash

## Using yo @microsoft/sharepoint --skip-install
- Simple web part project is already added, so I'm not going to use yo @microsoft/sharepoint anymore.
- However, if you are planning to use yo @microsoft/sharepoint --skip-install some folders may need chmod if getting permission denied error.
- See sample run in dockerfile or example

## Docker configuration
- Enable volume sharing
