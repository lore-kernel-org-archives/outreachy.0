X-GM-THRID: 6883028084998537216
X-Received: by 2002:aca:bd8a:: with SMTP id n132mr3298292oif.100.1602870375323;
        Fri, 16 Oct 2020 10:46:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls824079oia.6.gmail; Fri, 16 Oct
 2020 10:46:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmergJltY0fIum37cH95CrANUw7BmzAlmFcbJwANGktOzvCKyY9fBKXg6if9P31GKYY1/s
X-Received: by 2002:aca:fdd7:: with SMTP id b206mr3439812oii.8.1602870373903;
        Fri, 16 Oct 2020 10:46:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602870373; cv=none;
        d=google.com; s=arc-20160816;
        b=uRn7LFjKHOsgMTRKNhO8qdwCK3rmSZCfj4z4wvqGuC2OrU3x428XRQji1SBdJLFv7N
         YXtRSK/5qCXwyeWO9hQ9G/piUlMcy1GlPBQKFxmKA/eWeCf7W9+7ik/5rhkHqH4HDlx7
         lbtNTru/IRtT18vAiM4U+eENQKleOVqiDaW2g1/cGkwUDhugs7GzrXLGv5DvxFL3LW5H
         1Lauq2aa7ybTH09JdGU5Rc8c0gx4A7J224aQAfrO0FG4q17Iy7rxy2HfUTr1G56AQXmY
         RKAaDW3gJDxn2VazmPT9QUuFd4GUiVL84zexqnp+DdaZ5tlmLwPyaLkbgWtNXWQ2wwmU
         jr2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WHK2GR8kfX0b+oqz1bD56wcKMpWRXbXriAgoKBCG6nY=;
        b=e0rZMCmpQi0Wh8k0RLd/tAst+7Z11YK3dFXxWKhx3HLRd2mqKk4KeR7HnpsPwaQKNb
         Bz9eKl4mZAiFVaBmq5xOmDxEsvqN4qlOQ8EuWa44sw4XCMxuW4+jGWsu9eyQ7xDteZQf
         ThHA17AABxo34yjhrFmufl0qnrz6oJrNx1DCuTQ3aofySBNvNbdgWbjAyBmQBGtOYdHY
         JKuNJWMntvulXamcrJfn02vIOrWJFHBn4jdBnwnhZxwaviWL7kgRCXW8TqcspqZ9L63z
         3IcylRVzJIadY1rnLF/J8syNPXAM3IMdu69rH03sCQlDDCGBJ27Kbe4ent4QO+btWR3K
         FZ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZMOmvEze;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d20si311744oti.1.2020.10.16.10.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZMOmvEze;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id o7so1875391pgv.6
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 10:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WHK2GR8kfX0b+oqz1bD56wcKMpWRXbXriAgoKBCG6nY=;
        b=ZMOmvEzel2Ob/PWFKa8SSEBzOiEbxhIAeTUyVwGfR7pgRS0OFM1WxO1nuGCn8AhQWg
         FtpAbGFgXtG2y858W34ogDFy7w5+a9rbPmu/+3VWw7iJCuUYF6vNcnrHrRR77zlrZCgH
         087S7GUE7UIGx0RSvZaYpq1HhhZx3bit4w9uZeQVW3oQrx+nARNJaNS2TCB5MTmafTD1
         Q1Y4bE4Zdjchjk9PmnMDxAKq7kMTR8eX3d2b7v5zbOd7avD2kaBj5fuImM8u/ZpiUDuR
         I8ZqbPUwbj/kif/k3nyR2CTWItuB2U0wgv5+ABEwaKQ6dYAOk5EXC5foUBw3LINHBm9Y
         B58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WHK2GR8kfX0b+oqz1bD56wcKMpWRXbXriAgoKBCG6nY=;
        b=FIvySmJaJPa9X2aH1h3dyVFb8eZxqeR5xDlgKAoyXh/bZYFA9SaymDsCLrojzL7aFc
         ALjII5ZGMIVWNf6yW9RkXxSfhlG6W4wq3lS5cyRoHwFB/ZvKATQXUAp+f7mzOejUcY6f
         4dmJ4j93xBbpB+LAzGpcV43eq5S/FkS30uDqROroWz4cd9yd/zyMjE+OQQ0H9mvJU+Pb
         y8oY/63Mbm0TcXHS4IDEzojD0beqZyhZIRH6rqxoYnmeISOqDbsSEwxqcplmnnKDj+OR
         f9vb120qX+6VexaySu1U4PZJ6aPZp7Aty0sIbwjcE6IhV9twcpzUIlganStT725GYc23
         XRfw==
X-Gm-Message-State: AOAM532eeTLvh8YP97w1K39F+E2UJS6V+5x9TWnJIihrgEBdV6ShrQai
	ELAnyhLQplY/gMp+tt+XpE7P9tmedS0wwg==
X-Received: by 2002:a62:8389:0:b029:152:416d:f026 with SMTP id h131-20020a6283890000b0290152416df026mr5060384pfe.64.1602870373113;
        Fri, 16 Oct 2020 10:46:13 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id 17sm3632433pjd.2.2020.10.16.10.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 10:46:12 -0700 (PDT)
Date: Fri, 16 Oct 2020 23:16:06 +0530
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
	NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH 2/2 v5] staging: media: imx: remove unnecessary variable use
Message-ID: <6a22de0a51e06b7cb43d4a55850f3a0213532e42.1602869338.git.mh12gx2825@gmail.com>
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>

Use of variable vc_num is unnecessary here as it is used only once.
Instead, the value can directly be used in place of the variable.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v4:
   - None.
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


