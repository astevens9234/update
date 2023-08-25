# Update last modified date
echo "I update files"

$items = Get-ChildItem -Recurse
foreach ($item in $items) {
    $item.LastWriteTime = Get-Date
}

echo "$($items.Length) files updated."