X-GM-THRID: 6394986223504457728
X-Received: by 10.157.16.17 with SMTP id h17mr1744952ote.139.1488948770362;
        Tue, 07 Mar 2017 20:52:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls2482665otb.2.gmail; Tue, 07 Mar
 2017 20:52:50 -0800 (PST)
X-Received: by 10.157.33.244 with SMTP id s107mr1873964otb.115.1488948769961;
        Tue, 07 Mar 2017 20:52:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si413359pfd.3.2017.03.07.20.52.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:52:49 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so2179617pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 20:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pF59nDhZo0tqIQQR+QSQxq3RnfICzo033EDXmWfcERE=;
        b=BbLvsG7/RuqmI9hAWI0vYn1T4MYTXp8rdyurzZ8Pm2RfvTPR3K/lrEpGWYnv3QX+7G
         xmw19uZLyS5OyTcxNPixbWb2ei0DN4EQp44gxnO8yzChN1EfaPBBF0FH9wAXHcPQ1ptU
         KYZpPKC/J7lRC+ru6CL/AHX/oOhVyT8LZ4BaU5yACcA1pp1n6VfSpsrzW5d+bIFWVw7p
         o5rQM0Javz1+ZZ2KHaxtoX6uo3XsnAK0xfq2zWXdAJ05z/8iE0T3ilARGdcR4QwNC4B8
         owDCB0KFOAHX3ecopAGlWaJLysEId1kE6J5CuDiF/d561MlVUr61lsx+F5ER5r4ddr/E
         SAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pF59nDhZo0tqIQQR+QSQxq3RnfICzo033EDXmWfcERE=;
        b=S8Y6648obFOLIUfes9hTLWk9R37XWmDNdFlKCmE1foaJ5exgHE/7HQJJokKF0ap0oD
         qrGRi/P0NMrPQFs8jpoDTqymxQf1oMS81ZT4ATRPxrX1tsZU5K1LLGTxaDfI2yR6apbF
         iomSDWPKEzwY9BRO3kqqfDro+5sPeH0A6NL/2JRuehxmHBjw1V2Rr5a65L2hzQFG53LV
         1Q8B8SX1M8UzXuYFj5wUsInjsLc+FiovlrmCz5e2yHJwj7yrXCT373xjmaH7xZ0H21AI
         kOCVW5Tjd+NIcj3RjgE7uamnFA8X6UP+J2B1eAplPI0VrnQxcHvjdq/a5ouERS+ex5gi
         wQPg==
X-Gm-Message-State: AMke39ktBFN52HGvQVBk2SZwsXEMi9xFY6uHFobpsgzZEfC2c54Kx9agKGYsVnO7eR8DLw==
X-Received: by 10.84.236.74 with SMTP id h10mr5783851pln.13.1488948769356;
        Tue, 07 Mar 2017 20:52:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id t67sm2722208pfd.76.2017.03.07.20.52.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:52:48 -0800 (PST)
Date: Wed, 8 Mar 2017 10:14:28 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: bcm2835-camera: replace get_msg_context() with
 kzalloc
Message-ID: <cde948e8a5e5fcb53544d81018d67d48b7e0d141.1488948214.git.aishpant@gmail.com>
References: <cover.1488948214.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488948214.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces function get_msg_context(..) with a kzalloc at
the caller. This is safe as the only usage found in mmal-vchiq.c has been
refactored.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../staging/vc04_services/bcm2835-camera/mmal-vchiq.c    | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index ca6e9eb..1650bbf 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -163,18 +163,6 @@ struct vchiq_mmal_instance {
 	struct vchiq_mmal_component component[VCHIQ_MMAL_MAX_COMPONENTS];
 };
 
-static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
-						*instance)
-{
-	struct mmal_msg_context *msg_context;
-
-	/* todo: should this be allocated from a pool to avoid kmalloc */
-	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
-	memset(msg_context, 0, sizeof(*msg_context));
-
-	return msg_context;
-}
-
 static void release_msg_context(struct mmal_msg_context *msg_context)
 {
 	kfree(msg_context);
@@ -395,8 +383,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	if (mutex_lock_interruptible(&instance->bulk_mutex))
 		return -EINTR;
 
-	/* get context */
-	msg_context = get_msg_context(instance);
+	/* todo: should this be allocated from a pool to avoid kzalloc */
+	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 	if (!msg_context) {
 		ret = -ENOMEM;
 		goto unlock;
-- 
2.7.4


