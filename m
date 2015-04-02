X-GM-THRID: 10576027713536
X-Received: by 10.112.138.233 with SMTP id qt9mr4820907lbb.2.1427988032368;
        Thu, 02 Apr 2015 08:20:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.172 with SMTP id dd12ls244221lad.53.gmail; Thu, 02 Apr
 2015 08:20:31 -0700 (PDT)
X-Received: by 10.152.37.231 with SMTP id b7mr3765638lak.5.1427988031804;
        Thu, 02 Apr 2015 08:20:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id c8si116009wiw.1.2015.04.02.08.20.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 08:20:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id a20so88707895wgr.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 08:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0vhD9sacj6XF/iR8lvt3FM89cQRd/r7lzNAPNZ5irHI=;
        b=dTgZH5D0Ad9kkhEtyi+hKpHLSaTM7Hn3uZ2ciZNBx4eH+YvA3F87y7/QPHCK41UwKY
         8/BX9KXsu7tY9UZ+cmCar7iQDUIafT9P8XuLTPss6k0uZ8r37I0nYsGRWs5wZWugru+g
         mExcsXaxd9oUyijZ0iHvoC33luPmGVKHScf24qjW2WI63MS857Nir1GGJrykUhsjBGta
         G/tbOI6SiI9vFRcFnxBFDxTIweKViw91yxK+wX0rGmUeLKnpehygfha/6WVv87ojDVid
         4fC4UC2PufTzGYisuFU8ynTk0ytJWKK7RDvpjx7MS8WvHh7dRsopqvBNJKffrDadUx1D
         cGRg==
X-Received: by 10.180.38.15 with SMTP id c15mr25763468wik.74.1427988031721;
        Thu, 02 Apr 2015 08:20:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.130])
        by mx.google.com with ESMTPSA id r14sm8150603wiv.13.2015.04.02.08.20.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 08:20:31 -0700 (PDT)
Date: Thu, 2 Apr 2015 17:20:24 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] staging: lustre: include: replace
 OBD_CHECK_DEV_ACTIVE by obd_check_dev_active
Message-ID: <7a5e2ab99e6a197d9783fed56db1f2e9007187d2.1427987408.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
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
v3: v2 was sent as v1. Fixed that mistake.

 drivers/staging/lustre/lustre/include/obd_class.h | 29 +++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 76f55d3..a6dd147 100644
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

