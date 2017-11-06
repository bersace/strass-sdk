#
# Outils de construction de style et des données SQLite de strass
#

FROM python:3

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        make \
        sqlite3 \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir --upgrade libsass pyyaml webassets && \
    :

WORKDIR /strass
