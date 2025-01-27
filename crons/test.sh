while IFS= read -r line; do
    if [[ "$line" != \#* && "$line" =~ "=" ]]; then
        export "$line"
    fi
done < /usr/src/app/.env
/usr/local/bin/python /usr/src/app/manage.py testing
