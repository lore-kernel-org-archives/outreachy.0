X-GM-THRID: 6394817031573602304
X-Received: by 10.25.199.212 with SMTP id x203mr275211lff.9.1488909365829;
        Tue, 07 Mar 2017 09:56:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.133 with SMTP id 127ls130926ljf.39.gmail; Tue, 07 Mar
 2017 09:56:05 -0800 (PST)
X-Received: by 10.25.203.151 with SMTP id b145mr267594lfg.17.1488909365192;
        Tue, 07 Mar 2017 09:56:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id i76si405202wmh.1.2017.03.07.09.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:56:05 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v190so2240779wme.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=A1BJwhC5HU5QQeZ8WV3IIXxAMtoL48t5+z7V8+zxYw0=;
        b=i84b71pMabSdccHOcifIJVX6xWVWgFu/9hWbboAqr8t+sPSvj/qU9RKxHp3E5QEPH3
         l6GnS6tPtOPEWvxSSkCezzhiafe3+vt6LPB80eabckz0PBfa8455XyvHod0F/Uvr4XBe
         v1SzoMQowadKHWBZ1MUiU6HKT+RonMnCHIBoqQQ3c7hWdswJ7Ro+N0EnhMnLtAxk00g7
         SHUwjXdIerSRjl5CkSS2Q5tdazzYO671VLgu17R5Q1IMfGvj4Q+J/Td1Afue/Pijr/Y0
         bRs2YeeK20J8TPu2oXeCqqpByRrzlVdlWxoqpdx09Gn+jFFQRzW+7t89Toj60Qw6pZcl
         Dr2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=A1BJwhC5HU5QQeZ8WV3IIXxAMtoL48t5+z7V8+zxYw0=;
        b=K+gA7qqqxx24ASgXHcjaUxirmN9dBHTiPnjl0vUuynceD91d02CUv7S1VY85SiB7fD
         rfx+Hc5Hfu60nufjdrdV5Pnmo2zTUFKhLE6rBkjFCeghwa8qvlXuXeK0MrG/t+OICCpM
         Ukza0xRKXJizSlniqpXI4xsSXIUe8IjZMyG3r0AFv2kQp/X5YaNcWwRkz+cHAl1oswiu
         nmjtK5f2UFYR650Bm136/duysRyU7E8OFL9kwqalErBgmvoilaCjk9k+6xG3SvhOgfpA
         mFPQr7eACcsqqUgZ8u2oDfvCBKXQEWSantNboWpDxjwkU1++YS61BYKt6j4sYMf14EwU
         xNcQ==
X-Gm-Message-State: AMke39kS0DqTE0sWInlYt0uMjMdizkktpOh60DX8TCi92zEI/SHPGyLEc37ZrqAUU4M1tQ==
X-Received: by 10.28.9.213 with SMTP id 204mr20161283wmj.89.1488909364991;
        Tue, 07 Mar 2017 09:56:04 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id 17sm910303wru.16.2017.03.07.09.56.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 09:56:03 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: wilc_wlan_cfg: Rearrange lines
Date: Tue,  7 Mar 2017 19:55:17 +0200
Message-Id: <20170307175517.18716-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Put parts of some lines in new lines to have less than 80 characters.

Fixed the checkpath.pl issue:
CHECK: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index 926fc16..fed66dcd 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -217,7 +217,8 @@ static int wilc_wlan_cfg_set_word(u8 *frame, u32 offset, u16 id, u32 val32)
 	return 7;
 }
 
-static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str, u32 size)
+static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str,
+				 u32 size)
 {
 	u8 *buf;
 
@@ -298,7 +299,8 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 					break;
 
 				if (g_cfg_hword[i].id == wid) {
-					g_cfg_hword[i].val = cpu_to_le16(info[3] | (info[4] << 8));
+					g_cfg_hword[i].val =
+					cpu_to_le16(info[3] | (info[4] << 8));
 					break;
 				}
 				i++;
@@ -312,7 +314,10 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 					break;
 
 				if (g_cfg_word[i].id == wid) {
-					g_cfg_word[i].val = cpu_to_le32(info[3] | (info[4] << 8) | (info[5] << 16) | (info[6] << 24));
+					g_cfg_word[i].val = cpu_to_le32(info[3]
+						| (info[4] << 8)
+						| (info[5] << 16)
+						| (info[6] << 24));
 					break;
 				}
 				i++;
@@ -332,7 +337,8 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 						i += toggle;
 						toggle ^= 1;
 					}
-					memcpy(g_cfg_str[i].str, &info[2], (info[2] + 1));
+					memcpy(g_cfg_str[i].str, &info[2],
+					       (info[2] + 1));
 					break;
 				}
 				i++;
@@ -478,14 +484,16 @@ int wilc_wlan_cfg_get_wid_value(u16 wid, u8 *buffer, u32 buffer_size)
 				u32 size =  g_cfg_str[i].str[0];
 
 				if (buffer_size >= size) {
-					if (g_cfg_str[i].id == WID_SITE_SURVEY_RESULTS)	{
+					if (g_cfg_str[i].id ==
+					    WID_SITE_SURVEY_RESULTS){
 						static int toggle;
 
 						i += toggle;
 						toggle ^= 1;
 
 					}
-					memcpy(buffer,  &g_cfg_str[i].str[1], size);
+					memcpy(buffer,  &g_cfg_str[i].str[1],
+					       size);
 					ret = size;
 				}
 				break;
@@ -510,7 +518,8 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
 	size -= 4;
 
 	/**
-	 *      The  valid types of response messages are 'R' (Response), 'I' (Information), and 'N' (Network Information)
+	 *      The  valid types of response messages are 'R' (Response),
+	 *      'I' (Information), and 'N' (Network Information)
 	 **/
 
 	switch (msg_type) {
-- 
2.9.3


