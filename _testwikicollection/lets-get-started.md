---
layout: documentation
title: GETTIN STARTED NEW PAGE
primary_order: 15
tab_title: Testing Started
secondary_order: 1
---

[comment]: # "title: GETTIN STARTED NEW PAGE"
[comment]: # "ordering: 15"
[comment]: # "name: Testing Started" 
[comment]: # "secondary_ordering: 1" 
[comment]: # "header: 1"  
NEW GETTING STARTED
Welcome to the hello wiki 12220 lesson! :sdfasdfasdf
# First level header

### Third level header    ###

## Second level header ######

sadfasdfasdf
Step 1:

```
git submodule add https://github.com/danielsamfdo/testwiki.wiki.git _test_wiki && git submodule init && git submodule update
```

Step 2:
Initial Configuration
Add the following to _config.yml

```
collections:
  testwikicollection:
    output: true
defaults:
  - 
    scope:
      path: "test_wiki"
      type: testwikicollection
    values:
      layout: documentation
```

Step 3:
make a directory _testwikicollection

Step 4:
In the File RakeFile, update it accordingly 
SOURCE = "_test_wiki" 
DESTINATION = "_testwikicollection"

Step 5:
Run

```
rake add_front_matter
```
