X-GM-THRID: 6251650339458514944
X-Received: by 10.25.18.227 with SMTP id 96mr57979lfs.4.1455699190648;
        Wed, 17 Feb 2016 00:53:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.144.77 with SMTP id s74ls964178lfd.91.gmail; Wed, 17 Feb
 2016 00:53:10 -0800 (PST)
X-Received: by 10.25.39.2 with SMTP id n2mr57417lfn.10.1455699190168;
        Wed, 17 Feb 2016 00:53:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id 141si90171wmy.2.2016.02.17.00.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:53:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id a4so16980140wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iyBstiPZ1P9UoxIsNn4+de72yPajW0D1RLav1xzQpL8=;
        b=wYgB+UJoDnLynFRi9ELajnunuXvywdN2gJrAIyhjpj7jnnY7eQLroI5B5sXLg9iIjq
         N1e9pJ/kvssPoHlIe4tWccSizyK47X8FBXnwEifUMtnAF4+SEGJuQpbvVNTBy7sQNg1s
         PY6tTZlrcBG0dRDfX0S/7Wk3msGbeMS9GT3d3wNuhEbG9y0bY5bhXvFNU4eA9LoeWGfQ
         4UtgtVUFi/RcifSzscFJPZJCxkipQDHK94ppu5WxZO59Ozz+c6LpqWLSONpqrBBM2koC
         KdHvzrn+M27gPfHXq+lNTeOaGbvMxGYHrIEGqZ3u0dkeIDTp+KowWX3+FFgTVl6Yvs0m
         P2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=iyBstiPZ1P9UoxIsNn4+de72yPajW0D1RLav1xzQpL8=;
        b=e4ILvGXoH9ZHD07tXnP1pN2+lnJczqnfTiaij/jWGvw9Gd9wqPMT1/162Swn6iHflm
         7EiBKwq5Sq/sh8xTAjga9r1EnlAcuX0kXkmT4An+y3HPe+DN+UVCCzGKxIEYzJm9vjXx
         2Gh8O+4bHpJOTu9nF77lnN6MBBPUx/QyBaLvuBScD78Tp8SyNYIlUp4dvQyHLwURlnZt
         eOSpvulVw8td2nWESisMbO8annYzbBA3aV9dqbHOC6Sf6xpvd6XVD5Ek46OiV9ouwqsR
         CuPA9J4GRTAX9MEdjQfQY2hHlC9McCp+36nO88Xt2tyGPO8h771XpiXoD0I7/j9GkHu9
         1o0A==
X-Gm-Message-State: AG10YOQu/DJtsDI/jSEiVC23QwM81u1SkZ//PpI4nvXDIrOX5qp7qsdpe1qLZKsOAFUBtQ==
X-Received: by 10.28.195.9 with SMTP id t9mr2286337wmf.9.1455699190033;
        Wed, 17 Feb 2016 00:53:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id gt7sm411432wjc.1.2016.02.17.00.53.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:53:09 -0800 (PST)
Date: Wed, 17 Feb 2016 09:53:07 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 7/7] staging: netlogic: Fix indent for conditional
 statement
Message-ID: <645809c6709e0fe76231daf63a7fa5aeca8687a2.1455698124.git.nevola@gmail.com>
References: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455698124.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Insert code indent for conditional statements. Checkpatch detected this
issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index d370a82..98e74d7 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -326,7 +326,7 @@ static void xlr_hw_set_mac_addr(struct net_device *ndev)
 
 	if (priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII ||
 	    priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
-	    xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
+		xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
 }
 
 static int xlr_net_set_mac_addr(struct net_device *ndev, void *data)
-- 
2.7.0


