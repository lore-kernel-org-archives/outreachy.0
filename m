X-GM-THRID: 6883028084998537216
X-Received: by 2002:a25:98c3:: with SMTP id m3mr346828ybo.504.1602601216742;
        Tue, 13 Oct 2020 08:00:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:511:: with SMTP id x17ls22340ybs.11.gmail; Tue, 13
 Oct 2020 08:00:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxSFXR/i2ADnx33xY1SL4//WoVs060OiGVzGIL3gx3ZLfHffCshZ/9ht2DqaYvb1M2Gm6nG
X-Received: by 2002:a25:4b87:: with SMTP id y129mr428417yba.26.1602601214938;
        Tue, 13 Oct 2020 08:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602601214; cv=none;
        d=google.com; s=arc-20160816;
        b=IqTq3yzwzxFIGAraqlklQUJgViFeF+iRvrUjzX4B/ZyKb3inKb2TcdVCJwGM1OjZQo
         Tume/yJpnjhRk9Evjrs94ef8IBq1/yIe3Eb2qj0Nk65mZh9R7eeteD9+P1VL2jXtBJBj
         xHiV6Fa+mR9wisBUV8JN9JUnwUsn7a2Xs6KqcwdnzOesPKSsOhTND/Ab4F4JOLrdqXBm
         VuzAWLwBpTMw7v9oK0E+A6FGMr206ld+ft9S1c8uS6KkVUV76SFidt0GBt4GgrDkw7I0
         4lDH5sQmm2kbcxjjSSj0LBVXkgvjYpjIgLzglNBCi5uoQYbKi5jQl+yAzn2+t+ghsmgo
         cAlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=72sY+CPclBT2SHTdmgp/iyGjhFVW5AoaaJIELySlQNk=;
        b=Kg2Ar7uU22r9w15Y1X4VEWZFxp5TAFINQxRMNUtdU0yZPAlXsWB16OsQIvxjTGdOfu
         oY2Dn+dNJZqsqjpy3uMFm80G7w1KhcYusR/FA4P9LMsdEedj5yzkNuwK2z0/mRJI+A7O
         jnxNPZIgPubNiaRl6LZ5Z8jatBp3m2FYE5U4hCY6eVlvvD/0VLVFQFvVGUMm9aZb6m6F
         cy0L66CKd4VpO+HIHVx8BiJFRH5DbtGnkksZEev7StSYPVhcL23j3Tbuvoq5N6a86XVU
         +sBf01BqK/1BFhgwGaXcg1Nu95t1mu9P0ja9Q/PbKuyc3E7PWhKyKnmR9fjvYeufEJpY
         zoWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iDRIDwBH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s7si23870ybk.3.2020.10.13.08.00.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:00:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iDRIDwBH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id d23so10854089pll.7
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 08:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=72sY+CPclBT2SHTdmgp/iyGjhFVW5AoaaJIELySlQNk=;
        b=iDRIDwBHVYuTBfyjBbkxnnZkzYa6zb3WxFcLc62ZNbfE4PU0laLX1taoZaQ2OSNUiW
         pNbFgQDz0V0giGQH1HAECKBLmMW8gUEbfXCbIuKFbZ70alLuKBz8dvJYzLGWRq/K70vB
         xCBk7AR4/ch5EIHtlsoc6lKYX986kBcChgpFZ4NJzKh/bARxrwbHMunnkcJmqoupIL0P
         xawGphLEHZRLAQA0VgDVkOi58Z3ObUNbtV4ZhjLdJzgQYFCqRGgbJ4lm0TkYDCUPVGxn
         IB+mgv6Ge8Rq5SMOPalkihjtcbAeaMvIOOfIi0ijgLEN3pkZkso04WZJnztxg1PjHH7I
         cQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=72sY+CPclBT2SHTdmgp/iyGjhFVW5AoaaJIELySlQNk=;
        b=lkrLMfDziIfMJPOuc85Nmr9a1l0uMazepdw6mesGc75hJ8cO1YWkFBa8DTOaFXRcUh
         LEO3LK+VVdLM2PTpybsyG9DAKqzRl276TVNZHvn51MK9oJN1VDesqWirCXu0nX92GNse
         50Tvl2zk8nHLFj8G1abk0dprA6v49hYy8qVZQhX3G5K0SuoT7cFs8kQCJY3cID6hp97Q
         4TBV+mTBjbda5N+vG9e9KNxbhXRwoEKcL3suTXFMmgl6v6z8EOFs4dIZVniwbujCRIHP
         qwGkCfB/TlRa5U9B8mkVaXerVzsqxl5zfowfzgo1P7wK0R+zLmlmfxKj5JgRPLrTrESD
         maSQ==
X-Gm-Message-State: AOAM532/yeqTnB23Ixr3ewvce54r21J+ub4HF211ssDf1DNe8F3LzfZX
	Ju5KZ7dCfThGK+wdpwZ2mfimXe9IzQNbEw==
X-Received: by 2002:a17:90b:4b08:: with SMTP id lx8mr131679pjb.204.1602601214039;
        Tue, 13 Oct 2020 08:00:14 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id c127sm22988274pfc.115.2020.10.13.08.00.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 08:00:13 -0700 (PDT)
Date: Tue, 13 Oct 2020 20:30:07 +0530
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
Subject: [PATCH v3 1/2] staging: media: imx: remove commented code
Message-ID: <f484d024b14104cff4f54bad3da52151847a0b28.1602601012.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Commented code in the "#if 0" block does not appear to be useful anymore
since the virtual channel is always treated as 0 once the stream enters
CSI's.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---

Changes since v2:
   - None
Changes since v1:
   - Implement feedback from Julia to be exact with the patch description

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


