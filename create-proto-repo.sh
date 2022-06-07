rm -rf .git
git init
files=(adv.proto backup.proto biz.proto cert.proto companion_reg.proto e2e.proto google/protobuf/descriptor.proto history_sync.proto mms_retry.proto proto_test.proto protocol.proto server_sync.proto sync_action.proto vesta.proto vname_cert.proto wa5.proto web.proto)
versions=(2.22.6.7 2.22.6.8 2.22.6.9 2.22.6.10 2.22.6.70 2.22.6.71 2.22.6.72 2.22.6.73 2.22.7.1 2.22.7.2 2.22.7.4 2.22.7.6 2.22.7.8 2.22.7.10 2.22.7.11 2.22.7.13 2.22.7.72 2.22.7.74 2.22.8.1 2.22.8.3 2.22.8.4 2.22.8.5 2.22.8.6 2.22.8.7 2.22.8.8 2.22.8.9 2.22.8.10 2.22.8.11 2.22.8.78 2.22.9.7 2.22.9.8 2.22.9.10 2.22.9.11 2.22.9.12 2.22.9.13 2.22.9.14 2.22.9.77 2.22.9.78 2.22.10.2 2.22.10.3 2.22.10.6 2.22.10.7 2.22.10.8 2.22.10.9 2.22.10.10 2.22.10.11 2.22.10.12 2.22.10.14 2.22.10.73 2.22.11.3 2.22.11.4 2.22.11.6 2.22.11.7 2.22.11.8 2.22.11.10 2.22.11.11 2.22.11.12 2.22.11.13 2.22.11.14 2.22.11.70 2.22.11.75 2.22.11.78 2.22.11.82 2.22.11.83 2.22.11.16 2.22.12.3 2.22.12.4 2.22.12.5 2.22.12.6 2.22.12.7 2.22.12.8 2.22.12.9 2.22.12.10 2.22.12.11 2.22.12.14 2.22.12.73 2.22.12.75 2.22.12.76 2.22.13.4 2.22.13.5)

rm -f  "${files[@]}"  
for v in "${versions[@]}"; do
    for t in Messenger Business; do
        f="../dn/WhatsApp ${t}_${v}_apkcombo.com.apk"
        if [[ -e "$f" ]]; then
            unzip -o "$f" "${files[@]}"  
            realfiles=($(ls "${files[@]}"))
            git add  "${realfiles[@]}"  
            timestamp=$(ls -dalt --full-time "${realfiles[@]}" | head -1 | perl -ne 'print $1 if (/^\S+\s+\d+\s\S+\s+\S+\s+\d+\s(\S+ \S+ \S+)/)')
            export GIT_COMMITTER_DATE=$timestamp
            git commit --date "$timestamp" -m "v${v}" "${realfiles[@]}"  
        fi
    done
done
