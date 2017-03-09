X-GM-THRID: 6395563647379177472
X-Received: by 10.13.226.145 with SMTP id l139mr5873647ywe.95.1489086344325;
        Thu, 09 Mar 2017 11:05:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls1940828itb.14.gmail; Thu, 09 Mar 2017
 11:05:43 -0800 (PST)
X-Received: by 10.99.111.6 with SMTP id k6mr6577364pgc.131.1489086343557;
        Thu, 09 Mar 2017 11:05:43 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si1377918pfx.8.2017.03.09.11.05.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:05:43 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so7702586pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Q5cWUPcLEVm++POznkcAkYwm7Zfx5uKeYIyVdcnxiTI=;
        b=bunbNJAT1RxX3XdvXpP/EHg/s7o+MEG8qLTFv9jd1HpIxfInOw48146qxMGtUQFjPv
         AgnV7lejU9kfCWew8EwSR1vJYhMa5CcDlPmaGbZpBQAF8tbiZFgRLTPtyw5tMvbMPLS2
         N+uD15tqsER1Txy1peAkPzIvKkZrMpwjjm7rOowYZO+LPbPIMfVK3r+ecgFoakzZhm2T
         /qNjkdNoAGviDnfglXu/hx3N+4kZsy73a6yPPhCo2XCe57lQEwjnMbMDXDP8PQBuKWWQ
         2cbQqk4I1/E3zMyC2CpiVjLZWgPBOxaDevwAzVQetO0AoY5c89gNfSsVLWWfUDrezT3J
         RW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Q5cWUPcLEVm++POznkcAkYwm7Zfx5uKeYIyVdcnxiTI=;
        b=o6BH8HZ6cn6y6filmG31grHJ3cxdp+Dz0cixSL1579Mld+/kvpL45myqJvaBAtk0/v
         lXQlRCy3aAw72D6VvoPm0HkSOjaNOFVpMHk2cEGdckKm38ZqzrM7U1N8x1Cd8mCMxDOC
         O+aHAbN1MqY9OPJW9+vHHngc2D80Ign7a+iElM1+4SXKdU132YT4A95sTtPkoQOCve7h
         4eW+vmZKj266jUYjtyA9eLtKXUeL5x7iCPKGF42wClK23Tf8Y2/Vfd/zXRZttgxSQAly
         xKYrHJ+CF/txvScj/gaxEihqFo4lHBqaNGPe3rQCAJlKM8SJStSG+MAXM3YAnQeBYllX
         MWUQ==
X-Gm-Message-State: AMke39mRlDMZhUEfpDN/TDXNL6GslKi56QBdjHRF6ROtBNxEdS0HWpzbKsbxu6rfu6KF8w==
X-Received: by 10.99.144.73 with SMTP id a70mr15560945pge.187.1489086343187;
        Thu, 09 Mar 2017 11:05:43 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id e13sm14035277pgf.48.2017.03.09.11.05.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:05:42 -0800 (PST)
Date: Fri, 10 Mar 2017 00:31:20 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/3] staging: bcm2835-camera: replace kmalloc with kzalloc
Message-ID: <e2918dbe660a2b53f23bc949f6ad82a2379d1552.1489085851.git.aishpant@gmail.com>
References: <cover.1489085851.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489085851.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces kmalloc and memset with kzalloc

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 4eead48..f795137 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -259,13 +259,12 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 {
 	struct mmal_msg_context *msg_context;
 
-	/* todo: should this be allocated from a pool to avoid kmalloc */
-	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
+	/* todo: should this be allocated from a pool to avoid kzalloc */
+	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
 	if (!msg_context)
 		return NULL;
 
-	memset(msg_context, 0, sizeof(*msg_context));
 	msg_context->instance = instance;
 	msg_context->handle =
 		mmal_context_map_create_handle(&instance->context_map,
@@ -2008,12 +2007,11 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 		return -EIO;
 	}
 
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 
 	if (!instance)
 		return -ENOMEM;
 
-	memset(instance, 0, sizeof(*instance));
 	mutex_init(&instance->vchiq_mutex);
 	mutex_init(&instance->bulk_mutex);
 
-- 
2.7.4


