---
topic: "Github: course organizations"
desc: "Setting up an organization for use in a course"
---

If you want to use Github for a course, it is a good practice to:
* set up an organization for the course
* request an academic discount for that organziation.

# Benefits (basic)

These benefits flow easily and automatically from using github in this way

* It allows the creation of unlimited private repos to which the *instructional staff automatically has full access*


# Benefits (advanced)

These benefits require some additional programming of custom software

* Having students belong to an organization provides a way to differentiate students in the course, and instructional staff, from others when using Github OAuth as a login mechanism for a webapp
* Having students create repos under an organization allows central management of "github hooks" to help manage, record, and structure students interactions with github

# How to set this up

1. Set up a course organization at <https://github.com/organizations/new>
   * Set it up on the free plan 
2. While logged into to github with the account that created the organization, visit: <https://education.github.com/discount_requests/new> to request an academic discount.
3. Add instructional staff as Owners.
4. Set the default member privileges to none
   * Visit the link <tt>https://github.com/organizations/<i>organization-name</i>/settings/member_privileges</tt> where <i>organization-name</i> is the name of the organization.  You can get here by visiting the Settings menu for the repo, then selecting Member Privileges.
   * Scroll to the bottom of the page, find <b>Repository permissions<b> for members, and set the value to <b>None</b>.  This is important if you want students to NOT be able to see one another's private repos (only course staff.)
