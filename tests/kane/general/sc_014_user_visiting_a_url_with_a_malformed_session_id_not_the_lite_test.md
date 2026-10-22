---
mode: testing
max_steps: 30
timeout: 300
target: ws
headless: true
---
# Session: SC-014_sc_014_user_visiting_a_url_with_a_malformed_session_i

## Step 1
On https://taskflow-v2-0-0.vercel.app/s/not-a-valid-hex-uuid/tasks — Step 1 (VERIFY): the browser receives an HTTP 404 response (the page either renders a 404 error page or the browser shows a not-found state). Stop after the 404 is confirmed. Stay on the AUT — do NOT navigate to any kaneai-playground or ecommerce-playground site.
