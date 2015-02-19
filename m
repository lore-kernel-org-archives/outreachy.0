X-GM-THRID: 853259845632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3a479e3eb0ea640c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr814344lan.1.1424374761738;
        Thu, 19 Feb 2015 11:39:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.74 with SMTP id f10ls359499wij.2.gmail; Thu, 19 Feb
 2015 11:39:21 -0800 (PST)
X-Received: by 10.180.80.7 with SMTP id n7mr1265456wix.0.1424374761493;
        Thu, 19 Feb 2015 11:39:21 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id l8si173687wia.0.2015.02.19.11.39.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:39:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id p10so1794149wes.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fC3w00bEN/oc+gfjUjZpOryBHapqebWwDCxidVUmkt0=;
        b=wTXpbr0JZqveVaDsiU/qJhqVcjlBtyMrixkEUoSwHem8B92u2e5/z18wLYWo4Z1n0g
         aE1I6xS3Xivjvmpv8vq69r5jeVE1L69l1yNZ48ZvTaX7oDo3SDPDSMfr3Q9NkCPhZe/A
         9xD+IEHtglrwILou2myXyAlfyZu906tML9enf0FvbhvRH2XsssEgnjcyE4UmGWjefQnZ
         1ll/9oIMMdS6wK30/Pton03c0VsoIAuRa2qTmeK6ipi7LM16+KISfqbioMGc6FjpaRUe
         Jt265qMxutRH//6Pdmb4wPBhSnc/yS3qt6V2XP3Bl8oi3MXFxntNE4q2pqQR4DGcRcQy
         swRQ==
X-Received: by 10.180.84.166 with SMTP id a6mr13071534wiz.4.1424374761400;
        Thu, 19 Feb 2015 11:39:21 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([94.122.20.155])
        by mx.google.com with ESMTPSA id hv5sm38754959wjb.16.2015.02.19.11.39.19
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 11:39:20 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH] staging: speakup: main: Fix line over 80 characters warning
Date: Thu, 19 Feb 2015 21:39:14 +0200
Message-Id: <1424374754-5313-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

WARNING:line over 80 characters and simple_strtoul is obsolete, use
kstrtoul instead
checkpatch.pl warning

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/speakup/main.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index e9f0c15..fde26b3 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -423,7 +423,8 @@ static void announce_edge(struct vc_data *vc, int msg_id)
 	if (spk_bleeps & 1)
 		bleep(spk_y);
 	if ((spk_bleeps & 2) && (msg_id < edge_quiet))
-		synth_printf("%s\n", spk_msg_get(MSG_EDGE_MSGS_START + msg_id - 1));
+		synth_printf("%s\n", spk_msg_get(MSG_EDGE_MSGS_START + msg_id
+					- 1));
 }
 
 static void speak_char(u_char ch)
@@ -1131,7 +1132,8 @@ static void spkup_write(const char *in_buf, int count)
 	if (in_count > 2 && rep_count > 2) {
 		if (last_type & CH_RPT) {
 			synth_printf(" ");
-			synth_printf(spk_msg_get(MSG_REPEAT_DESC2), ++rep_count);
+			synth_printf(spk_msg_get(MSG_REPEAT_DESC2), ++rep_count
+					);
 			synth_printf(" ");
 		}
 		rep_count = 0;
@@ -1847,7 +1849,8 @@ static void speakup_win_set(struct vc_data *vc)
 			win_right = spk_x;
 		}
 		snprintf(info, sizeof(info), spk_msg_get(MSG_WINDOW_BOUNDARY),
-			 (win_start) ? spk_msg_get(MSG_END) : spk_msg_get(MSG_START),
+			 (win_start) ? spk_msg_get(MSG_END) : spk_msg_get(MSG_S
+				 TART),
 			 (int)spk_y + 1, (int)spk_x + 1);
 	}
 	synth_printf("%s\n", info);
@@ -1930,7 +1933,7 @@ oops:
 		return 1;
 	}
 
-	goto_pos = simple_strtoul(goto_buf, &cp, 10);
+	goto_pos = simple_kstrtoul(goto_buf, &cp, 10);
 
 	if (*cp == 'x') {
 		if (*goto_buf < '0')
-- 
2.1.0


