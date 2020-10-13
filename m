X-GM-THRID: 6883028084998537216
X-Received: by 2002:aca:40f:: with SMTP id 15mr13194143oie.44.1602594396184;
        Tue, 13 Oct 2020 06:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4bc1:: with SMTP id y184ls189680oia.8.gmail; Tue, 13 Oct
 2020 06:06:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxsMF1NvYkfJjrCqNyYoxviyVoAnrxhHYTgGUBGi8qkYzeUUpLecn6q+6wsLIAEIj5CG7l7
X-Received: by 2002:aca:d856:: with SMTP id p83mr14469960oig.57.1602594395008;
        Tue, 13 Oct 2020 06:06:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602594395; cv=none;
        d=google.com; s=arc-20160816;
        b=Jow2Bkxbj/9sPdi5XafDmkq6tl7goRsreuO1zop9Jloai9tDFnioPvW1QX0p25Mt0f
         a7ru7V5Stxj+TlTDYaS85II6gqKlzlo7xPjUnleo3sYEzkZQUp/e6kzU63bdDx6DoZTT
         M6ZgIVltq5+cUVudy6VgjNn8sOrLkyjJd8w82NvmyWvScSwWloskNYpTvopwpHaRwnXw
         kHQ3Jmv8eR/MU+S82vfX/Na7lFD53UuMfFJFJxP6HxgDRN5GVPx2ocOlPOZK9ErFwVdi
         9AgQ4hVS+XmgHNyxDegwXADAH8uZW75N52jIWmMFpO13So5cOjVlKi++ef1DSLwxEgid
         40Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=ctTiKMcCkNi1aFqzK/hgWVlapALxUUMPiyFiXKqw2xo=;
        b=y0ecE+Qy6VenfKX2uHulT0Lb0ekHG/omMaVbIP+5uwwzTSz8hQWedL23pVCDNrMmNi
         IGu/HjaeVyzCUGSmdPcZEmQGXxVnPzPz1luvV+kCUcPM+bPzemWqg+CoFVgYnQFZTwzR
         SH2EUCAXOlBFsq+XlPQYfAXtsu0y5Dvl3p+jFT3qHeKDLFL7yvkX8q8EHD6MAuucYkBo
         tEwO3fjzusEIpVEyEx41q00z55b5OEFAOGGcDifJ3bqholEUJhpnM7x8bLV3TO0/nbRu
         mwf5zbEHIHbkAr0Oh0b7YyM6ov2wtma7A4BJ++YfW2NTlRRKcifhLZZLtcP9sgy30R9Z
         mFTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kT0fIgRN;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id b15si897470otj.3.2020.10.13.06.06.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 06:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kT0fIgRN;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id t18so10670726plo.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 06:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=ctTiKMcCkNi1aFqzK/hgWVlapALxUUMPiyFiXKqw2xo=;
        b=kT0fIgRN0m9nDD3ooLwR9PpmAThD+OoTOgjGnmazmtBF/ZzBNPl/vqxc1MI1Fo1Q/e
         BqF2s27rRRqFRvRStHykZl++uf+/BarbRGLNv7nq0XcgCbMZAC3gbhkwCvTDgCPF8GmD
         S+5rAzrVY6RpknW7aJpdG0abBiq+bCDsBRzMbVJKyP5vI2rUW9WfCQynfiVEhngFUyIj
         YNcVd/iCSYYZF+mqBpGRtI+aOPfzkHXX3EaLJRytFNCNpfLNdz56XXqu6ZxkJnR6ICL5
         pjvGkNXwuT2nlDZGC0hz5xJPJZeJejkOYdU6mbdOoq6FV7eyHwbf9qiklLkLf+CSk5rL
         /U2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=ctTiKMcCkNi1aFqzK/hgWVlapALxUUMPiyFiXKqw2xo=;
        b=PvTu0H+MD5uBLXdChp5D+/wd+gWLSAxnEyO7uFO1E5repDV6AgXBw4y7Z4BHcT3kWE
         iMc/zNh138GM7XvqLTiMIiAZ0fjN3oVOWZG/YJkwpwxWQHpmWr2VgkTSE7znYu3hbo2s
         aX4CDWULYiiMQ/rT2ScEvdBzkRj5FwOx12HTmLg/dtMRuwtzQQTBLuDf69AjtgXwXZxi
         ZajuMGzLdMPJ0COaH8G59yISYvLwsutEzwNX8qq0a8OszzmfjdcNzIxolsQ/34nLFZ23
         QiSvKBduAzdYyIz/NRc4sAz7SB19JHcvO4EpC1U8ojJ4b0rhAdfHSBvXN2TAtONxShPk
         2sIA==
X-Gm-Message-State: AOAM531DNePuaVCsVetm/YCj5/WZCqMZ6IeltydzJ1Q8I5PHzgaLSKZh
	Qv/VA6Hp+V6JXzh4PyVqKosyylaHIMxBlw==
X-Received: by 2002:a17:90a:fa8c:: with SMTP id cu12mr23234311pjb.140.1602594394433;
        Tue, 13 Oct 2020 06:06:34 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e11sm23341150pfl.58.2020.10.13.06.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 06:06:33 -0700 (PDT)
Date: Tue, 13 Oct 2020 18:36:27 +0530
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
Subject: [PATCH v2 1/2] staging: media: imx: remove commented code
Message-ID: <f484d024b14104cff4f54bad3da52151847a0b28.1602593826.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Commented code in the "#if 0" block does not appear to be useful anymore
since the virtual channel is always treated as 0 once the stream enters
CSI's.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
Changes since v1:
   - No change.

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


