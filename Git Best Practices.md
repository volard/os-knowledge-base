---
aliases: commit message, git commit
tags: 
sources: https://aditiagrawal.medium.com/git-best-practices-d3ca68af667c, https://www.conventionalcommits.org/, https://deepsource.io/blog/git-best-practices/
---
# Clean, single-purpose commits
Keep commits as small and focused as possible

# Meaningful commit messages
- Use the imperative, present tense: “change” not “changed” nor “changes” for your commit message
- Do not end the commit message(subject line) with a period
- Use the body to explain what and why the change was made, but never how (or at least as much as possible). This part should be added only when necessary
- Remove unnecessary punctuation marks
- Wrap the subject line at 50 characters and body at 72 characters

# Format of the commit message
```
<type>(<optional scope>): <subject>  
<BLANK LINE>  
<optional body>  
<BLANK LINE>  
<optional footer(s)>
```

```
feat: add foo support  
^ — ^ ^ — — — — — — ^  
| |  
| +-> Summary(commit message subject line) in present tense  
|  
+ — — — -> Type: chore, docs, feat, fix, refactor, style, perf or test
```
- `feat`: new feature for the user, not a new feature for build script
- `fix`: bug fix for the user, not a fix to a build script
- `docs`: changes to the documentation
- `style`: formatting, missing semi colons, etc.; no production code change
- `refactor`: refactoring production code, eg. renaming a variable
- `test`: adding missing tests, refactoring tests; no production code change
- `chore`: regular code maintenance and updating grunt tasks etc; no production code change (eg: change to .gitignore file or .prettierrc file)
- `build`: build related changes, for updating build configuration, development tools or other changes irrelevant to the user (eg: npm related/ adding external dependencies/ podspec related)
- `perf`: code change that improves performance

# Examples
## Commit message with body and footer
```
fix: prevent racing of requestsIntroduce a request id and a reference to latest request. Dismiss  
incoming responses other than from latest request.Resolves: #123
```
## Commit message with body and no footer
```
fix: remove string template from client codeIt is incompatible with IE
```
## Commit message with no body and no footer
```
docs: prepare CHANGELOG for version x.x.x
```

# Commit early, commit often
It is better to work in small chunks and keep committing your work, instead of waiting to make it perfect. If you are working on a feature branch that could take some time to finish, it helps you keep your code updated with the latest changes so that you avoid conflicts.

# Pull request norms
- A PR should be divided into independently mergeable parts also encourages simpler, more decoupled designs. If possible, try to break your PR down into pieces which are independent of each other.
- Each PR review must have at least 1–2 developer approvals. If it’s just a simple docs change or a typo fix, feel free to skip this step.
- Each PR must have a good description