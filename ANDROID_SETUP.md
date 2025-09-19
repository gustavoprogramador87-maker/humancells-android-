# Configuração do Android SDK para Build do APK

## Pré-requisitos

Para gerar o APK do aplicativo Células 3D, você precisará instalar o Android SDK. Siga os passos abaixo:

## 1. Instalar Android Studio

1. Baixe o Android Studio em: https://developer.android.com/studio
2. Execute o instalador e siga as instruções
3. Durante a instalação, certifique-se de instalar:
   - Android SDK
   - Android SDK Platform-Tools
   - Android Virtual Device (AVD)

## 2. Configurar Variáveis de Ambiente

Adicione as seguintes variáveis ao seu sistema:

```
ANDROID_HOME=C:\Users\%USERNAME%\AppData\Local\Android\Sdk
ANDROID_SDK_ROOT=C:\Users\%USERNAME%\AppData\Local\Android\Sdk
```

Adicione ao PATH:
```
%ANDROID_HOME%\platform-tools
%ANDROID_HOME%\tools
%ANDROID_HOME%\tools\bin
```

## 3. Instalar Java Development Kit (JDK)

1. Baixe o JDK 11 ou superior
2. Configure a variável JAVA_HOME

## 4. Verificar Instalação

Execute no terminal:
```bash
java -version
android --version
adb version
```

## 5. Gerar APK

Após a configuração, execute:

```bash
# Adicionar plataforma Android
node "node_modules\@capacitor\cli\dist\index.js" add android

# Sincronizar projeto
node "node_modules\@capacitor\cli\dist\index.js" sync android

# Abrir no Android Studio para build
node "node_modules\@capacitor\cli\dist\index.js" open android
```

## 6. Build via Linha de Comando

Para build direto via terminal:
```bash
cd android
./gradlew assembleDebug
```

O APK será gerado em: `android/app/build/outputs/apk/debug/`

## Troubleshooting

- Se encontrar erros de permissão, execute o PowerShell como administrador
- Certifique-se de que todas as variáveis de ambiente estão configuradas
- Reinicie o computador após instalar o Android Studio