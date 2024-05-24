#!/bin/bash

urls=(
    "https://data.cityofnewyork.us/api/views/869v-vr48/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/pvqr-7yc4/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/7mxj-7a6y/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/kiv2-tbus/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/2bnn-yakx/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/kvfd-bves/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/faiq-9dfq/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/jt7v-77mi/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/c284-tqph/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/a5td-mswe/rows.csv?accessType=DOWNLOAD"
    "https://data.cityofnewyork.us/api/views/p7t3-5i9s/rows.csv?accessType=DOWNLOAD"
)

download_url() {
    wget --content-disposition "$url"
}

for url in "${urls[@]}"; do
    download_url "$url" &
done

find . -name '*wget-log*' -delete
wait