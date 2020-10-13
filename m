X-GM-THRID: 6883028084998537216
X-Received: by 2002:a02:2b2f:: with SMTP id h47mr696101jaa.79.1602606762187;
        Tue, 13 Oct 2020 09:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:aa84:: with SMTP id p4ls132522ill.10.gmail; Tue, 13 Oct
 2020 09:32:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1ylZwlyNay7Dpya2uolv+gew0kU7+XBQF+bOufLDQxSXKnGAUdToEXOCC5Su1g0S+B5HG
X-Received: by 2002:a92:b707:: with SMTP id k7mr667059ili.250.1602606760676;
        Tue, 13 Oct 2020 09:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602606760; cv=none;
        d=google.com; s=arc-20160816;
        b=P2KNXQXx39lGXMphc9G8nC/mf6KLFj4d6/R70fV0o/VYwOkL+mfEBsM5x6UvC6qVfL
         yCh8+jC8cuqOnGWCpfXiv2V9TLf3F2a+QudWx0N/2NN55A0XJvWnkPDtR4oUsSEqvpsO
         Ut6yIrsa/xpRNe8Ec/48m8sFdsdw2rqEQhXKGqbg4aqxFMG8+lyZfEVHkh+8fzGCVKO0
         pQshlfhQOp7EpXltOwYBx9X97TqhUYAoSz3T6ZsiTaDB6EO7jZtsQ5XanAHLiOyyqm4w
         qQDfiwMr8VfixZisVFDqACuhXvxyRc+NwGNPzPo9gy6nX3Lbh6tMzxtBAjLjaVySlPFf
         EP+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=vz5tm+vT2924goFoNFEldHnhUYsxpflOFoHTyePWJOI=;
        b=XWIgHhe1BroNdVBhYScqf0zo2MI/51Kdkou5cDil59zgq7IsxbLzE4zi12hUAEgazU
         Can4KVPOFv20Y7DK8XC8E6Ov0Cf31ias+lpTw1qG3AcKQd6/4rJ/LGbnmrXxyB/AQKUj
         v15zN1z19NL6s90v/Feqv6yd9JU1NGMwzw1tbUKkNpmkdp1VsTC+T3pOhs+xSb+RmR+7
         uQrWTRwjDnzGGOTms8EsgJZHQz2eK+aqcosaOaFhmUxjsvzctjwtz193rJ45u26J9MuL
         wqVpHdhWqc+0Ga4UdrGx5epvZkHJ7y5xGd6s6teSMWr6Wkg5H5dSsCicN91yFqCsUCqq
         4+hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KgAJYa1X;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e1si44692ilm.0.2020.10.13.09.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 09:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KgAJYa1X;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id d23so103816pll.7
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 09:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=vz5tm+vT2924goFoNFEldHnhUYsxpflOFoHTyePWJOI=;
        b=KgAJYa1Xqe05BuSczcoIx94EJRa3r/M0TKhWL5NMYohY7eBmHbQUxTa/OhdyrcFuaJ
         mNUUSKtjiS31u5SuELWEnLF4Cm4z5Omqw84UWh7lPlwNMGRfDTfirNsIZs15R6GUxFb+
         kSTDB8T8bBzICyxJX8js/ArEsQUE44O/+bVr/Kt8rdKuYIWub8wLmbwzDwsHcp/TVrd+
         ZzOcRDP8/0rsrWfUPVmLKBKSmCKEj+Wwz11a+w9sf456g40MaFd5sWyDoka/TZrVFzc2
         Cyp504An7LdKp0hc+vDHcKjycJMebleq+hnYWC1hVyYZCScuhHsDRQEUXrhKAXSPobu1
         XeFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=vz5tm+vT2924goFoNFEldHnhUYsxpflOFoHTyePWJOI=;
        b=c2pXcmdEtV3ZLGWboDl7MfGQd7gaxrwIlJVyHoI5Amw5q6PEWxN2euEy1mSlyEghVy
         eslheHsgDuK1JwLgg2DdBUUdj09P7ZvjvT7yZ6Zal1X7y1g37nQQqKDJou+0chQd35pv
         cMer+I5kvf1Ef44LCTLPWfOHlmLPniASbcMURsptspeCmHYxHuy0tlT5r4bM9yBSuZ18
         i7oCmYF8E/kewDw51gwoVYgS5Av2QUxk1b2w8JEYHfcyjAsMvYkVNb31UdtAkjHsLvm1
         JvFowacmmTGnUK5iJmgUGhRVdDOCMT8sFENLIoqD8ZgDndZeS8A3tzmqJVcCmoVIHEAG
         RYUg==
X-Gm-Message-State: AOAM53202Bv5yQW08k/Nj0IDXIAfjEz+tPJq/CYWqu7fM1KJN8AgYtsh
	G5Sp1p127kvNEy3WKSlNbGzNkjBxqINsrA==
X-Received: by 2002:a17:902:7d8d:b029:d3:95b9:68ed with SMTP id a13-20020a1709027d8db02900d395b968edmr348627plm.28.1602606759891;
        Tue, 13 Oct 2020 09:32:39 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id w68sm131222pfb.108.2020.10.13.09.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 09:32:39 -0700 (PDT)
Date: Tue, 13 Oct 2020 22:02:33 +0530
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
Subject: [PATCH v4 1/2] staging: media: imx: remove commented code
Message-ID: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Commented code in the "#if 0" block does not appear to be useful anymore.
The virtual channel is always treated as 0 once the stream enters CSI's.
This issue is reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
Changes since v3:
   - Rephrase Patch description
   - Implement feedback from Vaishali & Helen to mention checkpatch in
     the patch description.
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


