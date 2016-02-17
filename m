X-GM-THRID: 6251650339458514944
X-Received: by 10.28.30.147 with SMTP id e141mr206597wme.0.1455699131692;
        Wed, 17 Feb 2016 00:52:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.72 with SMTP id d69ls871470lfb.81.gmail; Wed, 17 Feb
 2016 00:52:11 -0800 (PST)
X-Received: by 10.112.29.69 with SMTP id i5mr50255lbh.15.1455699131118;
        Wed, 17 Feb 2016 00:52:11 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id e130si927065wme.2.2016.02.17.00.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:52:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id b205so145032444wmb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=g8ZzzmReMSCh4PfeFX+eOHmGp5Ddq6vR2YUJreVnUCs=;
        b=GxZvUup1YMM4XcwW9O4D0cJhwo4O0KkL4Jf6A444wCQnCNU5PXy3yxIwcdjedrNGcw
         OKMcNyPg4NMa16IH6maRKBnWaAJqK4QyvopFwomucSyhpVy33cVUz+YllnUOIp3EWyRR
         910g5sGpZ80HKfp073rOp93hFCT2xBLq1F8QSn4toMxI+Gc2+avuuUyUmsHPkugmCi/c
         bp1F1dg9A4jzL5eMx3/qmi+qwjiXknXTo9Mg/qXaoWPBvp5o7/V4NelMURlg6mrgSjKX
         FJZF1Rd5faxXrVecUZnllq/Ul5zw57r6H8YLZ9tJOwpcOuVgxPmhKXWyQzuyLgPMQXGs
         l8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=g8ZzzmReMSCh4PfeFX+eOHmGp5Ddq6vR2YUJreVnUCs=;
        b=BAmjuB5e3OHjvrq+KSE6xWdZY5D5Y36zli/LU9adoCy3JBCsv9+IFVrm8BBz8col8E
         ENAKiGZPKMMz3VIKH2cqm2wIOswnfys/+kuzcGlDsIuYycKTNCuLnZp267e01zJCZ6pL
         ztMsnNblEimJy0S/Cyogsp32t90X9PDp2KnLAAYncUAdHneYnQCpHhsT7XsPRmOioPkR
         uJDSJ3ZZX1cIjCNiMFAg3qQ9HOiH5dgLhz7+/VlYhSgWKIAFXkSi79EC0DExzvUJwn+E
         FbqdwpKeNWIRCyGJ43doVeYJSBw+5dlZ5Hno1oqyfgIk5sESVBbNXMfW5iXZwYsCjKOw
         g7cg==
X-Gm-Message-State: AG10YOT+2WKZCs86MsQEabyTfI+fF5QFZK5Y21EnL8uXZcfZEu4qwqAgqyYOsWkbwvMRiw==
X-Received: by 10.194.57.16 with SMTP id e16mr435565wjq.105.1455699131013;
        Wed, 17 Feb 2016 00:52:11 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id z127sm10381492wme.5.2016.02.17.00.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:52:09 -0800 (PST)
Date: Wed, 17 Feb 2016 09:52:06 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 5/7] staging: netlogic: Fix comparison to NULL
Message-ID: <fa590b801a0e868ec86eb7a67eb781c3e0f9785f.1455698124.git.nevola@gmail.com>
References: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455698124.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of comparison to NULL, use !<variable> instead. Checkpatch
detected these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2: Avoid to change comparison for devm_ioremap_resource value, as Julia suggested

 drivers/staging/netlogic/xlr_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index cd66dd1..6732f97 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -146,7 +146,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
 		skb = (struct sk_buff *)(*(unsigned long *)addr);
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


