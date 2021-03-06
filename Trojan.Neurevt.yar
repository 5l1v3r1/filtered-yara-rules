rule TrojanWin32NeurevtA_BackDoor
{
	meta:
		Description  = "Trojan.Neurevt.sm"
		ThreatLevel  = "5"

	strings:
		$ = "%s\\__%08x.lnk" ascii wide
		$ = "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\%s" ascii wide
		$ = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce" ascii wide
		$ = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run" ascii wide
		$ = "SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Run" ascii wide
		$ = "{2227A280-3AEA-1069-A2DE-08002B30309D}" ascii wide
		$ = "schtasks.exe" ascii wide
		$ = "SYSTEM\\CurrentControlSet\\Control\\Session Manager" ascii wide
		$ = "Software\\Classes\\CLSID\\%s\\%08X\\%s" ascii wide
		$ = "%s\\%08X.pif" ascii wide
		$ = "Windows ha detectado una carpeta da" ascii wide
		$ = "Mostrar Detalles" ascii wide
		$ = "Mas informaci" ascii wide
		$ = "Restaurar archivos" ascii wide
		$ = "Restaurar archivos y chequear el disco en busca de errores" ascii wide
		$ = "Erro de Disco Cr" ascii wide
		$ = "O Windows encontrou uma pasta corrompida no seu disco r" ascii wide
		$ = "Mostrar detalhes" ascii wide
		$ = "Mais detalhes sobre esse erro" ascii wide
		$ = "Restaurar os arquivos" ascii wide
		$ = "Restaurar os arquivos e verificar erros no disco" ascii wide
		$ = "Kritischer Festplattenfehler" ascii wide
		$ = "Windows hat einen fehlerhaften Ordner auf deiner Festplatte vorgefunden." ascii wide
		$ = "Mehrere fehlerhafte Dateien wurden in dem Ordner 'Eigene Dokumente' gefunden. Um Datenverlust zu ver" ascii wide
		$ = "Details anzeigen" ascii wide
		$ = "Mehr Details zu diesem Fehler" ascii wide
		$ = "Dateien wiederherstellen" ascii wide
		$ = "Dateien wiederherstellen und Festplatte auf Fehler " ascii wide
		$ = "Erreur Critique" ascii wide
		$ = "Windows a trouv" ascii wide
		$ = "Plusieurs fichiers corrompu sont trouv" ascii wide
		$ = "Montre d" ascii wide
		$ = "Plus de d" ascii wide
		$ = "Kritieke foutmelding" ascii wide
		$ = "Windows heeft een beschadigde map gevonden" ascii wide
		$ = "Meerdere beschadigde bestanden zijn in de map 'Mijn Documenten' gevonden. Om dataverlies te voorkome" ascii wide
		$ = "Toon details" ascii wide
		$ = "Meer details over deze foutmelding" ascii wide
		$ = "Herstel bestanden" ascii wide
		$ = "Herstel bestanden en controleer de harde schijf voor errors" ascii wide
		$ = "Kritik disk hatas" ascii wide
		$ = "Windows sabit diskinizde bozuk bir klas" ascii wide
		$ = "Bu hata hakk" ascii wide
		$ = "Dosyalar" ascii wide
		$ = "Hata ayr" ascii wide
		$ = "Kritis Disk Kesalahan" ascii wide
		$ = "Windows telah mengalami rusak folder pada hard drive Anda" ascii wide
		$ = "Beberapa file rusak telah ditemukan di folder 'My Documents'. Untuk mencegah kerugian serius data, p" ascii wide
		$ = "Tampilkan detail" ascii wide
		$ = "Lebih rinci tentang kesalahan ini" ascii wide
		$ = "mengembalikan file" ascii wide
		$ = "Kembalikan file dan memeriksa disk untuk kesalahan" ascii wide
		$ = "Errore critico dell'hard disk" ascii wide
		$ = "Windows ha trovato una cartella corrotta nel vostro hard disk." ascii wide
		$ = "Mostra dettagli" ascii wide
		$ = "Maggiori dettagli su quest'errore" ascii wide
		$ = "Ripristina i file" ascii wide
		$ = "Ripristina i file e controlla il disco per errori." ascii wide
		$ = "Kriittinen Levy Virhe" ascii wide
		$ = "Windows on t" ascii wide
		$ = "Useita korruptoituneita tiedostoja on l" ascii wide
		$ = "Palauta tiedostot" ascii wide
		$ = "Palauta tiedostot ja etsi virheit" ascii wide
		$ = "Problem, krytyczny stan dysku" ascii wide
		$ = "Windows znalazl korupcyjny folder w twoim twardym dysku." ascii wide
		$ = "Duza ilosc zepsutych plikow zostala znaleziona w swoim folderze 'My Documents'. Zeby zachowac pamiec" ascii wide
		$ = "Pokaz wiecej informacji" ascii wide
		$ = "Wiecej danych na temat bledu" ascii wide
		$ = "Przywracanie plik" ascii wide
		$ = "Critical Disk Error" ascii wide
		$ = "Windows has encountered a corrupted folder on your hard drive" ascii wide
		$ = "Multiple corrupted files have been found in the folder 'My Documents'. To prevent serious loss of da" ascii wide
		$ = "Show details" ascii wide
		$ = "More details about this error" ascii wide
		$ = "Restore files and check disk for errors" ascii wide
		$ = "http://answers.microsoft.com/en-us/windows/forum/windows_vista-windows_programs/corrupted-documents-folder/e2a7660f-8eea-4f27-b2e6-e77a0f0c1535" ascii wide
		$ = "uac" ascii wide
		$ = "nuac" ascii wide
		$ = "Has denegado los privilegios de Windows para la utilidad de restauraci" ascii wide
		$ = "Error en los privilegios" ascii wide
		$ = "Erro de privil" ascii wide
		$ = "Sie verweigerten Windows die Privilegien, das Dateiwiederherstellungswerkzeug zu nutzen. Bitte w" ascii wide
		$ = "Privilegfehler" ascii wide
		$ = "Vous avez rejet" ascii wide
		$ = "Erreur de privil" ascii wide
		$ = "U heeft de nodige rechten afgewezen voor de Windows herstelprocedure. Selecteer JA op de volgende UA" ascii wide
		$ = "Toestemming error" ascii wide
		$ = "Windows dosya restorasyon program" ascii wide
		$ = "Izin hatas" ascii wide
		$ = "Anda menyangkal hak-hak istimewa yang tepat untuk utilitas restorasi file Windows. Silakan pilih YES" ascii wide
		$ = "Privilege Kesalahan" ascii wide
		$ = "Hai negato i privilegi necessari a Windows per riparare i file. Selezione \"Si\" nella seguente finest" ascii wide
		$ = "Errore nei privilegi" ascii wide
		$ = "Et sallinut oikeuksia Windowsin tiedostojen palautus ohjelmistolle. Ole hyv" ascii wide
		$ = "Windows file restoration utility" ascii wide
		$ = "You denied the proper privileges to the Windows file restoration utility. Please select YES on the f" ascii wide
		$ = "Privilege Error" ascii wide
		$ = "local ip detected" ascii wide

		$hex0 = { 55 8b ec 81 ec 04 01 00 00 83 ?? ?? ?? 56 57 0f ?? ?? ?? ?? ?? 8b ?? ?? e8 ?? ?? ?? ?? 85 c0 0f ?? ?? ?? ?? ?? be 34 71 42 00 8b ce e8 ?? ?? ?? ?? 85 c0 0f ?? ?? ?? ?? ?? 8b ?? ?? ?? ?? ?? 81 c2 ae 17 00 00 8b ca e8 ?? ?? ?? ?? 83 f8 08 0f ?? ?? ?? ?? ?? 52 e8 ?? ?? ?? ?? 8b f8 85 ff 74 ?? 68 04 01 00 00 6a 00 8d ?? ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? a1 ?? ?? ?? ?? 56 ff ?? ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? 57 68 68 a3 42 00 50 ff ?? ?? ?? ?? ?? 83 c4 14 57 e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 68 d2 04 00 00 ff ?? ?? ?? ?? ?? 8b f0 ff ?? ?? ?? ?? ?? ff ?? ?? 8d ?? ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8b f8 83 fe 01 75 ?? 6a 00 ff ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 8b c7 eb ?? 33 c0 5f 5e c9 c2 04 00 55}
		$hex1 = { 55 8b ec 81 ec 04 01 00 00 53 33 db 57 39 ?? ?? 0f ?? ?? ?? ?? ?? 8b ?? ?? 3b cb 0f ?? ?? ?? ?? ?? 39 ?? ?? 0f ?? ?? ?? ?? ?? 3b f3 0f ?? ?? ?? ?? ?? 39 ?? 0f ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 85 c0 0f ?? ?? ?? ?? ?? 8b ?? ?? e8 ?? ?? ?? ?? 85 c0 0f ?? ?? ?? ?? ?? 8b ?? ?? ?? ?? ?? 81 c2 ae 17 00 00 8b ca e8 ?? ?? ?? ?? 83 f8 08 0f ?? ?? ?? ?? ?? 52 e8 ?? ?? ?? ?? 8b f8 3b fb 0f ?? ?? ?? ?? ?? 68 04 01 00 00 53 8d ?? ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? ff ?? ?? a1 ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? 57 68 68 a3 42 00 50 ff ?? ?? ?? ?? ?? 83 c4 14 57 e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 68 d2 04 00 00 ff ?? ?? ?? ?? ?? 8b f8 ff ?? ?? ?? ?? ?? ff ?? ?? 8b ?? ff ?? ?? 8d ?? ?? ?? ?? ?? 50 68 01 00 00 80 e8 ?? ?? ?? ?? 89 ?? 83 ff 01 75 ?? 53 ff ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 39 ?? 0f 95 c0 eb ?? 32 c0 5f 5b c9 c2 0c 00}
		$hex2 = { 55 8b ec 81 ec 98 06 00 00 8b cf e8 ?? ?? ?? ?? 83 f8 01 73 ?? 33 c0 40 c9 c3 53 56 57 32 db ff ?? ?? ?? ?? ?? 68 08 02 00 00 8b f0 6a 00 8d ?? ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 68 03 01 00 00 57 8d ?? ?? ?? ?? ?? 50 ff ?? ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? 50 ff ?? ?? ?? ?? ?? a1 ?? ?? ?? ?? 05 f2 14 00 00 50 56 ff ?? ?? ?? ?? ?? 85 c0 74 ?? a1 ?? ?? ?? ?? 05 f2 14 00 00 50 8b d7 e8 ?? ?? ?? ?? 85 c0 78 ?? 33 c0 40 e9 ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 57 e8 ?? ?? ?? ?? be 80 00 00 00 eb ?? ff ?? ?? ?? ?? ?? 83 f8 05 75 ?? 84 db 75 ?? 8b cf e8 ?? ?? ?? ?? 83 f8 01 72 ?? 57 e8 ?? ?? ?? ?? b3 01 56 57 ff ?? ?? ?? ?? ?? 85 c0 74 ?? 57 ff ?? ?? ?? ?? ?? 8b f0 85 f6 74 ?? 68 00 c1 42 00 56 ff ?? ?? ?? ?? ?? 85 c0 0f ?? ?? ?? ?? ?? 68 0c c1 42 00 56 ff ?? ?? ?? ?? ?? 85 c0 0f ?? ?? ?? ?? ?? 6a 5c 5e 8b d7 e8 ?? ?? ?? ?? 40 50 57 8d ?? ?? ?? ?? ?? 50 ff ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 50 8d ?? ?? ?? ?? ?? 50 8d ?? ?? ?? ?? ?? 68 18 c1 42 00 50 ff ?? ?? ?? ?? ?? 83 c4 10 6a 08 8d ?? ?? ?? ?? ?? 50 57 ff ?? ?? ?? ?? ?? 85 c0 75 ?? 6a 04 50 57 ff ?? ?? ?? ?? ?? 57 ff ?? ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? 50 ff ?? ?? ?? ?? ?? 85 c0 75 ?? 68 8c 00 00 00 ff ?? ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? 50 ff ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 83 f8 05 75 ?? 8b cf e8 ?? ?? ?? ?? 83 f8 01 72 ?? 57 e8 ?? ?? ?? ?? eb ?? 32 c0 fe c8 0f b6 c0 f7 d8 1b c0 83 e0 02 eb ?? 6a 03 58 eb ?? 33 c0 5e 5b c9 c3}
		$hex3 = { 55 8b ec 83 e4 f8 51 8b ?? ?? 57 85 d2 0f ?? ?? ?? ?? ?? 0f ?? ?? 66 85 c9 0f ?? ?? ?? ?? ?? 0f ?? ?? ?? 83 e8 00 0f ?? ?? ?? ?? ?? 48 74 ?? 48 0f ?? ?? ?? ?? ?? 48 0f ?? ?? ?? ?? ?? b8 1c 03 00 00 66 3b c8 0f ?? ?? ?? ?? ?? a1 ?? ?? ?? ?? 0f ?? ?? ?? 50 e8 ?? ?? ?? ?? 3c 01 0f ?? ?? ?? ?? ?? 52 e8 ?? ?? ?? ?? e9 ?? ?? ?? ?? b8 18 01 00 00 66 3b c8 75 ?? a1 ?? ?? ?? ?? 83 ?? ?? ?? 74 ?? 8d ?? ?? 8b cf e8 ?? ?? ?? ?? 83 f8 02 76 ?? 8b ?? ?? f6 c2 01 74 ?? e8 ?? ?? ?? ?? 83 f8 fe 75 ?? a1 ?? ?? ?? ?? 03 c0 e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? eb ?? f6 c2 02 74 ?? 57 e8 ?? ?? ?? ?? eb ?? f6 c2 04 74 ?? e8 ?? ?? ?? ?? eb ?? b8 24 14 00 00 66 3b c8 75 ?? a1 ?? ?? ?? ?? 0f ?? ?? ?? 50 e8 ?? ?? ?? ?? 3c 01 75 ?? 8b c2 e8 ?? ?? ?? ?? 33 c0 40 eb ?? 33 c0 5f 8b e5 5d c2 04 00}
		$hex4 = { 8b ?? ?? c6 ?? ?? ?? ?? ff ?? ?? 83 f9 37 8b ?? ?? 7e ?? eb ?? c6 ?? ?? ?? ?? ff ?? ?? 8b ?? ?? 83 f9 40 7c ?? e8 ?? ?? ?? ?? eb ?? 8b ?? ?? c6 ?? ?? ?? ?? ff ?? ?? 83 ?? ?? ?? 7c ?? eb ?? c6 ?? ?? ?? ?? ff ?? ?? 8b ?? ?? 83 f9 38 7c ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? 8a ?? ?? 88 ?? ?? e9 ?? ?? ?? ??}
		$hex5 = { 55 8b ec 51 51 56 33 f6 57 8b f9 3b c6 74 ?? 39 ?? ?? 74 ?? 3b fe 74 ?? 39 ?? ?? 74 ?? 6a 07 5a 39 ?? ?? 72 ?? 89 ?? ?? 89 ?? ?? 39 ?? ?? 76 ?? 53 eb ?? 33 f6 3b ?? ?? 77 ?? 8b ?? ?? 8d ?? ?? ?? 8a ?? ?? 3a ?? ?? 75 ?? ff ?? ?? 83 ?? ?? ?? 75 ?? 8d ?? ?? eb ?? 8a ?? ?? 88 ?? ?? 41 3b ca 72 ?? ff ?? ?? 46 83 fe 07 72 ?? eb ?? 83 ?? ?? ?? 42 8d ?? ?? 4f 3b ?? ?? 72 ?? 5b 8b ?? ?? eb ?? 83 c8 ff 5f 5e c9 c2 08 00}


	condition:
		(10 of them) or (any of ($hex*))
}