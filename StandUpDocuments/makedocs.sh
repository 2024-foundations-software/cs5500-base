#!/bin/bash

# Array of week numbers and dates
weeks=(
    "Week 1 September 09"
    "Week 2 September 16"
    "Week 3 September 23"
    "Week 4 September 30"
    "Week 5 October 07"
    "Week 6 October 14"
    "Week 7 October 21"
    "Week 8 October 28"
    "Week 9 November 04"
    "Week 10 November 11"
    "Week 11 November 18"
    "Week 12 November 25"
    "Week 13 December 02"
    "Week 14 December 09"
)

# Loop through the array and create each file
for week in "${weeks[@]}"; do
    filename="${week// /-}.md"  # Replace spaces with - for the filename and prefix with StandUpDocuments/
    {
        echo "# $week"
        echo ""
        echo "## Accomplishments"
        echo "[Please add details]"
        echo ""
        echo "## Working on"
        echo "[Please add details]"
        echo ""
        echo "## Risks"
        echo "[Please add details]"
    } > "$filename"  # Create the file with the title and headings
done

echo "Markdown documents created successfully."