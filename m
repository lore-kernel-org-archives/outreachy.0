X-GM-THRID: 6394452629785673728
X-Received: by 10.46.80.82 with SMTP id v18mr2981164ljd.27.1488874982796;
        Tue, 07 Mar 2017 00:23:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls1622382ljv.35.gmail; Tue, 07 Mar 2017
 00:23:02 -0800 (PST)
X-Received: by 10.46.8.90 with SMTP id g26mr2235161ljd.16.1488874982411;
        Tue, 07 Mar 2017 00:23:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id l138si207696wmg.0.2017.03.07.00.23.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 00:23:02 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v190so17436477wme.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 00:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cv6wIGaYZo7WO3DaRPa7GzprHuwbcJx8DuYjqNQ8TLI=;
        b=t2IBbsCk/NZPKwBWP1Dkd0n4OI3YafkLtrhduPGSLTp52bsoOM5RnEHhXXtwP12zZq
         fKF6EE6ThluItfftj0pknRem5vr1ya+T3pwPLpxVuZ1Gul/X7oznSQTeQFB+Zy07LwEP
         xaP5lsqhBb7YA6Of/Myy35yeKGK1KNjZ6MDm4IAFQYZW6cLh/Wo136DbkF147emcByzI
         PvARZ48Kc239sV/jzDuBwJAdUaqCVOidNxqRPB4cRR7qHAsMADecch/OXzliooTnpilQ
         XSI7D5NQhOhrNXbJrJ2smCTcnExr+ugFNCpRbYY8/FlFt+v8lJH+Jq59x5rVRjQ330NX
         Dk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cv6wIGaYZo7WO3DaRPa7GzprHuwbcJx8DuYjqNQ8TLI=;
        b=MlgQNsOcOeGI/p5K6rQ1UAXZuHO35P2f1ocevX4QYp0JXMOvrxGiCOhyvohQbolT1r
         0wTn5PT+3PXelL9bPVw7BbRdgo2mhS2At2y1I5Ux66NP1THTKYA6hEYjVo915eiASIx9
         PGZ83lh4Np1xzxu9/aGhx6b3oChhJFCJ//7NZr6djEaxPqBD7KlJMb5dsKHsU6n2xc4x
         TQ9vH/h4Zxd2iRapbumIlIl5AOjfHkeSiOfyY9xtAOTlo4NIsXfBTrzimZoExClc/0JK
         SYGDTRxyGs7ip3pcsPhepv50Um038VLeiKJm85j2hnmgwKDTfR3h9RAZpSpKYq9HcF1o
         b4Nw==
X-Gm-Message-State: AMke39l5H00a+irK7UeYqQLhQYuzplOIU2YAqSQOg1Q1FjjDRvEPrPL8kcJZOUwO10FKsw==
X-Received: by 10.28.102.86 with SMTP id a83mr17260434wmc.76.1488874982241;
        Tue, 07 Mar 2017 00:23:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id x23sm30260529wrb.49.2017.03.07.00.23.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 00:23:01 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 2/2] staging: speakup: keyhelp: Fix 'if' continuation
Date: Tue,  7 Mar 2017 10:22:59 +0200
Message-Id: <20170307082259.13168-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the checkpath.pl issue:
CHECK: Logical continuations should be on the previous line.

Removed tabs to make the logical continuation on the
same line.
Added spaces to align the code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index f5156bb..2ef7370 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
+		if (ch == 0 && (MSG_FUNCNAMES_START + cur_item + 1) <=
 		    MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
 			cur_item--;
 		else
 			return -1;
-	} else if (type == KT_SPKUP
-			&& ch == SPEAKUP_HELP
-			&& !spk_special_handler) {
+	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
+		   !spk_special_handler) {
 		spk_special_handler = spk_handle_help;
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
-- 
2.9.3


