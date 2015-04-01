X-GM-THRID: 10576027713536
X-Received: by 10.180.126.37 with SMTP id mv5mr2098423wib.3.1427904806224;
        Wed, 01 Apr 2015 09:13:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.3 with SMTP id 3ls89770lai.36.gmail; Wed, 01 Apr 2015
 09:13:25 -0700 (PDT)
X-Received: by 10.112.138.233 with SMTP id qt9mr3614346lbb.2.1427904805690;
        Wed, 01 Apr 2015 09:13:25 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id o3si1048379wib.2.2015.04.01.09.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id dm7so58777243wgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=h8qa4B5PCijEcOBbSzIWZJcaLhNrpJE2jkEztEkJxfI=;
        b=fNys4MoowZiKhbTKQ5A6FVArv2QTY5oH8mlyPL1v7bRNcdaLmTVpYsq5Ev5Ya3b2RG
         3Eig0KZnUGrbIwkn6MxhaJjXHsXQYRhMhjx59uA8YvI75pt2Jqp7k6mqTjZuAum7k5sS
         sjBEXShUmXTemJx/SxSwBCzbWDmMvcO0CgeT0P9JBdnUNe6llc12A6FzJii2VjgAFsj7
         dkaoC7UZIe6RHf4e5QOAP5GSs+FNHd5zwWPeUWBwHXoLb3JQu+wlK/wSZwgvxVtpityp
         H2FcmWWjAisF5iW3yI61gi8rLQaWwCetadTjvsnpsoEtuy9qDsH1RoZHImWhf+CuK4j3
         CnVw==
X-Received: by 10.180.20.177 with SMTP id o17mr16123128wie.66.1427904805602;
        Wed, 01 Apr 2015 09:13:25 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id j7sm3817167wix.4.2015.04.01.09.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:13:24 -0700 (PDT)
Date: Wed, 1 Apr 2015 18:13:17 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: lustre: include: remove unused macros
Message-ID: <af78c5a6e724d770ba9dcfd21cf208fe6a250484.1427904237.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

OBD_CHECK_DEV and OBD_CHECK_DEV_ACTIVE have been replaced by static
inline functions. They are removed since they are not used anymore.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: No changes. The patch is part of a patchset, so it was resent with
them.

 drivers/staging/lustre/lustre/include/obd_class.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 3c444fa..9af2b43 100644
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
 	if (!(obd)) {
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

