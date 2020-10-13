X-GM-THRID: 6883028084998537216
X-Received: by 2002:a25:9087:: with SMTP id t7mr9656327ybl.195.1602594548081;
        Tue, 13 Oct 2020 06:09:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:20c6:: with SMTP id g189ls3107579ybg.1.gmail; Tue, 13
 Oct 2020 06:09:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwIOIqAsZHKBbNLa9fOzu/0bWCw0He7pjG3yUczIiL6TbQckHUYxnQHIU3B9X1xvzz/w7H6
X-Received: by 2002:a25:3b10:: with SMTP id i16mr10725668yba.332.1602594546298;
        Tue, 13 Oct 2020 06:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602594546; cv=none;
        d=google.com; s=arc-20160816;
        b=Zj3+HE8PTdT34Repyc9ubWeBCstRf+D00f0kFeGGbv+xYyP7yqDoXoYq+GyCMfYSPg
         7LIW/JWAC1jhu4ki+VgMYjDhUIjiGHyW2LLZKt1u5DBLmR3DxrP6hN90AAJXLOTRbaDk
         RBobBJy+yyrP5XdnGAhJtiu9uHBXmspbPhDwvzQvjbbs/ZaWVQGy+X1VXyeSCJ3YPPaU
         qj49LNa3y8xVSRaPPCVP/qOj7/F7WJCmctYoLT2/BFyCKZpEO87fWVQJvWWNwVeG4AFw
         HJutmm8c2ckKqhQGmq3NWLkg0riYVikyZFnr0Qp9lXhTSj8ZRlofH2VxmvbutJbo9fD9
         r5uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=TsSZFuoBlq9DpIFCu4sR3qA+JbETrY08O4WM13PPGdE=;
        b=BZgun6HRjH3BCORIRCp9mcht9my/adDrCaS0EVR8ca5YfJ2U8WOwqL+pDlK5Gk9JdG
         DKAGLIkgkQBqssYQc7vJpjWPsSowKfHpv7GBG7rgbivYaEJw6R+1QbdKDs2KPTu/0SLf
         sXWEwypomRBXrfcJ+6s7J/OUTMW3hw362wNfRXYfUhni1GRSq02sWEBf39KcFDK//v0v
         +ElGvBFeR25utzm0wAuIUrpMvWrgYnfxQQ8A29++wD99v/EQDUoTwi5huX0sHam6zFh2
         xRTQyVn+FGDo67vz1q6k3TKCBNmNc5lXagDf0dHTRbnxgQ3xH27Puw4zwexrhmyGEIFN
         gXFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L6vGoDdy;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i4si1058424ybp.4.2020.10.13.06.09.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 06:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L6vGoDdy;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id n9so17507803pgf.9
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 06:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TsSZFuoBlq9DpIFCu4sR3qA+JbETrY08O4WM13PPGdE=;
        b=L6vGoDdymEnjxOE0ulibenK5brwvzlJRV5HJxrBrAJN2olgYqto1YmkgNZEEoLtWF0
         7QEICjWCR+K1rRLMLPt4ITFUkF51W+EpQEgwtUPKrHrDDhz/8jDEfrX3uWgCcKttBnRO
         dW5tOZjqcghDlh9XDi0HKI+VRoSDhKPRWaL3bna1KinSnG7lQZ16TSZFPyoMX4rHxzIf
         uR5XfzCp0HKkEY0SfdP0waLv3wLbmVtSk+VykHgxJvvZ6ZrzMNbzZJS/PkYxgu9tMvsZ
         ScG4EKFMFmpJkp+d+4tFslgS2s136QXHBrDD95rCbSSv657gGFpashHvWMhUVT9q2Uii
         WBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TsSZFuoBlq9DpIFCu4sR3qA+JbETrY08O4WM13PPGdE=;
        b=bUg3GlopBbAAccdRyrfFCvq1eXoklc42mfqMozkGOMtUW8UYD4rNg2bHhrhWI/spQT
         enjMAiX02cYLHSFpYpXyrkjuLVYbCKfm3Vwksg7ISEwNzrPkNmS+fKkbMggB2WUXHEvS
         WNd9THy0ce6hkwrVF8g6gMAhe/zRxp2l8aIHw4cZcXi7Kdz6gkCAkfozA0CNeWXtMLeD
         u2d2YJ5AnEHOkVfJp1InGdMV64tq/U3vp/vkWA6cyePytYLvP5/PrND2ZW+njLhMalwF
         J3iPD/wJHka1/ql5DljXtxYG/JUbkd7ok+hAKBrulPPhxRWcG38B3VhSvpApUsAxf2tO
         U/tQ==
X-Gm-Message-State: AOAM533Cvp5GphD1rL6gdW29ZDTbcfM38wDe5XX7QsBKqvXa1VElI9+G
	ZiCXDb5jO+2rqNMAxU7jvVIcTY+Z9e6Sjg==
X-Received: by 2002:a62:7f08:0:b029:155:79a4:1364 with SMTP id a8-20020a627f080000b029015579a41364mr21464533pfd.38.1602594545198;
        Tue, 13 Oct 2020 06:09:05 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id w205sm23399420pfc.78.2020.10.13.06.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 06:09:04 -0700 (PDT)
Date: Tue, 13 Oct 2020 18:38:58 +0530
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
Subject: [PATCH v2 2/2] staging: media: imx: remove unnecessary variable use
Message-ID: <5fcd93b57b9232f38fd6d7bc4f685de7ed827628.1602593826.git.mh12gx2825@gmail.com>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602593826.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f484d024b14104cff4f54bad3da52151847a0b28.1602593826.git.mh12gx2825@gmail.com>

Variable vc_num usage is unnecessary as it used only once. Instead, the
value can directly be used in place of the variable.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
 Changes since v1:
    - Implement feedback from Julia to be exact with the patch description

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


