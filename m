X-GM-THRID: 6251650339458514944
X-Received: by 10.112.156.33 with SMTP id wb1mr2939290lbb.7.1455662296888;
        Tue, 16 Feb 2016 14:38:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.171.65 with SMTP id u62ls880902wme.11.gmail; Tue, 16 Feb
 2016 14:38:16 -0800 (PST)
X-Received: by 10.28.172.194 with SMTP id v185mr2313684wme.5.1455662296480;
        Tue, 16 Feb 2016 14:38:16 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id e130si848708wme.2.2016.02.16.14.38.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 14:38:16 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id a4so2087746wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 14:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ksbh7AhravRStZD2+WaN1xTh+IAGMEkzSwt8OwpmXu4=;
        b=RcXDzsRyKFGYrU91umR2eMclnK9goL2xlJtupFYDZbWN8r7iN/Kb9fws3r1M5I3zeG
         VbZ2RZxs2GL872cfUeM6XHeVJ3ffPqH+phndgGoOAfzNFmufQEfiG8DfPpDdbMV4HAKf
         6gea4V/hI0jilNbP8KP40GlzIGsVEHCglN+vQx6tTUXX9mjjukU6S4YUdHzZ+jJhsIg+
         phfLNSRsWUDjBLN/5gFacnFP/yEcCTQjwtJWPH2SBn5ttFlvIMa0V8lGNF4rsI3PhWnA
         iVKP9qgak+T+D9mbkS2Pd4L2dKiybZCjClseuEtLomB+ynIkuXq4P4N1StTkggBxpe//
         p7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=ksbh7AhravRStZD2+WaN1xTh+IAGMEkzSwt8OwpmXu4=;
        b=dSPZR1W/Jz4RNkq1Yr3QRPXUcbwIRaRyLOSjUjIp5k0rGk5J6S12P3gFTlm+Lvpxxx
         ZSULyPOjx4DZwYQxCKUpR1affoqhkkl3gcULxL34+Fg6f3RUSOTBE+q3s5ap/J5MmrCx
         qzPIDSitRyeVO3IqVeUcu+vRLDTfvYyO+b6CXlPFaH04WAQ71Bux5QVoP5nt3nu5uT8o
         UhVFlHPkygZCUc3DVorMzNpfsPcPSu/+b7SD9bEq16HCKkjT0wtlGZeeC0GHjNRcxUOP
         u5i6EhUrusdMKve3nsfZSghoXEoR88VlF/DYCaAM823tssrmdUYKyNo/nmJrCaAM85he
         SfEg==
X-Gm-Message-State: AG10YOScl+jb9mtxV1r/JW2Ju0zgr9hvjULD0IULJNuuxQqb1nx8O6M3PSvC7uyaPzqVPA==
X-Received: by 10.194.2.243 with SMTP id 19mr29134682wjx.154.1455662296273;
        Tue, 16 Feb 2016 14:38:16 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id x186sm22481698wmg.19.2016.02.16.14.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:38:15 -0800 (PST)
Date: Tue, 16 Feb 2016 23:38:13 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/7] staging: netlogic: Fix comparison to NULL
Message-ID: <4bb726bd0f004bc018fea47a66a1c65c7b56712f.1455661648.git.nevola@gmail.com>
References: <cover.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661648.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of comparison to NULL, use !<variable> instead. Checkpatch
detected these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2: Avoid to change comparison for devm_ioremap_resource value, as Julia suggested

 drivers/staging/netlogic/xlr_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 739554c..c5a98bd 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -146,7 +146,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
 		skb = (struct sk_buff *)(*)(unsigned long *)addr;
 		skb->dev = adapter->netdev[port];
-		if (skb->dev == NULL)
+		if (!skb->dev)
 			return;
 		ndev = skb->dev;
 		priv = netdev_priv(ndev);
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


