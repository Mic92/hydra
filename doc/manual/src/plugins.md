# Plugins

This chapter describes all plugins present in hydra

### Inputs

Hydra supports the following inputs

- Bazaar input
- Darcs input
- Git input
- Mercurial input
- Path input

## Bitbucket pull requests

Create jobs based on open bitbucket pull requests

configuration options:
- `bitbucket_authorization.<owner>`

## Bitbucket status

Sets Bitbucket CI status

configuration options:
- `enable_bitbucket_status`
- `bitbucket.username`
- `bitbucket.password`

## Circle CI Notifcation

Sets Circle CI status

configuration options:
- `circleci.[].jobs`
- `circleci.[].vcstype`
- `circleci.[].token`

## Compress build logs

Compresses build logs after a build with bzip2

configuration options:
- `compress_build_logs`

## Coverity Scan

Uploads source code to [coverity scan](https://scan.coverity.com)

configuration options:

- `coverityscan.[].jobs`
- `coverityscan.[].project`
- `coverityscan.[].email`
- `coverityscan.[].token`
- `coverityscan.[].scanurl`

## Declarative jobsets

TODO

## Email notification

Sends email notification if build status changes

configuration options:

- `email_notification`

## Gitea status

Sets Gitea CI status

configuration options:

- `gitea_authorization.<repo-owner>`

## Github pulls

Create jobs based on open github pull requests

configuration options:

- `github_authorization.<repo-owner>`

## Github refs

Hydra plugin for retrieving the list of references (branches or tags) from
GitHub following a certain naming scheme

configuration options:

- `github_endpoint`
- `github_authorization.<repo-owner>`

## Github status

Sets GitHub CI status.

configuration options:

- `githubstatus.[].jobs`
- `githubstatus.[].excludeBuildFromContext`
- `githubstatus.[].context`
- `githubstatus.[].useShortContext`
- `githubstatus.[].description`
- `githubstatus.[].inputs`
- `githubstatus.[].authorization`

## Gitlab pulls

Create jobs based on open gitlab pull requests

configuration options:

- `gitlab_authorization.<projectId>`

## Gitlab status

Sets Gitlab CI status.

configuration options:

- `gitlab_authorization.<projectId>`

## HipChat notification

Sends hipchat chat notifications when a build finish.

configuration options:

- `hipchat.[].jobs`
- `hipchat.[].builds`
- `hipchat.[].token`
- `hipchat.[].notify`

## InfluxDB notification

Writes InfluxDB events when a builds finished.

configuration options:

- `influxdb.url`
- `influxdb.db`

## Run command

Runs a shell command when the build finished.

configuration options:

- `runcommand.[].job`
- `runcommand.[].command`

## S3 backup

Upload nars and narinfos to S3 storage.

configuration options:

- `s3backup.[].jobs`
- `s3backup.[].compression_type`
- `s3backup.[].name`
- `s3backup.[].prefix`

## Slack notification

Sending Slack notifications about build results.

configuration options:

- `slack.[].jobs`
- `slack.[].force`
- `slack.[].url`


## So test

Scheduling hardware tests to SoTest controller

configuration options:

- `sotest.[].uri`
- `sotest.[].authfile`
- `sotest.[].priority`
