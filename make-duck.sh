#!/usr/bin/env bash

duckdb vagrant-eco.db -c 'CREATE OR REPLACE TABLE commits AS FROM read_json("./all-commits.ndjson", columns={
  owner: "VARCHAR",
  repo: "VARCHAR",
  author: "VARCHAR",
  authorEmail: "VARCHAR",
  committer: "VARCHAR",
  committerEmail: "VARCHAR",
  message: "TEXT",
  hash: "VARCHAR",
  date: "TIMESTAMP",
  additions: "INTEGER",
  deletions: "INTEGER",
  files: "STRUCT(
    name VARCHAR,
    additions INTEGER,
    deletions INTEGER
  )[]",
}, format="auto");'
duckdb vagrant-eco.db -c 'CREATE OR REPLACE TABLE issues AS FROM read_json("./github-all-issues.ndjson", columns={
  owner: "VARCHAR",
  repo: "VARCHAR",
  title: "VARCHAR",
  author: "VARCHAR",
  url: "VARCHAR",
  createdAt: "TIMESTAMP",
  closedAt: "TIMESTAMP",
  closed: "BOOL",
  locked: "BOOL",
  commentsCount: "INTEGER",
  reactionsCount: "INTEGER",
  participants: "VARCHAR[]",
}, format="auto");'
duckdb vagrant-eco.db -c 'CREATE OR REPLACE TABLE pulls AS FROM read_json("./github-all-pull-requests.ndjson", columns={
  owner: "VARCHAR",
  repo: "VARCHAR",
  title: "VARCHAR",
  author: "VARCHAR",
  url: "VARCHAR",
  createdAt: "TIMESTAMP",
  closedAt: "TIMESTAMP",
  closed: "BOOL",
  locked: "BOOL",
  merged: "BOOL",
  additions: "INTEGER",
  deletions: "INTEGER",
  changedFiles: "INTEGER",
  commentsCount: "INTEGER",
  reactionsCount: "INTEGER",
  participants: "VARCHAR[]",
}, format="auto");'

cp vagrant-eco.db rill/data/
