X-GM-THRID: 6532877789444440064
X-Received: by 10.129.115.2 with SMTP id o2mr2964998ywc.89.1521054140301;
        Wed, 14 Mar 2018 12:02:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.123.67 with SMTP id w64ls159430ywc.8.gmail; Wed, 14 Mar
 2018 12:02:19 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvnYs1mmavSUcoxfXoAVrEyP3MJjrd4vsG3TNTU8srEwXiHLEOwW2pP8mGE+Bpf4gbt42Nl
X-Received: by 10.13.205.199 with SMTP id p190mr2671517ywd.37.1521054139018;
        Wed, 14 Mar 2018 12:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521054138; cv=none;
        d=google.com; s=arc-20160816;
        b=ImUFlZs20cgvFCMdav5ELZSXP3Km6STYPBYtw1998V43LT0vlBXOCVwPByRi7JZEdD
         010Sbz1aatR0B8ek18PzVdEvHwxMM5blcdhVYbKpDYNamviJA9u4240xk2yyzv2iBQ6/
         6m07D6vOpWXGpY1si4pG7ch/LGDUG3Sbp5T88Abxad2c9h1poV1HMwjOOUXdKDRAfIVX
         LJtQE1T9jwcr8NeN+EjoZhMDln9Hv0DN2zRU0wHd2gbMrVI/4d2n8cINoNYqVxjdFOl4
         SuabRcF3C4xXjik5JuJctjCKzuwTrkVSO7Ie04bt31jfiZwzWaLrKyg3H1LM26bmBcaS
         ndlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=w3TX/y6ibOwLq04pzTWW0bsLbyklQR+ic7KKztX3hXE=;
        b=S5LSTqM8HJI0QXVgp28CSPBaL3BdCdZ7PJ5OAgZ4oY6cw5nMklGrqrQezIfoPmb+dh
         43lpPKFPRyulbH5/A2vCy9dv2CcA8AhVHFh75B+wKBjGzw0CSWqTjPKjdevramkFISi1
         jE9cly/+N9HrYhbjWsjEg55VrV24AL2D5mPJp5HvAgoaijVptozX0wgaN2hYO3NPAtGY
         PG0/4mFbVL1yUMZMMNvlAXTWfvarNjQe7DBYSbERZHjRnMDrnusA7eTQGMF2ZV1YSsJX
         7KMMR29VfbP6hNpSmy4exm2KWAq1WPQ95PVDB2/qqtsuoFeGo7uMlW2PTWlfy7wT9aFe
         WU5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VMyw+GCm;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id m72si266362ywd.2.2018.03.14.12.02.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 12:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VMyw+GCm;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x232.google.com with SMTP id a16so1808138pfn.9
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Mar 2018 12:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=w3TX/y6ibOwLq04pzTWW0bsLbyklQR+ic7KKztX3hXE=;
        b=VMyw+GCmLS3sB1bXjLcPyJCqwAcuOyhwBF1FR4smCNXTxkQmMnop8t9d3MkwoYnzpI
         P9BL/FQrwcus4vTnFJnMWF2ApSW/AIcP1mQ7g4n2F/R47oS7H9oJvhrTK5a4uqQgTZ38
         YeZOI/hGibvNKg3EAAxWvFZf+q1OHAjvOGPT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w3TX/y6ibOwLq04pzTWW0bsLbyklQR+ic7KKztX3hXE=;
        b=mKegs9Lk2pU9E2NRgWQM9OqDW+zxMfAoCq3k1sm7qRHoYQX/SO3g55OG7JaeSgsJh2
         UcjN6uMcn6cleZL/8eGptmc/vwV2GAD2oXQFkpacaOQhVuo3F/QRckxfBz+IkkkupXhG
         tF3LVqWy9wrlDJS/uybtr9ieK25U3VJOrJGcGqdkVS8niRovTs5inAaEJTjVH0MxTJMG
         CI8jbXcGtCza0HHIkOnZmlK7blXOfp+9MIGbC0f4Zw3zF2Xn2UKqhURPj4LHV/VPORl+
         PNCaIWhfl9C3SQi6rI326htFMz6V66I9iTdY0BZ8DnYWOytxlUcB7MjKG9RKo9gibs98
         DeqA==
X-Gm-Message-State: AElRT7FHfgUCIoWbzEvkPUo3I2cZwjs8eaUn0zg2y78ZoShTfLGPeO1K
	bj9MBx9fRnhNP9AClF+/pM07og==
X-Received: by 10.99.107.6 with SMTP id g6mr4639764pgc.109.1521054138572;
        Wed, 14 Mar 2018 12:02:18 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id i127sm6323674pfc.136.2018.03.14.12.02.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Mar 2018 12:02:17 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Fix multiple line dereference
Date: Wed, 14 Mar 2018 19:02:05 +0000
Message-Id: <1521054125-29737-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Fix multiple line dereference. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d226227..263babc 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -287,9 +287,11 @@ static int buffer_prepare(struct vb2_buffer *vb)
 
 static inline bool is_capturing(struct bm2835_mmal_dev *dev)
 {
+	int mcc = MMAL_COMPONENT_CAMERA;
+	int mcpc = MMAL_CAMERA_PORT_CAPTURE;
+
 	return dev->capture.camera_port ==
-	    &dev->
-	    component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+	    &dev->component[mcc]->output[mcpc];
 }
 
 static void buffer_cb(struct vchiq_mmal_instance *instance,
-- 
2.7.4


