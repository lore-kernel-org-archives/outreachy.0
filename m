X-GM-THRID: 6394401254530875392
X-Received: by 10.157.15.214 with SMTP id m22mr582623otd.104.1488906656967;
        Tue, 07 Mar 2017 09:10:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.215 with SMTP id d206ls3370988itb.17.canary-gmail; Tue,
 07 Mar 2017 09:10:56 -0800 (PST)
X-Received: by 10.107.40.18 with SMTP id o18mr652160ioo.6.1488906656154;
        Tue, 07 Mar 2017 09:10:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si119320pfz.1.2017.03.07.09.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:10:56 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so729488pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=CfobgKTzJIz11M7tiBRSx6G/cxlCI1THkEpBhj2I7lghHaB5YnXwkBwWTTsKMWnDYl
         aM4GQCed1qcxnr9W7z9mYHkcg5nfzuP0Q2R8wVd+2EM76iyOZtF/OFjHSHP/UB9yegG/
         zlun5jf12hkVwWs+Dz1zarGxEw9tzowNVWKigy1br09yYeZYKcYARnNMXQemYcEIsNXJ
         4qMiyG8x5yaNkhpFXOSbYYZtUhjocUfgz4yNu3MU6speo4ctTfRW753EFk8m3DdHf0WX
         TxT+0hzWsdg5VUogAbmoA7XYTnjRTuIfoxvKIgQN8D+MFnbW3cJlrVpM18B8DsAVg69z
         mVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=WSIP4BNNDci7XWw+I0nTRCre1xWjOxOnYurGksf1F5l9irgBBRluNikChgF9H4Yu4R
         1w44mmM4Wclmh9plv18CQ2wsm5h3fxaKSNbsH5DseASip9B7fs1iCzPK8vC0yl2WrOhY
         tB2lmnCSSsDR7wQnlsqCgfU0kRrbUIym9dqLNZTUD8VGYPBnkzmaYvvXdcseB4g7eHr3
         Nd7n5aGGvmyYXvD33LRfw+dmN30844GlMSwXh0shIY6qx3d6bxLJzjATuN3RmpLxLKqH
         igpYvkVEUgEQywHF/ZKr3HmjCEpGs1hMxZzV1H6lo44jaWe8+620Wcu9SfUNks9ntJXC
         Iitw==
X-Gm-Message-State: AMke39mI8mocBPO0ipd29yeyirGt4BrlvJK0i98QkYyashBXXmYHqR4T8lWUJOWNYNaT/g==
X-Received: by 10.84.231.133 with SMTP id g5mr1877441plk.59.1488906655877;
        Tue, 07 Mar 2017 09:10:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id c124sm932067pga.63.2017.03.07.09.10.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:10:55 -0800 (PST)
Date: Tue, 7 Mar 2017 22:40:50 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <ef62fdaf5706c45f9bed537b1624b1c99dc28467.1488906373.git.aishpant@gmail.com>
References: <cover.1488906373.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488906373.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace kmalloc and memset with kzalloc.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c54bef3..005e287 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -290,11 +290,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		return NULL;
 	}
 	/* Allocate memory for this instance */
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
 		return NULL;
 
-	memset(instance, 0, sizeof(*instance));
 	instance->num_connections = num_connections;
 
 	/* Create a lock for exclusive, serialized VCHI connection access */
-- 
2.7.4


