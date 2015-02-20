X-GM-THRID: 1587638435840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cad762ba857753fb,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr1552989wjb.1.1424467631649;
        Fri, 20 Feb 2015 13:27:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.40 with SMTP id q8ls338295lag.29.gmail; Fri, 20 Feb
 2015 13:27:11 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr1563401lab.0.1424467631174;
        Fri, 20 Feb 2015 13:27:11 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id i7si193557wif.0.2015.02.20.13.27.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:27:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesk11 with SMTP id k11so7827695wes.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Cu1u2fAP+X4xEXRCFC0ErwLokYA0F/3ztAV14zw/32s=;
        b=y2OH9G1Mf9ulK1pU1leJolHV7yFQltDEl+Rm/h5iRvV2XgAQF3XV3mZ3jVM1I180wt
         i7xaiIa7sttJZNP1sbWXqngFv9zvIAedaAF8QPxUHGIzdwnKEfYdGTMHfuSAgTb/BbW+
         SYv9bEJCUINu22gOU6Okf5E92wnHhUHvr36bW2MTSEEc5Rj0GA5mvMyYCRvfWxRqa1VP
         6OSnj7G+SOIzukN0uI/Elvo5Pn0oPx98fvDWYXFM3nkbQG3/8sEV4/b4oUYEs2hER/31
         zdvwo2ql0e1YCKr3AkTZfknl9ZfPs2lPJ0n8qVr/FomlDTsiVEszPyMIMDZxIFv21lTO
         hnwQ==
X-Received: by 10.194.134.105 with SMTP id pj9mr21873312wjb.143.1424467631035;
        Fri, 20 Feb 2015 13:27:11 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dm6sm4079840wib.22.2015.02.20.13.27.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:27:10 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace header files
Date: Fri, 20 Feb 2015 22:26:57 +0100
Message-Id: <1424467617-21266-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Files <asm/string.h> and <asm/errno.h> should not be included directly.
This patch fixes the following checkpatch.pl warnings:
Use #include <linux/errno.h> instead of <asm/errno.h>
Use #include <linux/string.h> instead of <asm/string.h>

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..1fb6d85 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -15,8 +15,8 @@
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-#include <asm/string.h>
-#include <asm/errno.h>
+#include <linux/string.h>
+#include <linux/errno.h>
 
 #include "ieee80211.h"
 
-- 
1.9.1


