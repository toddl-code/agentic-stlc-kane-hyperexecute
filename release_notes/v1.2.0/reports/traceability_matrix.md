# Traceability Matrix

- Run type: full
- Requirements covered: 11/11
- Browsers tested: chrome, firefox
- Playwright pass rate: 70.0% (7 passed, 3 failed or skipped)

| Req ID | Acceptance Criterion | Scenario | Test Case | Kane Verify | Kane Session | What Kane Saw | Chrome | Firefox | Playwright | Session | Overall |
|---|---|---|---|---|---|---|--- | ---|---|---|---|
| AC-001 | User can create a task with a title and a due date | SC-001 | TC-001 | passed | — | created a new task on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=AWA5G-H4IQB-EISPK-P5V4O) | passed |
| AC-002 | User can list all tasks ordered by due date, with overdue tasks pinned to the top | SC-002 | TC-002 | passed | — | created two tasks and verified their order on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=NEUZF-BXM4C-73IXO-4PQYQ) | passed |
| AC-003 | User can mark a task as complete | SC-003 | TC-003 | failed | — | — | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=AEXNL-AESIN-NYSIJ-AGVJY) | failed |
| AC-004 | User can edit a task's title or due date | SC-004 | TC-004 | passed | — | edited a task on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=B8N3P-S60U7-LYZOX-JG1JH) | passed |
| AC-005 | User can delete a task | SC-005 | TC-005 | skipped | — | removed in v1.1.0 | — | — | deprecated | — | deprecated |
| AC-006 | User can filter the task list by status (active / done / all) | SC-006 | TC-006 | passed | — | switched the task list status filter on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=AJCB4-NJRTD-YW7QI-ODIQC) | passed |
| AC-007 | User can attach a colored label to a task and filter by label | SC-007 | TC-007 | passed | — | filtered tasks by a blue label on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=OYKUT-DNHXR-UIHXQ-LYRHQ) | passed |
| AC-008 | User can view archived tasks on the Archive page and restore them to the active list | SC-008 | TC-008 | timeout | — | — | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=ACDZD-6JRBJ-RAYH8-LTMDA) | failed |
| AC-009 | User can set a task's priority to High, Medium, or Low (or leave it unset) | SC-009 | TC-009 | passed | — | set a task priority on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=8EXMA-22ZEK-5NGYP-D1DZL) | passed |
| AC-010 | User can change a task's priority on the edit screen | SC-010 | TC-010 | passed | — | updated a task's priority on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=8HRTC-MGQBY-2V6RD-6D6ZQ) | passed |
| AC-011 | User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list | SC-011 | TC-011 | failed | — | verified archived tasks on nosecretformula.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=5XY36-IH9VF-B1IUH-9EEQL) | failed |

## Kane AI Verification Detail

### AC-001 — User can create a task with a title and a due date
> created a new task on nosecretformula.vercel.app

**Steps observed by Kane AI:**
- navigate: Navigate to https://nosecretformula.vercel.app/ to start creating a task with ti
- type: Filled 'API created task' via DOM locator: role=textbox[name='Title']
- type: Filled '2026-05-21' via DOM locator: role=textbox[name='Due date']
- click: Clicked via DOM locator: role=button[name='Add task']
- analyze: ANALYZE(visual, 'Is the task list table visible showing at least one task row wi
- assert: On https://nosecretformula.vercel.app/ — User can create a task with a title and

**Full summary:** Opened nosecretformula.vercel.app and went to the tasks page.
Filled in the required fields (task title and due date) and saved the new task.
Confirmed the tasks list shows at least one task with a due date in the DUE column.

### AC-002 — User can list all tasks ordered by due date, with overdue tasks pinned to the top
> created two tasks and verified their order on nosecretformula.vercel.app

**Steps observed by Kane AI:**
- navigate: Navigate to https://nosecretformula.vercel.app/ as specified in the objective.
- wait: Wait briefly (no UI change) while confirming the task 'Overdue 002' with due dat
- wait: Wait briefly on the Tasks page (no UI change) while confirming 'Future 002' is a
- analyze: ANALYZE(visual, "In the task list table shown on the page (under the DONE/TITLE/
- assert: Confirm the task list shows 'Overdue 002' pinned at the top of the list (above '
- analyze: ANALYZE(visual, 'Is the task titled "Overdue 002" shown as the first (top) item 
- assert: On https://nosecretformula.vercel.app/ — Step 1 (SETUP): create a task titled 'O

**Full summary:** Opened nosecretformula.vercel.app to add two tasks.
Created a task titled “Overdue 002” with the due date 2026-05-10.
Created a second task titled “Future 002” with the due date 2026-05-25.
Verified the task list shows “Overdue 002” at the top, above “Future 002,” because its due date is earlier (relative to 2026-05-17).
Stopped after confirming the correct order and did not delete any tasks.

### AC-003 — User can mark a task as complete

**Full summary:** {"type":"test_md_step_start","step_index":1,"heading":"Step 1","ref":null}
{"type":"error","message":"Step API error 503: {\"error\":\"all providers are unavailable\"}"}
{"type":"test_md_step_end","step_index":1,"status":"failed","duration_s":78,"ref_kind":null,"inlined_count":null,"failed_sub_step_index":null}
{"type":"test_md_summary","overall_status":"failed","duration_s":78,"steps":{"total":1,"passed":0,"failed":1,"skipped":0,"replay_decisions":0,"author_decisions":1},"retries":{"triggered":

### AC-004 — User can edit a task's title or due date
> edited a task on nosecretformula.vercel.app

**Steps observed by Kane AI:**
- navigate: Navigate to https://nosecretformula.vercel.app/ to begin verifying task editing 
- click: Clicked via DOM locator: role=link[name='Edit']
- analyze: ANALYZE(visual, 'Is an "Edit task" form visible with a "Title" input field?', ke
- assert: On https://nosecretformula.vercel.app/ — User can edit a task's title or due dat

**Full summary:** Opened nosecretformula.vercel.app and went to the tasks area.
Selected an existing task (Task #6) and entered edit mode.
Reached the “Edit task #6” page where the Title field is available for updating, indicating the task can be edited.

### AC-005 — User can delete a task
> removed in v1.1.0

### AC-006 — User can filter the task list by status (active / done / all)
> switched the task list status filter on nosecretformula.vercel.app

**Steps observed by Kane AI:**
- navigate: Navigate to https://nosecretformula.vercel.app/ to access the task list app for 
- click: Clicked via DOM locator: role=link[name='Done']
- analyze: ANALYZE(visual, 'Is the "Done" status filter pill selected/highlighted above the
- assert: On https://nosecretformula.vercel.app/ — User can filter the task list by status

**Full summary:** Opened https://nosecretformula.vercel.app/ and located the status filter controls above the task list.
Switched the task list view between the Active, Done, and All status filters.
Finished with the Done filter selected, showing the Done tasks view at https://nosecretformula.vercel.app/tasks?status=done.

### AC-007 — User can attach a colored label to a task and filter by label
> filtered tasks by a blue label on nosecretformula.vercel.app

**Steps observed by Kane AI:**
- navigate: Navigate to https://nosecretformula.vercel.app/ to start the task/label flow.
- type: Filled 'Label filter demo task' via DOM locator: role=textbox[name='Title']
- select: Selected 'blue' via DOM locator: role=combobox[name='Label']
- click: Clicked via DOM locator: role=button[name='Add task']
- click: Clicked via DOM locator: role=link[name='blue']
- analyze: ANALYZE(visual, 'Is there a task row showing a colored label pill in the Label c
- assert: On https://nosecretformula.vercel.app/ — User can attach a colored label to a ta

**Full summary:** Opened https://nosecretformula.vercel.app/.
Created or selected a task (“Label filter demo task”) and attached a blue label to it.
Used the label filter to show only tasks with the blue label.
Ended on the filtered tasks view showing the task with a blue “blue” label.

### AC-008 — User can view archived tasks on the Archive page and restore them to the active list

**Full summary:** kane-cli testmd run wedged past 240s — killed by subprocess.TimeoutExpired

### AC-009 — User can set a task's priority to High, Medium, or Low (or leave it unset)
> set a task priority on nosecretformula.vercel.app

**Full summary:** Opened https://nosecretformula.vercel.app/ and went to the Tasks page.
Used the task form (add or edit) to set a task’s priority.
Confirmed the change worked by seeing a task in the list displaying a red “HIGH” priority badge on the Tasks page.

### AC-010 — User can change a task's priority on the edit screen
> updated a task's priority on nosecretformula.vercel.app

**Full summary:** Created a new task titled "Priority demo task" with due date 2026-05-20 using the Add a task form.
Opened that task’s Edit screen from the task row, changed the priority to High, and saved the update.
Returned to the tasks list and confirmed the "Priority demo task" row shows a High priority chip.

### AC-011 — User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list
> verified archived tasks on nosecretformula.vercel.app

**Full summary:** The run navigated from the Tasks page to the Archive page to check that two tasks (“Bulk archive A” and “Bulk archive B”) were no longer in the active task list and instead appeared in the Archive.
The Archive page loaded successfully and shows a table of archived tasks with a “Restore” button for each row.
What went wrong: the final confirmation step failed when checking that both tasks had been removed from the active list (i.e., verifying the move from Tasks to Archive). The run stopped on the Archive page during this verification.
Based on the Archive page screenshot, “Bulk archive A” and “Bulk archive B” are visible in the Archive list, but the automation could not confirm the other half of the requirement (that they are gone from the active Tasks list). This likely failed because the check for the active list didn’t run on the Tasks page or the page state didn’t refresh/wasn’t revisited after archiving, so the system couldn’t reliably prove the tasks were removed from the active view.
A follow-on error (“step file not found”) occurred after the failed verification, indicating the run could not continue once the confirmation step failed.


## Kane Analysis Warnings

- SC-003: Kane returned `failed` while Playwright passed.
- SC-011: Kane returned `failed` while Playwright passed.

## Failing Scenarios

- SC-003
- SC-008
- SC-011

## Result Analysis

- **Overall health:** critical
- **Risk level:** high
- **Kane AI pass rate:** 77.8%
- **Playwright pass rate:** 70.0%
- **Browsers tested:** chrome, firefox

**Failed requirements:**
- AC-003
- AC-011

**Key findings:**
- AC-003: failed Kane AI verification; Playwright status is passed.
- AC-011: failed Kane AI verification; Playwright status is passed.

**Recommendation:** Release carries medium risk: 2 failing requirement(s). Review browser-specific failures before conditional approval.

