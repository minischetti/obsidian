destination=./test_vault/.obsidian/plugins/$1

dist=(
    main.js
    manifest.json
    styles.css
    README.md
)

# if the destination directory doesn't exist, create it
if [ ! -d "$destination" ]; then
    mkdir -p "$destination"
fi

# copy the files
for file in "${dist[@]}"; do
    cp $file $destination
done

