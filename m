X-GM-THRID: 5902955446272
X-Received: by 10.112.181.198 with SMTP id dy6mr3926918lbc.22.1425306932212;
        Mon, 02 Mar 2015 06:35:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls585486wic.45.canary; Mon, 02 Mar
 2015 06:35:31 -0800 (PST)
X-Received: by 10.194.63.208 with SMTP id i16mr1232650wjs.2.1425306931723;
        Mon, 02 Mar 2015 06:35:31 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id cl5si675755wib.3.2015.03.02.06.35.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 06:35:31 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id x3so33670291wes.6
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 06:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tcty/tj8H06wyMFy4D5fsADhHNGdgFEpt3zBU/i1Oyw=;
        b=BLilxRaCQoGW4IsynkH8SfnVg/HACTYxotElHyUalvS+rbnNp9WrGqiIe1zFyL0Sr9
         ZdD9ChkYLuJXoLhTuEdHCw+J9VvbvP3mi+SI7paowphPOk2NTCfy2idOmWGaEc51WBuy
         KK5lzQXPfMlIJ+oDvNKfUSb4v30O1ItjNE1XHkvPdaY7PQ1fPJK1PmVLmUbYCInzuBIj
         iyR24XwVAmnypxIBSGc6CTLhvYA/sVAHB648xAvvOOtDCM6K5zIGXZz6UrkvReTcN8P7
         rLYskBMcJl/7EZhnVm1O77+VpsSKluDINK59cn0I2XcB+/653CV+VWUaL6/Jj0IrXDvi
         fx+Q==
X-Received: by 10.181.8.99 with SMTP id dj3mr36530433wid.83.1425306931528;
        Mon, 02 Mar 2015 06:35:31 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id y3sm19506526wju.14.2015.03.02.06.35.29
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 06:35:30 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: fbtft: remove unnecessary line continuations
Date: Mon,  2 Mar 2015 16:35:42 +0200
Message-Id: <1425306942-4953-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This fixes the checkpatch.pl warning:
WARNING: Avoid unnecessary line continuations

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 37dcf7e..9f03425 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -379,7 +379,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 	int ret = 0;
 
 	if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE | DEBUG_TIME_EACH_UPDATE))) {
-		if ((par->debug & DEBUG_TIME_EACH_UPDATE) || \
+		if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
 				((par->debug & DEBUG_TIME_FIRST_UPDATE) && !par->first_update_done)) {
 			getnstimeofday(&ts_start);
 			timeit = true;
@@ -1278,7 +1278,7 @@ static int fbtft_verify_gpios(struct fbtft_par *par)
 	fbtft_par_dbg(DEBUG_VERIFY_GPIOS, par, "%s()\n", __func__);
 
 	pdata = par->info->device->platform_data;
-	if (pdata->display.buswidth != 9 && par->startbyte == 0 && \
+	if (pdata->display.buswidth != 9 && par->startbyte == 0 &&
 							par->gpio.dc < 0) {
 		dev_err(par->info->device,
 			"Missing info about 'dc' gpio. Aborting.\n");
-- 
1.8.3.2


