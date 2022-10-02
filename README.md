# Render TYPO3 Changelog in GitPod

## Render current main branch

1. Open http://gitpod.io/#/https://github.com/ochorocho/typo3-changelog-gitpod
2. Wait for GitPod to start
3. To render the changelog run `bash render.sh`

## Render a certain patch

1. Open http://gitpod.io/#/https://github.com/ochorocho/typo3-changelog-gitpod
2. Wait for GitPod to start
3. Apply patch: `cd typo3-core`  and `git fetch https://review.typo3.org/Packages/TYPO3.CMS <PATCH_REF> && git cherry-pick FETCH_HEAD` 
   and return to the root folder (`cd ..`)
4. To render the changelog run `bash render.sh`
