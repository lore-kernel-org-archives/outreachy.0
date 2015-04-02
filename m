X-GM-THRID: 10576027713536
X-Received: by 10.180.90.175 with SMTP id bx15mr3430576wib.3.1427997680272;
        Thu, 02 Apr 2015 11:01:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.198 with SMTP id ao6ls229654lac.103.gmail; Thu, 02 Apr
 2015 11:01:19 -0700 (PDT)
X-Received: by 10.112.98.38 with SMTP id ef6mr10918899lbb.3.1427997679738;
        Thu, 02 Apr 2015 11:01:19 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id el6si1264269wib.0.2015.04.02.11.01.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 11:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id k4so23385088wiz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 11:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tLk8THHfLvcpBpeCr3d9xZTwcwKaHziHcITfMGTNpTM=;
        b=grz6ejC7VoO31RUB85+yLkhvbKb/HfiEoq5iUIrQyTgFJApZMftOCf0TkPkJI2VENf
         B56kxmUXezsh5NspGvGGFyb8LSDfPtnYUwFzlNl2CdoEkK4B6a518UMXGiuFPT+7i0Ga
         ZMWJNtx8Tj/kTug/9w4LTpsPHWFvYi83v1lNhqF105eP+8YYTz7EWFnO/ISCYFMNjn0G
         QwElh2Mq9eiiwZ3AFou3J8ZP8cod8tFaIO0KnZn+nze8YE50lXAhYcGS8/Ke8LwEQNVQ
         0Q3qUHmgjAzy+DFQhgB3IhT6E/gCakX+mf9VxYx7CoUfdJRkUkL2hVk98fBBWv3pYmOB
         Oo9Q==
X-Received: by 10.194.210.103 with SMTP id mt7mr97781472wjc.103.1427997679657;
        Thu, 02 Apr 2015 11:01:19 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.208])
        by mx.google.com with ESMTPSA id ff4sm20432521wib.9.2015.04.02.11.01.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 11:01:18 -0700 (PDT)
Date: Thu, 2 Apr 2015 20:01:15 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 3/3] staging: lustre: include: remove unused macros
Message-ID: <8fbd22c2dce5207731bca29e68fc1bf20f278478.1427997204.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

OBD_CHECK_DEV and OBD_CHECK_DEV_ACTIVE have been replaced by static
inline functions. They are removed since they are not used anymore.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2-4: resend becuase other patches in the patchset were changed.

 drivers/staging/lustre/lustre/include/obd_class.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index e533cff..34b5fa3 100644
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

