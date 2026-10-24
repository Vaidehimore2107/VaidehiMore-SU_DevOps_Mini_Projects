# Unit 3 — Student Management DevOps Project
**Prepared for:** Vaidehi More

A Flask student management API with tests and example Docker, Jenkins, and Kubernetes configuration.

## Run locally
```bash
python -m venv .venv
# Windows: .venv\Scripts\Activate.ps1
# Linux/macOS: source .venv/bin/activate
pip install -r requirements.txt
python run.py
```
Open `http://127.0.0.1:5000/`.

## Test
```bash
pytest -q
```

## Docker
```bash
docker build -t student-management:unit3 .
docker run --rm -p 5000:5000 student-management:unit3
```

## Kubernetes
Replace the example image in `k8s/deployment.yaml` with an image pushed to a registry reachable by your cluster, then run `kubectl apply -f k8s/`.

This is a prepared project package, not proof of a live deployment. Run it in your own environment and capture genuine results.
