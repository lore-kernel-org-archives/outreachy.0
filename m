X-GM-THRID: 6883028084998537216
X-Received: by 2002:a17:902:7290:b029:d2:ac30:1690 with SMTP id d16-20020a1709027290b02900d2ac301690mr342968pll.62.1602606883091;
        Tue, 13 Oct 2020 09:34:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:c70f:: with SMTP id n15ls17172pgg.3.gmail; Tue, 13 Oct
 2020 09:34:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxPoS6DJYNCTTa2JtHuCgI3O9RbArqYtNQNLXeDKpY2lZ2CRWwg1yoXEol52kozpZYmFVq
X-Received: by 2002:a63:e503:: with SMTP id r3mr271217pgh.345.1602606881170;
        Tue, 13 Oct 2020 09:34:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602606881; cv=none;
        d=google.com; s=arc-20160816;
        b=Ul2Yu6RXS6jErMx+OIWeaWCA6gbnbs6pTmIOadXD9Et5zqvErmyKfcOvc1c1rt5CRf
         ByGN78qhjixtuT7Vduf9Lb0/50FfCsNwRl14QK7TnRY+rJxeSx0asF2TuEg/enRv8jNg
         CUvK5XDy/zNEF7mwxfoWpaI1g5kS/0Ax/VyrvnvSSLMXyYVdgm5g1xZF0fz/rQKVxCDA
         F4qv1zItKEPdLGKlHBtQ54hi28VnspL8oG7G1OSsMzAqxkLNyOGXZZFMEApFzyCYljQc
         nCrerItNt41K8MDDB6OMriIbVeLCdvAKIwFGiaMW4LRyCzMkNPw03BGA67AnZLZk9PZU
         nolA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=K8YZ4MgF+5M62OV2MWLNX4R7GlAT4BRvFl/m3MAW3Xc=;
        b=rRVc8OsB7h2AIZZb2g/vPTvZFLZwDRa8I8Tvb4Vamfh5XtxI+BdQJ7yXhpY/DkG5U3
         QDVhmucXLK/EySsLkWKyfOtKh36XOgnvgl3WpKPpKR40pDYs7jL7VcvAc5auh85MOB7g
         5O1j7XYsr00evQtY8UxnmVbTVW75uLuvkwybIE5bJ5IL0/poa/3DLEHWFuHWWA1juKMk
         nYL41hVsnU43AYa1kVIvAJ/gLZ22/C64yQdF3xWokCqcF0nCsLHy36HOEjHeGDhq7EVK
         lK6aTGwX0xlnyboh1oxp9iezGM3q4bCHormj85L8NCWH9jpimbfqp5EZoLx0H+ZXeuu8
         Q2Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i3QDqItW;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z15si29574plo.4.2020.10.13.09.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 09:34:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i3QDqItW;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id j18so113633pfa.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 09:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=K8YZ4MgF+5M62OV2MWLNX4R7GlAT4BRvFl/m3MAW3Xc=;
        b=i3QDqItWrkKOCprcLp9TJDZpyaE7BLC4OGyElvBu2laiUvn4CWv0xlCfsFq1h8rL77
         Y1P30P5Adm2yKV2FKIAkw3168y4zPBmL2Zmn1snSxdEFaFDc8FuSjDAnTC0G/uIx70CK
         gqr1WvEn24kzASbhWNoFbFtEFkbx0SHiv4lI+bcMZdFwlb73TUJ3SD6pR6ECAnEAr5XQ
         vLlMACT8oGi9kfIZBln1U2OeSsdleBNWq7kaLTK24GrucEfRnLFayGGwQYjl8MBd/Y4p
         a9KIyL4QlasXzMZbWOkD3Ima+GCz2FRvCQGUMvVWBMXbPQ9HbhtDkc80vr2kK8TOeHFs
         mY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=K8YZ4MgF+5M62OV2MWLNX4R7GlAT4BRvFl/m3MAW3Xc=;
        b=IHLN0LoigYAfdKlGMeyXTekXXVDjiEalTekG4UZUyG0MxMLwaxpN8BHw0nkQD3CpfZ
         Iyq27DRAQ6AgCsKbuGUjL6AOB+qUj5B2Wt4MKuIFWcGAdQKkM3b/MNuaE1PjMf3YCZV1
         TvBPU8v1k/qXB5EXsNP7EgfMnL7lBZ6fVRXGnMqSoyC9bTg68Jjs21pQ3y3anSxKWnJx
         hlbwj/Lfz/4FNkhCPF70p2NcHNDm2p3mjDBqIPcYJP5lNeudYW7ZQyeD+MKkmAq/IePI
         PwqpLIeR7QlcBqlp07pJgJP5Yg+LdOoWR5tzwm7hyPZDamjR4WlATKZe9i+PLrdElhPV
         aVoA==
X-Gm-Message-State: AOAM530vZTdnp3qKC/rbAUAFlxAj6GrAeaOi0v6qCamKxvTh8s7D9YjV
	RwLkK1cznm+Ms+DKY4zQxKSXidYHPTSoMQ==
X-Received: by 2002:a63:df42:: with SMTP id h2mr292441pgj.239.1602606880731;
        Tue, 13 Oct 2020 09:34:40 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id g14sm150971pfo.17.2020.10.13.09.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 09:34:40 -0700 (PDT)
Date: Tue, 13 Oct 2020 22:04:34 +0530
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
Subject: [PATCH v4 2/2] staging: media: imx: remove unnecessary variable use
Message-ID: <bdb7103094c6b83705d2bd87190d8c6e5a1d08d1.1602606535.git.mh12gx2825@gmail.com>
References: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>

Use of variable vc_num is unnecessary here as it is used only once.
Instead, the value can directly be used in place of the variable.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---

Changes since v3:
   - None.
Changes since v2:
   - Implement feedback from Vaishali to simplify patch log message.
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


