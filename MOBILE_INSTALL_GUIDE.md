# Guia de Instalação no Celular - Células 3D

## Método 1: PWA (Recomendado - Mais Simples)

### Passo a Passo:
1. **Certifique-se que o servidor está rodando no PC:**
   - O servidor deve estar ativo na porta 3000
   - IP do seu PC: `192.168.15.11`

2. **No seu celular:**
   - Conecte na mesma rede Wi-Fi do PC
   - Abra o navegador (Chrome, Firefox, etc.)
   - Digite: `http://192.168.15.11:3000`
   - A aplicação será carregada

3. **Instalar como App:**
   - **Android Chrome:** Toque no menu (3 pontos) → "Adicionar à tela inicial"
   - **Android Firefox:** Toque no menu → "Instalar"
   - **iPhone Safari:** Toque em "Compartilhar" → "Adicionar à Tela de Início"

4. **Resultado:**
   - Ícone será criado na tela inicial
   - Funciona offline após primeira visita
   - Comporta-se como app nativo

## Método 2: Termux (Android) - Build Local

### Requisitos:
- Android com Termux instalado
- Pelo menos 2GB de espaço livre

### Instalação do Termux:
```bash
# 1. Instale o Termux da F-Droid (recomendado) ou Play Store
# 2. Abra o Termux e execute:

pkg update && pkg upgrade
pkg install nodejs npm git
pkg install openjdk-17
pkg install android-tools

# 3. Clone o projeto:
git clone [URL_DO_SEU_REPOSITORIO] celulas3d
cd celulas3d

# 4. Instale dependências:
npm install
npm install -g @capacitor/cli

# 5. Configure o Android SDK:
export ANDROID_HOME=$PREFIX/share/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# 6. Gere o APK:
npx cap add android
npx cap sync android
npx cap build android
```

## Método 3: Transferir Pasta e Usar Localmente

### Opção A - Via Cabo USB:
1. Conecte o celular no PC via USB
2. Copie a pasta `celulas3d-app/www` para o celular
3. No celular, instale um app "File Manager" com servidor HTTP
4. Abra a pasta e execute o servidor local

### Opção B - Via Compartilhamento:
1. Comprima a pasta `www` em um ZIP
2. Envie via WhatsApp, email ou Google Drive
3. No celular, extraia e use um app servidor HTTP

## Método 4: APK Direto (Mais Complexo)

### Usando GitHub Actions (Recomendado):
1. Suba o projeto para GitHub
2. Configure GitHub Actions com Android SDK
3. O APK será gerado automaticamente
4. Baixe o APK no celular e instale

### Usando Serviços Online:
- **PhoneGap Build** (descontinuado)
- **Ionic Appflow** (pago)
- **Cordova Build** (configuração complexa)

## Recomendação Final

**Para uso imediato:** Use o Método 1 (PWA)
- Mais rápido e simples
- Funciona offline
- Atualizações automáticas
- Não precisa de APK

**Para distribuição:** Use o Método 4 com GitHub Actions
- APK real para compartilhar
- Instalação tradicional
- Funciona sem servidor

## Troubleshooting

### Problema: "Não consegue acessar o IP"
- Verifique se ambos estão na mesma rede Wi-Fi
- Desative firewall temporariamente no PC
- Teste com: `http://192.168.15.11:3000`

### Problema: "App não instala como PWA"
- Use Chrome ou Firefox atualizados
- Certifique-se que o manifest.json está correto
- Acesse via HTTPS se possível

### Problema: "Termux não funciona"
- Use Termux da F-Droid, não da Play Store
- Certifique-se que tem espaço suficiente
- Alguns comandos podem precisar de permissões root