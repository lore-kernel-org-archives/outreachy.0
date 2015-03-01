X-GM-THRID: 5486072037376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,85b3c38447febc3c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr3324561wjc.5.1425246417343;
        Sun, 01 Mar 2015 13:46:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.2 with SMTP id iq2ls367137lac.100.gmail; Sun, 01 Mar
 2015 13:46:56 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr3323970laa.2.1425246416908;
        Sun, 01 Mar 2015 13:46:56 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id l8si568793wia.0.2015.03.01.13.46.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so29959853wgh.7
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IG2pCF9pdZU/tFG+zfyWV9s25m5gMV4XZiZXK2UFsOM=;
        b=RJVZWdQNH4oDtVBcjn/UExlruoDaK57ofDBBfjYSEctuOxS8gyBKuxfoAd4BNW0jy5
         61HaaWg5Mqilj1r4dbWZqz7OXIp6sYCx8oaZ81Y/WIbdzQ+/G/RDoa8Dzj3EkOi3L1pG
         WOBnXh/JSbKemYbf3jPRlFHu7cTSAqJyq/UhHVOG1crTvObmhLrvlLRUo3bbqL0jXEsi
         mezZxq10pIGQ5UnDRR8XP+Twe8IjaqnxIg7sDPEAjQMWL55CnUiVOjsiyS8fJdwz+PvQ
         tglMIR25I4xPYMo7IuoAWHCXdqQ8qswUFEAUBbbKmbAuVwRKetxofLenXP+V1UjmH80O
         zO1Q==
X-Received: by 10.180.75.4 with SMTP id y4mr29412024wiv.35.1425246416830;
        Sun, 01 Mar 2015 13:46:56 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id m4sm16420788wjb.25.2015.03.01.13.46.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:46:56 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Convert comment from C99 style to C89 style
Date: Sun,  1 Mar 2015 23:46:51 +0200
Message-Id: <1425246411-12077-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl error:
ERROR: "Do not use C99 // comments"

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 4cf566f..ea6efd2 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -287,6 +287,6 @@ void __exit ieee80211_crypto_wep_exit(void)
 
 void ieee80211_wep_null(void)
 {
-//	printk("============>%s()\n", __func__);
+	/* printk("============>%s()\n", __func__); */
 	return;
 }
-- 
1.9.1


