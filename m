X-GM-THRID: 6251650339458514944
X-Received: by 10.112.16.34 with SMTP id c2mr2153535lbd.19.1455575990142;
        Mon, 15 Feb 2016 14:39:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.132.74 with SMTP id g71ls677825lfd.5.gmail; Mon, 15 Feb
 2016 14:39:49 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr2163828lbb.2.1455575989624;
        Mon, 15 Feb 2016 14:39:49 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w128si642303wmd.0.2016.02.15.14.39.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:39:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id g62so17933794wme.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LwFzzjWyhg8CgvIO05Z3pbgXRap4T6bbHe24bIhsb4Y=;
        b=Oh/fUQHg5yNg6w1tkcWABpZuq3lkuhf1wxgqmz7SyjO5x+Qmh/MrIsNnmiKPzBAVJw
         G0agK0kCPDVzDYPzzZJV+DF6HsFRYrp2QSsLLDl9bjGLtrBN1Ml1oxRTHIw9DykX/0fH
         ZPWvdf0zZTY4GpSSRx6bv6Na1PgBaNwYSCcXqETM7lCjOe86BRrx+nHtbQCulB3mgdh/
         Uw+vp8E6mhuEaBtUVj2JDai3ZICTUyGzD9jp//6A2LapaUihwqeSjFsxZpgTZSziIGD9
         ebgmt9Q9Tg34b7erNx3GtNhMqPWqeh9M+cnJt8fFRvR//ojq/jHRgPYDA6pbOb5OGutn
         rDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=LwFzzjWyhg8CgvIO05Z3pbgXRap4T6bbHe24bIhsb4Y=;
        b=QnSBj2UbNlp94dvUkk9Wy2rQ9nET1T82avuzfF5KaEpyhKWwpwrgl+xkacDq9Lmrs8
         TGDhe/LEIpEbVOStVg6CAjaClXA4jl2iGIFK+uoKV5kdvGlPegiX3W0zunh7nOXdMqkO
         Ts1tyrbgvDo+mFL7Cm16c+sRUXbhpskHQVgV77/Ud4za8FF51JTHgs4FIaR9KPEVoRu6
         qJSA1a8Q+ur/GmFIwEe3MVSxMSVtPxzDblAvizeZrThIDU5zIAjQWj2P1qpupzOGIkNx
         MzzkBhe1rwz7187aEF86ESft9vy94BesGeAr+IEPlCBPF3dsUPFVjYFErTyZ0XydHzFD
         WpSQ==
X-Gm-Message-State: AG10YOSaTDP5SQp+vUUDTLMNlVLOCJ8IjMt1rMbGqc2KxmAHX/Xfo8O5UH/Mt8cqjxBZoA==
X-Received: by 10.194.76.211 with SMTP id m19mr22241677wjw.113.1455575989528;
        Mon, 15 Feb 2016 14:39:49 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id 192sm1729464wmw.0.2016.02.15.14.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:39:48 -0800 (PST)
Date: Mon, 15 Feb 2016 23:39:46 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: netlogic: Insert spaces around operator
Message-ID: <196f72cf5f96c68476eebfb19e4c9ee202948bd1.1455575263.git.nevola@gmail.com>
References: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455575263.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Spaces preferred around that '/' (ctx:VxV). Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index c5df08e..58f7863 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -206,7 +206,7 @@ static int xlr_net_fill_rx_ring(struct net_device *ndev)
 	struct xlr_net_priv *priv = netdev_priv(ndev);
 	int i;
 
-	for (i = 0; i < MAX_FRIN_SPILL/4; i++) {
+	for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
 		skb_data = xlr_alloc_skb();
 		if (!skb_data) {
 			pr_err("SKB allocation failed\n");
@@ -1023,7 +1023,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 	 * Each controller has 4 gmac ports, mapping each controller
 	 * under one parent device, 4 gmac ports under one device.
 	 */
-	for (port = 0; port < pdev->num_resources/2; port++) {
+	for (port = 0; port < pdev->num_resources / 2; port++) {
 		ndev = alloc_etherdev_mq(sizeof(struct xlr_net_priv), 32);
 		if (!ndev) {
 			pr_err("Allocation of Ethernet device failed\n");
-- 
2.7.0


