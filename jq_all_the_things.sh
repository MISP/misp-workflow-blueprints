#!/bin/bash

#Validate all Jsons first
for dir in `find . -name "*.json"`
do
  echo validating ${dir}
  # python3 -c "import json; f_in = open('${dir}'); data = json.load(f_in); f_in.close(); f_out = open('${dir}', 'w'); json.dump(data, f_out, indent=2, sort_keys=True, ensure_ascii=False); f_out.close();"
  cat ${dir} | jq . >/dev/null
  rc=$?
  if [[ $rc != 0 ]]; then exit $rc; fi
done

set -e
set -x

# Seeds sponge, from moreutils

for dir in ./blueprints/*.json
do
    cat ${dir} | jq . | sponge ${dir}
done

