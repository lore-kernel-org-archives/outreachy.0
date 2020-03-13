X-GM-THRID: 6803689046764683264
X-Received: by 2002:a62:e417:: with SMTP id r23mr14471095pfh.216.1584120116005;
        Fri, 13 Mar 2020 10:21:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8a89:: with SMTP id a9ls4183755pfc.10.gmail; Fri, 13 Mar
 2020 10:21:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu3vWKDjYAO2yipjumLnmVnONFkhgZyJwgb1SlYDnXuriCuitPQ227Xc8bBDgicnbfLLmWR
X-Received: by 2002:a63:5546:: with SMTP id f6mr14351475pgm.260.1584120114479;
        Fri, 13 Mar 2020 10:21:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584120114; cv=none;
        d=google.com; s=arc-20160816;
        b=tpM5wbigif1SymS1FO9OI1YsbmANT3WL2/HNfPM/tAUsuaZ4IHEp4HEH65Nc8kRyBO
         fDyYTeuRb01FgcW8e8+P6kUlx3kFzmRhecbJIuInsV3KmgNNZKXGuIrahv0UodOQA2hy
         oRXC7LUH4EC4yJU4+4yTiylhKLIEixvbEuomdHsFHFEVjXIp5WawrCxnXdf+OO7kzNDG
         +zHZaf44XtJmiqc068rTFUxIxsKgCsMNCR4Ft+qzFIfTBT9r6ot1j57/TFO7bBvZta2x
         b/Ibv6pMzKTu8Mpde/ySicTTXme89P2b+R5G9hgnDUoWJcOUsIy6Mbwq9YJIN/0JNa3G
         fosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=37tqJECn7YQ7vJb+10gPtQmz8eEltMUhtPs6A2jvq+A=;
        b=vSXTxfJ1zX8vIyKzQZ5ciSyMyGfZxLN6zQGgsjiJU3KP013skIUhMjQdERXEK9rRsi
         nAzCmJJIeRi9Ig0H6Dm9hmAl0IU+3RE7vYTmzhnp+vnHgLwYeHv/x90bBhfIqZaD1Can
         u6JL+39Eq1NMCm5spBfdF1ZLF+6aX2RMlbh8LAEMscZ9XPyb4isjmeYgE24jYAT5ZkR6
         eEs2lrPe2VKRbJqHCh16j7GUi86tTvBXo/5xWTC1SmYjfpFCr/pjrQRXnaSLRGYWgKs3
         TEMmsJ3ztIcb1hXxt5BXX+hcinfyUQVEO9cHJqKF5sanhvZkqpXNToGE26LegQKVdU/m
         iVpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=Whv3H8uA;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q1si634461pff.4.2020.03.13.10.21.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 10:21:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=Whv3H8uA;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x342.google.com with SMTP id t28so8258588ott.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 10:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=37tqJECn7YQ7vJb+10gPtQmz8eEltMUhtPs6A2jvq+A=;
        b=Whv3H8uANRVen72DamX6+dmFeKoTni8uZ+CjRU2UfxQOyA5LXxmkKdM9K2+LZ8pb7U
         iekSZ/RZQ8f9Kml4xo80iff2NOh2rDroKW+VO+qVA1a7AbgzJm0gvssUNhGavhiGoXgF
         /L3pYmVGYQDu4BnrAJZNrAIMP8VGRZDmYDDZMgcAjKRdJ/HmnkvNprsMqrxORXZm+Wa5
         dUNiNTG6PfC1FmWTZP8/iW9FrHpqPui+zr4VlpuodKBT9Of9LfpOd4x51e1GLHfXLhNo
         pQMSyf2QYMO6Jvy57G6fe5xt8k0ughzjZNwrJxGAXUx8QkcbR2cVVz6SVhg330DFO6Wc
         3TRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=37tqJECn7YQ7vJb+10gPtQmz8eEltMUhtPs6A2jvq+A=;
        b=tKYvdF9Y8cVTAorALOR3/oI0twMvSfN2hKXiLgZSX8MB4P13WuJDhAiP+5RJPrkFl7
         9mlvljRzggw/rQnkIV9fFoFtahVe9hDtAIR1pdH2TuixTGMbk3SqRk1sOXl/UFnNbIoz
         7G/pSKyETgln+DKwcIb4reNyKGJ+BH9QWNQAtQD3En8K826ebnFrPHaOSY2umIcxjkJ3
         8BUx5FYWP+Z0Ix0wr9zNe+FK4zbDMIAuDZ8E9KX9U59OUThCOxEhgJlLDMnP0x1GCVrc
         90OITeWUNA/ShT9fEqubLWQREowadHpC365q4buJXfOoA202Q6gkGOj50yUetApI+0AU
         Jzgw==
X-Gm-Message-State: ANhLgQ026XM7BrjABlYpcygj1spBgc2YWiXR/kd7T77Gk5b/rQcUt+XH
	wmgkrxMDs8ddKXqeKnVF+gPIfRNDks3JmQ==
X-Received: by 2002:a9d:734f:: with SMTP id l15mr5488253otk.55.1584120113805;
        Fri, 13 Mar 2020 10:21:53 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.49.121])
        by smtp.gmail.com with ESMTPSA id 90sm12586974otv.5.2020.03.13.10.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 10:21:53 -0700 (PDT)
Date: Fri, 13 Mar 2020 11:21:49 -0600
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
Subject: [PATCH v3] Staging: media: imx: eliminate unused code
Message-ID: <20200313172019.GA22581@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using checkpatch.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
v2 Fix description typo with broken line
v3 Include change control, as suggested by Greg.

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


