X-GM-THRID: 6252763365254365184
X-Received: by 10.50.176.231 with SMTP id cl7mr5498357igc.0.1455834921768;
        Thu, 18 Feb 2016 14:35:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.226 with SMTP id z2ls36989igl.9.canary; Thu, 18 Feb 2016
 14:35:21 -0800 (PST)
X-Received: by 10.66.148.4 with SMTP id to4mr9107539pab.8.1455834921416;
        Thu, 18 Feb 2016 14:35:21 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id l85si452610ywb.2.2016.02.18.14.35.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 14:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id b67so48758780qgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 14:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=nCJXhiCcKS4XFMpBduxeWDULh+3IIWTV9VASvYH3OgI=;
        b=BeOQKtO0Hra89NePU1L7Fbm14EQP/MNtSKcRFYZDH1twgYaXi7KcD9x7niqo22eMCl
         5T68zHjvoLisPzuLXOZOR6wNBZUCewZ52dDSpYfkJJA1k/RP8GKvXUY5fWnVEYpnjhF+
         x9IbLD8M7hADlvbGSerUTjxGvGu2tnj+td5DtzlHdKaPWyfjp3t3AtfL/lW3oKpKOPcT
         jjihIX3XTgS3pzb2pQMnz0PWUWapI7trvmNn3UQkJ1KXy65Jr/aKsx0s9aAQkkZJfNDI
         49FOGyvkoHjtq5K5S/6PxGWCa/thHnXTgZbsB3Ow8VgI2oeb/m1wL1/DmFwNr2DgXqyN
         2buA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nCJXhiCcKS4XFMpBduxeWDULh+3IIWTV9VASvYH3OgI=;
        b=RsqkOLlFyf0Iv1Apwsays95Y3YJc+FOQ2ci5rdz4r/kLUIow9q8G68cmK189YT9muq
         98YETNa+dAmY/r8Cg4QKMXpTF3+bj90RRpnFdDadA38Ej3urgxMU+Rdr050P7BuZzEh0
         u7Ipi5F3DSjY3bboIIOAJATFN4HJ0W/M17UW9BR3/Tpxramy7GJC+d9TecDDW1q8Oi+/
         lHUMrEm5LPxOuDD/y9E/n7g6xFC7FkM/PdQjuZQ25oTh7ggknr0qwqSmFB3jFV9ULJ3v
         Z1RYM8Hb9SaqaWEQmHGGShyo990EZ1F6w/JM4Ty9/I4k9FUWHiUmQHab915DGpNDtn9S
         KVow==
X-Gm-Message-State: AG10YORyLvY0xtXcwqR3l4mg6f1oqRRMRDyCFOu+fHTZWU2cBawb0L/EOt2p7h3LTtuCJw==
X-Received: by 10.140.180.130 with SMTP id b124mr12476004qha.77.1455834921266;
        Thu, 18 Feb 2016 14:35:21 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id w187sm3482010qhc.5.2016.02.18.14.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 14:35:20 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: davinci_vpfe: remove unnecessary case and enum
Date: Thu, 18 Feb 2016 20:35:13 -0200
Message-Id: <a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1455834014.git.thaissa.falbo@gmail.com>
References: <cover.1455834014.git.thaissa.falbo@gmail.com>
In-Reply-To: <cover.1455834014.git.thaissa.falbo@gmail.com>
References: <cover.1455834014.git.thaissa.falbo@gmail.com>

Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 747d29f..b1e6fd0 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -227,7 +227,6 @@ static int
 isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
 {
 	struct vpfe_isif_device *vpfe_isif = &vpfe_dev->vpfe_isif;
-	enum isif_frmfmt frm_fmt = ISIF_FRMFMT_INTERLACED;
 	struct v4l2_pix_format format;
 
 	v4l2_fill_pix_format(&format, &vpfe_dev->vpfe_isif.formats[pad]);
@@ -254,11 +253,6 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
 		return isif_set_buftype(vpfe_isif,
 				ISIF_BUFTYPE_FLD_INTERLEAVED);
 
-	case V4L2_FIELD_NONE:
-		frm_fmt = ISIF_FRMFMT_PROGRESSIVE;
-		/* buffer type only applicable for interlaced scan */
-		break;
-
 	case V4L2_FIELD_SEQ_TB:
 		return isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_SEPARATED);
 
-- 
2.1.4


