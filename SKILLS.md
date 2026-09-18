# Core skills index

The 22 bundled skills, grouped by what you're trying to do. Each lives in
`skills/<name>/SKILL.md` and activates automatically when you describe a matching
task to Claude Code — or invoke it by name.

> All offensive workflows honor the [shared authorization gate](skills/_shared/authorization-gate.md).
> Findings follow the [shared report template](skills/_shared/reporting-template.md).
> Core skills by [Masriyan](https://github.com/Masriyan/Claude-Code-CyberSecurity-Skill) (MIT) — see [CREDITS](CREDITS.md).

## Offensive & pentest
| # | Skill | What Claude gains |
|---|---|---|
| 01 | [recon-osint](skills/01-recon-osint) | Passive/active recon, subdomain & DNS enumeration, tech fingerprinting, OSINT correlation |
| 03 | [exploit-development](skills/03-exploit-development) | PoC development, payload crafting, shellcode analysis for authorized testing |
| 09 | [web-security](skills/09-web-security) | OWASP Top 10, injection (SQLi/XSS/SSRF/SSTI), API & auth testing, web reporting |
| 14 | [red-team-ops](skills/14-red-team-ops) | Engagement planning, C2 architecture, lateral movement, OPSEC, pro reporting |
| 17 | [mobile-security](skills/17-mobile-security) | Android/iOS testing, APK/IPA inspection, OWASP MASVS/MASTG, storage & transport review |

## Defensive & detection
| # | Skill | What Claude gains |
|---|---|---|
| 06 | [threat-hunting](skills/06-threat-hunting) | IOC extraction, TI correlation, MITRE ATT&CK mapping, hunt hypotheses, detection rules |
| 07 | [incident-response](skills/07-incident-response) | IR playbooks, evidence collection, forensic timelines, memory forensics (NIST/SANS) |
| 11 | [csoc-automation](skills/11-csoc-automation) | Alert triage, playbook automation, escalation, shift reporting, SOC KPIs |
| 12 | [log-analysis](skills/12-log-analysis) | Log parsing, anomaly detection, SIEM queries, Sigma & correlation rules |
| 15 | [blue-team-defense](skills/15-blue-team-defense) | Hardening, detection engineering, baselines, patch mgmt, defense-in-depth |

## Analysis & forensics
| # | Skill | What Claude gains |
|---|---|---|
| 04 | [reverse-engineering](skills/04-reverse-engineering) | Binary & assembly analysis, disassembly, decompilation, firmware & protocol RE |
| 05 | [malware-analysis](skills/05-malware-analysis) | Static/dynamic analysis, YARA rules, sandboxing, behavioral profiling, family ID |
| 08 | [network-security](skills/08-network-security) | Traffic/PCAP analysis, IDS/IPS (Snort/Suricata) rules, firewall audit, anomaly detection |
| 13 | [crypto-analysis](skills/13-crypto-analysis) | SSL/TLS auditing, cipher-suite analysis, hash ID, encryption implementation review |

## Threat intel & purple team
| # | Skill | What Claude gains |
|---|---|---|
| 21 | [threat-intelligence](skills/21-threat-intelligence) | Intel cycle, IOC enrichment, STIX/TAXII & MISP, Diamond/Kill Chain/ATT&CK, actor tracking |
| 22 | [purple-team](skills/22-purple-team) | Adversary emulation (ATT&CK, Atomic Red Team, CALDERA), detect-tune-validate, coverage |

## Modern attack surfaces
| # | Skill | What Claude gains |
|---|---|---|
| 10 | [cloud-security](skills/10-cloud-security) | AWS/Azure/GCP auditing, container & K8s hardening, IaC scanning, cloud compliance |
| 16 | [ai-llm-security](skills/16-ai-llm-security) | Prompt injection, jailbreaks, OWASP LLM Top 10, RAG/agent security, MITRE ATLAS |
| 18 | [ot-ics-security](skills/18-ot-ics-security) | Purdue model, Modbus/DNP3/S7/EtherNet-IP, PLC/HMI exposure, IEC 62443, ATT&CK for ICS |

## Assurance & governance
| # | Skill | What Claude gains |
|---|---|---|
| 02 | [vulnerability-scanner](skills/02-vulnerability-scanner) | Dependency auditing, CVE detection, config review, CVSS scoring, prioritized reporting |
| 19 | [grc-compliance](skills/19-grc-compliance) | Risk scoring, control mapping (NIST CSF 2.0 / ISO 27001 / SOC 2 / CIS v8), gap analysis, policy |
| 20 | [supply-chain-security](skills/20-supply-chain-security) | SBOM analysis, dependency confusion/typosquatting, CI/CD hardening, SLSA/Sigstore provenance |
