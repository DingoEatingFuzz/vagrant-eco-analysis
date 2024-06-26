rm -f all-commits.ndjson github-all-issues.ndjson github-all-pull-requests.ndjson
ls all-commits-with-files* | xargs cat - >> all-commits.ndjson
ls github-all-issues* | xargs cat - >> github-all-issues.ndjson
ls github-all-pull-requests* | xargs cat - >> github-all-pull-requests.ndjson
