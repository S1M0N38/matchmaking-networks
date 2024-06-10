#!/bin/bash

# Define the files to watch
FILES_TO_WATCH=("notebooks/graph.ipynb" "docs/config.py")

# Define the conversion command
convert_notebook() {
	jupyter-nbconvert "notebooks/graph.ipynb" \
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

	cp docs/graph.slides.html docs/index.html
}

# Initial conversion
convert_notebook

# Watch files for changes and convert on change
fswatch -o "${FILES_TO_WATCH[@]}" | while read -r event; do
	convert_notebook
done
