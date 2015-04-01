X-GM-THRID: 10576027713536
X-Received: by 10.112.166.164 with SMTP id zh4mr7055532lbb.20.1427904726593;
        Wed, 01 Apr 2015 09:12:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.229 with SMTP id el5ls188978wid.43.gmail; Wed, 01 Apr
 2015 09:12:06 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr2083024wib.6.1427904726244;
        Wed, 01 Apr 2015 09:12:06 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id i8si154556wif.1.2015.04.01.09.12.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gn9so72801118wib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=J+qiWsCICC7pZCcYDJdx4Rg+uzeiH5vEShuUgEyxYo8=;
        b=BbbJq4Aa9fwGRas2LjHbELcbNBuOsz1tH0AL6pwCPbqSLHDqnrvHUbx2E+kTIlL6tQ
         yvR39XUBG+1AgP/pfGW3HVPMLGoy2OsYg6EuAV9W3Tga8EVeV1P49eF+S8+7YlaxCiJn
         IjYYnTFULPMD9bXtyYI4raoPVrozncsNsDS2J9PHeHTuDKOD+1zCt7P6eMiDcJxR1pFE
         sYNkTCaT8M5owk6rztRA6j/W3cLaCtn2kUALYTLcGNt75yh++9f5B7sctZB5yrDJOzVa
         sWpxC2TGK66P4b+nrkft8mcV3daLcET3x60l0dLz09C2+vViWZ6rWdVk+VByp6sa1RLe
         +0vA==
X-Received: by 10.180.20.7 with SMTP id j7mr15832365wie.47.1427904726145;
        Wed, 01 Apr 2015 09:12:06 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id m4sm3320176wjb.25.2015.04.01.09.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:12:05 -0700 (PDT)
Date: Wed, 1 Apr 2015 18:11:55 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: lustre: include: replace
 OBD_CHECK_DEV_ACTIVE by obd_check_dev_active
Message-ID: <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427904237.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
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

 drivers/staging/lustre/lustre/include/obd_class.h | 28 +++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index ddc212a..3c444fa 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -361,7 +361,19 @@ do {							    \
 	}						       \
 } while (0)
 
+static inline int obd_check_dev_active(struct obd_device *obd)
+{
+	int rc;
 
+	rc = obd_check_dev(obd);
+	if (rc)
+		return rc;
+	if (!(obd)->obd_set_up || (obd)->obd_stopping) {
+		CERROR("Device %d not setup\n", (obd)->obd_minor);
+		return -ENODEV;
+	}
+	return rc;
+}
 #if defined (CONFIG_PROC_FS)
 #define OBD_COUNTER_OFFSET(op)				  \
 	((offsetof(struct obd_ops, o_ ## op) -		  \
@@ -901,7 +913,9 @@ static inline int obd_add_conn(struct obd_import *imp, struct obd_uuid *uuid,
 	struct obd_device *obd = imp->imp_obd;
 	int rc;
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, add_conn, -EOPNOTSUPP);
 	OBD_COUNTER_INCREMENT(obd, add_conn);
 
@@ -914,7 +928,9 @@ static inline int obd_del_conn(struct obd_import *imp, struct obd_uuid *uuid)
 	struct obd_device *obd = imp->imp_obd;
 	int rc;
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, del_conn, -EOPNOTSUPP);
 	OBD_COUNTER_INCREMENT(obd, del_conn);
 
@@ -948,7 +964,9 @@ static inline int obd_connect(const struct lu_env *env,
 	__u64 ocf = data ? data->ocd_connect_flags : 0; /* for post-condition
 						   * check */
 
-	OBD_CHECK_DEV_ACTIVE(obd);
+	rc = obd_check_dev_active(obd);
+	if (rc)
+		return rc;
 	OBD_CHECK_DT_OP(obd, connect, -EOPNOTSUPP);
 	OBD_COUNTER_INCREMENT(obd, connect);
 
@@ -970,7 +988,9 @@ static inline int obd_reconnect(const struct lu_env *env,
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

