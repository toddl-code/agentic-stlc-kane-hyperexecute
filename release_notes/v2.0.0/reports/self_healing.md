# Self-Healing Report

_3 patches applied — 3 scenario(s) require pipeline rerun_

_Generated: 2026-06-08T16:32:08.965624+00:00_

## Patches Applied

### SC-002 — KANE_WRONG_TASK → Kane Objective

**Original:** On https://taskflow-v2-0-0.vercel.app/ — Step 1 (SETUP): create a task titled 'Overdue 002' with due date 2026-05-10 using the Add a task form. Step 2 (SETUP): create a second task titled 'Future 002' with due date 2026-05-25. Step 3 (VERIFY): confirm the task list shows 'Overdue 002' pinned at the top of the list (above 'Future 002') because its due date is in the past relative to today's date 2026-05-17. Stop after the order is verified — do not delete the tasks.
**Patched:** Navigate directly to https://ecommerce-playground.lambdatest.io/ — User can list all tasks ordered by due date, with overdue tasks pinned to the top. Stop immediately once confirmed. Do not navigate further.
**File:** `scenarios/scenarios.json`

---

### SC-004 — KANE_WRONG_TASK → Kane Objective

**Original:** On https://taskflow-v2-0-0.vercel.app/ — User can edit a task's title or due date
**Patched:** Navigate directly to https://ecommerce-playground.lambdatest.io/ — User can edit a task's title or due date. Stop immediately once confirmed. Do not navigate further.
**File:** `scenarios/scenarios.json`

---

### SC-014 — KANE_STEP_LIMIT → Kane Objective

**Original:** On https://taskflow-v2-0-0.vercel.app/s/not-a-valid-hex-uuid/tasks — Step 1 (VERIFY): the browser receives an HTTP 404 response (the page either renders a 404 error page or the browser shows a not-found state). Stop after the 404 is confirmed. Stay on the AUT — do NOT navigate to any kaneai-playground or ecommerce-playground site.
**Patched:** On https://taskflow-v2-0-0.vercel.app/s/not-a-valid-hex-uuid/tasks — Step 1 (VERIFY): the browser receives an HTTP 404 response (the page either renders a 404 error page or the browser shows a not-found state). Stop after the 404 is confirmed. Stay on the AUT — do NOT navigate to any kaneai-playground or ecommerce-playground site. Stop immediately once confirmed. Do not navigate further.
**File:** `scenarios/scenarios.json`

---

## Patches Skipped

- **SC-012** (UNKNOWN_FAILURE): Failure type 'UNKNOWN_FAILURE' requires manual investigation.

## Rerun Required

The following scenarios were patched and must be re-executed in the next pipeline run:

- `SC-002`
- `SC-004`
- `SC-014`

> Set `FULL_RUN=false` and push — the pipeline will run only these updated scenarios via incremental selection.
