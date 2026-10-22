---
mode: testing
max_steps: 30
timeout: 300
target: ws
headless: true
---
# Session: SC-013_sc_013_user_visiting_a_fresh_session_url_sees_an_empt

## Step 1
On https://taskflow-v2-0-0.vercel.app/s/0fedcba987654321a1b2c3d4e5f60718/tasks — Step 1 (VERIFY): the URL is a never-before-used session; confirm the task list renders with an empty-state message and the create form (Title input, Due date input, Add task button) is still available. Step 2 (VERIFY): confirm no signup, login, or registration step was required. Stop after the empty task list is confirmed. Stay on the AUT — do NOT navigate to any kaneai-playground or ecommerce-playground site.
