X-GM-THRID: 5954426896384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7e4dc01b7a792541,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.156.65 with SMTP id wc1mr1239432lbb.7.1425311387985;
        Mon, 02 Mar 2015 07:49:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.65 with SMTP id la1ls415587lab.77.gmail; Mon, 02 Mar
 2015 07:49:47 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr3991401lbb.18.1425311387592;
        Mon, 02 Mar 2015 07:49:47 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id o3si685827wib.2.2015.03.02.07.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 07:49:47 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id x3so34164478wes.7
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 07:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CS9l5WD+n/0QXM0eu6xaTmb1D5To4XiRFjGj/uOmAwQ=;
        b=TYjKvwNAIgZH85JGms75qll3I/3bMkvArkGCCr8ZLOMC2VEfwxr+BNBYAL/Q1Aescm
         oGOgYrOmKMjLSo588LX60Nh3OPkBzaMRIkiMZt/CrRkuoRrfTO4rPMTOmoqlSTlnqD4A
         CGvqgTMXOaqV7mKfONvTcXxbLY5H+BsiorZ0+gycowtsf8TkrBwUB1+4363uqTc0/Y2Q
         4yy1oz1Fn2rS1VF+1DUv9Jvog/jAFPgGFOMhKNasJFGbNiMjuEVJmifOxAnH/9bLXAFn
         EGW/zVn27VmDDmofhsTPkdxOwIpqU2aAskIi8W2CNhfttWiG2tEGS6uzDSSdcK6p2a9c
         apmg==
X-Received: by 10.194.223.5 with SMTP id qq5mr61198153wjc.152.1425311387402;
        Mon, 02 Mar 2015 07:49:47 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.61.145])
        by mx.google.com with ESMTPSA id y3sm19769063wju.14.2015.03.02.07.49.46
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 07:49:46 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH v2] Staging: fbtft-core: remove unnecessary line continuations
Date: Mon,  2 Mar 2015 17:49:59 +0200
Message-Id: <1425311399-6585-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This fixes the checkpatch.pl warning:
WARNING: Avoid unnecessary line continuations

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---

Changes in v2:
   Changed subject line 

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


