# gitlab CI/CD
 <img src="../../img/gitlab.png" alt="drawing" style="width:25%; height:25%; "/> <br>

## Introduction
GitLab est une plateforme de développement collaborative open source, idéal pour le développement de logiciels, la sécurité et les opérations qui permet le **DevOps** simultané . GitLab accélère le cycle de vie du logiciel et améliore radicalement la vitesse des affaires.

## Fonctionnement

### concepts
### configuration
### features
### examples
### Administration
```yml
build-job:
  stage: build
  script:
    - echo "Hello, $GITLAB_USER_LOGIN!"

test-job1:
  stage: test
  script:
    - echo "This job tests something"

test-job2:
  stage: test
  script:
    - echo "This job tests something, but takes more time than test-job1."
    - echo "After the echo commands complete, it runs the sleep command for 20 seconds"
    - echo "which simulates a test that runs 20 seconds longer than test-job1"
    - sleep 20

deploy-prod:
  stage: deploy
  script:
    - echo "This job deploys something from the $CI_COMMIT_BRANCH branch."
```

## Conclusion
