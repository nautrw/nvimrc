1. Code intelligence
[ ] LSP configuration - Diagnostics, go-to-definition, references, rename, code actions
[ ] Completion - Blink.cmp with prioritized sources and sensible keymaps
[ ] Snippet engine - LuaSnip + friendly-snippets, with fast Tab/Shift-Tab navigation
[ ] Signature help - Function parameters displayed while typing
[ ] Inlay hints - Inline type annotations, parameter names, inferred types
[ ] Semantic highlighting - Treesitter + LSP semantic tokens
[ ] Document symbols - Browse classes, functions, methods, and variables
[ ] Workspace symbols - Search symbols across the entire project
[ ] Call hierarchy - Explore incoming and outgoing function calls
[ ] Code lens - Inline actions and references provided by the language server

2. Navigation and project browsing
[ ] File explorer - Directory tree with Git status and file operations
[ ] Fuzzy finder - Files, buffers, symbols, text, and commands
[ ] Project-wide search - Live grep with ripgrep and quickfix integration
[ ] Recent files - Quickly reopen recently used files
[ ] Buffer management - Buffer picker, deletion, pinning, and alternate-buffer navigation
[ ] Harpoon-style marks - Jump instantly between important project files
[ ] Project root detection - Automatically recognize Git roots and project configuration
[ ] File outline - Navigate the current file by symbols
[ ] Quickfix and location lists - Browse search results, diagnostics, and references
[ ] Git hunk navigation - Jump between changes and inspect diffs

3. Diagnostics and code actions
[ ] Diagnostic list - Centralized picker for errors, warnings, and hints across files
[ ] Inline diagnostics - Virtual text, signs, and underlines
[ ] Diagnostic navigation - Next/previous diagnostic with severity filtering
[ ] Code action picker - Apply quick fixes and refactorings
[ ] Automatic formatting - Format on save, with per-language configuration
[ ] Linting - External linters for issues the LSP misses
[ ] Import management - Organize imports and remove unused imports
[ ] Trouble-style diagnostics UI - Dedicated panel for errors, warnings, and TODOs
[ ] Error filtering - Search diagnostics by file, severity, or source

4. Editing productivity
[ ] Surround editing - Add, change, and delete brackets, quotes, tags, and delimiters
[ ] Autopairs - Automatic bracket and quote pairing
[ ] Commenting - Toggle line and block comments
[ ] Multicursor editing - Edit multiple matching occurrences simultaneously
[ ] Incremental selection - Expand selections by syntax node
[ ] Text objects - Select functions, classes, arguments, blocks, and parameters
[ ] Structural refactoring - Extract functions, rename symbols, move code where supported
[ ] Smart indentation - Language-aware indentation and formatting
[ ] Undo history - Persistent undo and visual history browser
[ ] Session management - Restore buffers, tabs, windows, and working directories
[ ] Clipboard integration - System clipboard and convenient copy/paste behavior
[ ] Multiple cursors/selections - Efficient repetitive edits beyond standard Vim motions

5. Git integration
[ ] Git signs - Added, modified, and deleted line indicators
[ ] Hunk actions - Stage, reset, preview, and navigate hunks
[ ] Inline diffs - See changes against the index or HEAD
[ ] Git status picker - Browse changed, staged, and untracked files
[ ] Blame annotations - Show who changed a line and when
[ ] Commit history - Inspect commits and file history
[ ] Diff viewer - Compare revisions in a readable split
[ ] Merge conflict resolution - Navigate conflicts and choose or edit resolutions
[ ] Git worktree support - Manage parallel branches and working directories
[ ] GitHub/GitLab integration - Review pull requests and issue references, if useful

6. Terminal and execution
[ ] Integrated terminal - Open terminals in project-root-aware splits or floats
[ ] Per-project terminal - Keep terminals associated with their projects
[ ] Run current file - Execute the current file with the correct interpreter or runtime
[ ] Build commands - Run build, test, and compile commands
[ ] Task runner - Define reusable project commands
[ ] Quickfix output - Send compiler and test errors into navigable lists
[ ] REPL integration - Send code to Python, Lua, or other interactive interpreters
[ ] Output panels - Display command output without disrupting the editor
[ ] Background processes - Manage long-running servers, watchers, and dev commands
[ ] Terminal persistence - Keep useful terminal sessions alive between tasks

7. Testing and code quality
[ ] Test runner - Run tests from the current file or nearest test
[ ] Test discovery - Find tests and show their status
[ ] Test result panel - Navigate failures and jump to source lines
[ ] Coverage integration - Show test coverage when supported
[ ] Formatting and linting on save - Automate routine quality checks
[ ] Type checking - Configure language-specific static analysis
[ ] Project-wide test command - Run the full suite from a picker or keymap
[ ] Continuous testing - Optionally rerun relevant tests when files change

8. UI and IDE ergonomics
[ ] Statusline - Git branch, diagnostics, LSP, file encoding, and progress
[ ] Winbar or breadcrumbs - Show the current class, function, and scope
[ ] Tabline or bufferline - Quickly inspect open buffers
[ ] Which-key hints - Discover keymaps without memorizing everything
[ ] Command palette - Search commands and plugin actions
[ ] Notifications - Readable asynchronous messages and progress
[ ] Noice-style message UI - Improve command-line messages and LSP progress
[ ] Zen mode - Distraction-free editing
[ ] Scratchpads - Temporary code buffers and REPL-like experimentation
[ ] Persistent floating windows - Convenient hover, documentation, and picker interfaces
[ ] Color and theme consistency - Unified highlights across plugins, diagnostics, and terminals

9. Documentation and project understanding
[ ] Hover documentation - Show type information and documentation
[ ] K and keyword lookup - Open language or library documentation
[ ] Dependency browsing - Navigate installed packages and library source
[ ] Project documentation picker - Search README files, docs, and configuration
[ ] TODO/FIXME picker - Find project annotations and unfinished work
[ ] Symbol breadcrumbs - Track the current scope while navigating
[ ] API documentation lookup - Quickly find framework and library references
[ ] Code search across dependencies - Search source outside the current project when needed

10. Configuration quality and reliability
[ ] Lazy loading - Load plugins only when their features are needed
[ ] Plugin health checks - Check dependencies, executables, and configuration issues
[ ] LSP installation management - Install and update language servers consistently
[ ] Parser management - Install and update Treesitter parsers
[ ] Project-local configuration - Support trusted per-project settings and commands
[ ] Keymap consistency - Use predictable, conflict-free shortcuts
[ ] Performance profiling - Find slow startup, events, and plugins
[ ] Plugin update strategy - Keep updates manageable and recover from regressions
[ ] Backup and recovery - Version-control the config and preserve important state
[ ] Headless validation - Check Lua syntax and basic config loading automatically
