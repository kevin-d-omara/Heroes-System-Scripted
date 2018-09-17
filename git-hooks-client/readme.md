These are [git hooks](https://git-scm.com/docs/githooks) that run on the client-side (i.e. developer-side).

These are not the files that actually run. The real hooks are installed in `.git/hooks`.
These files are here because `git clone` doesn't copy client-side hooks.

To use the hooks:
1. Copy the files into `.git/hooks`.
1. Update each copied file with your developer information (username and operating system).
