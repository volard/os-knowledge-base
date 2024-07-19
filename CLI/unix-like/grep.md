---
tags:
  - review
aliases: 
sources:
  - https://linuxize.com/post/how-to-use-grep-command-to-search-files-in-linux/#search-for-a-string-in-files
---


Find patterns in files using regular expressions.
More information: <https://www.gnu.org/software/grep/manual/grep.html>.

```bash
#  *  Search for a pattern within a file
   grep "search_pattern" path/to/file

   # Search for an exact string (disables regular expressions)
   grep --fixed-strings "exact_string" path/to/file

   # Search for a pattern in all files recursively in a directory, showing line numbers of matches, ignoring binary files
   grep --recursive --line-number --binary-files=without-match "search_pattern" path/to/directory
   
	# shorter form
	grep -rn

	# to follow symlincs
	-R 
	--dereference-recursive

	# ignore case
	-i 
	

   # Use extended regular expressions (supports `?`, `+`, `{}`, `()` and `|`), in case-insensitive mode
   grep --extended-regexp --ignore-case "search_pattern" path/to/file

   # Print 3 lines of context around, before, or after each match
   grep --context|before-context|after-context=3 "search_pattern" path/to/file

   # Print file name and line number for each match with color output
   grep --with-filename --line-number --color=always "search_pattern" path/to/file

   # Search for lines matching a pattern, printing only the matched text
   grep --only-matching "search_pattern" path/to/file
```
