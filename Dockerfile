FROM metabase/metabase:v0.46.1
ADD https://github.com/enqueue/metabase-clickhouse-driver/releases/download/1.1.2/clickhouse.metabase-driver.jar /plugins/
RUN chmod 744 /plugins/clickhouse.metabase-driver.jar && \
    mkdir --parents /usr/local/share/ca-certificates/Yandex && \
    wget "https://storage.yandexcloud.net/cloud-certs/CA.pem" \
    --output-document /usr/local/share/ca-certificates/Yandex/YandexInternalRootCA.crt && \
    chmod 655 /usr/local/share/ca-certificates/Yandex/YandexInternalRootCA.crt
