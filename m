X-GM-THRID: 10576027713536
X-Received: by 10.112.122.97 with SMTP id lr1mr9759061lbb.5.1427987896551;
        Thu, 02 Apr 2015 08:18:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.229 with SMTP id n5ls222191lan.100.gmail; Thu, 02 Apr
 2015 08:18:16 -0700 (PDT)
X-Received: by 10.112.14.38 with SMTP id m6mr5048960lbc.12.1427987896072;
        Thu, 02 Apr 2015 08:18:16 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id na10si335391wic.0.2015.04.02.08.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 08:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id dm7so88714944wgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 08:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=O8kAnuQgIKn+Ni1jG9DcKA2C2drTQXvEnVTFvOfwtZA=;
        b=EJEnAxwTqr6Q4oApHsV2cAsaHBcezi1yQPyc+fsxx4eUFyXRZJAGc0lljc0DTTRofW
         pyW3GjAGeS+plb2jPfhcGw0dv8zbkSXIbwMlUkmhGIJwCQXnCK5rkrpmkXNWEx0TyWUB
         DF2lhaBmBxiQL52PG3J2QHZeQeZcd4N0foY/Zb/4cqrzPGD7C552xfOxZivciY865K+J
         rDJOLOCN+bSFTTJrBZDEtE3UrXXGeFpM1FK4SC29NrDGTg1X5GLjGt77QWLB4nLyLBm0
         2+nOyHDlhAI0S6s/lApgM23bxf4i7zvGqomO1bcqAu2G559/WDYiZd2ImYTLDH/tOEpJ
         y03w==
X-Received: by 10.180.105.2 with SMTP id gi2mr25244348wib.62.1427987895986;
        Thu, 02 Apr 2015 08:18:15 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.130])
        by mx.google.com with ESMTPSA id wo10sm7666442wjb.35.2015.04.02.08.18.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 08:18:15 -0700 (PDT)
Date: Thu, 2 Apr 2015 17:18:10 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] staging: lustre: include: replace OBD_CHECK_DEV by
 obd_check_dev
Message-ID: <707aaaafd992944368f0b046b0e030bf68882fc1.1427987408.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Static inline functions are preferred over macros. Hence, the function
obd_check_dev was introduced. obd_check_dev replaces the macro
OBD_CHECK_DEV. All functions that call obd_check_dev store the return
values and return them if they represent an error code.

Some of the changes were carried out manually and others were
done using coccinelle.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: removed unneeded parenthesis around the variable obd.
v3: v2 was sent as v1. Fixed that mistake.

 drivers/staging/lustre/lustre/include/obd_class.h | 33 ++++++++++++++++++-----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 5314f6f..76f55d3 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -341,6 +341,15 @@ do {							    \
 	}						       \
 } while (0)
 
+static inline int obd_check_dev(struct obd_device *obd)
+{
+	if (!obd) {
+		CERROR("NULL device\n");
+		return -ENODEV;
+	}
+	return 0;
+}
+
 /* ensure obd_setup and !obd_stopping */
 #define OBD_CHECK_DEV_ACTIVE(obd)			       \
 do {							    \
@@ -594,7 +603,9 @@ static inline int obd_precleanup(struct obd_device *obd,
 	int rc;
 	DECLARE_LU_VARS(ldt, d);
 
-	OBD_CHECK_DEV(obd);
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
 	ldt = obd->obd_type->typ_lu;
 	d = obd->obd_lu_dev;
 	if (ldt != NULL && d != NULL) {
@@ -620,7 +631,9 @@ static inline int obd_cleanup(struct obd_device *obd)
 	int rc;
 	DECLARE_LU_VARS(ldt, d);
 
-	OBD_CHECK_DEV(obd);
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
 
 	ldt = obd->obd_type->typ_lu;
 	d = obd->obd_lu_dev;
@@ -668,7 +681,9 @@ obd_process_config(struct obd_device *obd, int datalen, void *data)
 	int rc;
 	DECLARE_LU_VARS(ldt, d);
 
-	OBD_CHECK_DEV(obd);
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
 
 	obd->obd_process_conf = 1;
 	ldt = obd->obd_type->typ_lu;
@@ -1280,7 +1295,9 @@ static inline int obd_notify(struct obd_device *obd,
 {
 	int rc;
 
-	OBD_CHECK_DEV(obd);
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
 
 	/* the check for async_recov is a complete hack - I'm hereby
 	   overloading the meaning to also mean "this was called from
@@ -1381,7 +1398,11 @@ static inline int obd_health_check(const struct lu_env *env,
 static inline int obd_register_observer(struct obd_device *obd,
 					struct obd_device *observer)
 {
-	OBD_CHECK_DEV(obd);
+	int rc;
+
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
 	down_write(&obd->obd_observer_link_sem);
 	if (obd->obd_observer && observer) {
 		up_write(&obd->obd_observer_link_sem);
@@ -1389,7 +1410,7 @@ static inline int obd_register_observer(struct obd_device *obd,
 	}
 	obd->obd_observer = observer;
 	up_write(&obd->obd_observer_link_sem);
-	return 0;
+	return rc;
 }
 
 #if 0
-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

