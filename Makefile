.PHONY: all

port-forward:
	 kubectl port-forward pod/tuvarna-client-7795d89786-2fnlv -n tuvarna 3000:3000
