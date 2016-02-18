X-GM-THRID: 6252743439403712512
X-Received: by 10.66.62.162 with SMTP id z2mr9541839par.11.1455830279748;
        Thu, 18 Feb 2016 13:17:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.229 with SMTP id 92ls5154368qgp.65.gmail; Thu, 18 Feb
 2016 13:17:59 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr9184327vke.10.1455830279059;
        Thu, 18 Feb 2016 13:17:59 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id i133si491452ywe.7.2016.02.18.13.17.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 13:17:59 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id b35so47150373qge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 13:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=YPri2qZwePnacZKGCdH5wRKB6DxnkzllS+OsqUF++Fg=;
        b=gb3lvYfXwgC80AdJb5nlpOirztGrOWVfy7/pCz9kERlM8zCKb40sZ61Ld75aKzDM2m
         uCj3g6QawCjGUFjzW+e/B+iR9U/lCvGvDXUIldMAEPTpojqF82ulG64hW08drHdxyrdm
         rYIb6m9jr8hqRlrGUPg/QSBVaeMzXFuNjN8QI78pzNm8we8XnCy5p6MXBQyIwW0qr7y2
         SqA676frDzxLhd/PXGWSj+dALRgpTwT/3b9cYGs3V2q0U2k/mKfBqfCtDqGV959GJB5/
         R4ToAXrgkJ+MDcHhLnRB2Yu/yn0xrSFYjeWUz4EzmShXM8pgAmoGrx7P+xC3Mu1bQI2r
         ZmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=YPri2qZwePnacZKGCdH5wRKB6DxnkzllS+OsqUF++Fg=;
        b=A8UqHeUdcH2/U1R/R+JvgDeMd3Qkrre7wl9wlxZuuk3ILTRoy+zjMdXzQ5gl2TohRD
         i8lC8i8pk6JlQe3vFOZtcz+oG3Qy8mHDQnDBWb5hqZMQuuFUmlO5PxNBjre8Oc5zEjo5
         ZUb+9W63S1PzV80NpCzso60mCVh+Z3xR/u3c7OOaUl7Ua7nX8AMuWuKs2Mx+vMyk84ER
         1VCi8elR60H0nyH36SbUWACcR9fG3SvSmhLZtdXo5H5S+mrda5CKrq1uetdvB0ReApNO
         JQn5ItuPPfzpamYIqGdrg961DY0Cv68l3t/Om5EWcjYnE+DjK8XUB23Q3G1nNOhLMW/R
         s++Q==
X-Gm-Message-State: AG10YOSaimAnTilL8iCHWAdmrGCNVSnvpJeNXgOMcoMySvSVOOFP7w/vUNvpr5EbTJCWmA==
X-Received: by 10.140.20.183 with SMTP id 52mr11576129qgj.38.1455830278916;
        Thu, 18 Feb 2016 13:17:58 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id u202sm3047450qka.43.2016.02.18.13.17.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 13:17:57 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: davinci_vpfe: remove ret variable in switch statements
Date: Thu, 18 Feb 2016 19:17:54 -0200
Message-Id: <1455830274-15956-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove ret variable in functions that used it to determine the return.
Simplified the return logic for these functions.


Found with Coccinelle script:

@@
local idexpression ret;
expression c,d;
identifier label;
@@

switch ( ... ) {
case label :
...
- ret = c;
- break;
+ return c;
...
default:
...
- ret = d;
+ return d;
...
}
... when != ret
- return ret;

@@
type T; identifier i;
@@
- T i;
... when != i



Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++--------
 drivers/staging/media/davinci_vpfe/dm365_isif.c  | 11 +++--------
 2 files changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index ac78ed2..ff47a8f3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1350,21 +1350,16 @@ error:
  */
 static long ipipe_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
 {
-	int ret = 0;
-
 	switch (cmd) {
 	case VIDIOC_VPFE_IPIPE_S_CONFIG:
-		ret = ipipe_s_config(sd, arg);
-		break;
+		return ipipe_s_config(sd, arg);
 
 	case VIDIOC_VPFE_IPIPE_G_CONFIG:
-		ret = ipipe_g_config(sd, arg);
-		break;
+		return ipipe_g_config(sd, arg);
 
 	default:
-		ret = -ENOIOCTLCMD;
+		return -ENOIOCTLCMD;
 	}
-	return ret;
 }
 
 void vpfe_ipipe_enable(struct vpfe_device *vpfe_dev, int en)
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index cfad426..71d3314 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -625,21 +625,16 @@ static int isif_set_params(struct v4l2_subdev *sd, void *params)
  */
 static long isif_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
 {
-	int ret;
-
 	switch (cmd) {
 	case VIDIOC_VPFE_ISIF_S_RAW_PARAMS:
-		ret = isif_set_params(sd, arg);
-		break;
+		return isif_set_params(sd, arg);
 
 	case VIDIOC_VPFE_ISIF_G_RAW_PARAMS:
-		ret = isif_get_params(sd, arg);
-		break;
+		return isif_get_params(sd, arg);
 
 	default:
-		ret = -ENOIOCTLCMD;
+		return -ENOIOCTLCMD;
 	}
-	return ret;
 }
 
 static void isif_config_gain_offset(struct vpfe_isif_device *isif)
-- 
2.1.4


