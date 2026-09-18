# The wider arsenal — curated catalog

The bundled core (`skills/`) covers the full security lifecycle on its own. But
the ecosystem has other excellent, more specialized sets. This is the curated
directory: what each one is genuinely *best at*, so you can pull the right one
for the job instead of installing everything.

Star counts are a rough popularity signal, captured **September 2026** — check
each repo for the live number. None of these are copied into this repo; the
[`install.sh`](../install.sh) menu clones them from source so credit stays with
the authors.

---

## Offensive / red team

### claude-red — *breadth of attack surfaces*
Kai Aizen ([@SnailSploit](https://github.com/SnailSploit)) · MIT · ~6.1k★
A large, well-organized library of offensive SKILL.md files, one per attack
surface — SQLi, shellcode, EDR evasion, exploit development. Reach for it when
you want deep, single-surface methodology on demand.
`git clone https://github.com/SnailSploit/claude-red`

### Claude-BugHunter — *bug bounty & external recon at scale*
Sachin Sharma ([@elementalsouls](https://github.com/elementalsouls)) · MIT · ~4.5k★
82 skills, 15 slash commands and hundreds of disclosed-report patterns across
24 vulnerability classes, plus identity and infrastructure attack matrices.
The one to install for real-world bug-bounty and external red-team workflows.
`git clone https://github.com/elementalsouls/Claude-BugHunter`

### offensive-claude — *kill-chain-driven engagements*
Nguyen Van Hiep ([@hypnguyen1209](https://github.com/hypnguyen1209)) · MIT · ~370★
A spec-driven framework built around the Cyber Kill Chain: 31 kill-chain skills
and collaborative agents covering AD attacks, EDR bypass and mobile pentest.
Best when you want structured, phase-by-phase engagement flow.
`git clone https://github.com/hypnguyen1209/offensive-claude`

### red-run — *skills + MCP + agent teams*
[Black Lantern Security](https://github.com/blacklanternsecurity) · **GPL-3.0** · ~280★
Combines skills, MCP servers and Claude Code agent teams with routing logic
that walks Claude through recon → access → lateral movement → priv-esc → post.
Best when you want an orchestrated, multi-agent assessment. *(GPL-3.0 — keep it
separate from MIT/permissive code; link-only here.)*
`git clone https://github.com/blacklanternsecurity/red-run`

---

## Web / code / CTF

### cybersecurity-claude-skills — *focused web + secure code review + CTF*
mahmut kaynar ([@mahmutka](https://github.com/mahmutka)) · MIT · ~15★
A tight four-skill set: web hacking, pentest recon, secure code review and a
CTF solver. Small, readable, easy to learn from.
`git clone https://github.com/mahmutka/cybersecurity-claude-skills`

### secskills — *"personal security engineer" for your own code*
Tri Luu ([@trilwu](https://github.com/trilwu)) · MIT · ~140★
Leans defensive/dev-side: turns Claude into a security engineer for reviewing
and hardening your own projects.
`git clone https://github.com/trilwu/secskills`

---

## Wordlists / payloads / fixtures

### awesome-skills-security — *SecLists wordlists & injection payloads*
Eyad Kelleh ([@Eyadkelleh](https://github.com/Eyadkelleh)) · No license¹ · ~380★
Curated SecLists wordlists, injection payloads and expert agents for authorized
pentesting, CTFs and bug bounties. Useful as a payload/fixture companion to any
methodology skill above.
`git clone https://github.com/Eyadkelleh/awesome-skills-security`

¹ Published without a license (all rights reserved). Referenced for completeness;
respect the author's terms and check before reuse.

---

## Further reading
- Snyk — [Top 9 Claude Skills for Cybersecurity, Hacking, and Vulnerability Scanning](https://snyk.io/articles/top-claude-skills-cybersecurity-hacking-vulnerability-scanning/)
- [Claude Directory — Security setups](https://www.claudedirectory.org/for/security)
- Anthropic — [Claude Code skills documentation](https://docs.claude.com/en/docs/claude-code/skills)

*Know one that belongs here? Open a PR against `docs/CATALOG.md`.*
