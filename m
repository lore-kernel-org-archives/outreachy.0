X-GM-THRID: 739037413376
X-Received: by 10.182.39.169 with SMTP id q9mr5485937obk.33.1424367263825;
        Thu, 19 Feb 2015 09:34:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.85 with SMTP id c82ls226318ioe.42.gmail; Thu, 19 Feb
 2015 09:34:23 -0800 (PST)
X-Received: by 10.66.164.164 with SMTP id yr4mr5196556pab.42.1424367263606;
        Thu, 19 Feb 2015 09:34:23 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id f2si2978477pdg.0.2015.02.19.09.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 09:34:23 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fa1so1281929pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 09:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZbUAOOwn+MMfZiTlTy9gVS54X7D3CxLWap4GUdkJ75o=;
        b=jPrHwx7bMSo4N6lgmst2C8+Gv9LjbTA+UAAbBqQErQ8B26Hr7WQcMGVmIDHtLgwJA1
         G1FXXILwqmVmiPEzIjZZYHn9teBqA057Y+3hdeSfeWZva7uEKk3XdeDQA5L27cRDHkck
         xMFieE8f+7X5FCqDL+tbXsAbiUKBTiMGd3XkY5FwOYr6LYaMEezE1syC4WbNgiCHsUB4
         cXq86iarPsaX4kLitJd4lN4Bup4KDul//2wydWFtBHrmFNacSZCjEowX4rz5Vggi6Sfy
         MHPWb6PcGuzxrHu6f+ubcURsh755joO5k34+YZhBfJnebVbfGC+c+1bLddKlKBEHM7JW
         jNuw==
X-Received: by 10.66.62.201 with SMTP id a9mr9366782pas.101.1424367263461;
        Thu, 19 Feb 2015 09:34:23 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from localhost.localdomain ([61.16.142.166])
        by mx.google.com with ESMTPSA id in1sm24334460pbc.19.2015.02.19.09.34.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 09:34:22 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: [PATCH v2] Convert simple_strtoul to kstrtoul
Date: Thu, 19 Feb 2015 23:04:59 +0530
Message-Id: <1424367299-11953-1-git-send-email-navyasri.tech@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
simple_strtoul is obsolete, use kstrtoul instead.

When the string is not converted(parsing error),the strings pointed to by ep and parport[n] are the same.This parsing error results in kstrtoul returning a non-zero value.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
    -Added a descriptive commit message.

 drivers/staging/media/parport/bw-qcam.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
index 67b9da1..1b81244 100644
--- a/drivers/staging/media/parport/bw-qcam.c
+++ b/drivers/staging/media/parport/bw-qcam.c
@@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
 	if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
 		/* user gave parport parameters */
 		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
-			char *ep;
 			unsigned long r;
-			r = simple_strtoul(parport[n], &ep, 0);
-			if (ep == parport[n]) {
+			if (kstrtoul(parport[n],0,&r)) {
 				printk(KERN_ERR
 					"bw-qcam: bad port specifier \"%s\"\n",
 					parport[n]);
-- 
1.9.1


