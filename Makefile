all:
	@echo "Have a nice day! O(∩_∩)O"

clean:
	@rm -rf $(shell pwd)/_site

sync:
	@rsync -avz -e 'ssh -o stricthostkeychecking=no -o UserKnownHostsFile=/dev/null -o PubkeyAuthentication=yes -p 22' --delete --progress --rsync-path="sudo rsync" _site/ google-fk:/srv/www/youngshook.com/