X-GM-THRID: 6249536250396540928
X-Received: by 10.107.167.148 with SMTP id q142mr37928090ioe.17.1455083547459;
        Tue, 09 Feb 2016 21:52:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.243 with SMTP id t19ls138761igr.28.gmail; Tue, 09 Feb
 2016 21:52:27 -0800 (PST)
X-Received: by 10.66.146.193 with SMTP id te1mr35742039pab.17.1455083547025;
        Tue, 09 Feb 2016 21:52:27 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si170129pad.2.2016.02.09.21.52.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 21:52:27 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id sv5so447457pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 21:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hqFo3gobUZn8z4Y0dvjH7xvrHadxDGPuv9dWNXJbtx8=;
        b=oHNLr9ZGwP6xBJTIEr7Ks6Dm2iT7MTTszOieAhiqoYae2ssuRcF7+jntneZT3Pzv2h
         wpW9qFn434AHAhD3yf99VMUf0+aHWD3dztyx/q6OXUHbXn5TQ0muAzxNH1ScQUG9eXFt
         fjgrH2ntnUdZSbYC1iN/ZjNQHlce11eOCRYa6Bh16Z4qm5GEOegwqB577S14GTOzNTN7
         yCAJ49jqOI/1ve7ct8fvbEQXrIyH9p2GeQ6pSF05R83zfWcvmzAhevj1xtxXkZGtAYLQ
         wIpj/Bd2NoEFkDe/PoZluZyij1L2pkjvRgcfhuu4wFhfGLuGAn9wQ9X/FzePQb9j5fK7
         CJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=hqFo3gobUZn8z4Y0dvjH7xvrHadxDGPuv9dWNXJbtx8=;
        b=QITLDF0YuZ2fSfNCG2UvM2WWQ8fP5F/HwsJMEfgXwtyV5b7kbj0HkYA0+Alccsf75x
         Ska6UsRgkpTJDQGRFeRtv1fPGe8nsFj/8UFxjFb3wJYdyRv4zCPem7SRVflpJd5GraD4
         djQ8lPLNxkadEgPukesB8VRYEmjxVMtQuUj6uILNF6bnbHZvpFtbfYrk6oToCT0LwfSo
         jLBgYwVJjtSjfjmTmt8rJhmVQsbQarjVLDDCc1+FRV73yIrcLAi24dSrPq4dGpVa7MMG
         gxXuRkPF+GwGUjtnYUvRsr2LvzQ8vh8/7mGrq70sSqoMLvi5uot7BV+C9hBM7xkMT/xX
         NbKA==
X-Gm-Message-State: AG10YORI057J32Jf1I+hGGLWtNWGZLrQayvAClf7oKFnnax9I2K6Ix+dser1Yd7itoiDgQ==
X-Received: by 10.66.101.36 with SMTP id fd4mr57014391pab.76.1455083546878;
        Tue, 09 Feb 2016 21:52:26 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.219.61])
        by smtp.gmail.com with ESMTPSA id yl1sm1809888pac.35.2016.02.09.21.52.25
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 21:52:26 -0800 (PST)
Date: Wed, 10 Feb 2016 11:22:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: gdm72xx: gdm_sdio: Replace timeval with ktime_t
Message-ID: <20160210055217.GA4222@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This driver uses 'struct timeval' which we are trying to remove since
32 bit time types will break in the year 2038. So replace it with
'ktime_t'.

Replaced do_gettimeofday() with ktime_get() because ktime_get() returns 
a 'ktime_t' while do_gettimeofday() returns a 'struct timeval'.

This patch also uses ktime_us_delta() to get the elapsed time.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed the build error ktime_us_delta() was giving.

 drivers/staging/gdm72xx/gdm_sdio.c | 10 +++++-----
 drivers/staging/gdm72xx/gdm_sdio.h |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_sdio.c b/drivers/staging/gdm72xx/gdm_sdio.c
index b0521da..247168f 100644
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
+		diff = ktime_us_delta(now, *before);
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


