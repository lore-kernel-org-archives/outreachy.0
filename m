X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.71 with SMTP id oc7mr5451932lbb.13.1427896732618;
        Wed, 01 Apr 2015 06:58:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls161002wib.31.gmail; Wed, 01 Apr
 2015 06:58:52 -0700 (PDT)
X-Received: by 10.180.101.39 with SMTP id fd7mr1941475wib.0.1427896732229;
        Wed, 01 Apr 2015 06:58:52 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id na10si132022wic.0.2015.04.01.06.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 06:58:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gn9so67616777wib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 06:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ZyjSdh7vIuwVnQ4l+4EB5yiiDyspMFlborgNtZQcuHU=;
        b=dl22b+UrvwvUFVoGcb1EyoJ/OrabFQZK9FYOD0cw6nsRQz/FL8iZuntp3bDo4ExIum
         uBvYfaw4msHdpG1wHaAa7mRc00u+qbNVTxKTgx9eXVWkW8ryX+t+J0YoPaV8honMqr8Z
         5m0Wa9ff+9FsXERmRKmZkfeMFL8iJT9fF+/cEj72hd3zGvlK4fpTSzu6sHCdZKDq80iH
         HCQ5G3n5FPp0suqnsYRRrbyIh8BP9p0rwZaCE8epqAIeFf8bKnPm0eU3tKCTfGXhE/EC
         37wnhtRdu0CC1m9AgwTvetZaZQ3kq0L6plI38qco1ikFLJ7feQuQp50SO8clny7l0K2r
         ZziA==
X-Received: by 10.180.80.164 with SMTP id s4mr15028532wix.78.1427896732157;
        Wed, 01 Apr 2015 06:58:52 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id gy9sm3313348wib.12.2015.04.01.06.58.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 06:58:51 -0700 (PDT)
Date: Wed, 1 Apr 2015 15:58:39 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: lustre: include: replace OBD_CHECK_DEV by
 obd_check_dev
Message-ID: <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427894168.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Static inline functions are preferred over macros. Hence, the function
obd_check_dev was introduced. obd_check_dev replaces the macro
OBD_CHECK_DEV. All functions that call obd_check_dev store the return
values and return them if they represent an error code.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
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

