Security
===================================

.. toctree::
   :maxdepth: 2
   :hidden:

************
OWASP Top 10
************

All staff should be aware of the OWASP Top 10 - details of which can be found 
here: https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project

*******************************
General Security Considerations
*******************************

All projects should have its security properly scoped and signed off by 
internal and external security teams prior to build. Some common security 
considerations are as follows:

- What are the threat scenarios specific to your project?
    - How secure is data in transport and at rest?
    - What data is stored/shared?
    - What legalities apply to this project?
    - What priviledges are available in this app & can they be abused?
    - How is data destroyed?
- Is access effectively managed?
    - Onboarding
    - Offboarding
    - Inter-team permissions
    - Deployments restricted to core members
    - Apps locked down prior to launch
    - Logs and backups secured
- Have all common attack vectors been considered? e.g.
    - SQL injection
    - Cross site scripting
    - Email Form Header Injection
    - Malicious File Upload and Execution
    - User Authentication
    - Error suppression
- Is the server secured?
    - Access management
    - Secure logs
    - IDS
    - Firewall properly configured
    - Can handle expected load
    - Is DDOS protection required?
    - SSL
- Have all frameworks, third party libraries and APIs been approved?
    - Licensing
    - Maintenance & support
    - Ensure the latest stable versions are used
    - Where applicable, state specific versions when using package management 
      to avoid any issues caused by automatic package updates

***********************
Security Scanning Tools
***********************

All projects should have a security suite ran against it. The following tools 
are freely available and commonly used by staff:

- Nikto https://cirt.net/Nikto2
- Skipfish https://code.google.com/archive/p/skipfish/

