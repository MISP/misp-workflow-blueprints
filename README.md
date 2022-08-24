# MISP Workflow Blueprints

Starting from version 2.4.160, MISP supports the "workflow" feature allowing site-administrator to modify the default behavior of MISP. Action such as the list below are now possible thanks to this feature:
- Prevent the publishing of Event if some criteria are not met
- Prevent queries against third-party services based on tags attached to Attribute/Event (e.g. `PAP:RED`)
- Post data using webhook for some actions
- Send notifications to chat platform such as Mattermost or Slack
- And much more

 MISP comes with some default workflow blueprints which can be added in any MISP. This repository contains all the default blueprints.

For more information about MISP workflows in MISP, the training materials [MISP Workflows](https://www.misp-project.org/misp-training/a.12-misp-workflows.pdf) is a good start.

## Blueprints

- [Attach `tlp:clear` on `tlp:white`](./blueprints/blueprint_attach-tlp_clear-on-tlp_white_1661328256.json) - Attach the `tlp:clear` tag on elements having the `tlp:white` tag.
- [`PAP:RED` and `tlp:red` Blocking](./blueprints/blueprint_pap_red-and-tlp_red-blocking_1661328258.json) - Block actions if any attributes have the `PAP:RED` or `tlp:red` tag.

## How to contribute your workflow blueprints?

It's very easy. Fork the repository, create a new JSON file with your blueprint and make a pull-request.

## License

The MISP workfows are [dual-licensed](./LICENSE.md) under CC-0 and a simple 2-clause BSD license.
