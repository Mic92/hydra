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

### Configuration options

- `githubstatus.[].jobs`

Regular expression for jobs to match in the format `project:jobset:job`.
Defaults to `*:*:*`.

- `githubstatus.[].excludeBuildFromContext`

Don't include the build's ID in the status.

- `githubstatus.[].context`

Context shown in the status

- `githubstatus.[].useShortContext`

Renames `continuous-integration/hydra` to `ci/hydra` and removes the PR suffix
from the name. Useful to see the full path in GitHub for long job names.

- `githubstatus.[].description`

Description shown in the status. Defaults to `Hydra build #<build-id> of
<jobname>`

- `githubstatus.[].inputs`

The input which corresponds to the github repo/rev whose
status we want to report. Can be repeated.

- `githubstatus.[].authorization`

Verbatim contents of the Authorization header. See
[GitHub documentaion](https://developer.github.com/v3/#authentication) for
details.

### Example

```xml
<githubstatus>
  jobs = test:pr:build
  inputs = src
  authorization = Basic notgivingyoumypasswordosorry
  excludeBuildFromContext = 1
</githubstatus>
```

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
