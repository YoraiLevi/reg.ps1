# Windows Registry Editor Version 5.00

# [HKEY_CURRENT_USER\Software\Pester]
# "New Value #1"=""
# "New Value #2"=hex:
# "New Value #3"=dword:00000000
# "New Value #4"=hex(b):00,00,00,00,00,00,00,00
# "New Value #5"=hex(7):00,00
# "New Value #6"=hex(2):00,00

@(
#  TODO more
    , @{
        Path       = 'HKCU:\Software\Pester'
        Type       = 'String'
        Name       = 'New Value #1'
        Value      = ''
        TestResult = $true
    }
    , @{
        Path       = 'HKCU:\Software\Pester'
        Type       = 'String'
        Name       = 'New Value #1'
        Value      = $null
        TestResult = $true
    }
)