X-GM-THRID: 6251650339458514944
X-Received: by 10.112.130.42 with SMTP id ob10mr2163749lbb.2.1455575957725;
        Mon, 15 Feb 2016 14:39:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.35 with SMTP id k35ls643797lfi.77.gmail; Mon, 15 Feb
 2016 14:39:17 -0800 (PST)
X-Received: by 10.112.138.98 with SMTP id qp2mr2203277lbb.4.1455575957166;
        Mon, 15 Feb 2016 14:39:17 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w10si485511wmw.3.2016.02.15.14.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:39:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id c200so17925534wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=FjbFkMZsAh9X7KTtX2G1r8qDtWA6xJ5xuUrUgLwMZCY=;
        b=Jz4SU8GM/bynUJHoVe6TkrlDApBxuWWf+vfWERuTR4Xe3x7JjWBWlnUnEQUZTQ+vQ+
         O/DvA5u3oqRA1UEB2oT430WHwSKXgqTpqk8On82PdzGHKoosVWwMV1zfeCyVY2aws2YU
         zXZlXmoP+NuAFKvhSz05WHC7KcAgRi1mag/WZo/0kP8VimpdpfqHtRUt+jOQIV4pC+A8
         Gdg2NIMhhlOLabuFg5nLH8j8vo/YsDTTQ9tzr5peg7AD1yJFn6LdKB10sH5T6W0sYGuI
         6d+N88hH5QeLv5fBc62+QrACSjT3zTvTJot866eAc+e4Bvg2IjdjovifwaMVLmTVY2EV
         0vTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=FjbFkMZsAh9X7KTtX2G1r8qDtWA6xJ5xuUrUgLwMZCY=;
        b=OD1lA9cyLStQLabbsU26KoAPg6ZTNya6BJJdfspPzzxCISCu+z5lxNRApXRNWAs7k+
         mdTi/+lohbbB9QEvRNOiE4P1HdiAO6wwJUWCoFTpNmTx2tJicA5cHzXFn3F6OxDzOgQP
         ECrLkam2TQwobIO9CEhBpzFV88bOa6TcR5UJJSmltaUxcgYHIbr+jrevQ0+DYoIwf/KD
         wzSIMZ+4gyIeeFuYO6fSimqtdSLXqMVKRG2szPmQzD2ggh1ViI3YRuCoMDRpafeKqFUh
         FKcME6G1efjPm7b8P6aPMEoqNS/pMirQU7RYATdY8MPLpEpPwJSU1A5EmgR2A8wTLAm6
         saEA==
X-Gm-Message-State: AG10YOTmWNu2bo677UJYxf93/tb23+Xpc/BWqbMDm3aLGH4uK16j4+95I3w3u3vXFtvlmg==
X-Received: by 10.194.185.237 with SMTP id ff13mr20806334wjc.129.1455575957056;
        Mon, 15 Feb 2016 14:39:17 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id e19sm17686467wmd.1.2016.02.15.14.39.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:39:16 -0800 (PST)
Date: Mon, 15 Feb 2016 23:39:14 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: netlogic: Fix comparison to NULL
Message-ID: <ed3fe66bf2dfec6a6364deb07047a9955cfd3cfc.1455575263.git.nevola@gmail.com>
References: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455575263.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of comparison to NULL, use !<variable> instead. Checkpatch
detected these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 4b72f03..c5df08e 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -146,7 +146,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
 		skb = (struct sk_buff *)*(unsigned long *)addr;
 		skb->dev = adapter->netdev[port];
-		if (skb->dev == NULL)
+		if (!skb->dev)
 			return;
 		ndev = skb->dev;
 		priv = netdev_priv(ndev);
@@ -1037,7 +1037,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 		priv->nd = (struct xlr_net_data *)pdev->dev.platform_data;
 		res = platform_get_resource(pdev, IORESOURCE_MEM, port);
 
-		if (res == NULL) {
+		if (!res) {
 			pr_err("No memory resource for MAC %d\n",
 			       priv->port_id);
 			err = -ENODEV;
@@ -1052,7 +1052,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 		adapter->netdev[port] = ndev;
 
 		res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
-		if (res == NULL) {
+		if (!res) {
 			pr_err("No irq resource for MAC %d\n", priv->port_id);
 			err = -ENODEV;
 			goto err_gmac;
-- 
2.7.0


