* - come back to at some point perhaps?

1. Code intelligence
[x] LSP configuration - Diagnostics, go-to-definition, references, rename, code actions
[x] Completion - Blink.cmp with prioritized sources and sensible keymaps
[x] Snippet engine - LuaSnip + friendly-snippets, with fast Tab/Shift-Tab navigation
[x] Signature help - Function parameters displayed while typing
[x] Inlay hints - Inline type annotations, parameter names, inferred types
[x] Semantic highlighting - Treesitter + LSP semantic tokens
[x] Document symbols - Browse classes, functions, methods, and variables
[x] Workspace symbols - Search symbols across the entire project
[x] Call hierarchy - Explore incoming and outgoing function calls
[x] Code lens - Inline actions and references provided by the language server

2. Navigation and project browsing
[x] File explorer - Directory tree with Git status and file operations
[x] Fuzzy finder - Files, buffers, symbols, text, and commands
[x] Project-wide search - Live grep with ripgrep and quickfix integration
[x] Recent files - Quickly reopen recently used files
[x] Buffer management - Buffer picker, deletion, pinning, and alternate-buffer navigation
[x] File outline - Navigate the current file by symbols
[x] Quickfix and location lists - Browse search results, diagnostics, and references
[x] Git hunk navigation - Jump between changes and inspect diffs

3. Diagnostics and code actions
[x] Diagnostic list - Centralized picker for errors, warnings, and hints across files
[x] Inline diagnostics - Virtual text, signs, and underlines
[x] Diagnostic navigation - Next/previous diagnostic with severity filtering
[x] Code action picker - Apply quick fixes and refactorings
[x] Automatic formatting - Format on save, with per-language configuration
[x] Linting - External linters for issues the LSP misses
[x] Import management - Organize imports and remove unused imports
[x] Trouble-style diagnostics UI - Dedicated panel for errors, warnings, and TODOs
[x] Error filtering - Search diagnostics by file, severity, or source

4. Editing productivity
[x] Surround editing - Add, change, and delete brackets, quotes, tags, and delimiters
[x] Autopairs - Automatic bracket and quote pairing
[x] Commenting - Toggle line and block comments
[x] Multicursor editing - Edit multiple matching occurrences simultaneously
[x] Incremental selection - Expand selections by syntax node
[x] Text objects - Select functions, classes, arguments, blocks, and parameters
[x] Structural refactoring - Extract functions, rename symbols, move code where supported
[x] Smart indentation - Language-aware indentation and formatting
[x] Undo history - Persistent undo and visual history browser
[x] Session management - Restore buffers, tabs, windows, and working directories
[x] Clipboard integration - System clipboard and convenient copy/paste behavior
[x] Multiple cursors/selections - Efficient repetitive edits beyond standard Vim motions

5. Git integration
[x] Git signs - Added, modified, and deleted line indicators
[x] Hunk actions - Stage, reset, preview, and navigate hunks
[x] Inline diffs - See changes against the index or HEAD
[x] Git status picker - Browse changed, staged, and untracked files
[x] Blame annotations - Show who changed a line and when
[x] Commit history - Inspect commits and file history
[x] Diff viewer - Compare revisions in a readable split
[x] Merge conflict resolution - Navigate conflicts and choose or edit resolutions
[x] Git worktree support - Manage parallel branches and working directories

6. Terminal and execution
[x] Integrated terminal - Open terminals in project-root-aware splits or floats
[x] Quickfix output - Send compiler and test errors into navigable lists
[x] Background processes - Manage long-running servers, watchers, and dev commands

7. Testing and code quality
[x] Formatting and linting on save - Automate routine quality checks
[x] Type checking - Configure language-specific static analysis
[x] Project-wide test command - Run the full suite from a picker or keymap
[x] Continuous testing - Optionally rerun relevant tests when files change

8. UI and IDE ergonomics
[x] Statusline - Git branch, diagnostics, LSP, file encoding, and progress
[x] Which-key hints - Discover keymaps without memorizing everything
[ ] Command palette - Search commands and plugin actions*
[x] Notifications - Readable asynchronous messages and progress
[x] Zen mode - Distraction-free editing
[x] Persistent floating windows - Convenient hover, documentation, and picker interfaces
[x] Color and theme consistency - Unified highlights across plugins, diagnostics, and terminals

9. Documentation and project understanding
[x] Hover documentation - Show type information and documentation
[x] K and keyword lookup - Open language or library documentation
[x] Dependency browsing - Navigate installed packages and library source
[x] Project documentation picker - Search README files, docs, and configuration
[x] TODO/FIXME picker - Find project annotations and unfinished work
[x] API documentation lookup - Quickly find framework and library references

10. Configuration quality and reliability
[x] Lazy loading - Load plugins only when their features are needed
[x] Plugin health checks - Check dependencies, executables, and configuration issues
[x] LSP installation management - Install and update language servers consistently
[x] Parser management - Install and update Treesitter parsers
[x] Project-local configuration - Support trusted per-project settings and commands
[x] Keymap consistency - Use predictable, conflict-free shortcuts
[x] Performance profiling - Find slow startup, events, and plugins
[x] Plugin update strategy - Keep updates manageable and recover from regressions
[x] Backup and recovery - Version-control the config and preserve important state
[x] Headless validation - Check Lua syntax and basic config loading automatically
