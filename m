X-GM-THRID: 6205612297408217088
X-Received: by 10.180.105.98 with SMTP id gl2mr2646980wib.0.1445098876853;
        Sat, 17 Oct 2015 09:21:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.9 with SMTP id u9ls431026lfd.63.gmail; Sat, 17 Oct 2015
 09:21:16 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr5081601lbc.8.1445098876301;
        Sat, 17 Oct 2015 09:21:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id q6si234788wif.2.2015.10.17.09.21.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:21:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ll6so45124291wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 09:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PBtrHO30jby40NNfp+bFPPNuiBi89BsBTXeLEXv3/eM=;
        b=q7lUhmBw4bsiyrTkvop5zq/wl0yBQGth4oYPZWNXB4SjBfEjhyYP3H1R9l3ZNiN7RJ
         amll/Yq6rhthAwLfiUMP8uH5VEIYEFXzxlGZ2apFnpGfKXgVDXLuuMQwFONLoJ3+STVI
         QpUOr7PUhToZP550po8YD5Nsx/NFwEuoIbt8wgySya5/dz0Rv2pcttYxKlc1fwXTjm/o
         02/7kQ9jZ47bWCvgA4E1gMZUAXjwSroi9Gz27yA7qpB+7TjkY1m09dUGyeX5EXnpmIsq
         wLTlD56I9/NVP4aBoepqaOVgvi6PngIDGwD1/xj5F133XQ8F9SQadZQTaHdBD35jSrmn
         vmIw==
X-Received: by 10.180.93.2 with SMTP id cq2mr7767412wib.33.1445098876212;
        Sat, 17 Oct 2015 09:21:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id jd7sm29127050wjb.19.2015.10.17.09.21.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 09:21:15 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 4/4] Staging: lustre: include : Remove unused macros
Date: Sat, 17 Oct 2015 18:21:06 +0200
Message-Id: <05ab101e947b154314749a1ceb051a9af96c1753.1445097871.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
References: <cover.1445097871.git.ksenija.stanojevic@gmail.com>

These macro are not used anymore, therefore remove them.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v3:
	- add space in signed-off-by line

Changes in v2:
        - nothing

 drivers/staging/lustre/lustre/include/obd_class.h | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 4871b6a..53c255c 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -244,23 +244,6 @@ static inline void class_export_lock_put(struct obd_export *exp,
 	class_export_put(exp);
 }
 
-#define class_export_cb_get(exp)					\
-({								      \
-	atomic_inc(&(exp)->exp_cb_count);			   \
-	CDEBUG(D_INFO, "callback GETting export %p : new cb_count %d\n",\
-	       (exp), atomic_read(&(exp)->exp_cb_count));	   \
-	class_export_get(exp);					  \
-})
-
-#define class_export_cb_put(exp)					\
-({								      \
-	LASSERT_ATOMIC_POS(&exp->exp_cb_count);			 \
-	atomic_dec(&(exp)->exp_cb_count);			   \
-	CDEBUG(D_INFO, "callback PUTting export %p : new cb_count %d\n",\
-	       (exp), atomic_read(&(exp)->exp_cb_count));	   \
-	class_export_put(exp);					  \
-})
-
 static inline enum obd_option exp_flags_from_obd(struct obd_device *obd)
 {
 	return ((obd->obd_fail ? OBD_OPT_FAILOVER : 0) |
-- 
1.9.1


