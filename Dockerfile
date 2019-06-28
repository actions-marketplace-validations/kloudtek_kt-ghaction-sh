FROM kloudtek/kt-build-docker-image:latest

LABEL "com.github.actions.name"="KT Sh"
LABEL "com.github.actions.description"="Run shell script"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/kloudtek/kt-ghaction-sh"
LABEL "homepage"="https://github.com/kloudtek/kt-ghaction-sh"
LABEL "maintainer"="Kloudtek <info@kloudtek.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
