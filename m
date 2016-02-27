X-GM-THRID: 6256120108487278592
X-Received: by 10.25.154.129 with SMTP id c123mr876444lfe.1.1456616832853;
        Sat, 27 Feb 2016 15:47:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.86.135 with SMTP id k129ls125803wmb.26.canary; Sat, 27 Feb
 2016 15:47:12 -0800 (PST)
X-Received: by 10.194.62.69 with SMTP id w5mr888741wjr.5.1456616832019;
        Sat, 27 Feb 2016 15:47:12 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w128si338796wmd.0.2016.02.27.15.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:47:12 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id p65so4217965wmp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c6RRRPhel+QjICGqRERAHZM4tLyJiietV9nkUX4DGQs=;
        b=NVewiSMsJshLMs5k+6cL44KCE/UKRnAj/oLHnC3dHR62yZo/H4iY2TjZq0ErxEh6RP
         ldkJljcbPl/5eURmFKgYHu8rQ6hjzRZHCuOCFl5lEutN52tVZ9hFwMxBLlLWg+y0NC9W
         70vk1oTgk/u38wY8QsueKCWV1P0yaPFasX6pMtFgaTC7YHyYJPcFDaCKnDV1qX3hRD4D
         DSlKd4QbxRwhG7jb/OCKMh6KeRKGkE9Mruj+YAkW2BwqF6lmXTBn0iKPbVMlQZpcXkLY
         A1ZSKoRy64hupL079xf1X2FpX/v9kYXjFMlp1tYvWMOkc0OyP2eP9K0zG2vlXF/wa5Y7
         38+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=c6RRRPhel+QjICGqRERAHZM4tLyJiietV9nkUX4DGQs=;
        b=cSp941YZj/6rlqeDwSXVcVSHKP3UBDDq4qpHLUmpSXCJI0yGBL/1nSb01mXp0/2jSU
         zTIQMT2jg7ZuQ8JwLsqO9b7ZnLzBvNPIKYUeMhIppxAg8pp5qXSuDhz4kxmkBZJLMZCw
         TpQKtlZg4GbwOSQusvs2DBiLGiGiUFkAOb6P8YYdCPrlHXIgl5rIuFTBdIASQ62zEYCm
         mv/4cJ2bU0gMAdHYGzJbkMRJaBmu4NsCtMMMkMoVQC5cn+D/K15Bm3E2SxQiQ55Ry8ou
         012WFqYzKG8JFeR6sf7yjq9eDk/8X5TqJdQA6LiDObbtRxTsW6fGyf23LlyzgwtcolBY
         bi7w==
X-Gm-Message-State: AD7BkJIEXL+7KM6yYpeFxu+ShWjs2M6lIGf/1WmQLX0wh/OceWcSYVWUUoJUcmr7v5hLKQ==
X-Received: by 10.194.192.36 with SMTP id hd4mr7436785wjc.85.1456616831923;
        Sat, 27 Feb 2016 15:47:11 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id n9sm18642433wjy.36.2016.02.27.15.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:47:11 -0800 (PST)
Date: Sun, 28 Feb 2016 00:47:09 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 10/10] staging: octeon: Fix braces in condition statement
Message-ID: <8da3287ed75c22434eb0d92949094146f7dff5f4.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Braces should be used on all arms of the if statement. Checkpatch
detected this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 313c845..b106b0c 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -174,8 +174,9 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 			qos = 0;
 		else if (qos >= cvmx_pko_get_num_queues(priv->port))
 			qos = 0;
-	} else
+	} else {
 		qos = 0;
+	}
 
 	if (USE_ASYNC_IOBDMA) {
 		/* Save scratch in case userspace is using it */
-- 
2.7.0


