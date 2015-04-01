X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.91.76 with SMTP id cc12mr1931566wib.7.1427896765648;
        Wed, 01 Apr 2015 06:59:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.18.133 with SMTP id w5ls76169lad.22.gmail; Wed, 01 Apr
 2015 06:59:24 -0700 (PDT)
X-Received: by 10.112.212.33 with SMTP id nh1mr2464621lbc.4.1427896764919;
        Wed, 01 Apr 2015 06:59:24 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id g5si29000wix.1.2015.04.01.06.59.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 06:59:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id m2so36241439wix.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 06:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=a6gf4m75cb8KBtf3eKvHNl2J0ABVLvJyd9LI2ftkx/I=;
        b=I+aaFtAJJoKTDlwfX+8xnAL5eMtJvcbrQ6XD5iRYL9RrfDHHEJNgVeZZBORGwOjlTU
         tPlTVjGDt/I///wMJslKojnsu636//i4rBx9yR81h+PVqmsytUARhPV0eo6WUI59r4sY
         +8mQ90tr7PFTSnf1Sgb26c+BV+/TF8zTglNL7hZdNC8r+Os6BI9uAddg0ipcuUO0Lxer
         uYM8TVk5exxcRK21nlTnNLozi2mBTykuKXO29W6sU+rD2zwOdr2sC3D2N2Iz+jgtjzic
         ZknQafUP1OrDFXNNCBwW1y3cqjFjrcsoffuRkCigygfO7nYcOs9OEZReW6eTu/qwiMil
         jlUg==
X-Received: by 10.180.206.98 with SMTP id ln2mr15271181wic.94.1427896764791;
        Wed, 01 Apr 2015 06:59:24 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id hq4sm19781920wib.0.2015.04.01.06.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 06:59:24 -0700 (PDT)
Date: Wed, 1 Apr 2015 15:59:17 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: lustre: include: replace OBD_CHECK_DEV_ACTIVE
 by obd_check_dev_active
Message-ID: <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427894169.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Static inline functions are preferred over macros. The inline function
obd_check_dev_active is introduced to replace OBD_CHECK_DEV_ACTIVE.
All functions that call obd_check_dev_active store the return values
and return them if they represent an error code.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
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

