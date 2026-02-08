# DevSecOps Portfolio

Welcome to my DevSecOps Portfolio. This repository showcases a curated collection of projects and demos highlighting my experience across DevSecOps practices. Each project includes clear instructions and working examples covering CI CD pipelines, infrastructure as code, Docker containerization, Kubernetes security, configuration management, security automation, monitoring, and continuous compliance.

## Table of Contents

- **portfolio-frontend**: User facing application and Cloudflare Pages build target. Source of UI code and deployment workflows. [Frontend application](https://github.com/asadyare/portfolio-frontend)

- **portfolio-ci-cd-security**: Shared CI and security workflows consumed by other repositories using workflow calls. Central place for secret scanning, SAST, dependency checks, and container scanning logic. [CI CD and security pipelines](https://github.com/asadyare/portfolio-ci-cd-security)

- **portfolio-threat-model**: Threat models and risk analysis for the portfolio platform. Documents assets, trust boundaries, threats, and mitigations mapped to the CI pipelines. [Threat modeling and risk analysis](https://github.com/asadyare/portfolio-threat-model)

- **portfolio-k8s-security**: Kubernetes manifests and cluster security. Focuses on workload hardening, network policies, admission controls, and runtime posture. [Kubernetes Deployment and security](https://github.com/asadyare/portfolio-k8s-microservices-deployment)

- **portfolio-daily-security**: Scheduled security scans and reporting. Runs recurring scans to detect newly disclosed vulnerabilities outside normal PR activity. [Daily security automation](https://github.com/asadyare/portfolio-daily-security)

[![DevSecOps Architecture](diagrams/architecture.png)](diagrams/architecture.png)

Each project is linked to its own repository with detailed instructions on how to set it up and use it. Feel free to explore and reach out if you have any questions or suggestions.

## Contact

You can contact me via [walasaqo@gmail.com](mailto:walasaqo@gmail.com) or connect with me on [LinkedIn](https://www.linkedin.com/in/asad-hassan-20b540313/).

## License

This portfolio is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
