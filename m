X-GM-THRID: 6393338025823174656
X-Received: by 10.98.83.134 with SMTP id h128mr515837pfb.39.1488565065544;
        Fri, 03 Mar 2017 10:17:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls892028ote.37.gmail; Fri, 03 Mar 2017
 10:17:45 -0800 (PST)
X-Received: by 10.129.82.133 with SMTP id g127mr1439404ywb.161.1488565065113;
        Fri, 03 Mar 2017 10:17:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si185524pfb.5.2017.03.03.10.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:17:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so13365399pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WYNJUKM4jNgkCNyY0zv1FPmFczoFRSJF4w/GvmfZ2B8=;
        b=AovKbxXtXQszb9BA7RI7Tk0tXJiTx1g66H8wJt5aSwf1ogWqAltoYJ+DgHa0uB/f+e
         9pX2x/YT4VHztODQnBgq0eDvPLv2Ye31DutQNP+7bRpw2sF2muQoWgz6OxBGfbXjdI6V
         wAzDYroocd0gVie175dKpWaobg8NtVgIS31rFH3WxMYFwoLnGzDaZdb41eNVpUa9K54t
         UrRNFrCpWWqBAQN5W7UXxtjcNGlp+le4OoHvfY7S57VxV6X443WEWK6vCZmcC3cvRR9L
         2UJX8y6PMlOI2L/XRvcH1EsdXl/oLDMurM7RmQht7TZ1pa2nSKKhEsby/OiMmtp83bWR
         OJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WYNJUKM4jNgkCNyY0zv1FPmFczoFRSJF4w/GvmfZ2B8=;
        b=BAJueQfKllkCYBkuY5/zTso6iv1zRRf0Uxj+imu0vLWw0Ec4Ew86aruEv03/A5WhUS
         VPWZMtlEy6adw06QmkmDNlEB/OZfuk7TA9XZIGHO66zFWIM6QAjGIv5tZ1lKk8I9NDX5
         4nHCse4pQ51XobLE/cdcTKsg7kGhTngtjI9aYHCfAZuoNRHgOvHfnd9pA8bvttfjsE5L
         rlhIn6rrrT86e50Us82iaq40uxYehgAMtin1mDlLuGeLkWqYKuNzcYnleBWjCf3NtyNm
         1MJQytHxsGfNGBTEo+/BQiLK5Bm0sQ0+2Omo3Vm/mtbE/MiVpRL9X0CA0cBldIoZN3/n
         blOQ==
X-Gm-Message-State: AMke39kfsYPebB8JqFD3HyFY9lnCcr7Gr4/71NYxkfxlVf4cJIHb9zomlsd+C4RbAHE5Vg==
X-Received: by 10.99.114.6 with SMTP id n6mr5100625pgc.14.1488565064884;
        Fri, 03 Mar 2017 10:17:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.136.156])
        by smtp.gmail.com with ESMTPSA id d10sm24725631pfl.59.2017.03.03.10.17.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:17:44 -0800 (PST)
Date: Fri, 3 Mar 2017 23:47:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: bcm2835-audio: fix typo in word
Message-ID: <8a65f517d0d665a0ca14ad6a09eb888eaa1f5418.1488564925.git.aishpant@gmail.com>
References: <cover.1488564925.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488564925.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

fix typo in word receives

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 07f7c34..f55c396 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -309,7 +309,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 			0, // tx fifo size (unused)
 			audio_vchi_callback, // service callback
 			instance, // service callback parameter
-			1, //TODO: remove VCOS_FALSE,   // unaligned bulk recieves
+			1, //TODO: remove VCOS_FALSE,   // unaligned bulk receives
 			1, //TODO: remove VCOS_FALSE,   // unaligned bulk transmits
 			0 // want crc check on bulk transfers
 		};
-- 
2.7.4


