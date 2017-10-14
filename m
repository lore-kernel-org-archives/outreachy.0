X-GM-THRID: 6476685007232434176
X-Received: by 10.28.156.145 with SMTP id f139mr441153wme.10.1507970738149;
        Sat, 14 Oct 2017 01:45:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.172.47 with SMTP id v44ls2064770wrc.11.gmail; Sat, 14 Oct
 2017 01:45:37 -0700 (PDT)
X-Received: by 10.28.92.18 with SMTP id q18mr378148wmb.15.1507970737281;
        Sat, 14 Oct 2017 01:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507970737; cv=none;
        d=google.com; s=arc-20160816;
        b=hqSo7snI0zYuhFzBXL2bzD1/flTbtumpMs0oaKqR7Q0pkMInk7Owhe6PElCEI2Dmcw
         T7Ox9PT+Gthls5QRPHIK5tJcJT6KltQj0W3Sl1G9PlHhIAqRwFsugIFgeDn2Q9rLxfXA
         c6kX9WO65rgLh6gM0cgEq0X7NBI7Q/0voB32NphS5gXQr4WXnpzz94mCTWXfX3/zrWQd
         nJxJ7YcErQhfIj4Lj4LXzhpO7qqKqB8+6oMNRDB8ww6Wi0s46e74JU+JYGejeHevSR18
         aAN9Kbqs4Od+g/0paiWTY50fknMoRomLhoUvvzrqEszNZHejdaIlAjdvV3gk1MPG4+pk
         1uGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=WocDCQ60l6dKmfOw4ieYSKMhojiSJXxuZmevdzJg64o=;
        b=iB5uZ+bkUXuSYKf8GT0m88kq8Yb+dOleGRGbe5bcC+wi/awp+G7rmXTikEcKI/cGLH
         AK3InbnhlOMu+3lZ2iCiffasBkWcxKgOd2doOO6wysHE6OAw7M/l1MMq+3lgBDf3ik0Z
         3YBs+yT4ePb8rPInJrPG5ZkMC++u2/nTjr74Wce6g+ovViHIQKjvY92ktiGTx7BZp2yt
         093SuWuNo3c0ChDwv2VRYz7naIPL5Mzd1RI2fDZirW8hMLgKJMIAZMAuszkRvbgbp5i2
         cHtbWblrt24H+irp9XgY7O643ipEdT8bnnlZ9VYsq8SI/YpxRx5HgjVeGSa0Dd9+AUUL
         nAmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BabM6Sym;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id r15si175719wrc.1.2017.10.14.01.45.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 01:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BabM6Sym;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id z96so2023162wrb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 01:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WocDCQ60l6dKmfOw4ieYSKMhojiSJXxuZmevdzJg64o=;
        b=BabM6Sym0q3pSl5DbYFFKkgLOhdeJhzJDbuyShRy0gBprDpc+Gc0duuSxaTHL+YKUw
         sQ75BPciqUE8TkwizO/tZv1RuHRqd+2VuNUfukfbWpQ36bn6vCO3Efs84xz4+c3+Il9P
         kNLw1tZQXd72Cli10wkpgB+6PZh3cUZLdEmRqzn5P2GKA5FTnfvhyH/wfyy/SAJr+Eh5
         Kg/byoqpoSSu+sFgmEjYyv0l9kcCThMJ+53RvYegjyeGDnLAIfDkTl7HTnec6Qi7MYge
         ozX+R5sFwnAXWiN4rTyn+qPfbW9Fz8jSsIONKeZlc8lBz0mFhn5adS0K6V8TEHPORhKC
         KTqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WocDCQ60l6dKmfOw4ieYSKMhojiSJXxuZmevdzJg64o=;
        b=L7MW1qK1qa8mRKtuodBHEmIsBtsE3tiFh4p8JYxckZ076RatojiH2UEUqfDiS1eJHu
         pIM4N4169mdjosGYvZ4muwt015vrWsW/NQSqNHBR0uxztcGVS3QkIxtSci3n1beKaWfD
         PcNzdAitDnxXkRyz27kdRUweoPI/sLJkk1Zvtofhy1aEvHRQamNPHiNbRZMvf/K6CcEJ
         Hpsj9l1+MjT2ii+3lau4lZqDyD3R0hnrZwQPiGrFUXqatfVOjgh/dSdR/hB7sy1Y5T7s
         cDC/wNXu99t/z1aOMT+dZhhspi/kXkAiu64AleWk3IVwFONyqZj3DSVaBNcD9FUAWtdQ
         TEFA==
X-Gm-Message-State: AMCzsaUwn5z4ZL2qS/okJqAAkNeZ5cKTmf0z2jK1AkWpKomr72lYudaf
	7IXM44LD0sv8G3woGW98aUI=
X-Google-Smtp-Source: AOwi7QAbncYCeUUj2BO8MTDL/vDh+Xqx1k04s4lPQyMDN6uyIAr3qDEFz5eMxTQPSP/XtrI0Zrubog==
X-Received: by 10.223.130.20 with SMTP id 20mr3307250wrb.216.1507970736884;
        Sat, 14 Oct 2017 01:45:36 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id n14sm3419746wrg.38.2017.10.14.01.45.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 01:45:36 -0700 (PDT)
Date: Sat, 14 Oct 2017 11:45:35 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Remove unnecessary braces
Message-ID: <20171014084535.GA3681@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary braces for single statements.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index a96bae0..1c67e9a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -209,9 +209,7 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
 	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
 	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
 	if (status != VCHIQ_SUCCESS)
-	{
 		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
-	}
 	return status;
 }
 
@@ -219,9 +217,7 @@ VCHIQ_ARM_STATE_T*
 vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
 {
 	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
-	{
 		BUG();
-	}
 	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
 }
 
-- 
2.7.4


