---
reviewed_on: 2026-06-01
---

# How to use the Jira MCP with Codex CLI

This guide explains how to configure the Jira MCP server for use with the Codex CLI. The process is pleasantly short, which is always appreciated when credentials are involved.

## Install the Codex CLI

Install the Codex CLI according to the official installation instructions for the target environment.

## Install the Jira MCP server

Install the Atlassian MCP package with `pipx`:

```bash
pipx install mcp-atlassian
```

## Add the MCP Server to the Codex CLI configuration

The MCP server can be added in either of the following ways.

### Add the MCP server through the CLI

Run the following command, with the placeholder values replaced by the appropriate Jira instance URL and credentials:

```bash
codex mcp add mcp_atlassian \
    --env JIRA_URL="https://your-company.atlassian.net" \
    --env JIRA_PERSONAL_TOKEN="your_personal_token" \
    -- mcp-atlassian
```

### Add the MCP server through the Codex config file

Alternatively, edit the Codex configuration file at `~/.codex/config.toml` and add the MCP server definition:

```toml
[mcp_servers.mcp_atlassian]
command = "mcp_atlassian"
env = { 
    JIRA_URL = "https://your-company.atlassian.net",
    JIRA_PERSONAL_TOKEN = "your_personal_token",
}
```

Once configured, the Jira MCP server should be available to the Codex CLI. At that point, Jira can finally join the conversation—because apparently tickets were not already following everyone everywhere.
