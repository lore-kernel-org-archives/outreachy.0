X-GM-THRID: 6256120108487278592
X-Received: by 10.112.168.201 with SMTP id zy9mr883702lbb.23.1456616635288;
        Sat, 27 Feb 2016 15:43:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.147.12 with SMTP id v12ls125046wmd.32.gmail; Sat, 27 Feb
 2016 15:43:54 -0800 (PST)
X-Received: by 10.28.226.132 with SMTP id z126mr418641wmg.2.1456616634948;
        Sat, 27 Feb 2016 15:43:54 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id e130si307511wme.2.2016.02.27.15.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id w11so469419wmd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ae4TePmlE/kkPbTvjtUCpdij/2k2oqnyFSJkNulidTA=;
        b=CZ4+gRE+SPZkxJXXKqUWwvF4q/DI+AA7LuxsRB5uJqzL6xHbvu2v2hxHrUZvvSyQs1
         WOFYmb1FQIJLXzaGGiB/uhaMCEMIdUzwo0nq9r/6rssVNtx/4oGmbvCP2JT48EBOk8N9
         9qEbeWO+hdbgZP0kdKF6WPJymGD3bA3Y804vM7NuyeXGWMabC4crFxCj2aoZev3TwsEe
         zzQamcP6PYGAkddj4EvyLRFY1HcohjdCll5AYFT9rGxZgrOTvI4BK5Qr5/+4raZ8dB4Z
         1oIgCEc7ecx9By7/Alq0MntxAoC/Dx6uwk/F3YBFdFj5Qy5b/V2UmPEEQf26N8Z3HBdH
         vqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ae4TePmlE/kkPbTvjtUCpdij/2k2oqnyFSJkNulidTA=;
        b=Mqo5ME2REKVms+ZijVXPMEj+qbEK1mAA5VQRlaFKixLBzOlAF/7pzfVK6/PEceUFdA
         nyfaFs9l02xXCoCnAtNhzTzfRta3a087A73dgilcMqFuxrKAxdar8XI9t3u+8f1nB4Tj
         Q7DpoqUgggN8TJLQ2ssGD0dk+bkz64PgKrDlRDKrCggiEv2Hsq7jdPRHrfi28rLteFjx
         nLe7N5EQht/oyPA7kOHjpAQEe/ZnCjO0DfxOtrhazmmn+SO2DtUe8Bf6wT8UH+WI+K+d
         +HWTJVrH7k/ro2jb4J/RAQwZ0Crm+EHz73iPVthWw9IqwY5GOX1xEjtkcqqE6frBLQMD
         ukEQ==
X-Gm-Message-State: AD7BkJIpOsFi623fBcqqd66rc6qyIPGosD7k7RO0wMrLKbi8goJA5TnJIQzteqzetB0A7g==
X-Received: by 10.194.84.171 with SMTP id a11mr7636288wjz.91.1456616634810;
        Sat, 27 Feb 2016 15:43:54 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id up6sm18723890wjc.6.2016.02.27.15.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:43:54 -0800 (PST)
Date: Sun, 28 Feb 2016 00:43:52 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/10] staging: octeon: Fix block comments
Message-ID: <bfe1e7ae63cecc49b99f59bc8c2a9d85faca5b6b.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove commented source code. Checkpatch detected these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 20 +++++---------------
 drivers/staging/octeon/ethernet-tx.c | 33 ++++++++-------------------------
 2 files changed, 13 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index ee6c5da..a7340cf 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -114,17 +114,11 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 			}
 
 			if (*ptr == 0xd5) {
-				/*
-				  printk_ratelimited("Port %d received 0xd5 preamble\n",
-					  port);
-				 */
+				/* Port received 0xd5 preamble */
 				work->packet_ptr.s.addr += i + 1;
 				work->word1.len -= i + 5;
 			} else if ((*ptr & 0xf) == 0xd) {
-				/*
-				  printk_ratelimited("Port %d received 0x?d preamble\n",
-					  port);
-				 */
+				/* Port received 0xd preamble */
 				work->packet_ptr.s.addr += i;
 				work->word1.len -= i + 4;
 				for (i = 0; i < work->word1.len; i++) {
@@ -136,9 +130,6 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 			} else {
 				printk_ratelimited("Port %d unknown preamble, packet dropped\n",
 						   port);
-				/*
-				   cvmx_helper_dump_packet(work);
-				 */
 				cvm_oct_free_work(work);
 				return 1;
 			}
@@ -368,11 +359,10 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 				}
 				netif_receive_skb(skb);
 			} else {
-				/* Drop any packet received for a device that isn't up */
 				/*
-				  printk_ratelimited("%s: Device not up, packet dropped\n",
-					   dev->name);
-				*/
+				 * Drop any packet received for a device that
+				 * isn't up.
+				 */
 				priv->stats.rx_dropped++;
 				dev_kfree_skb_irq(skb);
 			}
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index f1f693b..b093d2e 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -310,55 +310,38 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 #if REUSE_SKBUFFS_WITHOUT_FREE
 	fpa_head = skb->head + 256 - ((unsigned long)skb->head & 0x7f);
 	if (unlikely(skb->data < fpa_head)) {
-		/*
-		 * printk("TX buffer beginning can't meet FPA
-		 * alignment constraints\n");
-		 */
+		/* TX buffer beginning can't meet FPA alignment constraints */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely
 	    ((skb_end_pointer(skb) - fpa_head) < CVMX_FPA_PACKET_POOL_SIZE)) {
-		/*
-		   printk("TX buffer isn't large enough for the FPA\n");
-		 */
+		/* TX buffer isn't large enough for the FPA */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely(skb_shared(skb))) {
-		/*
-		   printk("TX buffer sharing data with someone else\n");
-		 */
+		/* TX buffer sharing data with someone else */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely(skb_cloned(skb))) {
-		/*
-		   printk("TX buffer has been cloned\n");
-		 */
+		/* TX buffer has been cloned */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely(skb_header_cloned(skb))) {
-		/*
-		   printk("TX buffer header has been cloned\n");
-		 */
+		/* TX buffer header has been cloned */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely(skb->destructor)) {
-		/*
-		   printk("TX buffer has a destructor\n");
-		 */
+		/* TX buffer has a destructor */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely(skb_shinfo(skb)->nr_frags)) {
-		/*
-		   printk("TX buffer has fragments\n");
-		 */
+		/* TX buffer has fragments */
 		goto dont_put_skbuff_in_hw;
 	}
 	if (unlikely
 	    (skb->truesize !=
 	     sizeof(*skb) + skb_end_offset(skb))) {
-		/*
-		   printk("TX buffer truesize has been changed\n");
-		 */
+		/* TX buffer truesize has been changed */
 		goto dont_put_skbuff_in_hw;
 	}
 
-- 
2.7.0


