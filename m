X-GM-THRID: 6803689046764683264
X-Received: by 2002:a9d:3f8:: with SMTP id f111mr11479890otf.204.1584107299039;
        Fri, 13 Mar 2020 06:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:478e:: with SMTP id o14ls2618383oic.6.gmail; Fri, 13 Mar
 2020 06:48:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtsO/STgLgUuRiBjBDjTdLFv26jnTy0CfNEMvPAFdISANMF3D/D8HkEc1sZ54NSOo5IHXTE
X-Received: by 2002:aca:37c3:: with SMTP id e186mr7209051oia.155.1584107297702;
        Fri, 13 Mar 2020 06:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584107297; cv=none;
        d=google.com; s=arc-20160816;
        b=fM4v74pS4BscS5/nGlYht33JgZqSGZ1+WdYtqCh2iV7Vzgtcwy1qn0gGy/G4VW8gVX
         fknMWsF00iYEYuYOkJlnoFBhtBdORpahQ7mRJG+5kB1in4EQXohkhAWQ/0m9Lpduc9IN
         qFS/TLOBnyh+Xl6HbVBBeRFYDOFeADFfyyw30frsHe/N5TXrzn5P7Uvyz/3ge57SnEbj
         hbAPAczE6zM8agzsTrU3oi7+mEAjpv77Gz8P4pxTyr2z2bDvh1V5YpzHvp/wVeZ7d9ys
         MZI97n0sDZY8xx0m38sAqs6iLzphsDAgD65cUHjmx+VOpwpL2ptgk7O1V5VZcrdkHA+h
         aXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=XgB/d4H1AFLC84JkLgMnO5tvtPifvrCnzXNi45ujwHo=;
        b=lV1iUQ6bNrTUiR+aco+/hu5etSW449j7rTMZ8xfK5xEd3lTQkNTDRl6JhHYwmkDr+C
         3/0qe+T8t4kD8UXUusmGMDB5NUcsYr5fvO/l6Y5I08WZz7Ztjp2f/MQ7iWqNTUirHHB8
         2PErLkEIR4UI1rAtv3tYbeFVvHJvnFC4xsLobvIl0RzRZ5zIVFvdDQ0UuqxLZ+ciD+SQ
         HhnF7KHcfAZSbCCHu+s4sZrsGLykSd9u8SENLtaeUrETDm4nOFDeL78Pg6YdZlX2yfo5
         Pd3iI6j238xIG4gsbEy1Y4IJivLRlCjAzCmB9r5+2OvoBjEXk4B+NVmf8CQJY0KY8FXO
         lYTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=GcpZtZ7z;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o11si596807otk.0.2020.03.13.06.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=GcpZtZ7z;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x343.google.com with SMTP id e9so2908492otr.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XgB/d4H1AFLC84JkLgMnO5tvtPifvrCnzXNi45ujwHo=;
        b=GcpZtZ7z5S0RmB9EoGXmAbxrmqVDk1kF5prrlXdwOUTK9tEBM2B2/ywMeKP3MZdxz/
         /VVI8SGLgAWYuySYDKOvhmzrTyGtvxsnaB1HMPkA3CSM4JaP6E5nnaU+EG4pG6/MWsxJ
         gmT3bUA7cruAGw1muiEiCuVpSs23J5x2S9uKlbvDIilF1v3FSqFtiUc2eHMEKy11Gec/
         YiBH4rSYDcnjS2BOuGIyRKD88WKVJdedtfr3aqJBS5mnE6j/zaTUGJ+iQmS8DPQmnKWD
         t438ETyq4IUBd0/9Wzi36/6QyPM9JXnh3xcCxwCg/S71GJMJZa8/167Ff5S0+K06cakz
         VioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XgB/d4H1AFLC84JkLgMnO5tvtPifvrCnzXNi45ujwHo=;
        b=MtHEMWlIJzBOb11qtC9vLdU7dxFcTlmkQ4WkPngo2NeD9Hi1QZqx9ZgstlRvmBSTGI
         PlBaH12TCtETNcp3QXDHK8B4P05W/n3O9stlWQ9TDV93qGu2tPU/vHPh5gB7HTXYoLHL
         XQUmvcVHNwWz/uCxItQ32NXrbEXNEvEdyLAtPBNwLuXEAUqIfAFBdSZfXuy108f+zxxi
         Krr22QofAI8MB1JhgFK22Ol4c7yxsYp7rr3MtEpJHFe+yJx8k2+lMYdK+Tolu87B/9v2
         rnjmRel9B5JYczN9Hl5O8NvC6yoL4w8aPaU374DUCvjiqDIS89t6/SMqxTtv9HoQsqlA
         m+WQ==
X-Gm-Message-State: ANhLgQ3pE2EOJ4Qk+9hmD87aNezhwXvkw2xiUd6FB+YFt0kCI39JFmVY
	mlkUgxSS75MOR+xOpCFBAEmKxDUvMsv1mw==
X-Received: by 2002:a9d:7cda:: with SMTP id r26mr10710902otn.64.1584107297236;
        Fri, 13 Mar 2020 06:48:17 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.49.121])
        by smtp.gmail.com with ESMTPSA id h5sm644402otn.12.2020.03.13.06.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 06:48:16 -0700 (PDT)
Date: Fri, 13 Mar 2020 07:48:12 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: imx: eliminate unused code
Message-ID: <20200313134812.GA11202@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using
checkpatch.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/media/imx/imx-media-csi.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index b60ed4f22f6d..2001f7851e90 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1131,13 +1131,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
 		 * enters the CSI's however, they are treated internally
 		 * in the IPU as virtual channel 0.
 		 */
-#if 0
-		mutex_unlock(&priv->lock);
-		vc_num = imx_media_find_mipi_csi2_channel(&priv->sd.entity);
-		if (vc_num < 0)
-			return vc_num;
-		mutex_lock(&priv->lock);
-#endif
+
 		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
 					  &priv->format_mbus[CSI_SINK_PAD]);
 	}
-- 
2.17.1


