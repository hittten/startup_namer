#!/bin/bash


#* 1542771 - (HEAD -> main) Observables (2 seconds ago) <Gilberto López Ambrosino>
#* e39153b - search (2 seconds ago) <Gilberto López Ambrosino>
#* b55bb91 - http fetch (2 seconds ago) <Gilberto López Ambrosino>
#* 9e28bbe - [API] search tasks (2 seconds ago) <Gilberto López Ambrosino>
#* 995a273 - [API] delete task (2 seconds ago) <Gilberto López Ambrosino>
#* b4df073 - [API] update task (2 seconds ago) <Gilberto López Ambrosino>
#* ad86b28 - [API] create task (2 seconds ago) <Gilberto López Ambrosino>
#* d7ca82b - [API] tasks filters (2 seconds ago) <Gilberto López Ambrosino>
#* 11b5904 - [API] typescript (2 seconds ago) <Gilberto López Ambrosino>
#* 67fee52 - [API] get tasks (2 seconds ago) <Gilberto López Ambrosino>
#* 1ff225d - [API] install expressjs (2 seconds ago) <Gilberto López Ambrosino>
#* e07bdff - task service with promises (2 seconds ago) <Gilberto López Ambrosino>
#* 7707dc0 - delete task (2 seconds ago) <Gilberto López Ambrosino>
#* e4bf08d - edit task (2 seconds ago) <Gilberto López Ambrosino>
#* eecff27 - typescript modules (2 seconds ago) <Gilberto López Ambrosino>
#* adf959a - [webpack] dev-server (2 seconds ago) <Gilberto López Ambrosino>
#* 5f8b171 - done task (2 seconds ago) <Gilberto López Ambrosino>
#* 38a6742 - filter buttons (2 seconds ago) <Gilberto López Ambrosino>
#* 11b8e29 - create tasks (2 seconds ago) <Gilberto López Ambrosino>
#* 5e0d92e - creating list from mock (2 seconds ago) <Gilberto López Ambrosino>
#* 912f936 - learn (2 seconds ago) <Gilberto López Ambrosino>
#* 3571b47
commits=(
  "1542771"    #observables
  "e39153b"    #search
  "b55bb91"    #http-fetch
  "9e28bbe"    #api-search-task
  "995a273"    #api-delete-task
  "b4df073"    #api-update-task
  "ad86b28"    #api-create-task
  "d7ca82b"    #api-tasks-filters
  "11b5904"    #api-typescript
  "67fee52"    #api-get-tasks
  "1ff225d"    #api-setup
  "e07bdff"    #promises
  "7707dc0"    #delete-task
  "e4bf08d"    #edit-task
  "eecff27"    #modules
  "adf959a"    #webpack
  "5f8b171"    #task-done
  "38a6742"    #filters
  "11b8e29"    #create-task
  "5e0d92e"    #mock-list
  "912f936"    #start
  "3571b47"    #init
)
tags=(
  "observables"
  "search"
  "http-fetch"
  "api-search-task"
  "api-delete-task"
  "api-update-task"
  "api-create-task"
  "api-tasks-filters"
  "api-typescript"
  "api-get-tasks"
  "api-setup"
  "promises"
  "delete-task"
  "edit-task"
  "modules"
  "webpack"
  "task-done"
  "filters"
  "create-task"
  "mock-list"
  "start"
  "init"
)

# get length of an array
tagsLength=${#tags[@]}

# use for loop to read all values and indexes
for (( i=0; i<${tagsLength}; i++ ));
do
  if [ "${commits[$i]}" != "" ]
  then
    echo "Tagging: ${commits[$i]} with tag: ${tags[$i]}"
    git co "${commits[$i]}"
    git tag -a "${tags[$i]}" -m ${tags[$i]} --force
  else
    echo "Skip: ${tags[$i]}"
  fi
done

git co main
