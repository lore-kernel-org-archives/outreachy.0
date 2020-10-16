X-GM-THRID: 6883028084998537216
X-Received: by 2002:a63:165b:: with SMTP id 27mr3969211pgw.197.1602870043176;
        Fri, 16 Oct 2020 10:40:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls1615065plb.6.gmail; Fri,
 16 Oct 2020 10:40:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztYYxi4OotHd/OyB8hty2D5lUGXl1Dl6RydiJPyiG95AQyS7qhGKDLQl60OWrEqLtiVl5b
X-Received: by 2002:a17:902:dc86:b029:d3:d3cb:7748 with SMTP id n6-20020a170902dc86b02900d3d3cb7748mr5402153pld.22.1602870041311;
        Fri, 16 Oct 2020 10:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602870041; cv=none;
        d=google.com; s=arc-20160816;
        b=UrnI7GGS5NTK0r0yHiayMq2choQ3QEbjUJoQhHkCKGErM+5hiks7y4MJVqW56kFeuy
         QgMO2pqNaBUMcbQCGKBPnEUQuW67oPW2fkiLbmuNvYMVQPuklVUeBOSTZw8FTg836ADr
         qvbt6E91R69mhsghrw8j3bi93wQ6GENEpyWH9QXODV0gHrTEh08SY9AUCZFY7gswcBgL
         H9jMXspIpGBmtd35cbekP/Lqjr9gAFQpxIrs3os2m5zBGpCmTZILdFEyaYM8WALS5JJf
         3OWCY9EUiysW8oSkRucFzQ34QTbLB/RmwIbEIdlblMI8viuZ/8G2nn5wsF6U3yXsyLQ7
         Od8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Np+zW2GuhNLqLx1TqqXkHXVvHvxaPBCZz87T9F1IuLc=;
        b=0hdfb9oIVlDBSHQ0gLlLrqkh9bypMOJ8cp0YEN3R5JEVDkyUSfulScRd6sw5vUxhej
         TSZs8A6JFf//dSH5Xh349hKuIKvMNrPAAzyZVl4rPBrOC/ogjcKLpztv3GN51oIY//TW
         jYFBgGzwG2UQB0eZ7miUfcktTPnB99g+BlMgRYeeK5wamkPUfwwpRJyJHcOfxMJwjvTI
         tRXV1WKYCSqBZYiz/2bkV5tm30mHSLKSPwuaOpcW+b1qI9hUk8CJ8wNZ1AVshWoLdW/F
         xvgOC9HBiYHTEI2qL324DvD+08iWlX1lo12dcvdIU6+QiKAhgweM9ZRpFMna+FY6ekng
         VXCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gw8JSSMc;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id mv6si209533pjb.0.2020.10.16.10.40.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:40:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gw8JSSMc;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id e10so1913762pfj.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 10:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=Np+zW2GuhNLqLx1TqqXkHXVvHvxaPBCZz87T9F1IuLc=;
        b=Gw8JSSMcnYhmlGUrLsR+Lt2hgWI1pKAm5DuqJYG7p3UnOHE2QKRj2Wd1/54W1HcPKK
         edVif1RnRiCRZ01D6K7c484al0YPRNHoXKLXF6BkNFs704AD1oMWcuj4PfXsgb/fiMOd
         Hgc8v8knCLdU2JV/Ph64/wSbRDPfW0yciyl/F5iqZct5wGRjAxg5I8dtfPigbtKAafLv
         4aDY2EJOmtnz8jd1aFcCQ3jRBvaFEKu9FCKKr+/rRu/gPbMLCeeIvZPzJ2tgPPpgB4VZ
         0ElNV/50s13hD+r/SsbuY1CaAzl69Uk51O5K4E60NCdW6otGTJJC0IfN8tY28GCN6ZBF
         QuDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=Np+zW2GuhNLqLx1TqqXkHXVvHvxaPBCZz87T9F1IuLc=;
        b=tnCCxoKDCifEYcwynp0b8qB/J6ojlmTpvbj1MooQe4rFysgflIURYr0WJ419lAU/5u
         KCchwa4aFYxHsDIp+xyBWy9oELq2itrqmevGf0pMmU5kHt9ymU8DZrMK/91b7jxYgqTO
         a3k/pUsBDvT5KPGPz/36bREbkNeG7/1lBxH3nIESKgAx4GYLRnYfGnr1lB0dSYe00KFf
         EleOtg7Zg02YTn9KihUcqIvEzERqxTXLCurNcjuqFDMYQjcjj6X1lTd3GnMAkwUv8eKK
         Ug6hbu3T6AKoTn8CVg0FdfwFcsl3JIdDpQgtpYsEe8FRLLJ1McCIT7GpVbmNQ9HS8JC5
         tFvw==
X-Gm-Message-State: AOAM5303Zb7ATA8YmYO4wB5SLU+51+gWtc1SnyHYbSF++8y06zK8Dmu/
	fRx4P2miRya1pRwdXXJ6uHG170lmJUvTyA==
X-Received: by 2002:a62:80d4:0:b029:155:3225:6fc9 with SMTP id j203-20020a6280d40000b029015532256fc9mr4797706pfd.41.1602870040858;
        Fri, 16 Oct 2020 10:40:40 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id ls8sm3563230pjb.54.2020.10.16.10.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 10:40:40 -0700 (PDT)
Date: Fri, 16 Oct 2020 23:10:33 +0530
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
Subject: [PATCH v5 1/2] staging: media: imx: remove commented code
Message-ID: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The virtual channel is always treated as 0 once the stream enters
CSI's. Commented code in the "#if 0" can be safely removed as it will
not serve any purpose in future.  Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v4:
   - Rephrase patch description to make it exact and accurate as
     suggested by Julia.
   - Add linux-media to the recipient list. Suggested by Hans.
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


