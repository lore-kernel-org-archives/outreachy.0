X-GM-THRID: 6256120108487278592
X-Received: by 10.28.6.14 with SMTP id 14mr1043229wmg.6.1457796934358;
        Sat, 12 Mar 2016 07:35:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.57.65 with SMTP id g62ls289512wma.32.canary; Sat, 12 Mar
 2016 07:35:33 -0800 (PST)
X-Received: by 10.28.7.133 with SMTP id 127mr1056057wmh.2.1457796933705;
        Sat, 12 Mar 2016 07:35:33 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id g81si293310wmi.3.2016.03.12.07.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 07:35:33 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id l68so51795403wml.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 07:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/h/Myn5yEIlA4Hbr1Z3aYGCvlgniUkJi5pDimwnnO8E=;
        b=t1R7QvHEoMdjk3GK8okJmSVogi725EKauyLI7cdqJwKIZO/tUGm1l0xKEplRfzteY5
         8U8CreSG2uDRwgR7X2diN6gdk5RO9pKiQxGCHj/1FgEO4x0XAk0j6L4Nc9t6jnNvDM3l
         NI3DlffMhqX0T09fm5/L9sVOzeNPx1LMGc4aS5v6kqOHFltQKQeZ4paxBWBvFQRHLLLF
         DrAbncObrypUOXrCE3rIZGY84iRAf3GdqpC9NS0wuvff2h9YMc+RGo1wGOe8TMY4EOiq
         xHw5W294Pi7lf85MHQPCnhNVGNLFFvMj2EyJm3Lpwhb2otL3horLXsyE2rUbVCokN8nd
         QkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/h/Myn5yEIlA4Hbr1Z3aYGCvlgniUkJi5pDimwnnO8E=;
        b=mUKaIIokvfVV0jvOIbs8JjW3HUWFJyvyi7J67CjT3lJBDTmg4h+qnPrTvACfQr1q8h
         ahx2kwlmeLv5QChNLW4XqFasJtZBkrPHO87n1oUksIWhd/KfYmfeasA04UwO4I1CgRaG
         0KM8JX3lgtBMGSbGSsJeXZ6WxGiALINX2f+gLf3rTvUtd7q7UEmzjl9mvMufxu6mMO/D
         jCtX7SyZvwP/DNJq9YTdY+1m2D89Pfbxub3x/Bs8sdEOCMqfx1inu9HQCMwh1pVg6ria
         H4JmT0LjW6yuKEpM5nnt52dsg6IkD/od8IYVuZ6qnIAFOk3cspmg//q4E7S980U0j/69
         71QA==
X-Gm-Message-State: AD7BkJJUS76It87IFM2Jc++wUBmPEe8qsaQKAnhtoL53ZMTasiUjPbvNt3ee4FgfMUL6pw==
X-Received: by 10.194.113.38 with SMTP id iv6mr15363729wjb.126.1457796933518;
        Sat, 12 Mar 2016 07:35:33 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id d2sm13597447wjf.28.2016.03.12.07.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 07:35:32 -0800 (PST)
Date: Sat, 12 Mar 2016 16:35:30 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCHv2] staging: octeon: Fix alignment with open parenthesis
Message-ID: <20160312153527.GA3367@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Alignment should match open parenthesis. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- The first patch failed to apply.

 drivers/staging/octeon/ethernet-rx.c | 7 ++++---
 drivers/staging/octeon/ethernet-rx.h | 2 +-
 drivers/staging/octeon/ethernet-tx.c | 5 +++--
 drivers/staging/octeon/ethernet.c    | 4 ++--
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index b6993b0..a10fe3a 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -172,12 +172,13 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
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
@@ -374,7 +375,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
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
index 93f6558..6b4c208 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -220,7 +220,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 					priv->fau + qos * 4, MAX_SKB_TO_FREE);
 			}
 			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
-							priv->fau + qos * 4);
+								 priv->fau +
+								 qos * 4);
 			spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
 			goto skip_xmit;
 		}
@@ -402,7 +403,7 @@ dont_put_skbuff_in_hw:
 	}
 
 	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
-						priv->fau + qos * 4);
+						 priv->fau + qos * 4);
 
 	/*
 	 * If we're sending faster than the receive can free them then
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 271e1b8..e9cd5f2 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -635,7 +635,7 @@ static struct device_node *cvm_oct_of_get_child(
 }
 
 static struct device_node *cvm_oct_node_for_port(struct device_node *pip,
-							int interface, int port)
+						 int interface, int port)
 {
 	struct device_node *ni, *np;
 
@@ -815,7 +815,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				free_netdev(dev);
 			} else if (register_netdev(dev) < 0) {
 				pr_err("Failed to register ethernet device for interface %d, port %d\n",
-					 interface, priv->port);
+				       interface, priv->port);
 				free_netdev(dev);
 			} else {
 				cvm_oct_device[priv->port] = dev;
-- 
2.7.0


