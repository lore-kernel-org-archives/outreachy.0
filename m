X-GM-THRID: 6394401254530875392
X-Received: by 10.129.175.31 with SMTP id n31mr7480893ywh.30.1488829595997;
        Mon, 06 Mar 2017 11:46:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls1532642otd.0.gmail; Mon, 06 Mar
 2017 11:46:35 -0800 (PST)
X-Received: by 10.129.153.65 with SMTP id q62mr941296ywg.23.1488829595609;
        Mon, 06 Mar 2017 11:46:35 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si220192pfz.1.2017.03.06.11.46.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:35 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so7649505pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=VZ0YHcHlP38/qJblILzjE6Gu+tNgCFDNkn3Y75BReA5ykuuom8WLaxePMyD+tZ9lQo
         qgKCQ7wuPADk44r/A9JsX3vDl+4qo0TdPjchnPD0VUMls+W8n5Mx7sEWEjdwrp00jDx7
         saFcXBUwqn54RAQrkvopBiajJ1y1t45iocxWjRY9js+SrZPIFTRr/ofL8PPeOK62BSLB
         lQqxRVC2dsrtyTvJrHb9+Od5y45L5fFTMyHczSwX2+V8Zbwm194x9PXFMWDzWEWm5NZV
         AOYozn3r3dT7tWQyWrx27XqcdtNiNO+1i7g/6mCA96sK2606jND8JfouT1xdd9RVS/VF
         TBNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=HeWh6Go9l0+5f7BVfTJPCVBfd838O3uIZndEtGlK9RHbhqkqCKQwFGpNQ8UxO4Q2fM
         +C0WwjBcreO3R+ERAbBPzBdoemYcVHWvsbLw6zzvn+nhYYbC6kyHKAhYPMgAD7Sgksrr
         Wrl5MKVdqXdWdSRJn9tqkpn7NqRogCQdB7xTegT/EKGWOOm+yGWwUR+KYjXdUz9K7fDU
         sCrc7FXz7bKRZ3c74DBVTquqkVKDwfrAm3gluqx0cVuLGcFwONowUDcIc5zbSRuOVn4y
         4CBATeV8fq/+aTzy07MK2jJXd4ikQL0INiYj0Jx60rkfeCfu5iEKg0h4WWhlvEkVRrSV
         BBEg==
X-Gm-Message-State: AMke39kOrk5Ad6tH7c7BMgnJse6B/pZ9SpnfozECA5CBelMNfM9E1jkIC8iOhknDt+vFzA==
X-Received: by 10.84.253.15 with SMTP id z15mr29459064pll.142.1488829589351;
        Mon, 06 Mar 2017 11:46:29 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id d10sm41166340pfl.59.2017.03.06.11.46.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:28 -0800 (PST)
Date: Tue, 7 Mar 2017 01:16:25 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <f92aa17557abb2764c31fba1d3bc4a89d291d885.1488829304.git.aishpant@gmail.com>
References: <cover.1488829304.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488829304.git.aishpant@gmail.com>
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


