X-GM-THRID: 6394267453866639360
X-Received: by 10.129.90.215 with SMTP id o206mr5994452ywb.101.1488781406824;
        Sun, 05 Mar 2017 22:23:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls1965942otw.5.gmail; Sun, 05 Mar 2017
 22:23:26 -0800 (PST)
X-Received: by 10.157.53.40 with SMTP id o37mr2128441otc.25.1488781406429;
        Sun, 05 Mar 2017 22:23:26 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si1194844pfa.4.2017.03.05.22.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 22:23:26 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so12164890pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 22:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=R94c1FxJtWOSJ5/TQTPOZsKH8UV3/LH4QLU/alg5htw=;
        b=T+Ug25AaXdN72sAnKfCodBvZjMC6chLsTVfUXbzgHXGNXPHZIacnpr2qfLMTF88uJH
         /R0t/Cbp9O9dX4DN6mAxztFTNPgL5bWcG2hk05Ck8o9ANG2REJLYDVJ0qxpO+7g44nKu
         mvggbW1MeIUL1wLiVkwRxnyersYSJ/58Ad0FQAOa9SkayovdyxtrbzR3bcApmcUs6SLA
         oHeFcSqnO8OxNzHY7Gf7Sb2J6YjFEphqCBqEUlDbT7meGPmGvioFJkqRhSMCfv0ppCi4
         AvprtkAtxEnn+/MIZZl8DEL5g/1T+oSHloAJjTigTAkTxx593fodpfelDGDkGiAxprqv
         4Tnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=R94c1FxJtWOSJ5/TQTPOZsKH8UV3/LH4QLU/alg5htw=;
        b=PPZVloW4YoF8qvgb05zIQpQXyD9oZAH6KPTawPwZuQL7gtY6/kVyC9lBbnG/3h1/Qh
         /DK5zudPL6CEFO4MDIr7fXp8Sb6KJXXHxWKlWdQjmYhscRmqA5+6G2sxgt9kHFbJmAly
         EwXUBPVomgJ76b7qQtHDAd7LBQhyUsI1ByyHR93PbX/u0j8ET1V63hfTthLm94lAYW6W
         HXb6Doyafcp9AijHqHMpolRQy21d6E1RERZpIFGmXTQQW64tHvaP5fIU3FcQ/kQ9zXFK
         VrhfnnAMqiXMaWne1g9T2QElgMqAzHUyif6MC4/be8ro2+QthuxG1pUPOAD7moD9crrx
         Q5gQ==
X-Gm-Message-State: AMke39kecsqjasvU1eUjgYprWPLMu4+gBha8pf2EjOdC3qM1q1Fp7nybwQ+7g0ggo7AOYw==
X-Received: by 10.98.200.136 with SMTP id i8mr18687746pfk.120.1488781406060;
        Sun, 05 Mar 2017 22:23:26 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id u78sm36769220pfa.101.2017.03.05.22.23.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 22:23:25 -0800 (PST)
Date: Mon, 6 Mar 2017 11:53:10 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: bcm2835-camera: replace kmalloc with kzalloc
Message-ID: <20170306062310.GA17005@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace two instances of kmalloc and memset with kzalloc in
bcm2835-camera

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 0f96ac8..cb8d129 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -169,8 +169,7 @@ static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
 	struct mmal_msg_context *msg_context;
 
 	/* todo: should this be allocated from a pool to avoid kmalloc */
-	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
-	memset(msg_context, 0, sizeof(*msg_context));
+	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
 	return msg_context;
 }
@@ -1881,8 +1880,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 		return -EIO;
 	}
 
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
-	memset(instance, 0, sizeof(*instance));
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 
 	mutex_init(&instance->vchiq_mutex);
 	mutex_init(&instance->bulk_mutex);
-- 
2.7.4


