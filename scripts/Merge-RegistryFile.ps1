function Merge-RegistryFile {
    param (
        [Parameter(Mandatory=$true)]
        [string]$FilePath
    )

    if ([System.Uri]::IsWellFormedUriString($FilePath, [System.UriKind]::Absolute)) {
        # If the file path is a URL, download the file and save it to a temporary location
        $tempFilePath = New-TemporaryFile
        Invoke-Download -URL $FilePath -Destination $tempFilePath.Directory -FileName $tempFilePath.Name
        # Apply the registry file
        echo reg.exe import $tempFilePath

        # Clean up the temporary file
        # Remove-Item $tempFilePath
    }
    else {
        # If the file path is a local file path, just apply the registry file
        echo reg.exe import $FilePath
    }
}
