X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.93.203 with SMTP id cw11mr1859207lbb.0.1427997560272;
        Thu, 02 Apr 2015 10:59:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.164 with SMTP id e4ls205044laf.18.gmail; Thu, 02 Apr
 2015 10:59:19 -0700 (PDT)
X-Received: by 10.112.14.38 with SMTP id m6mr5202185lbc.12.1427997559690;
        Thu, 02 Apr 2015 10:59:19 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id i8si357678wif.1.2015.04.02.10.59.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 10:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id di4so86639069wid.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 10:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5H/8clKbfp+elexsrL77lWT1Ms4vEkVihnmtbur9cVw=;
        b=Vlmpe3uzcTz3PDiXoKoW4WzcEK5Os0hHE2mYYNK0LhjZoKjygtRQxxFsV1AGnm5Hlj
         R7khZRrRowMV7bYr0lH/IuHSJSUBBMs8yYumN1megwtQ2/gquLcR1UgazcX8C8Qcz0My
         4grPVzRmfIkNibXWoPJMhrA2w2/Y2OupvUag7TSqFNyqEWWcqxSCPgOFyOwDI+AQMZU+
         7HX5U04Lb5Om4HwhJSC1O/B6GMViMlKNn/2x51Bax8KHhDR1pm+OhR3QGsObidgMQUlc
         ewXwh0ySHGl7+F6tDJeNTClijBC279xdMLVRHXIhLXlyEvYWstAUaaGJFcyiZlWfUQxZ
         k8/g==
X-Received: by 10.194.62.74 with SMTP id w10mr94453967wjr.95.1427997559609;
        Thu, 02 Apr 2015 10:59:19 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.208])
        by mx.google.com with ESMTPSA id hl8sm8212928wjb.38.2015.04.02.10.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 10:59:18 -0700 (PDT)
Date: Thu, 2 Apr 2015 19:59:15 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/3] staging: lustre: include: replace OBD_CHECK_DEV by
 obd_check_dev
Message-ID: <9908ba084f7d3ec8810d1ffc4bed07266abf2bda.1427997204.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
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
v3: v1 was sent as v2. Fixed that mistake.
v4: removed return statement change

 drivers/staging/lustre/lustre/include/obd_class.h | 31 +++++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 5314f6f..9167164 100644
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
-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

