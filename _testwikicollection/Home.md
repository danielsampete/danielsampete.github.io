---
layout: documentation
title: A NEW PAGE
primary_order: 10
tab_title: Testing Started
secondary_order: 1
---

[comment]: # "title: A NEW PAGE"
[comment]: # "ordering: 10"
[comment]: # "header: 1"  

Welcome to the hello wiki!

`TEsT CODE BLOCK`

Test triple backticks
```ruby
def test
   t=902
end
```

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

The above adds the front matter variables required.

But please note that the following should be present in the markdown files
 
For a single level You need to add header 1 and ordering is the primary ordering of the first levels of the hierarchy
```
[comment]: # "title: Requisities"
[comment]: # "ordering: 30"
[comment]: # "header: 1"
```
For the second level You need to add header 1 for giving the heading name to all the elements in the second level. Ordering is the primary ordering of the first levels of the hierarchy. Here name denotes the first level heading to give to the parent level if this is the first element in the second level, which can be determined based on secondary_ordering. If header is 0, then this is not the first element in the secondary level and the heading will be based on the title that you give.

```
[comment]: # "title: CORE TESTING PAGE"
[comment]: # "ordering: 6"
[comment]: # "header: 1"
[comment]: # "name: Testing Started" 
[comment]: # "secondary_ordering: 1"
```


Step 6:
Check the following in the file _layouts/documentation.html

```
{% assign items_grouped = site.testwikicollection | sort: 'primary_order' | group_by: 'primary_order' %}
```

Step 7:

Add crontab

```
crontab -e
```
Add the following on the editor that appears

Based on where your rake executable is please add it. If u use rvm , it should be similar to 
*/01 * * * * cd /Users/danielsampetethiyagu/github/danielsampete.github.io && /Users/danielsampetethiyagu/.rvm/wrappers/ruby-2.3.3@global/rake wikiupdate >> /Users/danielsampetethiyagu/github/logfile 2>&1 ; date >> /Users/danielsampetethiyagu/github/logfile

The above works well on Linux machines, but was facing some difficulties with Mac OS.

rake wikiupdate takes care of updating the repository by pull and then adding the files from pulled directory into the collections directory and adding the frontmatter yaml variables to the new files
