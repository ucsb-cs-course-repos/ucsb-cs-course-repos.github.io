---
topic: "Security"
desc: "About that Github message: 'We found potential security vulnerabilities in your project' and how to fix it"
---

<style>
 .flash {
    padding: 16px;
    border: 1px solid rgba(27,31,35,0.15);
    border-radius: 3px;
 }
 .flash-warn {
    color: #735c0f;
    background-color: #fffbdd;
    border-color: rgba(27,31,35,0.15);
    max-width: 50em;
    padding: 1em;
}
 </style>

You may sometimes see a message like this one in your repo on Github for a github-pages site that uses Jekyll:

<div class="flash flash-warn mt-3">
 <h5 class="mb-1" style="display-inline">
 <svg height="18" class="octicon octicon-alert mr-1" viewBox="0 0 16 16" version="1.1" width="18" aria-hidden="true"><path fill-rule="evenodd" d="M8.893 1.5c-.183-.31-.52-.5-.887-.5s-.703.19-.886.5L.138 13.499a.98.98 0 0 0 0 1.001c.193.31.53.501.886.501h13.964c.367 0 .704-.19.877-.5a1.03 1.03 0 0 0 .01-1.002L8.893 1.5zm.133 11.497H6.987v-2.003h2.039v2.003zm0-3.004H6.987V5.987h2.039v4.006z"/></svg>
 We found potential security vulnerabilities in your dependencies.
 </h5> 
</div>

If you see this, here's what to do:

# Regenerating `Gemfile.lock`

You may be able to resolve the problem by removing `Gemfile.lock` and regenerating it.  Doing so may update the versions of Ruby Gems to versions that have important security updates.

1. Clone the repo to a Mac, Windows or Linux system with `rvm` installed (for info on installing rvm, see: [/topics/running_locally_rvm/](/topics/running_locally_rvm/).
2. cd into the repo and remove the file `Gemfile.lock`
   ```
   rm Gemfile.lock
   ```
3. Run `setup.sh` and `jekyll.sh` 
   ```
   ./setup.sh
   ./jekyll.sh
   ```
4. Add the newly generated `Gemfile.lock` and commit it.
   ```
   git add Gemfile.lock
   git commit -m "update Gemfile.lock"
   git push origin master
   ```
   
If that doesn't resolve the problem:

   
1.  Check the site <https://pages.github.com/versions/> and look for the version of Ruby, e.g.
   ```
   ruby 2.5.3
   ```
   
2.  If the version is higher than the one that is in your `Gemfile`, `setup.sh` and `jekyll.sh`, then edit those three
   files.  It is a good time to check the latest versions of those files here:
   * [topics/running_locally_gemfile/](/topics/running_locally_gemfile/)
   * [topics/running_locally_jekyll_sh/](/topics/running_locally_jekyll_sh/)
   * [topics/running_locally_jekyll_sh/](/topics/running_locally_jekyll_sh/)
