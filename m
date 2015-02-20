X-GM-THRID: 1627576598528
X-Received: by 10.112.25.7 with SMTP id y7mr2458lbf.21.1424471610698;
        Fri, 20 Feb 2015 14:33:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.227 with SMTP id l3ls189501wib.46.canary; Fri, 20 Feb
 2015 14:33:30 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr41244wiv.0.1424471610422;
        Fri, 20 Feb 2015 14:33:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i7si202409wif.0.2015.02.20.14.33.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 14:33:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f181.google.com with SMTP id r20so5903695wiv.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 14:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=F2ekD/+UWA5WtbN2LZan/TvSfSY0REJ9i1VOrY2tjRM=;
        b=Zq+QqVDJrcRZU1Akt1cEbAxrSFP+zwSQk61CwODwGBSPL5WUDKRPxn4Tko4a1kUHDq
         rdP+JvBNOaQJy3ABwjqEW6wsgz8B/lqt+nGKs07nPd8HqOXIumzYECuYsLGNuxoCpJu2
         gH/NRAwpDmIZ3Sp0ME/wbGrm6TidiM2R9YJPjcjhhYk5htPABQBuPYeak/4SGNDUh2ZI
         Se5Oql3C+aPNO+JtKBVbDpySGZEOQeh/F8OVIcUO6p/lJRZu3QV0339L6FGhJ6yzwfMJ
         cM8MXv69RBUC2Z0OHEGLvMQB+gKclkTC3QF8BmSmpHjj+2VRmE0ZrJamxL63xi5TQixo
         2jTA==
X-Received: by 10.194.92.243 with SMTP id cp19mr88780wjb.32.1424471610324;
        Fri, 20 Feb 2015 14:33:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id dx11sm41077381wjb.23.2015.02.20.14.33.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 14:33:29 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: speakup: Remove unnecessary else after return
Date: Sat, 21 Feb 2015 00:33:16 +0200
Message-Id: <1424471596-15670-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in files of speakup
WARNING: else is not generally useful after a break or return

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index 9475674..832cf00 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -182,7 +182,6 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
 		return 1;
-	} else {
 		name = NULL;
 		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
 			synth_printf("%s\n",
-- 
1.9.1


