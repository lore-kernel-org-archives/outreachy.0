X-GM-THRID: 3510455238656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5a5ed1d62f254d20,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr3257314wix.0.1424905937894;
        Wed, 25 Feb 2015 15:12:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls889728lah.33.gmail; Wed, 25 Feb
 2015 15:12:17 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr863362lbb.13.1424905937406;
        Wed, 25 Feb 2015 15:12:17 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id el6si3740wib.2.2015.02.25.15.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:12:17 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id a1so6665608wgh.12
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 15:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+GUeq82a3yhhYlCgk1r0E7SOIRNeajNW/AJoT5nh9/s=;
        b=DcyfNYxeLJeXskg/bkacyELmTzc5tYw6X43GiwESohJqzo4tOGuILHo4x9nZ7CmxJr
         DdJ1IBe5FB62CVTkai/UKHBOjcx7TTaJmxkthgTy7RyNQU0KuzLTcSYff6z9e2N1J9LV
         ow+OjiTz98HLtO+uB3e//QXLsx7hKHkYP8pkDXb6mHXJIMKeyxenDr93VzRykKz6PfPx
         l4xMfQNSm7+4BbINjktoox/quaGJnyd0M40cpYSRX5AMxcOhbfHI5rDigAd1qR73qD0W
         Xw5eWGKjbnMxXjsctO3I0NA2hNrYyMnBUrtbGnS/UsKRxwELDEEWrN2v/WfTTuY8832w
         8Kiw==
X-Received: by 10.180.77.40 with SMTP id p8mr10894685wiw.53.1424905937316;
        Wed, 25 Feb 2015 15:12:17 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id dn7sm15823939wid.12.2015.02.25.15.12.16
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 15:12:16 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: fbtft: Add blank line
Date: Thu, 26 Feb 2015 01:12:24 +0200
Message-Id: <1424905944-7658-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index 062d986..b59120c 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -72,6 +72,7 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 static int set_var(struct fbtft_par *par)
 {
 	unsigned remap;
+
 	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
 
 	if (par->fbtftops.init_display != init_display) {
-- 
1.8.3.2


