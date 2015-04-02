X-GM-THRID: 10576027713536
X-Received: by 10.112.180.74 with SMTP id dm10mr11279915lbc.11.1427997628407;
        Thu, 02 Apr 2015 11:00:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.199 with SMTP id y7ls244409lal.63.gmail; Thu, 02 Apr
 2015 11:00:27 -0700 (PDT)
X-Received: by 10.112.17.105 with SMTP id n9mr10928450lbd.8.1427997627893;
        Thu, 02 Apr 2015 11:00:27 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id el6si1264259wib.0.2015.04.02.11.00.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 11:00:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id a2so114441007wia.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 11:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=lCkJdw0v4rG6DtXg78RhU5LE/0um/NuytikUgoitdbs=;
        b=RmLQEIrMMYPMkZRnNeKAaUeh3GELsUNwix7TJSEfss1ROYGprhX+sw45qHuArAbsBt
         kEmz0+mMQNQrhdtBqN3YpLsQKYb3m7SFv6RcLUsVjr24DLMeLyQ6D9MtmIpHASFRAwT5
         nR4dKV4t2NHa9d9pmRjHfwRC8rkkmoPGEwiurjBBpOevESBSe4Xxk6mSwitDOvmyGSSx
         9yM/zDeKbZmSqO7CHvxmmYnD2wqjF7vcAMTikdEnM/bloIaM5V5oSJ+cjggsNAIzUSQQ
         EhzcJVU+oa0aB9rE9owMkS4tFZqK71/g0I5x17du5MK/mINDavMu46UKdN4fqIKpsnhW
         C87g==
X-Received: by 10.194.174.106 with SMTP id br10mr97392088wjc.21.1427997627809;
        Thu, 02 Apr 2015 11:00:27 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.208])
        by mx.google.com with ESMTPSA id ub1sm8217135wjc.43.2015.04.02.11.00.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 11:00:27 -0700 (PDT)
Date: Thu, 2 Apr 2015 20:00:24 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/3] staging: lustre: include: replace
 OBD_CHECK_DEV_ACTIVE by obd_check_dev_active
Message-ID: <016b3a2c1c1f14f4d9690fdbb7154fa2aa066fd5.1427997204.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Static inline functions are preferred over macros. The inline function
obd_check_dev_active is introduced to replace OBD_CHECK_DEV_ACTIVE.
All functions that call obd_check_dev_active store the return values
and return them if they represent an error code.

Some of the changes were carried out manually while others were done
using coccinelle.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: removed unneeded parenthesis around the variable obd.
v3: v1 was sent as v2. Fixed that mistake.
v4: Fixed an issue in another patch in the patchset.

 drivers/staging/lustre/lustre/include/obd_class.h | 29 +++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 9167164..e533cff 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -361,6 +361,19 @@ do {							    \
 	}						       \
 } while (0)
 
+static inline int obd_check_dev_active(struct obd_device *obd)
+{
+	int rc;
+
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
+	if (!obd->obd_set_up || obd->obd_stopping) {
+		CERROR("Device %d not setup\n", obd->obd_minor);
+		return -ENODEV;
+	}
+	return rc;
+}
 
 #if defined (CONFIG_PROC_FS)
 #define OBD_COUNTER_OFFSET(op)				  \
@@ -901,7 +914,9 @@ static inline int obd_add_conn(struct obd_import *imp, struct obd_uuid *uuid,
 	struct obd_device *obd = imp->imp_obd;
 	int rc;
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, add_conn, -EOPNOTSUPP);
 	OBD_COUNTER_INCREMENT(obd, add_conn);
 
@@ -914,7 +929,9 @@ static inline int obd_del_conn(struct obd_import *imp, struct obd_uuid *uuid)
 	struct obd_device *obd = imp->imp_obd;
 	int rc;
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, del_conn, -EOPNOTSUPP);
 	OBD_COUNTER_INCREMENT(obd, del_conn);
 
@@ -948,7 +965,9 @@ static inline int obd_connect(const struct lu_env *env,
 	__u64 ocf = data ? data->ocd_connect_flags : 0; /* for post-condition
 						   * check */
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, connect, -EOPNOTSUPP);
 	OBD_COUNTER_INCREMENT(obd, connect);
 
@@ -970,7 +989,9 @@ static inline int obd_reconnect(const struct lu_env *env,
 	__u64 ocf = d ? d->ocd_connect_flags : 0; /* for post-condition
 						   * check */
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, reconnect, 0);
 	OBD_COUNTER_INCREMENT(obd, reconnect);
 
-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

