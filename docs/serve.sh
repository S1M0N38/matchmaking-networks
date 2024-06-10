#!/bin/bash

# Define the files to watch
FILES_TO_WATCH=("notebooks/matchmaking-networks.ipynb")

# Define the conversion command
convert_notebook() {
	jupyter-nbconvert "notebooks/matchmaking-networks.ipynb" \
		--SlidesExporter.enabled=True \
		--SlidesExporter.reveal_theme=simple \
		--SlidesExporter.reveal_transition=fade \
		--FilesWriter.build_directory=docs \
		--SlidesExporter.reveal_height=600 \
		--SlidesExporter.reveal_width=1024 \
		--SlidesExporter.reveal_scroll=True \
		--TagRemovePreprocessor.enabled=True \
		--TagRemovePreprocessor.remove_input_tags="['hide']" \
		--TemplateExporter.exclude_input_prompt=True \
		--TemplateExporter.exclude_output_prompt=True \
		--HTMLExporter.embed_images=True \
		--SlidesExporter.reveal_number="t" \
		--to slides

	# Then copy to index add manually add the following HTML
	# cp docs/matchmaking-networks.slides.html docs/index.htm
	# .jp-OutputArea-output {
	#   display: table-cell;
	#   width: 100%;
	#   height: auto;
	#   overflow: auto;
	#   user-select: text;
	#   -moz-user-select: text;
	#   -webkit-user-select: text;
	#   -ms-user-select: text;
	#   display: flex;
	#   justify-content: center;
	# }
}

# Initial conversion
convert_notebook

# Watch files for changes and convert on change
fswatch -o "${FILES_TO_WATCH[@]}" | while read -r event; do
	convert_notebook
done
