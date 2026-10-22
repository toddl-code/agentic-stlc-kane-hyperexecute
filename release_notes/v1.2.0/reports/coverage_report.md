# Requirement Coverage Analysis Report

_Generated: 2026-05-19 02:14 UTC_

## Coverage Summary

| Metric | Value |
|--------|-------|
| Total Requirements | 11 |
| Deprecated (excluded from %) | 1 |
| Fully Covered | 10 (100.0%) |
| Partially Covered | 0 |
| Uncovered | 0 |
| Negative Test Coverage | 0.0% |
| Mobile Coverage | 0.0% |
| Android Coverage | 0.0% |
| HyperExecute Coverage | 100.0% |
| Flaky Requirements | 0 |
| High-Risk Requirements | 2 |
| Missing Scenario Types | 19 |

## Feature Coverage Heatmap

| Feature | Criticality | Total | Covered | Partial | Uncovered | Failed | Flaky |
|---------|-------------|-------|---------|---------|-----------|--------|-------|
| TASK_CRUD | HIGH | 3 | 3 | 0 | 0 | 0 | 0 |
| TASK_LIST | HIGH | 1 | 1 | 0 | 0 | 0 | 0 |
| FILTER | MEDIUM | 1 | 1 | 0 | 0 | 0 | 0 |
| LABELS | MEDIUM | 1 | 1 | 0 | 0 | 0 | 0 |
| ARCHIVE | HIGH | 2 | 2 | 0 | 0 | 0 | 0 |
| GENERAL | MEDIUM | 2 | 2 | 0 | 0 | 0 | 0 |

## Requirement Coverage Detail

| Requirement | Coverage | Tests | Pass | Fail | Missing | Risk |
|-------------|----------|-------|------|------|---------|------|
| `AC-001` | FULL | 2 | 2 | 0 | 4 | MEDIUM |
| `AC-002` | FULL | 2 | 2 | 0 | 1 | MEDIUM |
| `AC-003` | FULL | 2 | 2 | 0 | 5 | HIGH |
| `AC-004` | FULL | 2 | 2 | 0 | 4 | MEDIUM |
| `AC-005` | DEPRECATED | 0 | 0 | 0 | 0 | DEPRECATED |
| `AC-006` | FULL | 2 | 2 | 0 | 1 | LOW |
| `AC-007` | FULL | 2 | 2 | 0 | 1 | LOW |
| `AC-008` | FULL | 2 | 2 | 0 | 1 | MEDIUM |
| `AC-009` | FULL | 2 | 2 | 0 | 0 | LOW |
| `AC-010` | FULL | 2 | 2 | 0 | 0 | LOW |
| `AC-011` | FULL | 2 | 2 | 0 | 2 | HIGH |

## Per-Requirement Detail

### AC-001 — TASK_CRUD

> User can create a task with a title and a due date

- **Coverage Status:** FULL  |  **Risk:** MEDIUM  |  **Criticality:** HIGH  |  **Kane:** passed
- **Functional Coverage:** 25.0%  |  **Negative Coverage:** 0.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[HAPPY_PATH]` Mark a task as complete
- `[HAPPY_PATH]` Delete a task
- `[NEGATIVE]` Submit task form with empty title
- `[EDGE_CASE]` Create a task with a past-due date

**Covered by:** SC-001

### AC-002 — TASK_LIST

> User can list all tasks ordered by due date, with overdue tasks pinned to the top

- **Coverage Status:** FULL  |  **Risk:** MEDIUM  |  **Criticality:** HIGH  |  **Kane:** passed
- **Functional Coverage:** 50.0%  |  **Negative Coverage:** 100.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[EDGE_CASE]` List view when no tasks exist

**Covered by:** SC-002

### AC-003 — TASK_CRUD

> User can mark a task as complete

- **Coverage Status:** FULL  |  **Risk:** HIGH  |  **Criticality:** HIGH  |  **Kane:** failed
- **Functional Coverage:** 25.0%  |  **Negative Coverage:** 0.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[HAPPY_PATH]` Create a task with a title and due date
- `[HAPPY_PATH]` Edit a task's title or due date
- `[HAPPY_PATH]` Delete a task
- `[NEGATIVE]` Submit task form with empty title
- `[EDGE_CASE]` Create a task with a past-due date

**Covered by:** SC-003

### AC-004 — TASK_CRUD

> User can edit a task's title or due date

- **Coverage Status:** FULL  |  **Risk:** MEDIUM  |  **Criticality:** HIGH  |  **Kane:** passed
- **Functional Coverage:** 25.0%  |  **Negative Coverage:** 0.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[HAPPY_PATH]` Mark a task as complete
- `[HAPPY_PATH]` Delete a task
- `[NEGATIVE]` Submit task form with empty title
- `[EDGE_CASE]` Create a task with a past-due date

**Covered by:** SC-004

### AC-005 — DEPRECATED

> User can delete a task

_Tombstoned in **v1.1.0**. Scenario kept in catalog for history; intentionally not executed._

### AC-006 — FILTER

> User can filter the task list by status (active / done / all)

- **Coverage Status:** FULL  |  **Risk:** LOW  |  **Criticality:** MEDIUM  |  **Kane:** passed
- **Functional Coverage:** 100.0%  |  **Negative Coverage:** 0.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[NEGATIVE]` Apply filter that produces no results

**Covered by:** SC-006

### AC-007 — LABELS

> User can attach a colored label to a task and filter by label

- **Coverage Status:** FULL  |  **Risk:** LOW  |  **Criticality:** MEDIUM  |  **Kane:** passed
- **Functional Coverage:** 50.0%  |  **Negative Coverage:** 0.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[NEGATIVE]` Filter by a label with no tasks attached

**Covered by:** SC-007

### AC-008 — ARCHIVE

> User can view archived tasks on the Archive page and restore them to the active list

- **Coverage Status:** FULL  |  **Risk:** MEDIUM  |  **Criticality:** HIGH  |  **Kane:** timeout
- **Functional Coverage:** 50.0%  |  **Negative Coverage:** 100.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[EDGE_CASE]` Archive page is empty

**Covered by:** SC-008

### AC-009 — GENERAL

> User can set a task's priority to High, Medium, or Low (or leave it unset)

- **Coverage Status:** FULL  |  **Risk:** LOW  |  **Criticality:** MEDIUM  |  **Kane:** passed
- **Functional Coverage:** 100.0%  |  **Negative Coverage:** 100.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Covered by:** SC-009

### AC-010 — GENERAL

> User can change a task's priority on the edit screen

- **Coverage Status:** FULL  |  **Risk:** LOW  |  **Criticality:** MEDIUM  |  **Kane:** passed
- **Functional Coverage:** 100.0%  |  **Negative Coverage:** 100.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Covered by:** SC-010

### AC-011 — ARCHIVE

> User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list

- **Coverage Status:** FULL  |  **Risk:** HIGH  |  **Criticality:** HIGH  |  **Kane:** failed
- **Functional Coverage:** 50.0%  |  **Negative Coverage:** 100.0%
- **Browsers Tested:** chrome, firefox
- **Flaky:** no

**Coverage Categories:**
| Happy Path | Negative | Edge Case | Mobile | Android | HyperExecute | Regression |
|------------|----------|-----------|--------|---------|--------------|------------|
| ✅ | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ |

**Execution:** 2 total | 2 passed | 0 failed | 0 flaky

**Missing Scenario Types:**
- `[HAPPY_PATH]` Restore an archived task back to the active list
- `[EDGE_CASE]` Archive page is empty

**Covered by:** SC-011

---
_Coverage analysis generated by Agentic STLC pipeline_

