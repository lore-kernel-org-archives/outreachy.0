X-GM-THRID: 6251650339458514944
X-Received: by 10.112.201.104 with SMTP id jz8mr53414lbc.13.1455699163250;
        Wed, 17 Feb 2016 00:52:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.72 with SMTP id f69ls870835lff.31.gmail; Wed, 17 Feb
 2016 00:52:42 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr50545lbb.23.1455699162769;
        Wed, 17 Feb 2016 00:52:42 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id s141si1241474wmd.1.2016.02.17.00.52.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:52:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id c200so201052467wme.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=uk9Hh8DaPXp5fve4wDrdfAgdForgARvT3ps8UItPvcY=;
        b=0xQXmZds47mQVc4UIeYa+5iFvgFjJKZ6uHoa1upCajjvip3b7iKzcOcFfgmlhoFeq3
         nOjkWjatlv7uxR+zupE2XjbbLKMvLj1X9pz0DNzbUiRYNO2O12xnq2AmbLIXszbTKusZ
         z5fnNV+N+ToZ+yRoZmbfp364iAgVzFrsP+R1iMo4MC+hBeSwhJPV6+GeCOZrwO+Fw/98
         G4iQrzhkbemndwn0czdyhr0AmZ9qmRis/7e6ZLrNnntabGpl4rWE7+xblDLf0XXtq9xa
         bYEk6ix8AUFq/cXnN5ix/559H0Hv6l8seRMu8rEgoGZNuilIvHc7Hz05Jz/GzEz6iC3k
         iwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=uk9Hh8DaPXp5fve4wDrdfAgdForgARvT3ps8UItPvcY=;
        b=doumLmcq8/j1B4r+qx+QAcqAOWTgSZmvf2AbcT+Ip4ya0/IRnEyKsaABICGbNocWTH
         Z/50Yfqvem9YC5MTNsJmNStvtX5TfynAQ+DBBaCHrINpbF2T5imJ6ipxPsgn8V/dVW/3
         DZsKOAOvbZm3oIuhLDrnqoFDopNuyuINq/08c6UZ1HI1oxnO5o4v5r+LL8PNxdegjez7
         OspNKO+abNii4LR38m1uJ8j25qP+La+clViu4CSTafpkdEQFQye9LZ7yDHMYFheD/HNk
         /f30kEZPwDraD0rMHriOpIJScRL8/9oayqSdeBGELVBstBtN6+F1QhkxDnK6rFg00CO1
         WFzg==
X-Gm-Message-State: AG10YORJaIySJi49RYndhBMC5b+Fl9Sx8ntdEec4bZq2GDf1Xg0IVP3jnwkcHVGOMPTq2w==
X-Received: by 10.28.147.72 with SMTP id v69mr22564153wmd.79.1455699162643;
        Wed, 17 Feb 2016 00:52:42 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id k124sm1969521wmb.11.2016.02.17.00.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:52:41 -0800 (PST)
Date: Wed, 17 Feb 2016 09:52:39 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 6/7] staging: netlogic: Insert spaces around operator
Message-ID: <46847b10cc653c4c4a44d7b1ab3d7208ffc07019.1455698124.git.nevola@gmail.com>
References: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455698124.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Spaces preferred around that '/' (ctx:VxV). Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 6732f97..d370a82 100644
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


