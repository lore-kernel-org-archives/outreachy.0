X-GM-THRID: 6395629856318554112
X-Received: by 10.46.83.76 with SMTP id t12mr4280318ljd.26.1489224140056;
        Sat, 11 Mar 2017 01:22:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.143 with SMTP id u137ls1245625lja.51.gmail; Sat, 11 Mar
 2017 01:22:19 -0800 (PST)
X-Received: by 10.25.24.65 with SMTP id o62mr3003121lfi.8.1489224139646;
        Sat, 11 Mar 2017 01:22:19 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id i76si158761wmh.1.2017.03.11.01.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so14088384wrc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jLHMmkt1CTr2kgDuDesKAze2leIsp7cD3Z8qS5UFvDU=;
        b=ap4gs6gyQKBztWmpKkHXo6uIgjk99F5edB8+k1o5mMZ1sypeKsDu4cs9Ruhce9TuJA
         laupUa6NY/NGTZHGKfozBszofOp2QACfrDrotokxHhnfWqzP7SaPmJ0meSs8ebA299B/
         m77OijJEYGuv5o6V5MiSeSp8Qx6/l1leV50sPUYIq6C4deM9UeDPAFACFNLkJTzb5gUX
         IwyWNJAuSLwzAaLipOh48iZPtWebt3cg+H2CUnbVj+5NHM6TNO5xw/4/rJmzkU7iflKN
         K7aJaHJd0xNRdYikiVoeIZR4E2XJczRAocrKub8vPYwUj4/+CLKUldAsDTCpM3fljzwl
         2ZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jLHMmkt1CTr2kgDuDesKAze2leIsp7cD3Z8qS5UFvDU=;
        b=CB5PpilxCZa9QBjLPQ9lOkQCreKb1P0yW2zH2nnm35wWqwk3QYlInJIxgE5w44f8Sv
         TLayEdtwVuZJzmZ6OwgRrQBBTTHW/MbWq4iUoPwoSpmXjTfCxHMVPgUa/sYA00niMZLR
         nwYZoaVFpLHnqR/U7SLa6XZBpoIilQ2Ygozy9X0hUXDK8+gd+lFIrw/a/1ZJk+fPf+CU
         Lqyh/ksW0a3r6U3bZnC6rDhOPzArcO2WlqYSYe2D4267NkkZWaA7IPNRB0KBrVqJFZfJ
         dVqfbdMpgOASs7mPbCZpRbmgtMNozFOdmUqOP/ZxfstkxMUACzhn2iEq328BXs//6HO6
         8Wxw==
X-Gm-Message-State: AMke39kLWPxia8IAO1p6X5KApJOKWVBpqFCorOvTxeBxK7TwIrCu0q3PBF/Gyi6GmO1Tmw==
X-Received: by 10.223.160.243 with SMTP id n48mr21038893wrn.198.1489224139416;
        Sat, 11 Mar 2017 01:22:19 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id 94sm16573606wrl.50.2017.03.11.01.22.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 01:22:18 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 1/3] staging: wilc1000: Enhance code formatting
Date: Sat, 11 Mar 2017 11:22:02 +0200
Message-Id: <20170311092204.3465-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311092204.3465-1-diaconita.tamara@gmail.com>
References: <20170311092204.3465-1-diaconita.tamara@gmail.com>

Trims line size at 80 characters wilc_wlan_cfg.c file by moving
a part of the lines in a new line.

Fixed the checkpath.pl issue:
CHECK: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Wrap log message lines at 72.

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


