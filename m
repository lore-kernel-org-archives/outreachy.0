X-GM-THRID: 6252303578088603648
X-Received: by 10.98.72.199 with SMTP id q68mr2368184pfi.14.1455727866061;
        Wed, 17 Feb 2016 08:51:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.251.202 with SMTP id zm10ls2326806obc.51.gmail; Wed, 17
 Feb 2016 08:51:05 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr2406532obc.29.1455727865741;
        Wed, 17 Feb 2016 08:51:05 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ui7si331644pab.0.2016.02.17.08.51.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:51:05 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ho8so14491445pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 08:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PYlkkkJvKvT8v0AaTJIjRRjwFpAx7m2vV5nz23UqcFA=;
        b=N2Vy5cMa7lVkdnUKWkAgiwi4rj3XF9fVlhXzYmHnHnWDgDl7xYL6tzErEAbO7LnRW/
         i1Ez4LPLVqFQeJtxJvoZ+AHnt6nHrGMy+DzYCZD/tbqXNp7CXCpfeTA9XBgNQHSNMffy
         XcO5D2HdqO0JaeAbz1tfTSWkaU6FSzyCi5F+FhqDmXNjji3TbVnK86jFYO6Dp2l9SBNW
         Sgusc7LIVQSbKKCnG39jH0YrT2batK8ufCsPTZ8VUFHOm3+Fa+OBh9JsRJSLjHryr6Ax
         zag0a4qE1/Q10QKgpkwlYKwWY6Y9Gw7/hZf0cIygy5n2xR2MzUU4HkNBfrIrsMMI89DZ
         q8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=PYlkkkJvKvT8v0AaTJIjRRjwFpAx7m2vV5nz23UqcFA=;
        b=LfBv/PaSG0oJiX+LKdlluMiROpc3XEjkQ++J7B7QgUrZDmT3etpuDs5rdzyZgkJwrx
         VsFlZLeoWuAun+1FDTMXTnHP3iy5FAWK/VuFYbwlReR3rxFifc+QWdrn0/bzke1mEH0p
         Oz32Fa+49tzE+cDL6HYTiq+A3+oJ6tnXpNvDOa08Wm4RU9LLcSwYAYUpy3TaAHxSXh/T
         GTDbal2ymjHpTGTi7t3dONNksm8d6Iozc591SB+rH8mu0yfFoo0IsQ/6GTEihaL6s9ZB
         AEPsRDlFdiZymAzcXICEvtOFJLg9IwqcMLgnVwWaEsMW09+3ZYCDlFaEcPdvydKuGYSz
         jhfg==
X-Gm-Message-State: AG10YOTGhXqpT703LAlkdJbAUlfiZK4DFSvFla3jx6SStDUm3ScWwh3m7egsaGA4ZpzWSw==
X-Received: by 10.66.101.36 with SMTP id fd4mr3548911pab.76.1455727865580;
        Wed, 17 Feb 2016 08:51:05 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id i13sm3868977pfi.95.2016.02.17.08.51.03
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 08:51:04 -0800 (PST)
Date: Wed, 17 Feb 2016 22:21:28 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: wilc1000: Fix line over 80 characters
Message-ID: <8293bc46ee3242fc3437bce346736d1febe9c40a.1455727711.git.anchalj109@gmail.com>
References: <cover.1455727711.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455727711.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add local variables so that they do not exceed 80
characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a611cba..a272199 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -285,6 +285,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 	struct wilc *wilc;
 	u32 i = 0;
 	u32 dropped = 0;
+	u32 session = pending_acks_info[MAX_PENDING_ACKS].session_index;
 
 	vif = netdev_priv(dev);
 	wilc = vif->wilc;
@@ -294,7 +295,8 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 		if (i >= MAX_PENDING_ACKS ||
 		    pending_acks_info[i].session_index >= 2 * MAX_TCP_SESSION)
 			break;
-		if (pending_acks_info[i].ack_num < ack_session_info[pending_acks_info[i].session_index].bigger_ack_num) {
+		if (pending_acks_info[i].ack_num <
+			Ack_session_info[session].bigger_ack_num) {
 			struct txq_entry_t *tqe;
 
 			tqe = pending_acks_info[i].txqe;
@@ -608,6 +610,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 	u32 vmm_table[WILC_VMM_TBL_SIZE];
 	struct wilc_vif *vif;
 	struct wilc *wilc;
+	struct txq_entry_t index = tqe->tcp_pending_ack_idx;
 
 	vif = netdev_priv(dev);
 	wilc = vif->wilc;
@@ -789,9 +792,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if (tqe->tx_complete_func)
 					tqe->tx_complete_func(tqe->priv,
 							      tqe->status);
-				if (tqe->tcp_pending_ack_idx != NOT_TCP_ACK &&
-				    tqe->tcp_pending_ack_idx < MAX_PENDING_ACKS)
-					pending_acks_info[tqe->tcp_pending_ack_idx].txqe = NULL;
+				if (index != NOT_TCP_ACK &&
+				    index < MAX_PENDING_ACKS)
+					pending_acks_info[index].txqe = NULL;
 				kfree(tqe);
 			} else {
 				break;
-- 
1.9.1


