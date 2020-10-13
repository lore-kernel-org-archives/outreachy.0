X-GM-THRID: 6883028084998537216
X-Received: by 2002:a62:ee10:0:b029:142:2501:34e2 with SMTP id e16-20020a62ee100000b0290142250134e2mr26277949pfi.59.1602579885224;
        Tue, 13 Oct 2020 02:04:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6485:: with SMTP id y127ls6630222pfb.9.gmail; Tue, 13
 Oct 2020 02:04:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBlXatJVYdmNE5THEhrRYpP+kky7tX76gCpZfgYmTgBJc7R1UQfAueZoUc/PsjQV3txBAg
X-Received: by 2002:a65:63ca:: with SMTP id n10mr17064185pgv.271.1602579883322;
        Tue, 13 Oct 2020 02:04:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602579883; cv=none;
        d=google.com; s=arc-20160816;
        b=J+x8XSjmwECDpRrdtrzCC7XU9NLu5mAh7wfpj5HB1g0kLb7lJi+bAD5cGyFqueukYh
         IlH59dLBT5mON+DOAA0a5K7arsImrAm8kR/O8XQ3r6zFEbPNH/Me4TNh9VoWUA4AO+Nq
         OP3exqMBdJZdjqSDJlICE+fjfgUdUbn6n2ILwOP30ttNCDhZJLVmTeHNS4+SmuFcBiaJ
         0elt+xBQedb0HnhV7xS7R6Acl25ycIGLRKO7zhNg8mv2/xrkr2t61VmZw5rXPWJBC1bb
         c5r+xJ6BEfp3jRbN0+4SlweuwMGnnZVW0gxj+qKR71rUCnX/75zwEMWXgibPywYR1dBP
         tGBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=apWuOMjnv7qYJDBMdHVx16BgnzW78dxCUWjE7RYuXY4=;
        b=QU7C5v6DNTrocsYMQDUvM0txgmH6CMA8cohQ2EXyoY8v3UrxY41xPeMJ+eqMyD6uH0
         lwFer9F6K0xBpn+LQzEEU1sPDTie7G7G5K4CQDrVsQnrTdRWdjdD4x7hK4yXXiSjtLeA
         gThUdlDXj4JKZhuSQ240wkJABrGBHcP4IGQCklnL7ogL508vYwLyD2jSx4GxyiBFqL5Q
         EOL9BjJzy/Igo18fk9Ow6Pi3rgNKYKaTeXybSjhnSJp/ZJqicV7yH1Eg0YU9GM5/EoCL
         L8yD0ACVOBV9CBNs9XPiPXJpgxtAHY3RusYpvwQNZxdiS9snAtVWXqlqwwoXIo+lWhmL
         8LcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uqLRWijI;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id q2si1430200pfc.0.2020.10.13.02.04.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 02:04:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uqLRWijI;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id b19so10334943pld.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 02:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=apWuOMjnv7qYJDBMdHVx16BgnzW78dxCUWjE7RYuXY4=;
        b=uqLRWijIV7ktmzADQRdcqLUeobgWHeHS97s6UPQ4IfppFN8CDrq9YkSdaWj7SVjC67
         dnqLpafciIADOOpTUNUQSz2LDDodWI2EwJzjWRkSD+FXH0JU/FHF6bLVai1rcV6lbfEK
         W142PidmXVWEy/5N5Dbi5fXresCRmd8zr4q69F5vAldlSBQQpcYg0rRVOsfP31xkQCDs
         QJcfbR7GODRzXk8fZTeGI9yaxfWGzvAIA4mKaOd7kcnxFHINVH3RzW3F1m33AMXWPEUY
         JOYt4MfDpJgOZkLrKWITJKqkmgTcM3aCgY4b1nSzK+SeeiYaOzTzpVIPonZfqR7Hcvp1
         H9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=apWuOMjnv7qYJDBMdHVx16BgnzW78dxCUWjE7RYuXY4=;
        b=QUszlIWA7DeXRyz+1iyahobcrqImV8MDpuugPeSiYOe/iDy7JNFXNVzAYNdMTfsKnO
         Uz0SualJ67AZiQMk+9x+wMUOtcgUAMdG1NyLPSDLdG/aOhRQ8rAlfk7EkbGDjhMDme+O
         6T4Hiy6GLyDWz+qX8a+M1HdgEjHQ24YS1vSxLvFMslyf8Mhjny6Xn1dmq+rK71qMmMpi
         EMY8OLumCfNGVIow3VcMUj4k2ND3CaNIH7RZ6zL0aoXEdRPHMI3oDtULT3va9NaZxiyG
         qQbGBHyVH6ZYSU/CaeOFg/TzKfRjsFM0r0QGfVoLo6QjVrjEnaH8tNdsX8P2shOQwLLw
         RauQ==
X-Gm-Message-State: AOAM533bzmqfIjeTtLNAvrA3uY5usQf/eo4vWVylNDI9VCO13cGg/ARO
	I8VoT4GDDsXjizWkz+vHLKWHIDEYzGaVCQ==
X-Received: by 2002:a17:90b:3114:: with SMTP id gc20mr24210453pjb.73.1602579882933;
        Tue, 13 Oct 2020 02:04:42 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id s6sm20632830pfd.157.2020.10.13.02.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 02:04:42 -0700 (PDT)
Date: Tue, 13 Oct 2020 14:34:37 +0530
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
Subject: [PATCH 2/2] staging: media: imx: remove unnecessary variable use
Message-ID: <fe845478640c3b498fe2fd9a815e65dbb720701e.1602579668.git.mh12gx2825@gmail.com>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602579668.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f484d024b14104cff4f54bad3da52151847a0b28.1602579668.git.mh12gx2825@gmail.com>

Variable vc_num usage is unnecessary as it appears to be used as a
constant and least used. Assigned value can directly be used in place of
the variable.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
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


