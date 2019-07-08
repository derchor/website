# Der Chor Website

Build with Jekyll.

Here's how the deploy works:

- Editing via Pushing to github or using the editor (netlify-cms) on master branch
- Travis CI builds the `master` and pushes the files to the `build` branch
- Then a pipeline of `https://buddy.works/`desploys it to the live site via FTP` if there was a push.

Why this build process? I earlier build in buddy works, but new limitation don't let me do that on the free plan. Upload via FTP probably would also be possible with Travis CI, but I did not implement that yet.

## How to update

Gehe zu https://derchor.netlify.com/admin und logge dich dort ein, falls du authorisiert bist (via Netlify Identity).