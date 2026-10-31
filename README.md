# DevSecOps Portfolio

Welcome to my DevSecOps Portfolio. This repository is the entry point to the DevSecOps portfolio.
It links all projects that together demonstrate end to end security
across build, deploy, runtime, and governance.

## Table of Contents

### DevSecOps Portfolio Index

This portfolio is designed as a system, not
standalone projects. Each repository has a single responsibility and
produces evidence consumed by others.

[AWS Guardrail Scanner](https://github.com/asadyare/aws-guardrail-scanner)

Read-only account audit:
Python and boto3 CLI that checks one AWS account against CIS AWS Foundations
Benchmark v3.0.0 and AWS Foundational Security Best Practices controls. It
can print a table, JSON, or SARIF, and exit non-zero when a finding meets
`--fail-on`. It does not call write APIs. Tests use pytest and moto and do
not call AWS. Pytest is configured to fail the run under 80% coverage.

Controls: account and bucket S3 Block Public Access, public ACLs and bucket
policies, IAM console MFA, root access keys and root MFA, access-key age,
security groups open to SSH, RDP, or all ports, default security groups,
multi-Region CloudTrail, and EBS encryption by default.

Tools: Ruff, mypy, pytest, Bandit, pip-audit, and Trivy on the container image.

`Python 3.12` `boto3` `pytest` `moto` `Docker`

[AWS Guardrail Pipeline](https://gitlab.com/asadyare/aws-guardrail-pipeline)

GitLab CI baseline:
Account-level Terraform guardrails, checked before anyone has credentials to
apply them. Default jobs do not run `terraform apply` and do not call AWS.
`guardrail-compliance` reads Terraform plan JSON with the Python standard
library. The control gate waits for the project-owned checks and fails the
pipeline when that report misses a high or critical control. CI evaluates a
committed plan fixture, and `terraform test` uses a mocked AWS provider. A
manual job can assume a role with GitLab OIDC and run a pinned commit of the
scanner above. The repository does not store static AWS keys.

Controls: account S3 Block Public Access (all four settings), EBS encryption
by default in two regions, a multi-Region CloudTrail with log validation and
a KMS-encrypted log bucket, an IAM password policy (length 14, complexity,
24 passwords remembered, 90-day maximum age), a service control policy that
denies tampering and is left unattached in the example, and AWS Config
managed rules for the same set.

Tools: Ruff, mypy, pytest, Bandit, pip-audit, Semgrep SAST, secret detection,
Checkov, Trivy config, KICS, Terraform validate, and the control gate.
Checkov and Trivy config fail the job on high and critical findings. The
GitLab SAST, secret detection, and KICS template jobs upload reports. GitLab
OIDC is used only by the manual live-read job.

`GitLab CI` `Terraform` `Python 3.12` `Checkov` `Trivy` `OIDC`

[Frontend Application](https://github.com/asadyare/portfolio-frontend)

Cloudflare Pages:
User facing application deployed with secure CI pipelines and protected by
downstream controls.

[Shared CI and Security Workflows](https://github.com/asadyare/portfolio-ci-cd-security)

Centralised CI
security workflows for secret scanning, dependency checks, container scanning, and policy validation used by all repositories.

[Daily Security Automation](https://github.com/asadyare/portfolio-daily-security)

Scheduled security
scans, alerting, and weekly reporting for post merge and post deploy
risk.

[Kubernetes Security](https://github.com/asadyare/portfolio-k8s-security)

Cluster security, workload hardening, network isolation, and runtime detection.

[Threat Modeling and Risk Register](https://github.com/asadyare/portfolio-threat-model)

Threat analysis, risk register, and control to evidence mapping.

Security Lifecycle Coverage Plan Threat modeling and risk analysis

Build CI security scanning and policy enforcement

Deploy Kubernetes admission, networking, and TLS controls

Run Runtime detection with Falco

Monitor Metrics, logs, alerts, and reports

Evidence CI logs Security alerts Weekly reports Runtime events

### Architecture

[![DevSecOps Architecture](diagrams/architecture.png)](diagrams/architecture.png)

Printable architecture pack documents CI, Kubernetes, runtime detection, and observability.

[DevSecOps Architecture pack](diagrams/DevSecOps_Architecture_Pack.pdf)

### Security Model Summary

- CI prevents insecure changes.
- Kubernetes enforces least privilege.
- Runtime detection catches active threats.
- Reporting provides governance and evidence.

This index represents the full security lifecycle.

Each project is linked to its own repository with detailed instructions on how to set it up and use it. Feel free to explore and reach out if you have any questions or suggestions.

## Contact

You can contact me via [walasaqo@gmail.com](mailto:walasaqo@gmail.com) or connect with me on [LinkedIn](https://www.linkedin.com/in/asad-hassan-20b540313/).

## License

This portfolio is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
