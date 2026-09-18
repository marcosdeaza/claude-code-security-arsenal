# Credits & attribution

This repository is a **curation**. The hard research and engineering behind the
skills belongs to the people below. If this project is useful to you, the right
move is to **star their original repositories** — that is where the work lives.

> Nothing here is affiliated with or endorsed by Anthropic. "Claude Code" is
> Anthropic's product; this is a community collection built for it.

---

## Bundled core — full credit

### Claude Code CyberSecurity Skill  ·  the 22-skill core in `skills/`
- **Author:** Masriyan — **Riyan Pratama** ([@Masriyan](https://github.com/Masriyan) / `sudo3rs`)
- **Repo:** https://github.com/Masriyan/Claude-Code-CyberSecurity-Skill
- **License:** MIT (preserved in [`skills/UPSTREAM-LICENSE.txt`](skills/UPSTREAM-LICENSE.txt))
- **Why it's the core:** it is the most complete, coherent, defensively-framed
  skill set in the ecosystem — 22 domains from recon to purple team, each with a
  real SKILL.md, runnable scripts and reporting templates, and an authorization
  gate baked into every offensive workflow.

The 22 skills are redistributed here **unmodified in substance**. The only
changes are packaging-level: build caches removed, and an index
([`SKILLS.md`](SKILLS.md)) plus a shared layer ([`skills/_shared/`](skills/_shared/))
added *alongside* them. Fork the upstream repo to contribute to the skills
themselves: <https://github.com/Masriyan/Claude-Code-CyberSecurity-Skill/fork>

---

## Cataloged collections — linked, not copied

These are the other standout security skill sets for Claude Code. They are
**not** redistributed here; the installer pulls them from source so credit and
stars flow to the authors. See [`docs/CATALOG.md`](docs/CATALOG.md) for what
each one is best at.

| Collection | Author | License | Repo |
|---|---|---|---|
| claude-red | Kai Aizen ([@SnailSploit](https://github.com/SnailSploit)) | MIT | https://github.com/SnailSploit/claude-red |
| Claude-BugHunter | Sachin Sharma ([@elementalsouls](https://github.com/elementalsouls)) | MIT | https://github.com/elementalsouls/Claude-BugHunter |
| offensive-claude | Nguyen Van Hiep ([@hypnguyen1209](https://github.com/hypnguyen1209)) | MIT | https://github.com/hypnguyen1209/offensive-claude |
| red-run | [Black Lantern Security](https://github.com/blacklanternsecurity) | GPL-3.0 | https://github.com/blacklanternsecurity/red-run |
| secskills | Tri Luu ([@trilwu](https://github.com/trilwu)) | MIT | https://github.com/trilwu/secskills |
| cybersecurity-claude-skills | mahmut kaynar ([@mahmutka](https://github.com/mahmutka)) | MIT | https://github.com/mahmutka/cybersecurity-claude-skills |
| awesome-skills-security | Eyad Kelleh ([@Eyadkelleh](https://github.com/Eyadkelleh)) | No license¹ | https://github.com/Eyadkelleh/awesome-skills-security |

¹ Published without a license → all rights reserved. Linked for reference only;
the installer clones it from source so its terms stay with the author.

---

## How the list was built

Candidates were gathered from GitHub search, the r/ClaudeAI and r/netsec
discussions, and roundups such as Snyk's
[*Top 9 Claude Skills for Cybersecurity*](https://snyk.io/articles/top-claude-skills-cybersecurity-hacking-vulnerability-scanning/)
and [Claude Directory — Security](https://www.claudedirectory.org/for/security),
then filtered by: real methodology (not just prompt snippets), an explicit
authorized-use stance, active maintenance, and license clarity. Popularity
(GitHub stars) was used as a tie-breaker, not the sole signal.

If your skill belongs here, or you'd like an attribution corrected or removed,
open an issue or PR — this list is meant to be fair, and it will be kept that way.
