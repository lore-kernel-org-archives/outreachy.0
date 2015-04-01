X-GM-THRID: 10576027713536
X-Received: by 10.112.122.97 with SMTP id lr1mr8578925lbb.5.1427904582784;
        Wed, 01 Apr 2015 09:09:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.228 with SMTP id kt4ls110070lac.81.gmail; Wed, 01 Apr
 2015 09:09:42 -0700 (PDT)
X-Received: by 10.112.167.131 with SMTP id zo3mr9916420lbb.7.1427904582294;
        Wed, 01 Apr 2015 09:09:42 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id sf8si152089wic.2.2015.04.01.09.09.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:09:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id dm7so58700956wgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=GUl73aDmUysxcEiAD2NbMV6IZmY2PV/3b/fP63k5MaU=;
        b=npiGKaj5wHrIeh4s70ZjlVj2M+dCiOU11bP+nfZoGn1/R0iHJEsK1ejHDpk0bq+CKV
         iVgz1fRQQUIn9xYmNU8vrxfUgnbzYQXiwrTqbT3cSN2VLNflmzh3LCDA+EiBLWCL950C
         FuXOP7+Ma+cHiYs90TFGXRzerCfNTzi0LwxUj2rQIomYXICP3eFKOrlbb+afjeCvAiuv
         5OgeH6ij0Ac5VBDPz4Kcoxzg3YdUJa9Dt53Uam6jpDpyVKtMn0jXH++Nqctw8iuIaKjT
         tuVlhXoLiAIQUpx81qAwUXq9ks23iXhL+Tvnnx7fIRX9pE54uzOo5vvDEmdal5MI7pcR
         eWVg==
X-Received: by 10.180.218.200 with SMTP id pi8mr16613874wic.71.1427904582209;
        Wed, 01 Apr 2015 09:09:42 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id gt4sm3781568wib.21.2015.04.01.09.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:09:41 -0700 (PDT)
Date: Wed, 1 Apr 2015 18:09:35 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: lustre: include: replace OBD_CHECK_DEV by
 obd_check_dev
Message-ID: <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427904237.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Static inline functions are preferred over macros. Hence, the function
obd_check_dev was introduced. obd_check_dev replaces the macro
OBD_CHECK_DEV. All functions that call obd_check_dev store the return
values and return them if they represent an error code.

Some of the changes were carried out manually while others were done
using coccinelle.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: removed unneeded parenthesis around the variable obd.

 drivers/staging/lustre/lustre/include/obd_class.h | 33 ++++++++++++++++++-----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 5314f6f..ddc212a 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -341,6 +341,15 @@ do {							    \
 	}						       \
 } while (0)
 
+static inline int obd_check_dev(struct obd_device *obd)
+{
+	if (!(obd)) {
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

