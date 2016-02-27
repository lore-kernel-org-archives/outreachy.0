X-GM-THRID: 6256120108487278592
X-Received: by 10.194.178.234 with SMTP id db10mr878290wjc.6.1456616530737;
        Sat, 27 Feb 2016 15:42:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.215 with SMTP id w206ls125272wmd.4.canary; Sat, 27 Feb
 2016 15:42:10 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr879587wje.1.1456616530475;
        Sat, 27 Feb 2016 15:42:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 141si402350wmy.2.2016.02.27.15.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:42:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id p65so4209158wmp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Uay5r+jvorzgm2fxErlCJW6NIBvVtJmSIsk1VPxZF0k=;
        b=eBqwokrwGE96Yxil4H+Iq8859+Kmom+vv8IRfGaWyB27J9jpQ4Yry0qgFO9t0q3bx+
         taj7QUwzr0H9AmGoqnFCipp6+xFEzgsaJQ2CVAanhLO39ilqMZcQVrxxkZ2LkRb6+5lY
         8s4OJSeWe73cxFHr122RJ59FdpxLJg/MSgdqDRtCetkjbRsr7FEOhhIucjusDyUtWpeO
         jK4Ho0wsMTlH0GG0lOKxRSrTFlXH0FdPa/uhV6SdC9AyLwVB63as8Jtdz0fnaDqV/8M5
         gGpxp+tRHEOsF9dFQWMNgI6oQIacQ8mGLxbp4I5XGl0poREveGcMRBp0/Hf4EOBAUUym
         Y3tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Uay5r+jvorzgm2fxErlCJW6NIBvVtJmSIsk1VPxZF0k=;
        b=YSs9lU2RALB5lnngHezRBx85MtjEVE5vb6Fo119ikjEabpWBhvWlwnA64kkizdIuCG
         UPJTE6gv5hPeooWvxSs9L0fzZJqnj2/va3KxHiDZkOaOiyFSvPddgWnsgBlBCUr3j9FP
         NupF+iO5TeQ0M79ORfxbwgPGup7Qw9BzqXkhrwNcTCQe8RlhGA6/CaVz+6MxEHFQAYSU
         8BRtgKKDuZb4fW9CY4w8icXkd6DyW3IER8wdAbQDGjfDm59JKaUZ0zIZv2h+AHXEd8st
         wzJREkrAA8ZjJWgCVS6sXTZIhUDFHoGz5V2CHoogqQy/mnK36dhwFCwrQ4qgvWFoFFfP
         Z9Ww==
X-Gm-Message-State: AD7BkJLtAU05LjfcG1zLq39o1QZcxUldpa2kElJvYAagYIdIaTwGWUOFUOGdZbdpqzFvdA==
X-Received: by 10.194.112.34 with SMTP id in2mr8893329wjb.160.1456616530338;
        Sat, 27 Feb 2016 15:42:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id pd1sm18699369wjb.19.2016.02.27.15.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:42:09 -0800 (PST)
Date: Sun, 28 Feb 2016 00:42:07 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/10] staging: octeon: Fix alignment with open parenthesis
Message-ID: <e0e3978e532e0227d2ffeb8d035bc3cb1bc0b691.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Alignment should match open parenthesis. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 7 ++++---
 drivers/staging/octeon/ethernet-rx.h | 2 +-
 drivers/staging/octeon/ethernet-tx.c | 5 +++--
 drivers/staging/octeon/ethernet.c    | 9 +++++----
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index ed55304..c35f4ef 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -182,12 +182,13 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 	if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
 		old_group_mask = cvmx_read_csr(CVMX_SSO_PPX_GRP_MSK(coreid));
 		cvmx_write_csr(CVMX_SSO_PPX_GRP_MSK(coreid),
-				1ull << pow_receive_group);
+			       1ull << pow_receive_group);
 		cvmx_read_csr(CVMX_SSO_PPX_GRP_MSK(coreid)); /* Flush */
 	} else {
 		old_group_mask = cvmx_read_csr(CVMX_POW_PP_GRP_MSKX(coreid));
 		cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(coreid),
-			(old_group_mask & ~0xFFFFull) | 1 << pow_receive_group);
+			       (old_group_mask & ~0xFFFFull) |
+			       1 << pow_receive_group);
 	}
 
 	if (USE_ASYNC_IOBDMA) {
@@ -381,7 +382,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 			 * doesn't exist.
 			 */
 			printk_ratelimited("Port %d not controlled by Linux, packet dropped\n",
-				   port);
+					   port);
 			dev_kfree_skb_irq(skb);
 		}
 		/*
diff --git a/drivers/staging/octeon/ethernet-rx.h b/drivers/staging/octeon/ethernet-rx.h
index a5973fd..315a63d 100644
--- a/drivers/staging/octeon/ethernet-rx.h
+++ b/drivers/staging/octeon/ethernet-rx.h
@@ -30,7 +30,7 @@ static inline void cvm_oct_rx_refill_pool(int fill_threshold)
 						 number_to_free);
 		if (num_freed != number_to_free) {
 			cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE,
-					number_to_free - num_freed);
+					      number_to_free - num_freed);
 		}
 	}
 }
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 94b0e67..82e60ae 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -221,7 +221,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 					priv->fau + qos * 4, MAX_SKB_TO_FREE);
 			}
 			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
-							priv->fau + qos * 4);
+								 priv->fau +
+								 qos * 4);
 			spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
 			goto skip_xmit;
 		}
@@ -420,7 +421,7 @@ dont_put_skbuff_in_hw:
 	}
 
 	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
-						priv->fau + qos * 4);
+						 priv->fau + qos * 4);
 
 	/*
 	 * If we're sending faster than the receive can free them then
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 91f2dd6..8935556 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -139,7 +139,7 @@ static void cvm_oct_periodic_worker(struct work_struct *work)
 
 	if (!atomic_read(&cvm_oct_poll_queue_stopping))
 		queue_delayed_work(cvm_oct_poll_queue,
-						&priv->port_periodic_work, HZ);
+				   &priv->port_periodic_work, HZ);
 }
 
 static void cvm_oct_configure_common_hw(void)
@@ -636,7 +636,7 @@ static struct device_node *cvm_oct_of_get_child(
 }
 
 static struct device_node *cvm_oct_node_for_port(struct device_node *pip,
-							int interface, int port)
+						 int interface, int port)
 {
 	struct device_node *ni, *np;
 
@@ -821,7 +821,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				free_netdev(dev);
 			} else if (register_netdev(dev) < 0) {
 				pr_err("Failed to register ethernet device for interface %d, port %d\n",
-					 interface, priv->port);
+				       interface, priv->port);
 				free_netdev(dev);
 			} else {
 				cvm_oct_device[priv->port] = dev;
@@ -829,7 +829,8 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				    cvmx_pko_get_num_queues(priv->port) *
 				    sizeof(u32);
 				queue_delayed_work(cvm_oct_poll_queue,
-						&priv->port_periodic_work, HZ);
+						   &priv->port_periodic_work,
+						   HZ);
 			}
 		}
 	}
-- 
2.7.0


