X-GM-THRID: 10576027713536
X-Received: by 10.180.91.76 with SMTP id cc12mr3296275wib.7.1427988104491;
        Thu, 02 Apr 2015 08:21:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.70 with SMTP id le6ls46008lac.50.gmail; Thu, 02 Apr
 2015 08:21:43 -0700 (PDT)
X-Received: by 10.152.19.67 with SMTP id c3mr10927866lae.7.1427988103911;
        Thu, 02 Apr 2015 08:21:43 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id i8si334138wif.1.2015.04.02.08.21.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 08:21:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id k4so18889242wiz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 08:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2jLn8/jkcvwmgr+p/k4v3ivlip8xrfOXzGgUZSINXrU=;
        b=fqVEl8E+8vR5+Pwz7KfVohl1T8xJm+PY03IGxMSUjkkPMh6Exd+bNLNyVm07g2vymh
         5ec1S5cvAMNCVrqhMyFwPIKvcH7Murfzmdvy91sjYvGvEf+Mfajw4ewK+nlghQuvYv+Z
         Ill6cSxm+WyDrtzqyBdZZGTC8Tz3sD8MQMYuqQ7hXjcF3evtHJwCoF8IRfCDUYlkkSFw
         vY/Flr1FCuIm1bPsoh3ywfMRGoU+9KYf3buwkgqJe7P0OP5aE5drV9vn7qfKyKEsuK0B
         LaQP6CqAA/Mhrc+vT7fY0bOGytIHpSLgll1u/88djpQBS1b2eaOfV0qVw4Dg+WX62I4O
         Voaw==
X-Received: by 10.180.89.148 with SMTP id bo20mr25117657wib.91.1427988103835;
        Thu, 02 Apr 2015 08:21:43 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.130])
        by mx.google.com with ESMTPSA id lg18sm30451964wic.23.2015.04.02.08.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 08:21:43 -0700 (PDT)
Date: Thu, 2 Apr 2015 17:21:39 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] staging: lustre: include: remove unused macros
Message-ID: <b1a984d9ac9c1d131acc31939625676f8c4ad500.1427987408.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

OBD_CHECK_DEV and OBD_CHECK_DEV_ACTIVE have been replaced by static
inline functions. They are removed since they are not used anymore.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: No changes. The patch is part of a patchset, so it was resent with
them.
v3: same as v2.

 drivers/staging/lustre/lustre/include/obd_class.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index a6dd147..b61e64d 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -333,14 +333,6 @@ void obdo_le_to_cpu(struct obdo *dobdo, struct obdo *sobdo);
 
 /* Ensure obd_setup: used for cleanup which must be called
    while obd is stopping */
-#define OBD_CHECK_DEV(obd)				      \
-do {							    \
-	if (!(obd)) {					   \
-		CERROR("NULL device\n");			\
-		return -ENODEV;				\
-	}						       \
-} while (0)
-
 static inline int obd_check_dev(struct obd_device *obd)
 {
 	if (!obd) {
@@ -351,16 +343,6 @@ static inline int obd_check_dev(struct obd_device *obd)
 }
 
 /* ensure obd_setup and !obd_stopping */
-#define OBD_CHECK_DEV_ACTIVE(obd)			       \
-do {							    \
-	OBD_CHECK_DEV(obd);				     \
-	if (!(obd)->obd_set_up || (obd)->obd_stopping) {	\
-		CERROR("Device %d not setup\n",		 \
-		       (obd)->obd_minor);		       \
-		return -ENODEV;				\
-	}						       \
-} while (0)
-
 static inline int obd_check_dev_active(struct obd_device *obd)
 {
 	int rc;
-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

