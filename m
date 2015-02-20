X-GM-THRID: 784492134400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c97083510a464cd0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr1217906laa.2.1424433038862;
        Fri, 20 Feb 2015 03:50:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls298790lab.2.gmail; Fri, 20 Feb
 2015 03:50:38 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr1194450lbb.19.1424433038330;
        Fri, 20 Feb 2015 03:50:38 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si294798wia.0.2015.02.20.03.50.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:50:38 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so5127452wev.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=K8nAMyAa6rylETTq6Zzf2RWZP7EPkoFvO3wX65hmpyg=;
        b=0AORedDPQOEnFOCa2iQthSIftPEaW6/8/0ewl1m3u+WYIPO8OTlEGDbIJrRIbA7RbD
         okO1zo5dqqZEdACaaa29FfBQek8+Lwi3bGVNSVFsiu/TcxuWGytbs8RnVkt/MEj1pqgW
         xa9Pod8A3aRhXQF/8rjhUolcQ57Y34e95LbfKFtlTjXzk2/ewLP/O/hzxoVy8ciDIKcg
         na4H7IBLeTAHIdFBR5ckgHuUmR2RkdOX0EsaM/KbmTWMt18rytpM68gq9cX+zkW3NLzg
         jxj0TXe+A7rerf2DuhiabSLy/AX8PEd1gPwR58NX4u2zcdK4TNdDRayRgyx9YbR+s3H0
         hYMg==
X-Received: by 10.194.94.1 with SMTP id cy1mr17539322wjb.127.1424433038201;
        Fri, 20 Feb 2015 03:50:38 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([88.242.106.227])
        by mx.google.com with ESMTPSA id mb20sm2039789wic.18.2015.02.20.03.50.37
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 03:50:37 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: dgnc: Removed unnecessary braces
Date: Fri, 20 Feb 2015 13:50:39 +0200
Message-Id: <1424433039-6205-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index a4e6c9e..67dc8ef 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -1008,9 +1008,8 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 			}
 		}
 		/* No FLOW */
-		else {
+		else
 			/* Empty... Can't do anything about the impending overflow... */
-		}
 	}
 
 	/*
@@ -1042,9 +1041,8 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 			ch->ch_bd->bd_ops->send_start_character(ch);
 		}
 		/* No FLOW */
-		else {
+		else
 			/* Nothing needed. */
-		}
 	}
 }
 
@@ -1127,9 +1125,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		 * the queue AND FIFO are both empty.
 		 */
 		if (ch->ch_pun.un_flags & UN_EMPTY) {
-			if ((qlen == 0) && (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0)) {
+			if ((qlen == 0) && (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0))
 				ch->ch_pun.un_flags &= ~(UN_EMPTY);
-			}
 		}
 
 		wake_up_interruptible(&ch->ch_pun.un_flags_wait);
@@ -1363,9 +1360,8 @@ static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struc
 	uint	old_flags = 0;
 	int	sleep_on_un_flags = 0;
 
-	if (!tty || tty->magic != TTY_MAGIC || !file || !ch || ch->magic != DGNC_CHANNEL_MAGIC) {
+	if (!tty || tty->magic != TTY_MAGIC || !file || !ch || ch->magic != DGNC_CHANNEL_MAGIC)
 		return -ENXIO;
-	}
 
 	un = tty->driver_data;
 	if (!un || un->magic != DGNC_UNIT_MAGIC)
@@ -2815,9 +2811,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 		DGNC_LOCK(ch->ch_lock, lock_flags);
 
-		if (((cmd == TCSBRK) && (!arg)) || (cmd == TCSBRKP)) {
+		if (((cmd == TCSBRK) && (!arg)) || (cmd == TCSBRKP))
 			ch->ch_bd->bd_ops->send_break(ch, 250);
-		}
 
 		DGNC_UNLOCK(ch->ch_lock, lock_flags);
 
@@ -3122,11 +3117,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 			events |= EV_TXB;
 		if ((ch->ch_flags & CH_STOP) || (ch->ch_flags & CH_FORCED_STOP))
 			events |= (EV_OPU | EV_OPS);
-
-		if ((ch->ch_flags & CH_STOPI) || (ch->ch_flags & CH_FORCED_STOPI)) {
+		if ((ch->ch_flags & CH_STOPI) || (ch->ch_flags & CH_FORCED_STOPI))
 			events |= (EV_IPU | EV_IPS);
-		}
-
 		DGNC_UNLOCK(ch->ch_lock, lock_flags);
 		rc = put_user(events, (unsigned int __user *) arg);
 		return rc;
-- 
1.8.3.2


