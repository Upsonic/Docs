# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the **Upsonic AI documentation site**, built with [Mintlify](https://mintlify.com/). It documents the Upsonic Framework (an AI agent development framework focused on safety-first agents for fintech/banking) and Upsonic AgentOS (a deployment/management platform).

## Development Commands

```bash
# Install Mintlify CLI (recommended version)
npm i -g mintlify@4.2.240

# Run local dev server (requires Node.js v19+)
mintlify dev

# Run on a custom port
mintlify dev --port 3333

# Validate links
mintlify broken-links

# If dev server fails, reinstall dependencies
mintlify install
```

Local preview runs at `http://localhost:3000`.

## Architecture

**Docs framework**: Mintlify with `docs.json` as the central configuration file (not the older `mint.json`). All page content is in `.mdx` (MDX) format.

**`docs.json`** — The single source of truth for:
- Site navigation (tabs, groups, page ordering)
- Theme/branding configuration
- Integrations (GTM)

**Navigation structure** (tabs in `docs.json`):
- **Upsonic Framework** — Main framework docs: get-started, concepts, CLI, deployment
- **Upsonic AgentOS** — Agent deployment platform docs (`agentos/`)
- **Universal Commerce Protocol (UCP)** — Protocol docs (`ucp/`)
- **Guides** — Step-by-step tutorials (`guides/`)
- **Reference** — API reference pages (`reference/`)
- **Examples** — Use-case examples (`examples/`)
- **Changelog** — `changelog.mdx`

**Key content directories under `concepts/`** — each maps to a core framework feature:
- `agents/` — Agent creation, configuration, advanced features (memory, reasoning, reflection)
- `safety-engine/` — Guardrails with prebuilt and custom policies (privacy, financial, security, content moderation)
- `tasks/` — Task definition, context management, caching
- `tools/` — Custom tools, MCP tools, ready-to-use tools, model provider tools
- `memory/` — Memory types (conversation, summary, focus) and storage backends
- `knowledgebase/` — RAG with embedding providers, loaders, splitters, vector stores
- `team/` — Multi-agent coordination (sequential, coordinate, route modes)
- `deep-agent/`, `autonomous-agent/`, `chat/`, `stategraph/`, `uel/`, `simulation/`, `interfaces/`, `ocr/`, `hitl/`, `direct-llm-call/`, `culture/`

## Key Conventions

- **Every new page** must be added to the `navigation` section in `docs.json` to appear in the sidebar.
- Pages use `.mdx` extension with YAML frontmatter (`title`, `description`, `sidebarTitle`).
- Mintlify components are used throughout: `<CodeGroup>`, `<Info>`, `<Tip>`, `<Warning>`, `<Frame>`, `<Accordion>`, `<AccordionGroup>`, `<Card>`, `<CardGroup>`.
- Images go in `images/` and are referenced with absolute paths (e.g., `/images/doc_welcome.png`).
- Reusable content snippets live in `snippets/`.
- Deployment is automatic via Mintlify's GitHub App — pushing to `main` deploys to production at `docs.upsonic.ai`.
