X-GM-THRID: 10576027713536
X-Received: by 10.112.162.135 with SMTP id ya7mr9511740lbb.14.1427896803715;
        Wed, 01 Apr 2015 07:00:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.169 with SMTP id ej9ls960356wid.50.canary; Wed, 01 Apr
 2015 07:00:03 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr1923762wib.6.1427896803381;
        Wed, 01 Apr 2015 07:00:03 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id i8si130119wif.1.2015.04.01.07.00.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 07:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id e14so54201447wgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 07:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6vKImzQ2NVwI6RH+g0uM610JQdVqM5IZWkZKIwPFwXs=;
        b=fOWsnkggjy3sAXtWvUyYGgWCLPudhFPa5HaMdlaENKf0dR8JgbJEjzufDpunbkctU8
         5qAN2fQZbMHEZRRX+TmdF+RsGALS8eHEBsP6ocdgpkRJ1vDGgAvKbNn0fyhLCx/7/KVJ
         XpKqYZICdX01V0NOBoZ+gocHK5BfFMisonJjNyoxOuzW51qaKZavQxvnXtpOMg288emN
         bNC0RTqjFgqON6fzDCHJIgQaDtaZfyWjqe63qzTWikM09E+dZ0WEatFR1xHDYrZLvUJW
         9+XbmDe7FODbXahl95rDJdsS7iVqJFAPmdMYu+i1JjUWlXUM5PUSWc7dWOBTEawcAxS1
         N8Nw==
X-Received: by 10.180.107.198 with SMTP id he6mr15859764wib.68.1427896803308;
        Wed, 01 Apr 2015 07:00:03 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id e2sm2817420wjy.46.2015.04.01.07.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 07:00:02 -0700 (PDT)
Date: Wed, 1 Apr 2015 15:59:56 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: lustre: include: remove unused macros
Message-ID: <af78c5a6e724d770ba9dcfd21cf208fe6a250484.1427894169.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

OBD_CHECK_DEV and OBD_CHECK_DEV_ACTIVE have been replaced by static
inline functions. They are removed since they are not used anymore.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
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

