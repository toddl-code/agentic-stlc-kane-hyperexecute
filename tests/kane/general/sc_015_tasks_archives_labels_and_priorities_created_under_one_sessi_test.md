---
mode: testing
max_steps: 30
timeout: 300
target: ws
headless: true
---
# Session: SC-015_sc_015_tasks_archives_labels_and_priorities_created_u

## Step 1
On https://taskflow-v2-0-0.vercel.app/s/a1b2c3d4e5f60718293a4b5c6d7e8f90/tasks — Step 1 (SETUP): create a task titled 'Session A task' with no due date using the Add task form. Step 2 (VERIFY): confirm 'Session A task' appears in the list. Step 3 (NAVIGATE): change the URL to https://taskflow-v2-0-0.vercel.app/s/0fedcba987654321a1b2c3d4e5f60718/tasks to switch to a different session. Step 4 (VERIFY): confirm the task list under session B does NOT contain 'Session A task' — the list should either be empty or contain only tasks unique to session B. Stop after cross-session isolation is verified. Stay on the AUT — do NOT navigate to any kaneai-playground or ecommerce-playground site.
