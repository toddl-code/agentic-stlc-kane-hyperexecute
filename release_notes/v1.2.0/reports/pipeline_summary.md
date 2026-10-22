# Agentic STLC — Pipeline Report


## Pipeline Stage Status

| Stage | Name | Status | Normalized Status | Details |
|-------|------|--------|-------------------|---------|
| 1 | KaneAI Verification | 🟡 | PARTIAL | 7/11 criteria passed |
| 2–4 | Scenarios + Test Gen + Selection | ✅ | PASSED | 10 active tests generated |
| 5 | HyperExecute Regression | ✅ | PASSED | 20/20 tasks · parser: api_ok |
| 6 | Result Aggregation | ✅ | PASSED | 20 results normalized |
| 7–8 | Traceability + Verdict | 🔴 | RED | see release recommendation below |

## Execution Links

- [HyperExecute Dashboard](https://hyperexecute.lambdatest.com/hyperexecute/task?jobId=a04cf835-d54e-42ad-b3a2-e65377f4737b)

## Stage 0 · Agentic Release Notes

**v1.1.0 → v1.2.0**  ·  Mode: **PROPOSE (no mutations)**  ·  Match threshold: `0.5`

| Operation | Count |
|---|---|
| 🟢 ADD       | 3 |
| 🟡 EDIT      | 0 |
| 🔴 DELETE    | 0 |
| ⚠️ Unmatched | 2 |

| Op | Scenario | Requirement | Issue | Score | Change |
|---|---|---|---|---|---|
| 🟢 ADD | `—` | `AC-009` | — | 0.00 | **new:** User can set a task's priority to High, Medium, or Low (or leave it unset) |
| 🟢 ADD | `—` | `AC-010` | — | 0.00 | **new:** User can change a task's priority on the edit screen |
| 🟢 ADD | `—` | `AC-011` | — | 0.00 | **new:** User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list |

**Unmatched items** (manual scenario assignment required):

| Section | Best score | Reason | Item |
|---|---|---|---|
| Changed | 0.23 | no scenario cleared similarity threshold 0.5 | Task list sort now uses priority as a secondary key after due date (High → Med → Low → unset) |
| Changed | 0.15 | no scenario cleared similarity threshold 0.5 | The label cell in the task list now also displays the priority chip when set |

> ℹ️ Preview only. Run with `apply_release_delta=true` to commit operations to `scenarios.json` and freeze the new release lock.

## Stage 1 · Kane AI Functional Verification

| Req ID | Acceptance Criterion | Kane Status | What Kane Observed |
|---|---|---|---|
| `AC-001` | User can create a task with a title and a due date | ✅ passed | created a new task on nosecretformula.vercel.app |
| `AC-002` | User can list all tasks ordered by due date, with overdue ta | ✅ passed | created two tasks and verified their order on nosecretformula.vercel.app |
| `AC-003` | User can mark a task as complete | ❌ failed | — |
| `AC-004` | User can edit a task's title or due date | ✅ passed | edited a task on nosecretformula.vercel.app |
| `AC-005` | User can delete a task | ⏭️ skipped | — |
| `AC-006` | User can filter the task list by status (active / done / all | ✅ passed | switched the task list status filter on nosecretformula.vercel.app |
| `AC-007` | User can attach a colored label to a task and filter by labe | ✅ passed | filtered tasks by a blue label on nosecretformula.vercel.app |
| `AC-008` | User can view archived tasks on the Archive page and restore | ❓ timeout | — |
| `AC-009` | User can set a task's priority to High, Medium, or Low (or l | ✅ passed | set a task priority on nosecretformula.vercel.app |
| `AC-010` | User can change a task's priority on the edit screen | ✅ passed | updated a task's priority on nosecretformula.vercel.app |
| `AC-011` | User can archive all completed tasks in one click via an "Ar | ❌ failed | verified archived tasks on nosecretformula.vercel.app |

**2 criterion/criteria failed Kane AI verification:**
- ❌ `AC-003` User can mark a task as complete — 
- ❌ `AC-011` User can archive all completed tasks in one click via — verified archived tasks on nosecretformula.vercel.app

## Stage 2 · Scenario Catalog

Total: **11** — 10 active, 0 new, 0 updated, 1 deprecated

## Stage 2b · Scenario Confidence Analysis

**Confidence gate:** ✅ PASSED

**Confidence Score Ranges** _(score → level)_:

| Score Range | Level | Meaning |
|---|---|---|
| 90 – 100 | 🟢 VERY_HIGH    | All coverage dimensions satisfied |
| 75 – 89  | 🟡 HIGH         | Core flow validated; one minor coverage gap |
| 50 – 74  | 🟠 MEDIUM       | Happy path present; two important gaps remain |
| 1 – 49   | 🔴 LOW          | Three or more gaps OR Kane functional failure |
| 0        | 🚨 CRITICAL_GAP | No scenario mapped — zero automated coverage |

**Distribution across this release:**

| Level | Count |
|---|---|
| 🟢 VERY_HIGH    | 0 |
| 🟡 HIGH         | 8 |
| 🟠 MEDIUM       | 0 |
| 🔴 LOW          | 2 |
| 🚨 CRITICAL_GAP | 0 |

### Requirement Confidence Detail

| Requirement | Scenario | Feature | Criticality | Score | Confidence | Kane | Top Gap |
|---|---|---|---|---|---|---|---|
| `AC-001` | `SC-001` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-002` | `SC-002` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-003` | `SC-003` | GENERAL | LOW | **25** | 🔴 LOW | ❌ failed | Kane AI functional verification failed |
| `AC-004` | `SC-004` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-005` | `SC-005` | — | ⚰️ DEPRECATED | — | ⚰️ DEPRECATED | ⏭️ skipped | removed in v1.1.0 |
| `AC-006` | `SC-006` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-007` | `SC-007` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-008` | `SC-008` | GENERAL | LOW | **75** | 🟡 HIGH | timeout | Missing negative/error scenario coverage |
| `AC-009` | `SC-009` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-010` | `SC-010` | GENERAL | LOW | **75** | 🟡 HIGH | ✅ passed | Missing negative/error scenario coverage |
| `AC-011` | `SC-011` | GENERAL | LOW | **25** | 🔴 LOW | ❌ failed | Kane AI functional verification failed |

## Stage 3 · Generated Playwright Tests

**10** test function(s) in `tests/playwright/test_powerapps.py`:

| Scenario | Test Case | Function |
|---|---|---|
| `SC-001` | `TC-001` | `test_sc_001_user_can_create_a_task_with_a_title_and` |
| `SC-002` | `TC-002` | `test_sc_002_user_can_list_all_tasks_ordered_by_due_d` |
| `SC-003` | `TC-003` | `test_sc_003_user_can_mark_a_task_as_complete` |
| `SC-004` | `TC-004` | `test_sc_004_user_can_edit_a_task_s_title_or_due_date` |
| `SC-006` | `TC-006` | `test_sc_006_user_can_filter_the_task_list_by_status` |
| `SC-007` | `TC-007` | `test_sc_007_filtered_tasks_by_a_red_label_on_nosecretformula_vercel_app` |
| `SC-008` | `TC-008` | `test_sc_008_archived_and_restored_a_task_on_nosecretformula_vercel_app` |
| `SC-009` | `TC-009` | `test_sc_009_set_task_priority_options_on_kaneai_playground_lambdatest_io` |
| `SC-010` | `TC-010` | `test_sc_010_attempted_to_complete_the_guided_kaneai_flow_on_kaneai_playg` |
| `SC-011` | `TC-011` | `test_sc_011_user_can_archive_all_completed_tasks_in_one_click_via` |

## Stage 4 · Test Selection

Run type: **full** · **10** scenario(s) submitted to HyperExecute

## Stage 5 · HyperExecute Regression (Multi-Browser)

| Metric | Raw Value | Normalized | Evidence |
|--------|-----------|------------|----------|
| HyperExecute Job | `a04cf835-d54e-42ad-b3a2-e65377f4737b` | — | [Open in LambdaTest ↗](https://hyperexecute.lambdatest.com/hyperexecute/task?jobId=a04cf835-d54e-42ad-b3a2-e65377f4737b) |
| Job Status | `failed` | **PASSED** *(reconciled: all tasks passed)* | source: api_ok |
| Parser Status | `api_ok` | — | how status was resolved |
| Browsers | — | — | chrome, firefox |
| Total tasks | 20 | — | submitted to HyperExecute |
| ✅ Passed | 20 | — | task-level results |
| ❌ Failed | 0 | — | task-level results |
| Pass rate | 70.0% | — | across all browsers |

> **Status resolution:** ✅ Job status fetched directly from HyperExecute API

### Per-Test Results

| Test | Status | Session |
|---|---|---|
| `tests/playwright/test_powerapps.py::test_sc_011_user_can_archive_all_completed_tasks_in_one_click_via` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=5XY36-IH9VF-B1IUH-9EEQL) |
| `tests/playwright/test_powerapps.py::test_sc_009_set_task_priority_options_on_kaneai_playground_lambdatest_io` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=8EXMA-22ZEK-5NGYP-D1DZL) |
| `tests/playwright/test_powerapps.py::test_sc_010_attempted_to_complete_the_guided_kaneai_flow_on_kaneai_playg` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=8HRTC-MGQBY-2V6RD-6D6ZQ) |
| `tests/playwright/test_powerapps.py::test_sc_008_archived_and_restored_a_task_on_nosecretformula_vercel_app` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=ACDZD-6JRBJ-RAYH8-LTMDA) |
| `tests/playwright/test_powerapps.py::test_sc_003_user_can_mark_a_task_as_complete` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=AEXNL-AESIN-NYSIJ-AGVJY) |
| `tests/playwright/test_powerapps.py::test_sc_006_user_can_filter_the_task_list_by_status` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=AJCB4-NJRTD-YW7QI-ODIQC) |
| `tests/playwright/test_powerapps.py::test_sc_001_user_can_create_a_task_with_a_title_and` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=AWA5G-H4IQB-EISPK-P5V4O) |
| `tests/playwright/test_powerapps.py::test_sc_004_user_can_edit_a_task_s_title_or_due_date` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=B8N3P-S60U7-LYZOX-JG1JH) |
| `tests/playwright/test_powerapps.py::test_sc_002_user_can_list_all_tasks_ordered_by_due_d` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=NEUZF-BXM4C-73IXO-4PQYQ) |
| `tests/playwright/test_powerapps.py::test_sc_007_filtered_tasks_by_a_red_label_on_nosecretformula_vercel_app` | ✅ passed | [View session](https://automation.lambdatest.com/test?testID=OYKUT-DNHXR-UIHXQ-LYRHQ) |

### Browser Breakdown

| Scenario | Chrome | Firefox |
|---| --- | --- |
| `SC-001` | ✅ passed | ✅ passed |
| `SC-002` | ✅ passed | ✅ passed |
| `SC-003` | ✅ passed | ✅ passed |
| `SC-004` | ✅ passed | ✅ passed |
| `SC-006` | ✅ passed | ✅ passed |
| `SC-007` | ✅ passed | ✅ passed |
| `SC-008` | ✅ passed | ✅ passed |
| `SC-009` | ✅ passed | ✅ passed |
| `SC-010` | ✅ passed | ✅ passed |
| `SC-011` | ✅ passed | ✅ passed |

## Stage 6 · Traceability Matrix

**7/10** regression tests passed across **2** browser(s) — 70.0% pass rate

| Req | Acceptance Criterion | Scenario | Test Case | Kane AI | Kane Session | What Kane Saw | Chrome | Firefox | Playwright | Session | Overall |
|---|---|---|---|---|---|---|--- | ---|---|---|---|
| `AC-001` | User can create a task with a title and a due date | `SC-001` | `TC-001` | passed | — | created a new task on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=AWA5G-H4IQB-EISPK-P5V4O) | ✅ passed |
| `AC-002` | User can list all tasks ordered by due date, with overd… | `SC-002` | `TC-002` | passed | — | created two tasks and verified their order on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=NEUZF-BXM4C-73IXO-4PQYQ) | ✅ passed |
| `AC-003` | User can mark a task as complete | `SC-003` | `TC-003` | failed | — | — | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=AEXNL-AESIN-NYSIJ-AGVJY) | ❌ failed |
| `AC-004` | User can edit a task's title or due date | `SC-004` | `TC-004` | passed | — | edited a task on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=B8N3P-S60U7-LYZOX-JG1JH) | ✅ passed |
| `AC-005` | User can delete a task | `SC-005` | `TC-005` | skipped | — | removed in v1.1.0 | ⚠️ — | ⚠️ — | deprecated | — | 🚫 deprecated |
| `AC-006` | User can filter the task list by status (active / done … | `SC-006` | `TC-006` | passed | — | switched the task list status filter on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=AJCB4-NJRTD-YW7QI-ODIQC) | ✅ passed |
| `AC-007` | User can attach a colored label to a task and filter by… | `SC-007` | `TC-007` | passed | — | filtered tasks by a blue label on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=OYKUT-DNHXR-UIHXQ-LYRHQ) | ✅ passed |
| `AC-008` | User can view archived tasks on the Archive page and re… | `SC-008` | `TC-008` | timeout | — | — | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=ACDZD-6JRBJ-RAYH8-LTMDA) | ❌ failed |
| `AC-009` | User can set a task's priority to High, Medium, or Low … | `SC-009` | `TC-009` | passed | — | set a task priority on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=8EXMA-22ZEK-5NGYP-D1DZL) | ✅ passed |
| `AC-010` | User can change a task's priority on the edit screen | `SC-010` | `TC-010` | passed | — | updated a task's priority on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=8HRTC-MGQBY-2V6RD-6D6ZQ) | ✅ passed |
| `AC-011` | User can archive all completed tasks in one click via a… | `SC-011` | `TC-011` | failed | — | verified archived tasks on nosecretformula.vercel.app | ✅ passed | ✅ passed | passed | [session](https://automation.lambdatest.com/test?testID=5XY36-IH9VF-B1IUH-9EEQL) | ❌ failed |

<details>
<summary>Kane AI verification steps (expand)</summary>

**`AC-001` — User can create a task with a title and a due date**

- navigate: Navigate to https://nosecretformula.vercel.app/ to start creating a task with ti
- type: Filled 'API created task' via DOM locator: role=textbox[name='Title']
- type: Filled '2026-05-21' via DOM locator: role=textbox[name='Due date']
- click: Clicked via DOM locator: role=button[name='Add task']
- analyze: ANALYZE(visual, 'Is the task list table visible showing at least one task row wi
- assert: On https://nosecretformula.vercel.app/ — User can create a task with a title and

_Opened nosecretformula.vercel.app and went to the tasks page.
Filled in the required fields (task title and due date) and saved the new task.
Confirmed the tasks list shows at least one task with a due date in the DUE column._

**`AC-002` — User can list all tasks ordered by due date, with overdue tasks pinned to the top**

- navigate: Navigate to https://nosecretformula.vercel.app/ as specified in the objective.
- wait: Wait briefly (no UI change) while confirming the task 'Overdue 002' with due dat
- wait: Wait briefly on the Tasks page (no UI change) while confirming 'Future 002' is a
- analyze: ANALYZE(visual, "In the task list table shown on the page (under the DONE/TITLE/
- assert: Confirm the task list shows 'Overdue 002' pinned at the top of the list (above '
- analyze: ANALYZE(visual, 'Is the task titled "Overdue 002" shown as the first (top) item 
- assert: On https://nosecretformula.vercel.app/ — Step 1 (SETUP): create a task titled 'O

_Opened nosecretformula.vercel.app to add two tasks.
Created a task titled “Overdue 002” with the due date 2026-05-10.
Created a second task titled “Future 002” with the due date 2026-05-25.
Verified the task list shows “Overdue 002” at the top, above “Future 002,” because its due date is earlier (relative to 2026-05-17).
Stopped after confirming the correct order and did not delete any tasks._

**`AC-003` — User can mark a task as complete**


_{"type":"test_md_step_start","step_index":1,"heading":"Step 1","ref":null}
{"type":"error","message":"Step API error 503: {\"error\":\"all providers are unavailable\"}"}
{"type":"test_md_step_end","step_index":1,"status":"failed","duration_s":78,"ref_kind":null,"inlined_count":null,"failed_sub_step_index":null}
{"type":"test_md_summary","overall_status":"failed","duration_s":78,"steps":{"total":1,"passed":0,"failed":1,"skipped":0,"replay_decisions":0,"author_decisions":1},"retries":{"triggered":_

**`AC-004` — User can edit a task's title or due date**

- navigate: Navigate to https://nosecretformula.vercel.app/ to begin verifying task editing 
- click: Clicked via DOM locator: role=link[name='Edit']
- analyze: ANALYZE(visual, 'Is an "Edit task" form visible with a "Title" input field?', ke
- assert: On https://nosecretformula.vercel.app/ — User can edit a task's title or due dat

_Opened nosecretformula.vercel.app and went to the tasks area.
Selected an existing task (Task #6) and entered edit mode.
Reached the “Edit task #6” page where the Title field is available for updating, indicating the task can be edited._

**`AC-006` — User can filter the task list by status (active / done / all)**

- navigate: Navigate to https://nosecretformula.vercel.app/ to access the task list app for 
- click: Clicked via DOM locator: role=link[name='Done']
- analyze: ANALYZE(visual, 'Is the "Done" status filter pill selected/highlighted above the
- assert: On https://nosecretformula.vercel.app/ — User can filter the task list by status

_Opened https://nosecretformula.vercel.app/ and located the status filter controls above the task list.
Switched the task list view between the Active, Done, and All status filters.
Finished with the Done filter selected, showing the Done tasks view at https://nosecretformula.vercel.app/tasks?status=done._

**`AC-007` — User can attach a colored label to a task and filter by label**

- navigate: Navigate to https://nosecretformula.vercel.app/ to start the task/label flow.
- type: Filled 'Label filter demo task' via DOM locator: role=textbox[name='Title']
- select: Selected 'blue' via DOM locator: role=combobox[name='Label']
- click: Clicked via DOM locator: role=button[name='Add task']
- click: Clicked via DOM locator: role=link[name='blue']
- analyze: ANALYZE(visual, 'Is there a task row showing a colored label pill in the Label c
- assert: On https://nosecretformula.vercel.app/ — User can attach a colored label to a ta

_Opened https://nosecretformula.vercel.app/.
Created or selected a task (“Label filter demo task”) and attached a blue label to it.
Used the label filter to show only tasks with the blue label.
Ended on the filtered tasks view showing the task with a blue “blue” label._

**`AC-008` — User can view archived tasks on the Archive page and restore them to the active list**


_kane-cli testmd run wedged past 240s — killed by subprocess.TimeoutExpired_

**`AC-009` — User can set a task's priority to High, Medium, or Low (or leave it unset)**


_Opened https://nosecretformula.vercel.app/ and went to the Tasks page.
Used the task form (add or edit) to set a task’s priority.
Confirmed the change worked by seeing a task in the list displaying a red “HIGH” priority badge on the Tasks page._

**`AC-010` — User can change a task's priority on the edit screen**


_Created a new task titled "Priority demo task" with due date 2026-05-20 using the Add a task form.
Opened that task’s Edit screen from the task row, changed the priority to High, and saved the update.
Returned to the tasks list and confirmed the "Priority demo task" row shows a High priority chip._

**`AC-011` — User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list**


_The run navigated from the Tasks page to the Archive page to check that two tasks (“Bulk archive A” and “Bulk archive B”) were no longer in the active task list and instead appeared in the Archive.
The Archive page loaded successfully and shows a table of archived tasks with a “Restore” button for each row.
What went wrong: the final confirmation step failed when checking that both tasks had been removed from the active list (i.e., verifying the move from Tasks to Archive). The run stopped on the Archive page during this verification.
Based on the Archive page screenshot, “Bulk archive A” and “Bulk archive B” are visible in the Archive list, but the automation could not confirm the other half of the requirement (that they are gone from the active Tasks list). This likely failed because the check for the active list didn’t run on the Tasks page or the page state didn’t refresh/wasn’t revisited after archiving, so the system couldn’t reliably prove the tasks were removed from the active view.
A follow-on error (“step file not found”) occurred after the failed verification, indicating the run could not continue once the confirmation step failed._

</details>

### Result Analysis

- **Overall health:** critical
- **Risk level:** high
- **Kane AI pass rate:** 77.8%
- **Playwright pass rate:** 70.0%

- AC-003: failed Kane AI verification; Playwright status is passed.
- AC-011: failed Kane AI verification; Playwright status is passed.

> Release carries medium risk: 2 failing requirement(s). Review browser-specific failures before conditional approval.

**Failing scenarios:**
- ❌ `SC-003`
- ❌ `SC-008`
- ❌ `SC-011`

## Data Validation

Traceability integrity: **✅ VALID**

## Requirement Coverage Analysis

| Metric | Value |
|--------|-------|
| Total Requirements | 11 |
| Fully Covered | 10 (100.0%) |
| Partially Covered | 0 |
| Uncovered | 0 |
| ⚰️ Deprecated (tombstone) | 1 |
| Negative Test Coverage | 0.0% |
| Mobile Coverage | 0.0% |
| Android Coverage | 0.0% |
| HyperExecute Coverage | 100.0% |
| Flaky Requirements | 0 |
| High-Risk Requirements | 2 |
| Missing Scenario Types | 19 |

### Requirement Coverage Detail

| Requirement | Coverage | Tests | Pass | Fail | Missing | Risk |
|-------------|----------|-------|------|------|---------|------|
| `AC-001` | ✅ FULL | 2 | 2 | 0 | 4 | 🟡 MEDIUM |
| `AC-002` | ✅ FULL | 2 | 2 | 0 | 1 | 🟡 MEDIUM |
| `AC-003` | ✅ FULL | 2 | 2 | 0 | 5 | 🔴 HIGH |
| `AC-004` | ✅ FULL | 2 | 2 | 0 | 4 | 🟡 MEDIUM |
| `AC-005` | ⚰️ DEPRECATED | — | — | — | — | — *(removed in v1.1.0)* |
| `AC-006` | ✅ FULL | 2 | 2 | 0 | 1 | 🟢 LOW |
| `AC-007` | ✅ FULL | 2 | 2 | 0 | 1 | 🟢 LOW |
| `AC-008` | ✅ FULL | 2 | 2 | 0 | 1 | 🟡 MEDIUM |
| `AC-009` | ✅ FULL | 2 | 2 | 0 | 0 | 🟢 LOW |
| `AC-010` | ✅ FULL | 2 | 2 | 0 | 0 | 🟢 LOW |
| `AC-011` | ✅ FULL | 2 | 2 | 0 | 2 | 🔴 HIGH |

### Feature Coverage Heatmap

| Feature | Criticality | Total | Covered | Partial | Uncovered |
|---------|-------------|-------|---------|---------|-----------|
| TASK_CRUD | 🔴 HIGH | 3 | 3 | 0 | 0 |
| ARCHIVE | 🔴 HIGH | 2 | 2 | 0 | 0 |
| GENERAL | 🟡 MEDIUM | 2 | 2 | 0 | 0 |
| TASK_LIST | 🔴 HIGH | 1 | 1 | 0 | 0 |
| FILTER | 🟡 MEDIUM | 1 | 1 | 0 | 0 |
| LABELS | 🟡 MEDIUM | 1 | 1 | 0 | 0 |

### Missing Scenario Types (Coverage Gaps)

**`AC-001`** — TASK_CRUD (criticality: HIGH)
- `[🟢 HAPPY]` Mark a task as complete
- `[🟢 HAPPY]` Delete a task
- `[🔴 NEGATIVE]` Submit task form with empty title
- `[🟡 EDGE]` Create a task with a past-due date

**`AC-002`** — TASK_LIST (criticality: HIGH)
- `[🟡 EDGE]` List view when no tasks exist

**`AC-003`** — TASK_CRUD (criticality: HIGH)
- `[🟢 HAPPY]` Create a task with a title and due date
- `[🟢 HAPPY]` Edit a task's title or due date
- `[🟢 HAPPY]` Delete a task
- `[🔴 NEGATIVE]` Submit task form with empty title
- `[🟡 EDGE]` Create a task with a past-due date

**`AC-004`** — TASK_CRUD (criticality: HIGH)
- `[🟢 HAPPY]` Mark a task as complete
- `[🟢 HAPPY]` Delete a task
- `[🔴 NEGATIVE]` Submit task form with empty title
- `[🟡 EDGE]` Create a task with a past-due date

**`AC-006`** — FILTER (criticality: MEDIUM)
- `[🔴 NEGATIVE]` Apply filter that produces no results

**`AC-007`** — LABELS (criticality: MEDIUM)
- `[🔴 NEGATIVE]` Filter by a label with no tasks attached

**`AC-008`** — ARCHIVE (criticality: HIGH)
- `[🟡 EDGE]` Archive page is empty

**`AC-011`** — ARCHIVE (criticality: HIGH)
- `[🟢 HAPPY]` Restore an archived task back to the active list
- `[🟡 EDGE]` Archive page is empty

## Quality Gates

**Overall: ❌ FAILED**  (1 critical failures, 0 warnings)

| Gate | Severity | Status | Actual | Threshold |
|------|----------|--------|--------|-----------|
| Minimum requirement coverage | 🟡 WARNING | ✅ | 100.0 % | 50.0 % |
| Minimum test pass rate | 🔴 CRITICAL | ❌ | 70.0 % | 75.0 % |
| Flaky test threshold | 🟡 WARNING | ✅ | 0 flaky requirements | 5 flaky requirements |
| Critical requirements covered | 🟡 WARNING | ✅ | 0 uncovered HIGH-criticality requirements | 0 uncovered HIGH-criticality requirements |
| No failing high-risk requirements | 🔴 CRITICAL | ✅ | 0 failing high-risk requirements | 0 failing high-risk requirements |

## Change Impact Analysis

**23 file(s) changed — max impact: 🔴 CRITICAL**

> FULL regression required — 11 requirement(s) impacted by critical file changes. Run all scenarios.

**11 requirement(s) impacted:** `AC-001`, `AC-002`, `AC-003`, `AC-004`, `AC-005`, `AC-006`, `AC-007`, `AC-008`, `AC-009`, `AC-010`...

## Release Recommendation

### 🔴 RED

Block release because pass rate or coverage is below the acceptance threshold.

- Requirements covered: **11/11**
- Browsers tested: **chrome, firefox**
- Playwright pass rate: **70.0%** (7 passed, 3 failed)

