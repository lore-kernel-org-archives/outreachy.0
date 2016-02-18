X-GM-THRID: 6252763365254365184
X-Received: by 10.129.88.135 with SMTP id m129mr9269363ywb.47.1455834920088;
        Thu, 18 Feb 2016 14:35:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.202 with SMTP id 68ls4552796qgn.3.gmail; Thu, 18 Feb
 2016 14:35:19 -0800 (PST)
X-Received: by 10.31.174.2 with SMTP id x2mr9469050vke.13.1455834919646;
        Thu, 18 Feb 2016 14:35:19 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id g136si507565ywb.5.2016.02.18.14.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 14:35:19 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id y89so48707847qge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 14:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=sQ8LUwSM8Q1pl9dDqqvcCiB4U++yuHmDrEWUzkJGid4=;
        b=Lu79E+30DiKUzyjVKB+cHDqGGUuxBpUDp/BPgLYgprHGsmnPALUqOEm8VO9CVeFlJ2
         /a0vLjltEdRINdRkbvRMAIub5Um1EUR/DroAFqT9V2KFrQlGyoF8UmLJoCS38RC5vnHg
         mZRd4NRBpMx1JTSmtfXfeFCZ4wBzGwOpMLgoW6Ut4l658pvhq4sl+pWW5pLVtRmcFL2d
         ZT1fmsL+W1Tmt44rysL3rVcXNFAMtb4wND7A1L/tQYPI9wVPvDJOew+NMX/Zbf1IOMnk
         9QpkFXHuBYkHkl0cxsj/lHAKXoWk+xfnJg0v1tA3L3+DYPqZG65J1pxl3fBNnMu3ig1J
         LgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sQ8LUwSM8Q1pl9dDqqvcCiB4U++yuHmDrEWUzkJGid4=;
        b=gBRD52GrZ/dhoOzl5FPX/KhW34NhXh/ncK2C3FTBdG3Il068XF+K59J4gHbda2uwz/
         za0gxBOWaoeFC1feFBNrQN7+xWshuR5va4BOAn3thHB7AXgW6fWZj7sUb8DwaxmYJce+
         5vtZM/i6ojSQ1NwhXbIzx/iPt9zfw6xuhvKIIYFG3DdXk3o8jGIGcS3iObzI+OpqTKnW
         I1CZeH76hbsnx3ULVaTPlKwWVpuHVHzF6voU7y3yxPfw0j3UlVPwAtDZtcwbKTBzjoC0
         t+Yk8c+ZPiqzfal6TtFCwjtD8fSVTCBs/ja9u0Dgb0Kq4iZJHEuAdr7NCNSTgvGl/5dP
         HZ4g==
X-Gm-Message-State: AG10YOTqp9LFaavobaoG4FdfIQJhWkxGrAujvBaxsuxIvuEj609yGpx8FUlaO7QIdfUTEg==
X-Received: by 10.140.237.204 with SMTP id i195mr12747307qhc.55.1455834919518;
        Thu, 18 Feb 2016 14:35:19 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id w187sm3482010qhc.5.2016.02.18.14.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 14:35:19 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: davinci_vpfe: remove ret variable of function
Date: Thu, 18 Feb 2016 20:35:12 -0200
Message-Id: <0449c39d607e37397547a89f096d31f9ab65e7c1.1455834014.git.thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1455834014.git.thaissa.falbo@gmail.com>
References: <cover.1455834014.git.thaissa.falbo@gmail.com>
In-Reply-To: <cover.1455834014.git.thaissa.falbo@gmail.com>
References: <cover.1455834014.git.thaissa.falbo@gmail.com>

Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 9b28513..747d29f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -229,7 +229,6 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
 	struct vpfe_isif_device *vpfe_isif = &vpfe_dev->vpfe_isif;
 	enum isif_frmfmt frm_fmt = ISIF_FRMFMT_INTERLACED;
 	struct v4l2_pix_format format;
-	int ret = 0;
 
 	v4l2_fill_pix_format(&format, &vpfe_dev->vpfe_isif.formats[pad]);
 	mbus_to_pix(&vpfe_dev->vpfe_isif.formats[pad], &format);
@@ -252,8 +251,8 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
 	switch (vpfe_dev->vpfe_isif.formats[pad].field) {
 	case V4L2_FIELD_INTERLACED:
 		/* do nothing, since it is default */
-		ret = isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_INTERLEAVED);
-		break;
+		return isif_set_buftype(vpfe_isif,
+				ISIF_BUFTYPE_FLD_INTERLEAVED);
 
 	case V4L2_FIELD_NONE:
 		frm_fmt = ISIF_FRMFMT_PROGRESSIVE;
@@ -261,18 +260,15 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
 		break;
 
 	case V4L2_FIELD_SEQ_TB:
-		ret = isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_SEPARATED);
-		break;
+		return isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_SEPARATED);
 
 	default:
 		return -EINVAL;
 	}
 
 	/* set the frame format */
-	if (!ret)
-		ret = isif_set_frame_format(vpfe_isif, frm_fmt);
+	return isif_set_frame_format(vpfe_isif, frm_fmt);
 
-	return ret;
 }
 
 /*
-- 
2.1.4


