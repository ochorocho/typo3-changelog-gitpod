# Render TYPO3 Changelog in GitPod

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](http://gitpod.io/#/https://github.com/ochorocho/typo3-changelog-gitpod)

## Render current main branch

1. Open http://gitpod.io/#/https://github.com/ochorocho/typo3-changelog-gitpod
2. Wait for GitPod to start
3. To render the changelog run `bash render.sh`

## Render a certain patch

1. Open http://gitpod.io/#/https://github.com/ochorocho/typo3-changelog-gitpod
2. Wait for GitPod to start
3. Apply patch: `cd typo3-core`  and `git fetch https://review.typo3.org/Packages/TYPO3.CMS <PATCH_REF> && git cherry-pick FETCH_HEAD` (See Gerrit Patch -> Download)
   and return to the root folder (`cd ..`)
4. To render the changelog run `bash render.sh`
