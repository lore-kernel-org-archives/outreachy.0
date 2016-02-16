X-GM-THRID: 6251886520521719808
X-Received: by 10.140.201.75 with SMTP id w72mr7115484qha.1.1455631663384;
        Tue, 16 Feb 2016 06:07:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.205 with SMTP id e196ls1577073ioe.47.gmail; Tue, 16 Feb
 2016 06:07:42 -0800 (PST)
X-Received: by 10.107.12.213 with SMTP id 82mr22517724iom.18.1455631662958;
        Tue, 16 Feb 2016 06:07:42 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x229.google.com (mail-ig0-x229.google.com. [2607:f8b0:4001:c05::229])
        by gmr-mx.google.com with ESMTPS id mu6si1219923igb.1.2016.02.16.06.07.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:07:42 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) client-ip=2607:f8b0:4001:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x229.google.com with SMTP id y8so77531788igp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 06:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Fp0uprNaxoWxnhgF5pHdOmTbHArsJeLT1gulDBKZ/wE=;
        b=Ik4KAgcex6y4M78ts1EshPBn/4Zr7ED2p/ISdGIgkcio9vG8ewL/RjTxX13M2tjvoG
         kOoGcLmo+/K962dWAuyLr7M+t4oXCQOLpaCOYoj4QJLpGpAmZIDgKPEd1+SHC/qu0AbC
         QjkMcxG2RvKUdAhCKDdfd1HIKr2vtYb+oBUKtHnR2L38Wicdjnf5LNtCm3vKywUKTQyA
         Y9k8xqYB31fMR2gVBhRpIhxZ1z8JxcwZn78qrvLTT/2sEYFuInbLQD5JfWESpFPbWK5X
         4G1XZscMdx6/oeLhqDgwe6gXBBR5lBgSTQUzj07x6EEQEn4Hc1OlNwuvqCvtJd7EwCAa
         FVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Fp0uprNaxoWxnhgF5pHdOmTbHArsJeLT1gulDBKZ/wE=;
        b=g58fPmZyfC+wxUeSQKFXj/k/t/IhA5hYEuGVUjUlO977rNn6Kn7W0T5/EE6hpu1Ss4
         3zRxqlAwKE5lUQMAC6aG1LTnbA5mCKJBeW38wycdxTVR9WmmIV9t1OwsDtSaoFd8sxFG
         xvkcoquqqz5R9xMzqHnxjg5mLrZGIxJJGUxSZkvlzd/uIJIUwGfYlTySOj92YKr2jXS1
         nZYsKRcBiXCIgGN6cgVgB8UJc64Z5yySFKYCggTigNfqt85wDeyquQJLn51qt3/3GCh5
         Tj+h5w7E/EltsArXS8qJ6Km1rza/aDO+q/VeaTocps3GxiwugKih7NceHLXEi8Ae8ZjF
         05KQ==
X-Gm-Message-State: AG10YOTvIOcai8IB/Ak21nO0EsFfQdE27npIAgn28cDeG7KJljn6n/9mu6UpwZXO32sXqQ==
X-Received: by 10.50.59.146 with SMTP id z18mr18339815igq.62.1455631662800;
        Tue, 16 Feb 2016 06:07:42 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id yq4sm8637361igb.14.2016.02.16.06.07.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:07:42 -0800 (PST)
Date: Tue, 16 Feb 2016 14:07:00 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: Modify tcp_process to return void
 rather than int
Message-ID: <20160216190700.GA15020@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

tcp_process() returns int, which is not used anywhere. So, change
function header to return void intead of int and remove all uses of
the local variable ret, which is used as a return variable in the
function.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Removed blank line added.

 drivers/staging/wilc1000/wilc_wlan.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a396ac9..e5471a7 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -207,9 +207,8 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
 	return 0;
 }
 
-static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
+static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 {
-	int ret;
 	u8 *eth_hdr_ptr;
 	u8 *buffer = tqe->buffer;
 	unsigned short h_proto;
@@ -267,14 +266,9 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 				add_tcp_pending_ack(ack_no, i, tqe);
 			}
 
-		} else {
-			ret = 0;
 		}
-	} else {
-		ret = 0;
 	}
 	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
-	return ret;
 }
 
 static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
-- 
2.5.0


