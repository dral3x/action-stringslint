FROM dral3x/stringslint:0.1.8_swift-5.10.1
LABEL version="1.1.8"
LABEL repository="https://github.com/dral3x/action-stringslint"
LABEL homepage="https://github.com/dral3x/action-stringslint"
LABEL maintainer="Alessandro Calzavara <alessandro.calzavara@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for StringsLint"
LABEL "com.github.actions.description"="Ensure your localized strings are complete and never unused."
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
