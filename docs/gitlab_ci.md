# gitlab-ci.yml

<img src="../../img/gitlab.png" alt="drawing" style="width:25%; height:25%; "/> <br>

## Introduction

GitLab est une plateforme de développement collaborative open source, idéal pour le développement de logiciels, la sécurité et les opérations qui permet le **DevOps** simultané . GitLab accélère le cycle de vie du logiciel et améliore radicalement la vitesse des affaires.

> Gitlab-ci.yml est un fichier qui permet de configure votre CI/CD.  
> Grâce à ce fichier vous avez la possibilité de créer des cron-jobs, des triggers, des deployement, des publications et tant d'autres folies. <a style="text-decoration: underline; color:black" href=" https://docs.gitlab.com/ee/ci/yaml/">Ici une documentation complète.</a>

## Focntionnement

### Exemple

```yml
stages:
  - build
  - test
  - deploy

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

### Explication

**Stages**

```yml
stages:
  - build
  - test
  - deploy
```

Les stages sont les étapes que le pipeline effectuera ici <i> **créez, testez et déployez** </i>.  
Cela signifie que maintenant les tâches pourront être affectée à l'une des étapes ci-dessus. L'ordre des éléments dans les stages définit l'ordre d'exécution des tâches.

**Tâches**  
<i>stage build(construire) et la tâche **build-job** </i>

```yml
build-job:
  stage: build
  script:
    - echo "Hello, $GITLAB_USER_LOGIN!"
```

Cette tâche utilise le stage `build` et un autre élement entre en compte ici, c'est le mot clé `script` qui permet de spécifier ce que la tâche doit faire.  
Comme par exemple afficher `Hello l'utisateur gitlab` dans notre cas.

<br>
<i>Les tâches test-job1 && test-job2 et le stage <strong>test</strong> </i>

```yml
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
```

Comme vous pouvez le constater dans les scripts il est clairement mentionné ce que fait les scripts.

<br>
<i>La tâche deploy-prod  && le stage <strong>deploy</strong> </i>

```yml
deploy-prod:
  stage: deploy
  script:
    - echo "This job deploys something from the $CI_COMMIT_BRANCH branch."
```

Comme vous pouvez le constater dans les scripts il est clairement mentionné ce que fait le script. Il deploie quelque chose sur la branche du commit.

>> NB: ceci n'est qu'une introduction à gitlab-ci.yml 
## Conclusion
Ce tutorial arrive à sa fin. Pour avoir plus d'informations sur Gitlab-ci.yml, je vous invite à visité le site de  <a style="text-decoration: underline; color:black" href=" https://docs.gitlab.com/ee/ci/yaml/">GITLAB.</a>, qui by the way is amazing!
