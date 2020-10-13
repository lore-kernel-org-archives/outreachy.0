X-GM-THRID: 6883028084998537216
X-Received: by 2002:a9d:6e96:: with SMTP id a22mr9987555otr.345.1602579859966;
        Tue, 13 Oct 2020 02:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6820:26f:: with SMTP id c15ls1009654ooe.2.gmail; Tue, 13
 Oct 2020 02:04:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGssiuxIaFW4L+ImiaGxWIJSRqaVjR1G+B7HnDLP1yfw+S5ze5MPiuetNA0Cf/mchR4yZp
X-Received: by 2002:a4a:e1bc:: with SMTP id 28mr16437604ooy.53.1602579858576;
        Tue, 13 Oct 2020 02:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602579858; cv=none;
        d=google.com; s=arc-20160816;
        b=qE4WBq9t0xrBkXawNwgY3VhhaKmlaWgvDVFqmioMdYaj0RPBb9iO+8Fy3S4rtaiB64
         pAw9tNfVdG+X4Q0jHEoP/YUFfv1Kk1ReWx6LiDfoBmYVN7O7kwqxfWEBC70bWSegVP9G
         05F7U1fdRG/BiEzugN5s3SQy0BSNZ8dvSdYwxJ7Azs65BEWYP5v4RkiI0xvWebzdmgpD
         IHWoYbzWk4wFy0O9fwBXAD1VdDPIEEYPqQN5TzKeRhMJtgnWYdhBzw8+L9Ez/2vM3zXo
         EswbzgoO0cQR+XRX1le4apQ+ep8FT2zMuJPf5MWczsZT9ronA49hAy8B12pOEF12p3X8
         LZvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=BZMkr7mQUsy3BKheNpuhCxD5IFNFZkYWyIJ6q++xu6Y=;
        b=JJSIT/5SKH2v9hAWcjj7dKeYmDqs/+JXFsiuqxm/64hbn8cElJLUcrkrytluI8+V4W
         GrRlWufjZXL29gEs6Y7UiizFwtA3kH5lqxahs8yr07Xr0ix3v8JVUQbUHRuHhbBPhLjN
         IWTgAi3HuMGWLIQ95WKdt1feMq91+cmcu0LZFPa0cT7VsZbnV+e6qDzNdzx9yNgYLj5k
         ZE7lfTcF0bNB7yKJKU37Spy5LQxDVP92JgHM4ti61vogY5O6nHba88wXmiHzqM12n7n7
         r3llDg6onX17YsxlACYLW2Nxt7RNuib/CUJRCPLqbAL8+9bvHMQFa33Sr/3If8vC4R8H
         JLSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F7OWfuDv;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f16si887611otc.0.2020.10.13.02.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 02:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F7OWfuDv;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b193so16230333pga.6
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 02:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=BZMkr7mQUsy3BKheNpuhCxD5IFNFZkYWyIJ6q++xu6Y=;
        b=F7OWfuDvPqEMQ/rD+McmS2ZwLgxbqLugCOjnMC6i9+0qPvhebLEVgorIWtGwtkZDRp
         fPhttge/P9i2sNMzyVjymMDg8x7q6+89aHAbVqlBePdd9jM4q6RoFzrfxRkuqi/FBMwo
         95W6/969+3aLelaY83uSt7oOwoYsz8c13u9v2b0/ZESc3zSSDwoCwyuvgmexu5mMMBej
         oH726/BMAM7mOXXBTnKf/Gw3DJhkqfBHbDJDDgm1gKolSvhvThdy5V8KDG49mecp5UxY
         89Wt94nT+zfJn6kviHBJ2PyMdA1/pvlsFtc7r8LHVOWRzz6CRCmEvGUHRKCjTR+dpGOD
         32ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=BZMkr7mQUsy3BKheNpuhCxD5IFNFZkYWyIJ6q++xu6Y=;
        b=Pno9NNbdEy5h/ynuxTe9eV8xbq1OBGON8HWoVGj7nhQ4+yEpXIgv5j8DI/p95Afzwk
         OTJrKozREjFGnefWI+k6ZQp9k2oZHUqPCv/goc5pXmlPWLbnq6sHBQ9LHyvVhSRT3cF2
         vi3HJSP4FGM3/v+Iv99N7l8NQw8Zk6k5JrqTgEVRetVe228qLltwZKNXrqHKTm9ff7xM
         L9PWhlMLmRsJdt695I/ubOiNFpm/4+ry2VRRCVmZhpvZyARbbht5MmRZFViQiOd+efLz
         2ioRMTSxkwIzLXse9o0Fzln2k7GnoWelrra2ZJ4EujzLBJ37Xbk66kAbwVw+JpPIXCm5
         sD0Q==
X-Gm-Message-State: AOAM53394NRAlHnnYTQQSrECY7D2q4LPLrPgO7U/RV0Rs5pfabJlabUu
	XQ0n6Vj0nTHOZfPuNw15MgwKdpw69bWZmw==
X-Received: by 2002:a63:4457:: with SMTP id t23mr16239202pgk.108.1602579858138;
        Tue, 13 Oct 2020 02:04:18 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id a5sm21580154pgk.13.2020.10.13.02.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 02:04:17 -0700 (PDT)
Date: Tue, 13 Oct 2020 14:34:12 +0530
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
Subject: [PATCH 1/2] staging: media: imx: remove commented code
Message-ID: <f484d024b14104cff4f54bad3da52151847a0b28.1602579668.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Commented code in the "#if 0" block does not appear to be useful anymore
since the virtual channel is always treated as 0 once the stream enters
CSI's.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 21ebf7769696..9320e3974d86 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1131,13 +1131,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
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
 		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
 					  &priv->format_mbus[CSI_SINK_PAD]);
 	}
-- 
2.25.1


