rule PowerShell_EncodedCommand_IEX
{
    meta:
        description = "Detecta PowerShell com -EncodedCommand e o Base64 de 'IEX (New-'"
        author = "Maria Eduarda"
        date = "2026-11-23"
        reference = "Exercicio de laboratorio (incidente simulado)"

    strings:
        $a = "-EncodedCommand" nocase
        $b = "SUVYIChOZXct"

    condition:
        $a and $b
}
