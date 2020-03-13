X-GM-THRID: 6803689046764683264
X-Received: by 2002:a17:90a:cf95:: with SMTP id i21mr9075490pju.97.1584107400429;
        Fri, 13 Mar 2020 06:50:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8a89:: with SMTP id a9ls3952772pfc.10.gmail; Fri, 13 Mar
 2020 06:49:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuK7UFm0AxQ7Vp0uCUnWucqNg3hWeUbDOo7vRTx1Ik+LXbaRbYJYuNgBlv8QVssqVdH2LY/
X-Received: by 2002:a63:6c8a:: with SMTP id h132mr1440195pgc.42.1584107398746;
        Fri, 13 Mar 2020 06:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584107398; cv=none;
        d=google.com; s=arc-20160816;
        b=szrMnYw0Ozadg03AdjGZYK4fhEZLnS8InfEw3QIgxoDh9AzMKatHJoIB9fXERKqRFS
         GjbibREzPDOvLO1P1obwH8I7tKcqncSb0MOivlA1UKp5ZXLmRarPnlRqH2BfHUKD1qvv
         tk7KpSOjnB7FcC3iz/1TBR9QrZAbZ6vlGoUI0hMGgm6mcFOoX8KuQkvlhOrdNePd3X/R
         hMw+cX3j6lW5Vkn0BULYZ/Us2Ed/wBNoJYPWzDG8/RGfMhbazbJXcM9jVIFWIpWXdYSL
         e3LwnL0XI8UbwfTgqc+S1YICTzKwSgtJ2Ijls+iga3Y56N8oU8bZ0yVh31ThPqFlDZ7L
         Ht8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=fkiDOEobIV2XPB8kBcLek571A/ZxODFRgXpryg3pxJM=;
        b=WX6+pJ/RJVssUHkDqaE5/lIJcVghkijkV2BW1qjr8E5a0uV4Hp4XpcvS3HUPW4cds/
         3T4DmeALICKABWms8t9frnTwJWTl7CmwdDMAVLLRUDCQE42krpNhlF/UJf+tJVy/dk+6
         ShO2Dgpk23tuME48qOHpd+0f3IcjVriHJJSTsEcL980kbTaOyS3tKpNVnAj53IE2NlBB
         b3ioluKENR8kQIK9bIL08zQTlcGtWcVcoGzlmFUlfsPZ7mHpGpCCdqz+lzmefdo1A5TM
         F6G61CEkSYt0y+y7LUoHKxstbiZBO1pZ88w/Cujmg6pHX1IALT/vpcDyuvyrA2g7jx4p
         2Stw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=WBG+LNIw;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q66si445310pfq.3.2020.03.13.06.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=WBG+LNIw;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x341.google.com with SMTP id a6so10085832otb.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fkiDOEobIV2XPB8kBcLek571A/ZxODFRgXpryg3pxJM=;
        b=WBG+LNIwyLRa5rhlOaB91cLVZQsmL39jeFGc9f537UJJg1nAhSPklxgKmP8Rxw9FTi
         S46R/ObQpkRn/eyMAjmmhJZcE0CR7vtoHpfixbdpyBjAzQh+nY3a78h9T9MPM1rjJl5U
         eAefqkW761GIt75qghPP05icp6707lyhw/0VQu7mn+E41wQMjaARvFhx+uTmo3URAa/w
         gQ0emAqGfJavRxjxl6dQNRI+s2jXL7k1HbEmIW6F5WKF0Ida8lbEDCROovDc6fzvfW/w
         7Fclrxj33bH7i7dwJxK9wssBlHqGZq75QKfV0OoCclQuX9EcGhf9y4FmEIq4BaSz1mJI
         VPaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fkiDOEobIV2XPB8kBcLek571A/ZxODFRgXpryg3pxJM=;
        b=kjrbqRpmI4HRwc1SuO5BGErZ4V5Glv4vGqw4umgZYmpXLpCcJ2bSTDWm00qw6kOq20
         XA026UAHsEyc0/4QRqNoKNZ0UCt+G4cqRf966FkZRSty6AjSFIIFu5guGpCsCcZzd2be
         oU7C2Qz9ZCCHiD97b8kRtq7/p3JW+8JD1k9LOMdVJFvOTS4dk8EbIL5KuwkxtPOE6ZRn
         fxrh8H4/6inJ+jwsU3rU0QczXoOdyazcPBFVotQ9lPhgrjs1kFIGUObyVeMukrIO/LE8
         poLo9V3gvH3dQnL8lL+YPAEXrvyiMSzZjW7rKupNdrhINz5h8UhTw9ZtjOTxPlvecRib
         YQ7A==
X-Gm-Message-State: ANhLgQ1mUbB+Ew6keZRa5wC0PrGDD2hlXUdvDZMMF7LOwU03JY/QZ+jT
	uVaAHbJm5aCmNTYJuqn2WcK8XcUjBC9yow==
X-Received: by 2002:a9d:b89:: with SMTP id 9mr11296870oth.297.1584107397239;
        Fri, 13 Mar 2020 06:49:57 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.44.70])
        by smtp.gmail.com with ESMTPSA id p18sm18916679otl.70.2020.03.13.06.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 06:49:56 -0700 (PDT)
Date: Fri, 13 Mar 2020 07:49:53 -0600
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
Subject: [PATCH v2] Staging: media: imx: eliminate unused code
Message-ID: <20200313134953.GA11354@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using checkpatch.

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


