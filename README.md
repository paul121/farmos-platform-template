# farmos-platform-template

## About

This template can be used to install [farmOS](https://farmos.org) on [Platform.sh](https://platform.sh/).

Out of the box this template builds a base farmOS instance. It is pre-configured to use PostgreSQL, php-geos and Drupal best practices using a composer workflow.

*Much of this template and README is derived from the official [Drupal 9 template](https://github.com/platformsh-templates/drupal9) provided by Platform.sh!*

## Getting started

### Quickstart

The quickest way to deploy this template on Platform.sh is by clicking the button below. This will automatically create a new project and initialize the repository for you.

<p align="center">
<a href="https://console.platform.sh/projects/create-project/?template=https://gist.githubusercontent.com/paul121/a3fa4eb7a2773aa87906ddae4e3282db/raw/ca6152757cf08cca767488f9087a5cf3e0656d54/template-definition.yaml&utm_campaign=deploy_on_platform?utm_medium=button&utm_source=affiliate_links&utm_content=https://gist.githubusercontent.com/paul121/a3fa4eb7a2773aa87906ddae4e3282db/raw/ca6152757cf08cca767488f9087a5cf3e0656d54/template-definition.yaml" target="_blank" title="Deploy with Platform.sh"><img src="https://platform.sh/images/deploy/deploy-button-lg-blue.svg"></a>
</p>

### Other deployment options
For all of the other options below, clone this repository first:

```bash
git clone https://github.com/paul121/farm_contrib_template.git
```

If you're trying to deploy from GitHub, you can generate a copy of this repository first in your own namespace by clicking the [Use this template](https://github.com/paul121/farm_contrib_template/generate) button at the top of this page. Then you can clone a copy of your own repository locally.

<details>
<summary>Deploy directly to Platform.sh from the command line</summary>
<!-- <blockquote>
<br/> -->

1. Create a free trial:

   [Register for a 30 day free trial with Platform.sh](https://auth.api.platform.sh/register). When you have completed signup, select the **Create from scratch** project option. Give you project a name, and select a region where you would like it to be deployed. As for the *Production environment* option, make sure to match it to this repository's settings, or to what you have updated the default branch to locally.

1. Install the Platform.sh CLI

   #### Linux/OSX

   ```bash
   curl -sS https://platform.sh/cli/installer | php
   ```

   #### Windows

   ```bash
   curl -f https://platform.sh/cli/installer -o cli-installer.php
   php cli-installer.php
   ```

   You can verify the installation by logging in (`platformsh login`) and listing your projects (`platform project:list`).

1. Set the project remote

   Find your `PROJECT_ID` by running the command `platform project:list` 

   ```bash
   +---------------+------------------------------------+------------------+---------------------------------+
   | ID            | Title                              | Region           | Organization                    |
   +---------------+------------------------------------+------------------+---------------------------------+
   | PROJECT_ID    | Your Project Name                  | xx-5.platform.sh | your-username                   |
   +---------------+------------------------------------+------------------+---------------------------------+
   ```

   Then from within your local copy, run the command `platform project:set-remote PROJECT_ID`.

1. Push

   ```bash
   git push platform DEFAULT_BRANCH
   ```
   
<!-- <br/>
</blockquote> -->
</details>

<details>
<summary>Integrate with a GitHub repo and deploy pull requests</summary>
<!-- <blockquote>
<br/> -->

1. Create a free trial:

   [Register for a 30 day free trial with Platform.sh](https://auth.api.platform.sh/register). When you have completed signup, select the **Create from scratch** project option. Give you project a name, and select a region where you would like it to be deployed. As for the *Production environment* option, make sure to match it to whatever you have set at `https://YOUR_NAMESPACE/nextjs-drupal`.

1. Install the Platform.sh CLI

   #### Linux/OSX

   ```bash
   curl -sS https://platform.sh/cli/installer | php
   ```

   #### Windows

   ```bash
   curl -f https://platform.sh/cli/installer -o cli-installer.php
   php cli-installer.php
   ```

   You can verify the installation by logging in (`platformsh login`) and listing your projects (`platform project:list`).

1. Setup the integration:

   Consult the [GitHub integration documentation](https://docs.platform.sh/integrations/source/github.html#setup) to finish connecting your repository to a project on Platform.sh. You will need to create an Access token on GitHub to do so.

<!-- <br/>
</blockquote> -->
</details>

<details>
<summary>Integrate with a GitLab repo and deploy merge requests</summary>
<!-- <blockquote>
<br/> -->

1. Create a free trial:

   [Register for a 30 day free trial with Platform.sh](https://auth.api.platform.sh/register). When you have completed signup, select the **Create from scratch** project option. Give you project a name, and select a region where you would like it to be deployed. As for the *Production environment* option, make sure to match it to this repository's settings, or to what you have updated the default branch to locally.

1. Install the Platform.sh CLI

   #### Linux/OSX

   ```bash
   curl -sS https://platform.sh/cli/installer | php
   ```

   #### Windows

   ```bash
   curl -f https://platform.sh/cli/installer -o cli-installer.php
   php cli-installer.php
   ```

   You can verify the installation by logging in (`platformsh login`) and listing your projects (`platform project:list`).

1. Create the repository

   Create a new repository on GitLab, set it as a new remote for your local copy, and push to the default branch. 

1. Setup the integration:

   Consult the [GitLab integration documentation](https://docs.platform.sh/integrations/source/gitlab.html#setup) to finish connecting a repository to a project on Platform.sh. You will need to create an Access token on GitLab to do so.

<!-- <br/>
</blockquote> -->
</details>

<details>
<summary>Integrate with a Bitbucket repo and deploy pull requests</summary>
<!-- <blockquote>
<br/> -->

1. Create a free trial:

   [Register for a 30 day free trial with Platform.sh](https://auth.api.platform.sh/register). When you have completed signup, select the **Create from scratch** project option. Give you project a name, and select a region where you would like it to be deployed. As for the *Production environment* option, make sure to match it to this repository's settings, or to what you have updated the default branch to locally.

1. Install the Platform.sh CLI

   #### Linux/OSX

   ```bash
   curl -sS https://platform.sh/cli/installer | php
   ```

   #### Windows

   ```bash
   curl -f https://platform.sh/cli/installer -o cli-installer.php
   php cli-installer.php
   ```

   You can verify the installation by logging in (`platformsh login`) and listing your projects (`platform project:list`).

1. Create the repository

   Create a new repository on Bitbucket, set it as a new remote for your local copy, and push to the default branch. 

1. Setup the integration:

   Consult the [Bitbucket integration documentation](https://docs.platform.sh/integrations/source/bitbucket.html#setup) to finish connecting a repository to a project on Platform.sh. You will need to create an Access token on Bitbucket to do so.

<!-- <br/>
</blockquote> -->
</details>

### Installing farmOS

Once your code is deployed there are a few options for installing farmOS.

1. Use the farmOS (Drupal) installer as normal. Simply visit your project URL after the deploy is complete and it should redirect you to `/install.php`. You will not be asked for database credentials as those are already provided.

1. Use the Drush `site-install` command after logging in to your production environment. Again, you will not be asked for database credentials as those are already provided.

    ```sh
    platform ssh
    drush site-install
    ```

1. Leverage the auto-install feature provided with this template. Create a variable named `farm_site_info` with the following JSON:

    ```json
    {
        // Flag to configure auto-install. Must be present and set to "true" for this to work.
        "install": true,
        // The site name.
        "site_name": "My farmOS name",
        // The site email. Used as the "from" when sending emails.
        "site_mail": "test@example.com",
        // The admin account email.
        "account_mail": "test@example.com",
        // farmOS modules flag. Defaults to "default".
        // Valid values: "base", "default", "all", or a JSON array of module IDs.
        "modules": "default",
    ```
    The variable can be created via the Platform.sh console UI or using the `platform `cli:

    ```bash
    platform var:create --level project --name farm_site_info --value='{"install": true, "site_name": "My farmOS name", "site_mail": "test@example.com", "account_mail": "test@example.com"}' --json y --sensitive n --prefix none --visible-build n --visible-runtime y

    ```

    farmOS will be installed on the next deploy after the variable is created (as long as no site is already installed).

    *NOTE:* The auto-install feature works best if the `farm_site_info` variable is created before pushing code to the Platform.sh environment. Because database credentials are provided, it is possible for Drupal to become bootstrapped without submitting the installer form.

    An example workflow:

    ```bash
    # Clone repo.
    git clone ...

    # Create project.
    platform project:create ...

    # Create farm_site_info variable.
    platform var:create ...

    # Finally, push code.
    platform push ...
    ```

## Next steps

With your application now deployed on Platform.sh, things get more interesting. 
Run the command `platform environment:branch new-feature` for your project, or open a trivial pull request off of your current branch. 

The resulting environment is an *exact* copy of production.
It contains identical infrastructure to what's been defined in your configuration files, and even includes data copied from your production environment in its services. 
On this isolated environment, you're free to make any changes to your application you need to, and really test how they will behave on production. 

After that, here are a collection of additional resources you might find interesting as you continue with your migration to Platform.sh:

- [Adding a domain and going live](https://docs.platform.sh/domains/steps.html)
- [(CDN) Content Delivery Networks](https://docs.platform.sh/domains/cdn.html)
- [Pricing](https://docs.platform.sh/overview/pricing.html)
- [Security and compliance](https://docs.platform.sh/security.html)


### About Platform.sh

This template has been specifically designed to deploy on Platform.sh.

<details>
<summary>What is Platform.sh?</summary><br/>

Platform.sh is a unified, secure, enterprise-grade platform for building, running and scaling web applications. We’re the leader in Fleet Ops: Everything you need to manage your fleet of websites and apps is available from the start. Because infrastructure and workflows are handled from the start, apps just work, so teams can focus on what really matters: making faster changes, collaborating confidently, and scaling responsibly. Whether managing a fleet of ten or ten thousand sites and apps, Platform.sh is the Developer- preferred solution that scales right.

Our key features include:

* **GitOps: Git as the source of truth**

    Every branch becomes a development environment, and nothing can change without a commit. 

* **Batteries included: Managed infrastructure**

    [Simple abstraction in YAML](https://docs.platform.sh/configuration/yaml.html) for [committing and configuring infrastructure](https://docs.platform.sh/overview/structure.html), fully managed patch updates, and 24 [runtimes](https://docs.platform.sh/languages.html) & [services](https://docs.platform.sh/configuration/services.html) that can be added with a single line of code.

* **Instant cloning: Branch, merge, repeat**

    [Reusable builds](https://docs.platform.sh/overview/build-deploy.html) and automatically inherited production data provide true staging environments - experiment in isolation, test, then destroy or merge.  

* **FleetOps: Fleet management platform**

    Leverage our public API along with custom tools like [Source Operations](https://docs.platform.sh/configuration/app/source-operations.html) and [Activity Scripts](https://docs.platform.sh/integrations/activity.html) to [manage thousands of applications](https://youtu.be/MILHG9OqhmE) - their dependency updates, fresh content, and upstream code. 