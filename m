X-GM-THRID: 6395563647379177472
X-Received: by 10.99.56.30 with SMTP id f30mr5968304pga.121.1489086360263;
        Thu, 09 Mar 2017 11:06:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls6799617otc.22.gmail; Thu, 09 Mar
 2017 11:05:59 -0800 (PST)
X-Received: by 10.200.46.171 with SMTP id h40mr2983041qta.12.1489086359896;
        Thu, 09 Mar 2017 11:05:59 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si1371035pfa.4.2017.03.09.11.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:05:59 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so3236802pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WxRcfjIdPMNXZZGv442lps15/Dtxs5nuKFslYKiucT0=;
        b=ZDhnN9+qBMGpdCF8QjnY/GR9l1QtFQQ/1Twt8be605qREgBabr/xFF2jQNMn5GcQ5T
         tlZcN4m4R++HYCh+6XJ9wLkcBO445c9yKdPynXKNPHtwnAqbEbzQ55+OSINyJsLKlr0K
         Yt8X6oKW8/fOSsLgkEi2UP4CCjUbtrqzEjRVvLeOc7gieKR2vBOEte5t76QSKMqG9ySC
         0AAEM07q93/NJ6aZLK4+LZepjjVBTlD7M/HTMG+Y6BuogtQiqJ0xju03qcjXdp1Usvha
         ZUrLwz7Ya7MM5nXZ3fzB2Ht5xoFimfcMq8ptbJfr3O+lsZN8aCvoSx+CIuU2j8p46qjn
         Rx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WxRcfjIdPMNXZZGv442lps15/Dtxs5nuKFslYKiucT0=;
        b=umbq3CV3d/qGmlitnRSiiiD1Rkp41Xgxjhl5ooItB8vFW8MpJBWw+Syo4eIltm5PH9
         ZiXQVfZWaanPTEWTf1nwN8U3DCT29zNOIivfBMMcp/teEzA7rklGW7L+AjIyMhpe33i+
         9ah7D70ArSfRsOkxBvUx49L8rlDfBcidw1JcDuIP7hhAhJK57S2scphX+fXgjoDjkUKa
         DX+GLrNleqxwk3w/pyaXlU/hV0OO6Xp4nIf5ay1Kc7CzvodIoUHNWrtrf3+XSTrHOhf/
         f7NW4QfoSgGZPr6vg3kY3SCD341zVI3Ntp+nMMGM0tWec6XAN7qX0lxyPi0OypQyKVa7
         UoXw==
X-Gm-Message-State: AMke39n62bGPLNVVYu0dOFnkJbmNGY86+WpSsuVXiP2NlaSybdsA6Kt5LvsLAJSb0ONxhg==
X-Received: by 10.99.67.1 with SMTP id q1mr15824432pga.210.1489086359664;
        Thu, 09 Mar 2017 11:05:59 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id 129sm13990509pgj.59.2017.03.09.11.05.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:05:59 -0800 (PST)
Date: Fri, 10 Mar 2017 00:31:36 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] staging: bcm2835-camera: use kernel preferred style
 for handling errors
Message-ID: <b06826a4db80065d93d795fdaa6272d9a072eceb.1489085851.git.aishpant@gmail.com>
References: <cover.1489085851.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489085851.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces NULL error values with error pointer values.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index f795137..d87e2df 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -263,7 +263,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
 	if (!msg_context)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	msg_context->instance = instance;
 	msg_context->handle =
@@ -273,7 +273,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 
 	if (!msg_context->handle) {
 		kfree(msg_context);
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 	}
 
 	return msg_context;
@@ -508,8 +508,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 
 	/* get context */
 	msg_context = get_msg_context(instance);
-	if (!msg_context) {
-		ret = -ENOMEM;
+	if (IS_ERR(msg_context)) {
+		ret = PTR_ERR(msg_context);
 		goto unlock;
 	}
 
@@ -836,8 +836,8 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	}
 
 	msg_context = get_msg_context(instance);
-	if (!msg_context)
-		return -ENOMEM;
+	if (IS_ERR(msg_context))
+		return PTR_ERR(msg_context);
 
 	init_completion(&msg_context->u.sync.cmplt);
 
-- 
2.7.4


