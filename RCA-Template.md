Incident: Pod CrashLoopBackOff in production

Impact:
- Application unavailable for 15 minutes

Detection:
- Prometheus alert triggered high restart count

Root Cause:
- Missing environment variable DB_URL

Resolution:
- Updated Kubernetes deployment config

Prevention:
- Added config validation in CI pipeline
