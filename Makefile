.DEFAULT_GOAL := generate

generate:
	mkdir -p target
	pandoc \
	    --pdf-engine=xelatex \
		src/introduction.mkd \
		src/character-creation.mkd \
		src/core-rules.mkd \
		src/skills.mkd \
		src/gear-and-money.mkd \
		src/cyberware.mkd \
		src/psionics.mkd \
		src/campaigns.mkd \
		-t pdf > target/Telios.pdf

clean:
	rm -rf target