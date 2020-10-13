X-GM-THRID: 6883028084998537216
X-Received: by 2002:a17:90a:c501:: with SMTP id k1mr172956pjt.170.1602601469923;
        Tue, 13 Oct 2020 08:04:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:709:: with SMTP id s9ls54482pjz.1.canary-gmail; Tue,
 13 Oct 2020 08:04:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4sCBpda7lZ43mU4edk53WJfAvN9GaQafPl4rTa0B6P2AJWbrphSdxrLkfJ1fkCouShRI1
X-Received: by 2002:a17:902:d213:b029:d4:d273:d40a with SMTP id t19-20020a170902d213b02900d4d273d40amr13837772ply.76.1602601467999;
        Tue, 13 Oct 2020 08:04:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602601467; cv=none;
        d=google.com; s=arc-20160816;
        b=GaLLlr1AESGL6qv621HEcs4M+zUMc/0tZZYfFhxbFiOB1CTl2RXVsTdtRAHyzWiJDA
         CHB9nyy039xfYaa/FBecypG2o/Da0YdkiszDIbNe6/xB+bqulnwrUDlE1u9/RhLsF4gJ
         xPa5Avm+GM4Gvkab7OyEl5LkD/4muQ2YiU65bmA+AMNxv3QkR4IRyTjnqIv4MVvBHNIW
         7Q+4xfYCrpigaRAM/JKArO1IzCMhbaPJSsJvdJZSdzgf0hPk8KDa8l1yhgbY5KLknzCq
         sZu62OG4rQAKELpImqm2DoH4mm3Ym02t0qXlTcyBUou1zgKGb5090a8kYieaFW8a78L9
         xrLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=eoqo6EMUiBe+HUdWHoJRpTzmF9hNn5RksHfBPRI8Yg4=;
        b=pjj1WQyyHoVT/y9s7F9vRGcM1zkbpOkeeICze8DUo+TjI58lLB3PnX6g7+74wLusCz
         yYvXinO8EJS5moxPPLAzml/HjLOcXHI1yPHZJAUtrjE0Z134eNjq7WGbfKiI5AkXXMRP
         U47NeXCYiyWUlYN+xEqTZnU9DyoTkGchAwGD83poyY5HZxhkG7xj+nUrFeRYe+Mwrsyv
         Wj2LdpTILk0bqDG9nqXJ/mdEMHm79VlhtwLBwIS1OogA5hBUxag6N2/d7ZPK9DmD5+nv
         JBL0ZAErOS17MdNPukkQhWKlQhiZQL3YaKGBLwlgI4d5RaMKoxOgUIU37eviWoy/OMay
         m9kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vetrSKy6;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t15si7028pjq.1.2020.10.13.08.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:04:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vetrSKy6;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id o8so10855068pll.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 08:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eoqo6EMUiBe+HUdWHoJRpTzmF9hNn5RksHfBPRI8Yg4=;
        b=vetrSKy6yfEqbzzgNQEyjYbF76K41fPiNUjeWY0boBiNmE0aw2s9k4odqIhN9Y9mBc
         77cg8e6IBNV533+aPOn7eODFf1wBYmrPXkyigFipcQZQuI+73C5cL6B9TVwoIRaSzCrk
         UgwE1mojEJbjXA16zC4nMkCh9HRt2Y0ShIT0+jorD4ubiScxmUlqY9bTLib3GKQUZHO2
         baWGrco4mZMbvi7ZpcTSHI3QOjWPvbBnWsmLa00NWMR6Ch2VhnaHvmLbqVajAEZV0dsN
         bJGgg2Rm7ffVWEq4zUp2mPLFE4Tfh0OaA02gVZngRgZ6pHGEqNc7psL9C3NEhbtlG+FA
         rdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eoqo6EMUiBe+HUdWHoJRpTzmF9hNn5RksHfBPRI8Yg4=;
        b=M3GiwESeUZOtxrDZ/sqsDVYzyDqGmfndrxpAD3tDS7AdIWAAw6PBBqk3XBsJgCPLbI
         +jVvBk0n/beEILvVlLQ1YNKiJufW12gaeXFEguvezi183ZSGAIdU147Z3wi31mK5IZ+Y
         HA39DOhPXi7Cemc2PkvG7RDFBKEnLqjyRlkmQ17xELRzJHUwL6agWFXd5lg8yFdw6PtR
         kvBTZheFzH6uSRYNfim9Ek82VNU0Y8uAAKLOzC59V4GNGRUPUn2aTvSkpcZc3chjuT3t
         0LgUW3HVadkW65C2tmlER9HQiTZQvw9uXFITyhni6H1oyqYAFOb51qhHSaq6A9GLVcIC
         X4kA==
X-Gm-Message-State: AOAM5323ekt6ReAXlqJ25oswz4guMs+GKt3aamT8JuaTok/ohe8LaWOK
	zsRAp633qih5nTwKalRtsF1HM/6pry5y3A==
X-Received: by 2002:a17:90a:ab86:: with SMTP id n6mr182100pjq.82.1602601467389;
        Tue, 13 Oct 2020 08:04:27 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id o20sm23768648pgh.63.2020.10.13.08.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 08:04:26 -0700 (PDT)
Date: Tue, 13 Oct 2020 20:34:21 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v3 2/2] staging: media: imx: remove unnecessary variable use
Message-ID: <77d7f86b1cdccd1882fd331042812cd750be1320.1602601012.git.mh12gx2825@gmail.com>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602601012.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f484d024b14104cff4f54bad3da52151847a0b28.1602601012.git.mh12gx2825@gmail.com>

Use of variable vc_num is unnecessary here as it is used only once.
Instead, the value can directly be used in place of the variable. 

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---

Changes since v2:
   - Implement feedback from Vaishali to simply the patch log message.

Changes since v1:
   - None.

 drivers/staging/media/imx/imx-media-csi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 9320e3974d86..db77fef07654 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
 	priv->upstream_ep = upstream_ep;
 	is_csi2 = !is_parallel_bus(&upstream_ep);
 	if (is_csi2) {
-		int vc_num = 0;
 		/*
 		 * NOTE! It seems the virtual channels from the mipi csi-2
 		 * receiver are used only for routing by the video mux's,
@@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
 		 * enters the CSI's however, they are treated internally
 		 * in the IPU as virtual channel 0.
 		 */
-		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
+		ipu_csi_set_mipi_datatype(priv->csi, 0,
 					  &priv->format_mbus[CSI_SINK_PAD]);
 	}
 
-- 
2.25.1


