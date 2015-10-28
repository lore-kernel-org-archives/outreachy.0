X-GM-THRID: 6210573207264559104
X-Received: by 10.107.159.72 with SMTP id i69mr16528857ioe.23.1446011757126;
        Tue, 27 Oct 2015 22:55:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.195 with SMTP id w3ls2366027obf.75.gmail; Tue, 27 Oct
 2015 22:55:56 -0700 (PDT)
X-Received: by 10.182.24.42 with SMTP id r10mr38052066obf.42.1446011756663;
        Tue, 27 Oct 2015 22:55:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id el2si4649460pbb.0.2015.10.27.22.55.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 22:55:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id la5so52992832pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 22:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KZ1vSgXWDCLAxYO59ZeKPxyT7l5mwA9AwNmxkllGCxo=;
        b=NUDS6CWCSTxS6+H4fpgJHl/RoVY5zOylw5alFSBjkdDEUQB2lr5LVgfpclJtKSdWBI
         O66cPaGO9ZG9GioCixyyjE1YdpNU27GmpDYUCjNZS6FQ/6/xtOVYhx//bjp6mK/rGhXl
         AwiEv7Ot4gF2lFu7FGa+IiDwQT0tAJNH/68p5/PAQDEMVZOkcvAkIloQOypUmEH9zrX2
         sjUMdX1EbY6epVPgUvsO4T6c2a/t5dekA+uD51JW3QrvVuy8uuQsOjMsrdjjFbU0l6tI
         UsQSJ/5XyD066C6oB0KRJsIY61a9vpu9abIxY//MiyRHJeUhqT+kRP7XHbrafuAU+c2k
         ZxfA==
X-Received: by 10.68.57.129 with SMTP id i1mr51265279pbq.51.1446011756476;
        Tue, 27 Oct 2015 22:55:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.204.253])
        by smtp.gmail.com with ESMTPSA id xe9sm6885526pbc.4.2015.10.27.22.55.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 22:55:56 -0700 (PDT)
Date: Wed, 28 Oct 2015 11:25:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] staging: gdm72xx: gdm_stdio: Replace timeval with ktime_t
Message-ID: <20151028055552.GA14174@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This driver uses 'struct timeval' which we are trying to remove since
32 bit time types will break in the year 2038 by replacing it with
ktime_t.

This patch changes do_gettimeofday() to ktime_get() because
ktime_get() returns a ktime_t while do_gettimeofday() returns struct
timeval.

This patch also uses ktime_us_delta() to get the elapsed time.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/gdm72xx/gdm_sdio.c | 10 +++++-----
 drivers/staging/gdm72xx/gdm_sdio.h |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_sdio.c b/drivers/staging/gdm72xx/gdm_sdio.c
index b0521da..1a2a5a4 100644
--- a/drivers/staging/gdm72xx/gdm_sdio.c
+++ b/drivers/staging/gdm72xx/gdm_sdio.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/ktime.h>
 
 #include <linux/mmc/core.h>
 #include <linux/mmc/card.h>
@@ -303,7 +304,7 @@ static void send_sdu(struct sdio_func *func, struct tx_cxt *tx)
 		put_tx_struct(t->tx_cxt, t);
 	}
 
-	do_gettimeofday(&tx->sdu_stamp);
+	tx->sdu_stamp = ktime_get();
 	spin_unlock_irqrestore(&tx->lock, flags);
 }
 
@@ -330,7 +331,7 @@ static void do_tx(struct work_struct *work)
 	struct sdio_func *func = sdev->func;
 	struct tx_cxt *tx = &sdev->tx;
 	struct sdio_tx *t = NULL;
-	struct timeval now, *before;
+	ktime_t now, *before;
 	int is_sdu = 0;
 	long diff;
 	unsigned long flags;
@@ -346,11 +347,10 @@ static void do_tx(struct work_struct *work)
 		list_del(&t->list);
 		is_sdu = 0;
 	} else if (!tx->stop_sdu_tx && !list_empty(&tx->sdu_list)) {
-		do_gettimeofday(&now);
+		now = ktime_get();
 		before = &tx->sdu_stamp;
 
-		diff = (now.tv_sec - before->tv_sec) * 1000000 +
-			(now.tv_usec - before->tv_usec);
+		diff = ktime_us_delta(now, before);
 		if (diff >= 0 && diff < TX_INTERVAL) {
 			schedule_work(&sdev->ws);
 			spin_unlock_irqrestore(&tx->lock, flags);
diff --git a/drivers/staging/gdm72xx/gdm_sdio.h b/drivers/staging/gdm72xx/gdm_sdio.h
index 77ad9d6..aa7dad2 100644
--- a/drivers/staging/gdm72xx/gdm_sdio.h
+++ b/drivers/staging/gdm72xx/gdm_sdio.h
@@ -15,7 +15,7 @@
 #define __GDM72XX_GDM_SDIO_H__
 
 #include <linux/types.h>
-#include <linux/time.h>
+#include <linux/ktime.h>
 
 #define MAX_NR_SDU_BUF  64
 
@@ -32,7 +32,7 @@ struct tx_cxt {
 	struct list_head	free_list;
 	struct list_head	sdu_list;
 	struct list_head	hci_list;
-	struct timeval		sdu_stamp;
+	ktime_t			sdu_stamp;
 	u8			*sdu_buf;
 	spinlock_t		lock;
 	int			can_send;
-- 
1.9.1


