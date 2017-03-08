X-GM-THRID: 6394986223504457728
X-Received: by 10.129.141.7 with SMTP id d7mr1832598ywg.83.1488948783374;
        Tue, 07 Mar 2017 20:53:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls2263926oth.45.gmail; Tue, 07 Mar
 2017 20:53:03 -0800 (PST)
X-Received: by 10.157.19.91 with SMTP id q27mr1493748otq.2.1488948783060;
        Tue, 07 Mar 2017 20:53:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si408042pfb.5.2017.03.07.20.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:53:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so2398823pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 20:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WWNYlFWldg0KZ05+Q7zM80TtQ77EZnN+TsD1/misv54=;
        b=mggwDMK4bFPIAr4/D6hI1Art5hMm+sFYf+kq0ap7R+f8QQEJpgaYWkeEC/EZgNMGJ7
         OY9du0yvnG7K+sbADVwpTcOaYR5EnsGbMIV4XpQ58GMIZk2F24QOgQVsCd2ML8hgtV0U
         qaOLw9NEvp2Z/pCLMhnE4zRKZpT+yx/eMp7WmtQKud3oMbqwgcnyt4nMpQPrlyt1j2EV
         lvau68BBZa5gC059Qz2Bq0U5wMT5rJphfrE8PaCPD/YWmRggD7U5TzJ0HoxjApaPtYUZ
         fCwxjA7rZ6CLs5sCU2l5zD5rcIx96B0yQpR31eU3DtqbJ5SdCIY6ZjCcIuraaIQGM8V8
         HRdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WWNYlFWldg0KZ05+Q7zM80TtQ77EZnN+TsD1/misv54=;
        b=fdtL1rqK4fGdrbeXImWfH7kMBpY1QAVoJu1SmBc7+muovuCcL6iI10aQDyqN+khPZF
         rX/UnhjQMoYVDpkpw1jg8IN8uTC5jMGsQ9T0EzmSoh1Tnw/iGiiWUHaeu+jD75oEpA3S
         3YzGq4M5pkyvS8OOvSejec/J+u2PN6bwFFuOe5fPjMv166lx5ZF9XInhXMYgzKQUEfF8
         /nLaWti6b8VoR7UtoQ04xQsBJEwOZnqtyGiBSW1tKUuA+xBAtJNDo9LUM32iHjJP72EO
         KadIJtA3+iMbRDeCJ13gGXtqm9ake21QWr5WUQca6bGJQLwqBWGa7zH2XHttFRRrtG8M
         0RTw==
X-Gm-Message-State: AMke39lBRqLQhn6cfScxRQmDvoptfMgVSjzG+hPv+WJzlw6QZDoR/HTkm52+DdjaP7G/yQ==
X-Received: by 10.98.139.195 with SMTP id e64mr4794536pfl.86.1488948782691;
        Tue, 07 Mar 2017 20:53:02 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id a16sm2716910pgd.62.2017.03.07.20.53.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:53:02 -0800 (PST)
Date: Wed, 8 Mar 2017 10:14:43 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: bcm2835-camera: replace release_msg_context()
 with kfree
Message-ID: <9013e0c8c0f960b553a4ebd53ded11b22dfda259.1488948214.git.aishpant@gmail.com>
References: <cover.1488948214.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488948214.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces function release_msg_context with a
kfree(msg_context).

Removed the comment /* todo: is this correct error value? */ since
ret = vchi_queue_kernel_message(...) returns either VCHIQ_ERROR (-1) or
VCHIQ_SUCCESS (0), so the check if (ret != 0) before kfree is correct.
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 1650bbf..4aea9da 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -163,11 +163,6 @@ struct vchiq_mmal_instance {
 	struct vchiq_mmal_component component[VCHIQ_MMAL_MAX_COMPONENTS];
 };
 
-static void release_msg_context(struct mmal_msg_context *msg_context)
-{
-	kfree(msg_context);
-}
-
 /* deals with receipt of event to host message */
 static void event_to_host_cb(struct vchiq_mmal_instance *instance,
 			     struct mmal_msg *msg, u32 msg_len)
@@ -199,7 +194,7 @@ static void buffer_work_cb(struct work_struct *work)
 					    msg_context->u.bulk.pts);
 
 	/* release message context */
-	release_msg_context(msg_context);
+	kfree(msg_context);
 }
 
 /* enqueue a bulk receive for a given message context */
@@ -437,10 +432,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 					sizeof(struct mmal_msg_header) +
 					sizeof(m.u.buffer_from_host));
 
-	if (ret != 0) {
-		release_msg_context(msg_context);
-		/* todo: is this correct error value? */
-	}
+	if (ret != 0)
+		kfree(msg_context);
 
 	vchi_service_release(instance->handle);
 
-- 
2.7.4


