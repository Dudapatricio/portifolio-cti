# Relatório de CTI: análise de hash malicioso

**Data da análise:** 23/11/2026
**Analista:** Maria Eduarda
**Indicador (SHA256):** `4293c1d8574dc87c58360d6bac3daa182f64f7785c9d41da5e0741d2b1817fc7`
**Origem:** amostra pública do MalwareBazaar, usada como exercício de CTI

## 1. Resumo

Hash de arquivo malicioso, associado a malware de botnet das famílias Mirai e Mozi. 49 de 62 antivírus o detectam. Recomenda-se bloquear o hash e investigar qualquer host onde ele apareça.

## 2. Fontes consultadas

| Fonte | Resultado | Link |
|---|---|---|
| VirusTotal | 49/62 detecções, classificado como trojan | https://bazaar.abuse.ch/sample/4293c1d8574dc87c58360d6bac3daa182f64f7785c9d41da5e0741d2b1817fc7/ |
| MalwareBazaar | Hash reportado, tags: mirai, mozi, cryp | https://www.virustotal.com/gui/file/4293c1d8574dc87c58360d6bac3daa182f64f7785c9d41da5e0741d2b1817fc7 |

## 3. Análise

- O hash tem 64 caracteres (SHA256).
- Duas fontes independentes confirmam que o arquivo é malicioso.
- Mirai e Mozi são famílias de botnet, normalmente voltadas a dispositivos IoT e Linux. O rótulo "trojan" é só a classificação de alguns antivírus.
- Data do primeiro envio ao VirusTotal: 27/09/2020. Tipo de arquivo: ELF.

## 4. Técnicas MITRE ATT&CK

| ID | Técnica | Tática |
|---|---|---|
| T1059 | Command and Scripting Interpreter | Execution (TA0002)  |
| T1543 | Create or Modify System Process | Persistence (TA0003) e Privilege Escalation (TA0004) |
| T1027 | Obfuscated Files or Information | Stealth TA0005 |
| T1082 | System Information Discovery | Discovery TA0007 |
| T1071 | Application Layer Protocol | Command and Control TA0011 |

Principais técnicas observadas.

Fonte: VirusTotal, aba Behavior (técnicas observadas na execução em sandbox, Zenbox Linux).

## 5. Conclusão

Há evidência clara de malícia, confirmada por duas fontes.

## 6. Ação recomendada

1. **Conter:** bloquear o hash no EDR/antivírus e, se aparecer em um host, isolá-lo.
2. **Erradicar:** remover o arquivo e verificar persistência.
3. **Monitorar:** acompanhar se o indicador volta a aparecer.
