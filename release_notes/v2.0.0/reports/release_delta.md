# Release Delta — v1.2.0 → v2.0.0

_Generated: 2026-06-08T16:32:08.450996+00:00_
_Match threshold: 0.5_
_Mode: PROPOSE (no mutations)_

## Summary

- ADD: **4**
- EDIT: **0**
- DELETE: **0**
- UNMATCHED: **2**

## Operations

| Op | SC | Req | Issue | Score | Item |
|---|---|---|---|---|---|
| **ADD** | `—` | `AC-012` | — | 0.00 | User can access TaskFlow under a session-prefixed URL of the form /s/<sessionid>/tasks where sessionid is a 32-character lowercase hex UUID |
| **ADD** | `—` | `AC-013` | — | 0.00 | User visiting a fresh session URL sees an empty task list with the create form available; the session is created implicitly on first write with no signup required |
| **ADD** | `—` | `AC-014` | — | 0.00 | User visiting a URL with a malformed session ID (not the literal "default" and not a 32-character lowercase hex string) receives an HTTP 404 response |
| **ADD** | `—` | `AC-015` | — | 0.00 | Tasks, archives, labels, and priorities created under one session are invisible and untouchable from any other session |

## Unmatched items (require manual scenario assignment)

| Section | Best score | Reason | Item |
|---|---|---|---|
| Changed | 0.27 | no scenario cleared similarity threshold 0.5 | Task list and Archive page now reflect only data from the active session |
| Changed | 0.18 | no scenario cleared similarity threshold 0.5 | The "Archive completed" bulk action and its count reflect only completed tasks in the active session |
