# Shared finding & report template

*A consistent output shape across skills, so findings from recon, web, cloud,
red-team, etc. all read the same and drop straight into a client report.
Original addition by this collection.*

## Single finding

```markdown
### <FINDING-ID> — <Short title>

- **Severity:** Critical | High | Medium | Low | Info
- **CVSS 3.1:** <score> (`<vector>`)      <!-- omit if N/A -->
- **Asset / scope:** <host, URL, account, repo…>
- **Category:** <OWASP / MITRE ATT&CK ID / CWE>
- **Status:** Open | Fixed | Accepted-risk

**Summary**
<one paragraph: what it is, why it matters here>

**Evidence**
<request/response, command + output, screenshot ref, log excerpt — redact secrets>

**Reproduction**
1. …
2. …

**Impact**
<what an attacker gains; business impact in plain language>

**Remediation**
<concrete fix, config change, or code diff; link the authoritative guidance>

**References**
- <CVE / advisory / doc>
```

## Engagement report skeleton

```
1. Executive summary        — risk in business terms, 1 page, no jargon
2. Scope & authorization    — targets, window, ROE reference
3. Methodology              — what was tested and how
4. Findings                 — sorted by severity, using the block above
5. Remediation roadmap      — prioritized, with owners and effort
6. Appendix                 — tooling, raw evidence, out-of-scope notes
```

Severity guidance: rank by realistic impact **in this environment**, not by
scanner defaults. A "High" no attacker can reach is a "Low"; a "Medium" chained
into full compromise is a "High". Say why.
