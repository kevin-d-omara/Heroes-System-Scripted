These are [git hooks](https://git-scm.com/docs/githooks) that run on the client-side (i.e. developer-side).

These are not the files that actually run. The real hooks are located in `.git/hooks`.
These files are here because `git clone` doesn't copy client-side hooks.

To use them, simply copy the files into `.git/hooks`.
