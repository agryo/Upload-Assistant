### NOTA:
- O desenvolvimento deste projeto está congelado. Apenas bugs críticos serão corrigidos daqui para frente.
- Mais detalhes sobre o futuro do Upload Assistant serão disponibilizados em uma data posterior.
- Obrigado a todos que contribuíram para este projeto, a todos que usaram o Upload Assistant e a todos que compartilharam este projeto para o benefício de outros.
- Um agradecimento especial a todos os staffers dos sites que demonstraram grande paciência e compreensão durante o desenvolvimento do Upload Assistant. A cada um de vocês, que corrigiram problemas e silenciosamente os abordaram comigo. Não consigo enfatizar o suficiente como isso me permitiu focar inteiramente na correção dos problemas no código, e o impulso de motivação que isso me deu.
- Para aqueles que não nomearei, trabalhando em conjunto para trazer novos recursos ao ecossistema, vocês são demais.
- Especificamente, a todos na Aither. Seu apoio inabalável foi verdadeiramente apreciado.
- Por último, mas certamente não menos importante, um enorme obrigado a @wastaken7, que contribuiu grandemente para o sucesso do Upload Assistant. Wastaken7 não só trouxe suporte a um conjunto de novos sites, mas também manteve todos esses sites persistentemente. A enorme quantidade de trabalho de refatoração na base de código, para aumentar a facilidade de desenvolvimento, não pode ser subestimada.
- O Upload Assistant não está morto. Anseio por compartilhar um novo capítulo no futuro.


[![Criar e publicar imagem Docker](https://github.com/Audionut/Upload-Assistant/actions/workflows/docker-image.yml/badge.svg?branch=master)](https://github.com/Audionut/Upload-Assistant/actions/workflows/docker-image.yml)
[![Análise de Código Python](https://github.com/Audionut/Upload-Assistant/actions/workflows/python-code-analysis.yml/badge.svg?branch=master)](https://github.com/Audionut/Upload-Assistant/actions/workflows/python-code-analysis.yml)
[![Python](https://img.shields.io/badge/python-3.9%20%7C%203.10%20%7C%203.11%20%7C%203.12%20%7C%203.13%20%7C%203.14-blue)](https://www.python.org/downloads/)
[![Segurança: Bandit](https://img.shields.io/badge/security-bandit-yellow.svg)](https://github.com/PyCQA/bandit)
[![Segurança: Safety](https://img.shields.io/badge/security-safety-green.svg)](https://github.com/pyupio/safety)
[![Lint: Ruff](https://img.shields.io/badge/lint-ruff-4B8BBE.svg?logo=ruff&logoColor=white)](https://github.com/astral-sh/ruff)
[![Verificador de Tipos: Pyright](https://img.shields.io/badge/type%20checker-pyright-2D7FF9.svg?logo=python&logoColor=white)](https://github.com/microsoft/pyright)

Suporte via Discord: https://discord.gg/QHHAZu7e2A

# Upload Assistant

Uma ferramenta simples para facilitar o trabalho de fazer uploads.

Este projeto é um *fork* do trabalho original de L4G: https://github.com/L4GSP1KE/Upload-Assistant
Imensa gratidão a ele por estabelecer este projeto. Sem o seu tempo e esforço (e de seus apoiadores), este fork não existiria.
Muito obrigado a todos que contribuíram.

## O Que Ele Pode Fazer:
  - Gera e analisa MediaInfo/BDInfo.
  - Gera e faz upload de screenshots (capturas de tela). Suporta *tonemapping* HDR se configurado.
  - Utiliza o srrdb para corrigir nomes de *scenes* usados nos sites.
  - Pode buscar descrições do PTP/BLU/Aither/LST/OE/BHD (automaticamente via nome de arquivo ou via argumento).
  - Pode extrair e usar screenshots existentes de descrições para pular a geração e o upload de novas imagens.
  - Obtém identificadores TMDb/IMDb/MAL/TVDB/TVMAZE.
  - Converte numeração absoluta para temporada/episódio em Animes. Suporte para conteúdo não-Anime via credenciais TVDB.
  - Gera arquivos `.torrent` customizados sem pastas/nfos inúteis no nível superior.
  - Pode reutilizar torrents existentes em vez de gerar um novo hash.
  - Busca automaticamente torrents correspondentes no qBitTorrent (versão 5+).
  - Inclui suporte para o [qui](https://github.com/autobrr/qui).
  - Gera nomes apropriados para o seu upload usando Mediainfo/BDInfo e TMDb/IMDb, seguindo as regras dos sites.
  - Verifica se o lançamento já existe no site.
  - Adiciona ao seu cliente com *fast resume*, semeando instantaneamente (rtorrent/qbittorrent/deluge/pasta de monitoramento).
  - TUDO COM O MÍNIMO DE INTERAÇÃO!
  - Atualmente funciona com .mkv/.mp4/Blu-ray/DVD/HD-DVDs.

## Sites Suportados:

| Nome | Sigla | Nome | Sigla |
| :--- | :---: | :--- | :---: |
| Aither | AITHER | Alpharatio | AR |
| Amigos-Share | ASC | Anthelion | ANT |
| AsianCinema | ACM | Aura4K | A4K |
| AvistaZ | AZ | Beyond-HD | BHD |
| BitHDTV | BHDTV | Blutopia | BLU |
| BrasilJapão-Share | BJS | BrasilTracker | BT |
| CapybaraBR | CBR | CinemaZ | CZ |
| Cinematik | TIK | DarkPeers | DP |
| DigitalCore | DC | Emuwarez | EMUW |
| FearNoPeer | FNP | FileList | FL |
| Friki | FRIKI | FunFile | FF |
| GreatPosterWall | GPW | hawke-uno | HUNO |
| HDBits | HDB | HD-Space | HDS |
| HD-Torrents | HDT | HomieHelpDesk | HHD |
| ImmortalSeed | IS | InfinityHD | IHD |
| ItaTorrents | ITT | LastDigitalUnderground | LDU |
| Lat-Team | LT | Locadora | LCD |
| LST | LST | Luminarr | LUME |
| MoreThanTV | MTV | Nebulance | NBL |
| OldToonsWorld | OTW | OnlyEncodes+ | OE |
| PassThePopcorn | PTP | PolishTorrent | PTT |
| Portugas | PT | PrivateHD | PHD |
| PTerClub | PTER | PTSKIT | PTS |
| Racing4Everyone | R4E | Rastastugan | RAS |
| ReelFLiX | RF | RetroFlix | RTF |
| Samaritano | SAM | seedpool | SP |
| ShareIsland | SHRI | SkipTheCommerials | STC |
| SpeedApp | SPD | Swarmazon | SN |
| The Leach Zone | TLZ | TheOldSchool | TOS |
| ToTheGlory | TTG | TorrentHR | THR |
| Torrenteros | TTR | TorrentLeech | TL |
| TVChaosUK | TVC | ULCX | ULCX |
| UTOPIA | UTP | YOiNKED | YOINK |
| YUSCENE | YUS | | |

## **Configuração:**
   - **REQUER NO MÍNIMO PYTHON 3.9 E PIP3**
   - Também necessita de MediaInfo e ffmpeg instalados no sistema.
      - No Windows, o ffmpeg deve ser adicionado ao PATH.
      - No Linux, instale através do seu gerenciador de pacotes favorito.
      - Se tiver problemas com o ffmpeg (ex: erros de `max workers`), consulte esta [wiki](https://github.com/Audionut/Upload-Assistant/wiki/ffmpeg---max-workers-issues).
   - Obtenha o código-fonte:
      - Clone o repositório: `git clone https://github.com/Audionut/Upload-Assistant.git`
      - Busque todas as tags de versão: `git fetch --all --tags`
      - Acesse uma versão específica (veja em [releases](https://github.com/Audionut/Upload-Assistant/releases)):
      - `git checkout tags/nomedatag` (ex: `v5.0.0`)
      - Ou baixe o ZIP da página de releases e extraia na pasta local.
   - Instale os módulos necessários: `pip3 install --user -U -r requirements.txt`
   - Se preferir usar um ambiente virtual (VENV) para manter o Python do sistema limpo:
      - Crie o ambiente: `python3 -m venv venv`
      - Ative o ambiente: `source venv/bin/activate` (Linux/Mac) ou `venv\Scripts\activate` (Windows)
      - Instale os requisitos: `pip install -r requirements.txt`
   - Na pasta do projeto, execute `python3 config-generator.py` para gerar sua configuração.
   - OU
   - Copie `data/example-config.py` para `data/config.py`.
   - Edite o `config.py` com suas informações (detalhes em: [docs/example-config.md](docs/example-config.md)).
      - A chave API do TMDb pode ser obtida em https://www.themoviedb.org/settings/api.

   **Recursos adicionais podem ser encontrados na [wiki](https://github.com/Audionut/Upload-Assistant/wiki).**

## **Atualização:**
  - Navegue até o diretório do Upload-Assistant: `cd Upload-Assistant`
  - Execute: `git fetch --all --tags`
  - Execute: `git checkout tags/nomedatag`
  - Atualize as dependências: `python3 -m pip install --user -U -r requirements.txt`
  - Execute o gerador de config para obter novas opções: `python3 config-generator.py`

## **Uso via Linha de Comando (CLI):**

  `python3 upload.py "/caminho/para/o/arquivo" --args`

  Os argumentos (`args`) são OPCIONAIS. Para ver a lista completa, use `--help`.
  - Documentação de argumentos: [docs/cli-args.md](docs/cli-args.md)

## **Uso via Docker:**
  Consulte nosso [guia de uso Docker](docs/docker-wiki-full.md).
  Documentação da Interface Web: [docs/web-ui.md](docs/web-ui.md)

## **Atribuições:**

Construído com BDInfoCLI atualizado de https://github.com/rokibhasansagar/BDInfoCLI-ng

<p>
  <a href="https://github.com/autobrr/mkbrr"><img src="https://github.com/autobrr/mkbrr/blob/main/.github/assets/mkbrr-dark.png?raw=true" alt="mkbrr" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://github.com/autobrr/qui"><img src="https://github.com/autobrr/qui/blob/develop/documentation/static/img/qui.png?raw=true" alt="qui" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://ffmpeg.org/"><img src="https://i.postimg.cc/xdj3BS7S/FFmpeg-Logo-new-svg.png" alt="FFmpeg" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://mediaarea.net/en/MediaInfo"><img src="https://i.postimg.cc/vTkjXmHh/Media-Info-Logo-svg.png" alt="Mediainfo" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://www.themoviedb.org/"><img src="https://i.postimg.cc/1tpXHx3k/blue-square-2-d537fb228cf3ded904ef09b136fe3fec72548ebc1fea3fbbd1ad9e36364db38b.png" alt="TMDb" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://www.imdb.com/"><img src="https://i.postimg.cc/CLVmvwr1/IMDb-Logo-Rectangle-Gold-CB443386186.png" alt="IMDb" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://thetvdb.com/"><img src="https://i.postimg.cc/Hs1KKqsS/logo1.png" alt="TheTVDB" height="40px;"></a>&nbsp;&nbsp;
  <a href="https://www.tvmaze.com/"><img src="https://i.postimg.cc/2jdRzkJp/tvm-header-logo.png" alt="TVmaze" height="40px"></a>
</p>