.PHONY: changelog-patch changelog-minor release-patch release-minor

channgelog-patch:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s patch -o`

changelog-minor:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

release-patch:
	semtag final -s patch

release-minor:
	semtag final -s minor
