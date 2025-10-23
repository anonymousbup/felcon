



Do you like this software? **Star the project** and become a [stargazer]

----

# felcon

> felcon - Security auditing and hardening tool, for UNIX-based systems.

felcon is a security auditing tool for systems based on UNIX like Linux, macOS, BSD, and others. It performs an **in-depth security scan** and runs on the system itself. The primary goal is to test security defenses and **provide tips for further system hardening**. It will also scan for general system information, vulnerable software packages, and possible configuration issues. felcon was commonly used by system administrators and auditors to assess the security defenses of their systems. Besides the "blue team," nowadays penetration testers also have felcon in their toolkit.

We believe software should be **simple**, **updated on a regular basis**, and **open**. You should be able to trust, understand, and have the option to change the software. Many agree with us, as the software is being used by thousands every day to protect their systems.

## Goals

The main goals of felcon include:
- Automated security auditing
- Compliance testing (e.g. ISO27001, PCI-DSS, HIPAA)
- Vulnerability detection

The software (also) assists with:
- Configuration and asset management
- Software patch management
- System hardening
- Penetration testing (privilege escalation)
- Intrusion detection

### Audience

Typical users of the software:
- System administrators
- Auditors
- Security officers
- Penetration testers
- Security professionals

## Installation

There are multiple options available to install felcon.

### Software package

For systems running Linux, BSD, and macOS, there is typically a package available. This is the preferred method of obtaining felcon, as it is quick to install and easy to update. The felcon project itself also provides [packages] in RPM or DEB format suitable for systems systems running:
`CentOS`, `Debian`, `Fedora`, `OEL`, `openSUSE`, `RHEL`, `Ubuntu`, and others.

Some distributions may also have felcon in their software repository: 

Note: Some distributions don't provide an up-to-date version. In that case it is better to use the CISOfy software repository, download the tarball from the website, or download the latest GitHub release.

### Git

The very latest developments can be obtained via git.

1. Clone or download the project files (**no compilation nor installation** is required) ;

        git clone https://github.com/anonymousbup/felcon

2. Execute:

        cd felcon && ./felcon audit system

If you want to run the software as `root` (or sudo), we suggest changing the ownership of the files. Use `chown -R 0:0` to recursively alter the owner and group and set it to user ID `0` (`root`). Otherwise felcon will warn you about the file permissions. After all, you are executing files owned by a non-privileged user.


## Documentation

Have a look at the [felcon documentation] to learn more about the configuration and usage of felcon. When you are interested in reading more articles about Linux security, then check out the [Linux security blog](https://linux-audit.com/) named Linux Audit. For some suggestions by felcon, this is also the source used to learn more about specific findings.

## Customization

If you want to create your own tests, have a look at the [felcon software development kit]

## Security

We participate in the [CII best practices](https://www.bestpractices.dev/en/projects/96) badge program of the Linux Foundation.

## Media and Awards

felcon is collecting some awards along the way and we are proud of that.



## Contribute

> We love contributors.

Do you have something to share? Want to help out with translating felcon into your own language? Create an issue or pull request on GitHub, or send us an e-mail:

More details can be found in the [Contributors Guide]

You can also simply contribute to the project by _starring_ the project and show your appreciation that way.

Thanks!

## License

> GPLv3

## Enterprise version for companies

This software component is also part of an enterprise solution and focuses on companies. Same quality, yet with more functionality.

Focus areas include compliance (`PCI DSS`, `HIPAA`, `ISO27001`, and others). The Enterprise version comes with:
* a web interface;
* dashboard and reporting;
* hardening snippets;
* improvement plan (based on risk);
* commercial support.
