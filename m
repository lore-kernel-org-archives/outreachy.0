X-GM-THRID: 6394401254530875392
X-Received: by 10.157.11.109 with SMTP id p42mr2770872otd.14.1488984533045;
        Wed, 08 Mar 2017 06:48:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.140 with SMTP id s12ls1059336ioi.15.gmail; Wed, 08 Mar
 2017 06:48:52 -0800 (PST)
X-Received: by 10.107.191.68 with SMTP id p65mr2325221iof.102.1488984532245;
        Wed, 08 Mar 2017 06:48:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si615646pfb.5.2017.03.08.06.48.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:48:52 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so4012359pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=UylPsTDUfu7vbuiqMNf0B/0pUyd4NY7W72vvuy0BCcOlaCBUSA7gW4G2/ips9MU7zO
         WLLWHUFnFYPIhnpC6joK7SkqYuY61H+SJEkxbqudJuK5BTstempMN/ZG1RcskrE9HMip
         v7nJ80O8lPejBDUDNsg96e70Vm0LUAO7UdkxVLZZQWIpyk7axB+//P5sSXi20r6fTWdn
         Ojz9PEEDtw4Nc5fWpkDwWV0i/YX+B48Fn0jiVfGgI8vsOJPM4PDKDnGsgLeHORwppDKb
         Z2h2axbfjZ40lzv5TVu9F1fFzHmStJYFX/BybXMx7pewHz3Sjb6UTiDHYbb5DfdurGY3
         Xx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=oTA9+wlma+BSSKHOlivbmvzn97/LCZMoINFaH0xwHvZeDIlPO7m9s5UuWswfqdcA0Q
         lDlJKGzYHSKCd5aQBTHJBZLtamqVugamOBj2XYVY/9cLBfttQKUtg0I+847270UMJCpf
         z3SF1Pu9zo1TlEB1L21T3VtuM3+5f9s5/8S2zcvWhyi97NSEr8S8XgefFT4twYj5zNKa
         vBr5pDhUdiV3ETV1R82HojJubS1A2L1cxS/1h6ur6IKQjTwinPi1eGxlT0run+zigJCK
         psoG0C9QFx/M/65lZIo3GbmsuZBbttu/HBIHZUY96T5Km0fTpC5/R6ihAJ/rf+wOzFX5
         +Hbw==
X-Gm-Message-State: AMke39kUMguWX/ZbIZ5F+h09qmieie5iULoqQAcvQRUyNFfjcZit2aGrWOyHMo3cQTpfpg==
X-Received: by 10.84.139.195 with SMTP id 61mr9422854plr.109.1488984531674;
        Wed, 08 Mar 2017 06:48:51 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id g27sm6868494pgn.20.2017.03.08.06.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:48:51 -0800 (PST)
Date: Wed, 8 Mar 2017 20:18:48 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/8] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <43aa5452c7e19cdf5bb0c1046c4c11a82569083a.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
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


