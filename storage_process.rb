require 'json'

keys = %w{
  CI_BRANCH
  CI_BUILD_ID
  CI_COMMITTER_EMAIL
  CI_COMMITTER_NAME
  CI_COMMITTER_USERNAME
  CI_COMMIT_DESCRIPTION
  CI_COMMIT_ID
  CI_COMMIT_MESSAGE
  CI_NAME
  CI_PROJECT_ID
  CI_REPO_NAME
  CI_STRING_TIME
  CI_TIMESTAMP
}

result = keys.inject({}) {|r,k| r[k] = ENV[k]; r }
File.open('/tmp/codeship_env.json', 'w') {|f| f.write result.to_json }
