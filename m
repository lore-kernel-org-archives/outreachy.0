X-GM-THRID: 3930400489472
X-Received: by 10.180.87.166 with SMTP id az6mr55760wib.1.1424981094264;
        Thu, 26 Feb 2015 12:04:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.166 with SMTP id fx6ls1258943wib.20.canary; Thu, 26
 Feb 2015 12:04:53 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr1565722wjb.4.1424981093914;
        Thu, 26 Feb 2015 12:04:53 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id ev8si1420738wib.3.2015.02.26.12.04.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so14341627wgh.8
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 12:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/PpjAVN9/RO6BCi6dShwWrtrAtk0TrjCICmZpMKPEOI=;
        b=SgA0b+OM5I/wrc5iPgr4C8+FPn064OvkwSVD041ohB4lGTpbYTIomaP/2Dq7CfkGff
         koEo6P3Wx6eQz7Vy76zwfRkcZ1x030xUfaPk+H20SSSxC+eUXxP4TmhfnJTEMi/jQdJe
         uBuz5/TwjaRrugcMeRnRDNopnC0Y9NaPnStJXTTTCXGu2iuJ+0Snc5zXWi2dMlNqh59O
         agiTEHOQ+V2Dx/+YWltuP1WdIoMfQm9iqHuPJqKG4bCjfyQDlxKRaQ2UnwFwzZKIYUNy
         tU4un6eV7/M865sFPLxgM7zBig+VynRvq83oBf9qU3GCWXtRDtqfPU0effvsAi2tf1nl
         bX4w==
X-Received: by 10.180.105.97 with SMTP id gl1mr19928304wib.74.1424981093777;
        Thu, 26 Feb 2015 12:04:53 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id k1sm2881217wjn.9.2015.02.26.12.04.53
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:04:53 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: ft1000: Removed unnecessary braces
Date: Thu, 26 Feb 2015 22:05:02 +0200
Message-Id: <1424981102-14231-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
index c8d2782..da34257 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
@@ -317,9 +317,8 @@ static int ft1000_open(struct inode *inode, struct file *file)
 
 	/* Search for available application info block */
 	for (i = 0; i < MAX_NUM_APP; i++) {
-		if ((dev->app_info[i].fileobject == NULL)) {
+		if ((dev->app_info[i].fileobject == NULL))
 			break;
-		}
 	}
 
 	/* Fail due to lack of application info block */
@@ -575,9 +574,8 @@ static long ft1000_ioctl(struct file *file, unsigned int command,
 			} else {
 				/* Check if this message came from a registered application */
 				for (i = 0; i < MAX_NUM_APP; i++) {
-					if (ft1000dev->app_info[i].fileobject == &file->f_owner) {
+					if (ft1000dev->app_info[i].fileobject == &file->f_owner)
 						break;
-					}
 				}
 				if (i == MAX_NUM_APP) {
 					pr_debug("No matching application fileobject\n");
@@ -629,9 +627,8 @@ static long ft1000_ioctl(struct file *file, unsigned int command,
 						pmsg = (u16 *)&dpram_data->pseudohdr;
 						ppseudo_hdr = (struct pseudo_hdr *)pmsg;
 						total_len = msgsz+2;
-						if (total_len & 0x1) {
+						if (total_len & 0x1)
 							total_len++;
-						}
 
 						/* Insert slow queue sequence number */
 						ppseudo_hdr->seq_num = info->squeseqnum++;
-- 
1.8.3.2


