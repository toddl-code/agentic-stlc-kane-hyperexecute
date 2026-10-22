# Traceability Matrix

- Run type: full
- Requirements covered: 15/15
- Browsers tested: chrome, firefox
- Playwright pass rate: 71.4% (10 passed, 4 failed or skipped)

| Req ID | Acceptance Criterion | Scenario | Test Case | Kane Verify | Kane Session | What Kane Saw | Chrome | Firefox | Playwright | Session | Overall |
|---|---|---|---|---|---|---|--- | ---|---|---|---|
| AC-001 | User can create a task with a title and a due date | SC-001 | TC-001 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMN8DVDY77Y8SVFASVQ3/dashboard/share/US_9VTGL92GQQA9ZU4LNZ3H9H4TMN4NDE8PY47HIZF1LOEZP25XSJB8O6N162SK3LP5?type=summary&agentView=true&fqdn=summary-page) | created a new task with a title and due date on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=JMW3S-LDZO6-QNWTW-1NQ3J) | passed |
| AC-002 | User can list all tasks ordered by due date, with overdue tasks pinned to the top | SC-002 | TC-002 | failed | — | — | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=5MNIR-QHRFH-K4J6K-M7VFJ) | failed |
| AC-003 | User can mark a task as complete | SC-003 | TC-003 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMM6A5KREH93F4TT0YBM/dashboard/share/US_S7A4BG8HPZJIHYKZIV5MXLQ932IHLUU08MBYS6I9QDTP6NNT7ZXD6SDU1QJHE9DM?type=summary&agentView=true&fqdn=summary-page) | marked a task as complete on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=L1TST-KVCJI-BZS85-4LOAK) | passed |
| AC-004 | User can edit a task's title or due date | SC-004 | TC-004 | failed | — | — | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=DGUQO-UMSD1-QAFOV-8DVYX) | failed |
| AC-005 | User can delete a task | SC-005 | TC-005 | skipped | — | removed in v1.1.0 | — | — | deprecated | — | deprecated |
| AC-006 | User can filter the task list by status (active / done / all) | SC-006 | TC-006 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMNKEHYSAKGTBVGYQ4G0/dashboard/share/US_L2G9GWO271CYERWRU5H7TVULAVJIQE6AY84ZTW5RDB8FG023ZLQV1KBQ55MUOTGV?type=summary&agentView=true&fqdn=summary-page) | filtered the task list by status on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=LBUYQ-6SSDQ-1DMED-ZRAEW) | passed |
| AC-007 | User can attach a colored label to a task and filter by label | SC-007 | TC-007 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DS75EWTGRXD760BSSZ0D/dashboard/share/US_PWPDEQCNZBBD93L132KDGE1ZMXGNY1JGQISEODUZG26RADRT4PYKLH9FRAS0BHBX?type=summary&agentView=true&fqdn=summary-page) | applied a red label to a task and filtered the task list by that label on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=C9DKA-DAEWG-DFKP5-MPB9P) | passed |
| AC-008 | User can view archived tasks on the Archive page and restore them to the active list | SC-008 | TC-008 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DS7F63A9B75Z4SMYKX61/dashboard/share/US_VOLK8IQIFKFH0RWQPBD0WC12GZRSATDV6AIRV2XOOV7LZMXXBWXHT0X9HXSUVQLF?type=summary&agentView=true&fqdn=summary-page) | archived and restored a task on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=E84JZ-4AMQW-RVW0L-DYPDF) | passed |
| AC-009 | User can set a task's priority to High, Medium, or Low (or leave it unset) | SC-009 | TC-009 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0GTKCCYGNS34PTCS58ACE/dashboard/share/US_X8R8SZ0NUHYNVJGLU3WHTCWER3B0N0WE574HU14RWXJIMMCJVXPOM81G0UIK7SYW?type=summary&agentView=true&fqdn=summary-page) | set a task priority on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=EOYAO-VF5GV-ABJYN-PEYYU) | passed |
| AC-010 | User can change a task's priority on the edit screen | SC-010 | TC-010 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0H394HSPYAVCD7WQDSWZJ/dashboard/share/US_R1DN4B2VTED52UQE6KNZEMWMA4C6BBS6RDVTG1JJO02O7F1OW9ON2DKFDSLB7TTR?type=summary&agentView=true&fqdn=summary-page) | created and updated a task on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=R2QTT-WL2L4-ALT2U-6GXBW) | passed |
| AC-011 | User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list | SC-011 | TC-011 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0HB5W8WQFZCGQ8BYY7S9J/dashboard/share/US_18DEALYHQCOLWI2E29IJ9A28AY0PQM0HAHZCOWRFTVRAVDGYEJ3YKCO4BZFITNWI?type=summary&agentView=true&fqdn=summary-page) | archived completed tasks on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=2PTH1-HCXKY-YPEFF-JDXEE) | passed |
| AC-012 | User can access TaskFlow under a session-prefixed URL of the form /s/<sessionid>/tasks where sessionid is a 32-character lowercase hex UUID | SC-012 | TC-012 | timeout | — | — | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=89CQU-TABL6-8MSSY-TVSWC) | failed |
| AC-013 | User visiting a fresh session URL sees an empty task list with the create form available; the session is created implicitly on first write with no signup required | SC-013 | TC-013 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0KXEGCE2SWSF0EG0X8RG6/dashboard/share/US_XHIN7QARIPAPIH5I2ZAK19WEPRL0XMHLYEM79GYT6R4AULS6BRXXHTVV0J8O6NHP?type=summary&agentView=true&fqdn=summary-page) | Opened an empty TaskFlow task list on taskflow-v2-0-0.vercel.app. | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=LCPBK-EN7DM-9SVTS-E8FW8) | passed |
| AC-014 | User visiting a URL with a malformed session ID (not the literal "default" and not a 32-character lowercase hex string) receives an HTTP 404 response | SC-014 | TC-014 | failed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0MGW5GSWG6TD55S4FDJQE/dashboard/share/US_9V3UZBMUGO2YKRCYSXTLGR1CPEVBX9LFOE928YXA5FAIVLYBO3IMZOA7QCOXKCHT?type=summary&agentView=true&fqdn=summary-page) | navigated to a Taskflow tasks page on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=RDPSU-BU8FE-UPCTX-DP1HX) | failed |
| AC-015 | Tasks, archives, labels, and priorities created under one session are invisible and untouchable from any other session | SC-015 | TC-015 | passed | [session](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0Q0486Y175RGX5JJHHQ16/dashboard/share/US_1PX41S3OV8KKCVR90Q3JMNA9XTRDWCEKUOB8W7S85T6Y1JOJLVRB6HB1J6F84E2Z?type=summary&agentView=true&fqdn=summary-page) | viewed the Session B task list on taskflow-v2-0-0.vercel.app | passed | passed | passed | [session](https://automation.lambdatest.com/test?testID=AKVPR-8QRS4-XZFOO-H5GJW) | passed |

## Kane AI Verification Detail

### AC-001 — User can create a task with a title and a due date
> created a new task with a title and due date on taskflow-v2-0-0.vercel.app

**Full summary:** Opened the task creation screen.
Entered a task title and set a due date.
Saved the task and confirmed it appears in the tasks list with a due date shown (e.g., “2026-06-10”).

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMN8DVDY77Y8SVFASVQ3/dashboard/share/US_9VTGL92GQQA9ZU4LNZ3H9H4TMN4NDE8PY47HIZF1LOEZP25XSJB8O6N162SK3LP5?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMN8DVDY77Y8SVFASVQ3/dashboard/share/US_9VTGL92GQQA9ZU4LNZ3H9H4TMN4NDE8PY47HIZF1LOEZP25XSJB8O6N162SK3LP5?type=summary&agentView=true&fqdn=summary-page)

### AC-002 — User can list all tasks ordered by due date, with overdue tasks pinned to the top

**Full summary:** {"type":"recording_state","enabled":true,"session_id":"fb01c4f2-4535-4ce7-8160-a70cde2cde40","persist":true,"session_name":"SC-002_sc_002_sorted_tasks_by_due_date_on_nosecretformula_ve","test_path":"C:\\Projects\\agentic-stlc-kane-hyperexecute\\.testmuai\\tests\\SC-002_sc_002_sorted_tasks_by_due_date_on_nosecretformula_ve_test.md","output_path":"C:\\Projects\\agentic-stlc-kane-hyperexecute\\.testmuai\\tests\\output-SC-002_sc_002_sorted_tasks_by_due_date_on_nosecretformula_ve"}

### AC-003 — User can mark a task as complete
> marked a task as complete on taskflow-v2-0-0.vercel.app

**Full summary:** Opened TaskFlow’s tasks page and located the target task in the task list.
Used the task’s completion checkbox in the “Done” column to mark it as complete.
Confirmed the task now shows as completed (checkbox is checked) and remained on the TaskFlow site.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMM6A5KREH93F4TT0YBM/dashboard/share/US_S7A4BG8HPZJIHYKZIV5MXLQ932IHLUU08MBYS6I9QDTP6NNT7ZXD6SDU1QJHE9DM?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMM6A5KREH93F4TT0YBM/dashboard/share/US_S7A4BG8HPZJIHYKZIV5MXLQ932IHLUU08MBYS6I9QDTP6NNT7ZXD6SDU1QJHE9DM?type=summary&agentView=true&fqdn=summary-page)

### AC-004 — User can edit a task's title or due date

**Full summary:** {"type":"recording_state","enabled":true,"session_id":"d67d838f-d162-418a-b974-47c1a8f2672e","persist":true,"session_name":"SC-004_sc_004_user_can_edit_a_task_s_title_or_due_date","test_path":"C:\\Projects\\agentic-stlc-kane-hyperexecute\\.testmuai\\tests\\SC-004_sc_004_user_can_edit_a_task_s_title_or_due_date_test.md","output_path":"C:\\Projects\\agentic-stlc-kane-hyperexecute\\.testmuai\\tests\\output-SC-004_sc_004_user_can_edit_a_task_s_title_or_due_date"}

### AC-005 — User can delete a task
> removed in v1.1.0

### AC-006 — User can filter the task list by status (active / done / all)
> filtered the task list by status on taskflow-v2-0-0.vercel.app

**Full summary:** Opened TaskFlow and went to the tasks page.
Used the status filter to switch between Active, Done, and All task views.
Finished on the All view of the task list (URL shows status=all).

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMNKEHYSAKGTBVGYQ4G0/dashboard/share/US_L2G9GWO271CYERWRU5H7TVULAVJIQE6AY84ZTW5RDB8FG023ZLQV1KBQ55MUOTGV?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DMNKEHYSAKGTBVGYQ4G0/dashboard/share/US_L2G9GWO271CYERWRU5H7TVULAVJIQE6AY84ZTW5RDB8FG023ZLQV1KBQ55MUOTGV?type=summary&agentView=true&fqdn=summary-page)

### AC-007 — User can attach a colored label to a task and filter by label
> applied a red label to a task and filtered the task list by that label on taskflow-v2-0-0.vercel.app

**Full summary:** Opened an existing task (or created one) in TaskFlow and applied a red label to it.
Used the label filter controls to filter the task list to show only tasks with the red label.
Ended on the tasks page filtered by the red label (URL includes label=red), confirming the labeled task was visible in the list.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DS75EWTGRXD760BSSZ0D/dashboard/share/US_PWPDEQCNZBBD93L132KDGE1ZMXGNY1JGQISEODUZG26RADRT4PYKLH9FRAS0BHBX?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DS75EWTGRXD760BSSZ0D/dashboard/share/US_PWPDEQCNZBBD93L132KDGE1ZMXGNY1JGQISEODUZG26RADRT4PYKLH9FRAS0BHBX?type=summary&agentView=true&fqdn=summary-page)

### AC-008 — User can view archived tasks on the Archive page and restore them to the active list
> archived and restored a task on taskflow-v2-0-0.vercel.app

**Full summary:** Created a new task titled "Archive demo task" with due date 2026-05-20 using the Add a task form.
Archived the "Archive demo task" item from the main task list.
Opened the Archive view and confirmed "Archive demo task" appeared in the archived list.
Restored "Archive demo task" from the Archive view.
Returned to the main task list and verified "Archive demo task" was visible again in the active tasks list.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DS7F63A9B75Z4SMYKX61/dashboard/share/US_VOLK8IQIFKFH0RWQPBD0WC12GZRSATDV6AIRV2XOOV7LZMXXBWXHT0X9HXSUVQLF?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0DS7F63A9B75Z4SMYKX61/dashboard/share/US_VOLK8IQIFKFH0RWQPBD0WC12GZRSATDV6AIRV2XOOV7LZMXXBWXHT0X9HXSUVQLF?type=summary&agentView=true&fqdn=summary-page)

### AC-009 — User can set a task's priority to High, Medium, or Low (or leave it unset)
> set a task priority on taskflow-v2-0-0.vercel.app

**Full summary:** Opened taskflow-v2-0-0.vercel.app.
Used the “Add a task” form to set the task Priority using the dropdown (showing “high”).
Completed the task on the same site without navigating elsewhere.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0GTKCCYGNS34PTCS58ACE/dashboard/share/US_X8R8SZ0NUHYNVJGLU3WHTCWER3B0N0WE574HU14RWXJIMMCJVXPOM81G0UIK7SYW?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0GTKCCYGNS34PTCS58ACE/dashboard/share/US_X8R8SZ0NUHYNVJGLU3WHTCWER3B0N0WE574HU14RWXJIMMCJVXPOM81G0UIK7SYW?type=summary&agentView=true&fqdn=summary-page)

### AC-010 — User can change a task's priority on the edit screen
> created and updated a task on taskflow-v2-0-0.vercel.app

**Full summary:** Opened Taskflow and used the Add a task form to create a new task titled "Priority demo task" with a due date of 2026-05-20.
Opened the task’s Edit link, changed its priority to High, and saved the changes.
Returned to the tasks list and confirmed the "Priority demo task" row shows a High priority (HIGH) chip.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0H394HSPYAVCD7WQDSWZJ/dashboard/share/US_R1DN4B2VTED52UQE6KNZEMWMA4C6BBS6RDVTG1JJO02O7F1OW9ON2DKFDSLB7TTR?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0H394HSPYAVCD7WQDSWZJ/dashboard/share/US_R1DN4B2VTED52UQE6KNZEMWMA4C6BBS6RDVTG1JJO02O7F1OW9ON2DKFDSLB7TTR?type=summary&agentView=true&fqdn=summary-page)

### AC-011 — User can archive all completed tasks in one click via an "Archive completed" button at the bottom of the task list
> archived completed tasks on taskflow-v2-0-0.vercel.app

**Full summary:** Created two tasks named “Bulk archive A” and “Bulk archive B” and marked both as complete.
Clicked the “Archive completed” button at the bottom of the task list to archive completed items.
Confirmed on the Archive page that both “Bulk archive A” and “Bulk archive B” appear in the archive table (and are no longer in the active task list).

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0HB5W8WQFZCGQ8BYY7S9J/dashboard/share/US_18DEALYHQCOLWI2E29IJ9A28AY0PQM0HAHZCOWRFTVRAVDGYEJ3YKCO4BZFITNWI?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0HB5W8WQFZCGQ8BYY7S9J/dashboard/share/US_18DEALYHQCOLWI2E29IJ9A28AY0PQM0HAHZCOWRFTVRAVDGYEJ3YKCO4BZFITNWI?type=summary&agentView=true&fqdn=summary-page)

### AC-012 — User can access TaskFlow under a session-prefixed URL of the form /s/<sessionid>/tasks where sessionid is a 32-character lowercase hex UUID

**Full summary:** kane-cli run wedged past 360s — killed

### AC-013 — User visiting a fresh session URL sees an empty task list with the create form available; the session is created implicitly on first write with no signup required
> Opened an empty TaskFlow task list on taskflow-v2-0-0.vercel.app.

**Full summary:** Opened TaskFlow using a fresh, unique session URL.
Waited for the Tasks page to fully render and verified the list was empty ("No tasks.").
Confirmed the task creation form was available (Title field, Due date field, and an "Add task" button).
No signup, login, or registration was required to view the task list or the create-task form.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0KXEGCE2SWSF0EG0X8RG6/dashboard/share/US_XHIN7QARIPAPIH5I2ZAK19WEPRL0XMHLYEM79GYT6R4AULS6BRXXHTVV0J8O6NHP?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0KXEGCE2SWSF0EG0X8RG6/dashboard/share/US_XHIN7QARIPAPIH5I2ZAK19WEPRL0XMHLYEM79GYT6R4AULS6BRXXHTVV0J8O6NHP?type=summary&agentView=true&fqdn=summary-page)

### AC-014 — User visiting a URL with a malformed session ID (not the literal "default" and not a 32-character lowercase hex string) receives an HTTP 404 response
> navigated to a Taskflow tasks page on taskflow-v2-0-0.vercel.app

**Full summary:** The run attempted to open a Taskflow “tasks” page using the link: https://taskflow-v2-0-0.vercel.app/s/not-a-valid-hex-uuid/tasks.
The page shown in the screenshots is a “Not Found” error page that says the requested URL was not found on the server, indicating the link/path is invalid or the workspace/session ID in the URL is not recognized.
Because the run landed on this error page, there were no tasks or normal page controls available to interact with, so it could not proceed with any further steps.
After the initial navigation, the remaining recorded steps failed due to missing step data (“step file not found”), so no additional actions were completed beyond loading the error page.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0MGW5GSWG6TD55S4FDJQE/dashboard/share/US_9V3UZBMUGO2YKRCYSXTLGR1CPEVBX9LFOE928YXA5FAIVLYBO3IMZOA7QCOXKCHT?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0MGW5GSWG6TD55S4FDJQE/dashboard/share/US_9V3UZBMUGO2YKRCYSXTLGR1CPEVBX9LFOE928YXA5FAIVLYBO3IMZOA7QCOXKCHT?type=summary&agentView=true&fqdn=summary-page)

### AC-015 — Tasks, archives, labels, and priorities created under one session are invisible and untouchable from any other session
> viewed the Session B task list on taskflow-v2-0-0.vercel.app

**Full summary:** Opened the Taskflow app and navigated to the Tasks page for Session B.
Checked the task list under Session B and it showed an empty state (“No tasks.”).
Confirmed Session B’s task list did not include the “Session A task,” verifying tasks are isolated between sessions.

**Session:** [https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0Q0486Y175RGX5JJHHQ16/dashboard/share/US_1PX41S3OV8KKCVR90Q3JMNA9XTRDWCEKUOB8W7S85T6Y1JOJLVRB6HB1J6F84E2Z?type=summary&agentView=true&fqdn=summary-page](https://test-manager.lambdatest.com/projects/01KRQ24HY25E1QFPMX9KJYEJGA/test-cases/01KTM0Q0486Y175RGX5JJHHQ16/dashboard/share/US_1PX41S3OV8KKCVR90Q3JMNA9XTRDWCEKUOB8W7S85T6Y1JOJLVRB6HB1J6F84E2Z?type=summary&agentView=true&fqdn=summary-page)


## Kane Analysis Warnings

- SC-002: Kane returned `failed` while Playwright passed.
- SC-004: Kane returned `failed` while Playwright passed.
- SC-014: Kane returned `failed` while Playwright passed.

## Failing Scenarios

- SC-002
- SC-004
- SC-012
- SC-014

## Result Analysis

- **Overall health:** critical
- **Risk level:** high
- **Kane AI pass rate:** 76.9%
- **Playwright pass rate:** 71.4%
- **Browsers tested:** chrome, firefox

**Failed requirements:**
- AC-002
- AC-004
- AC-014

**Key findings:**
- AC-002: failed Kane AI verification; Playwright status is passed.
- AC-004: failed Kane AI verification; Playwright status is passed.
- AC-014: failed Kane AI verification; Playwright status is passed.

**Recommendation:** Release carries medium risk: 3 failing requirement(s). Review browser-specific failures before conditional approval.

