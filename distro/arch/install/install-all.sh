#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

echo "INFO: running all installation scripts"

candidates=$(find . -type f -executable $ \
  -name '*.sh' \
  -o -exec grep -Iq . {} \; -a -exec head -n1 {} \; |
  grep -E '^#!/.*\b(bash|sh)\b' \
    $ -print)

for script in $candidates; do
  echo "▶️ Executing: $script"
  bash "$script"
  rc=$?
  if ((rc != 0)); then
    echo "⚠️  $script exited with status $rc"
    # Uncomment to abort the whole process on first failure:
    # exit $rc
  fi
done

echo "✅ Finished processing $(echo "$candidates" | wc -l) script(s)."

popd
