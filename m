X-GM-THRID: 6528044448013615104
X-Received: by 10.31.200.134 with SMTP id y128mr1221013vkf.65.1519928790945;
        Thu, 01 Mar 2018 10:26:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.32.89 with SMTP id g25ls846213ual.6.gmail; Thu, 01 Mar
 2018 10:26:29 -0800 (PST)
X-Google-Smtp-Source: AG47ELsOsAbkCGXhrEVqAmvsSZ461z6fanfy1yUsqxHHbvtDuAsfp4PIj8axJ3ROipno1rqqvZ58
X-Received: by 10.176.9.208 with SMTP id e16mr1321571uah.27.1519928789467;
        Thu, 01 Mar 2018 10:26:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519928789; cv=none;
        d=google.com; s=arc-20160816;
        b=xi7ZCTrbg7ixfl38PrVB2guB77LDPrBbIig5j51i2DNL/HyLLUr8j3ou6TU71mDd6j
         k6rpjoCYzhgnhLjD15Cf1F/HzHk6MEiN5SUEGx+T177IvpLMGLVKw7gZLUBLs9SYb8B9
         lTA00RgTLa0zU41evGMg+t7f0WWEVZIkffX5VINj35+SHuAIxKrJpxf1sGRZDuCTlvQ4
         sQ1EtW7l0gEp4XaCXGmgwCBfEQfE4HeGsNcRG727E2D58NTGFk81tW9PrFE6QYlSnimI
         6dPO+V/+2bXRrIyRd9s/Ack7Q6kxjm/prVyxJDXzh/qdbPYdHqAHfRTUwvCjAEafAzto
         ugpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=uJokBrBZODeXNXjfU1IZ9IBOtNhUTx3dMZ0FnbF/5m8=;
        b=GD0BmCic3jWpfCz2FZQQVhjChnmekW+EDDQc3bFvH8Sik6c9oJl4bWqTk49kXkH5o1
         8PBE8ujvoShumHSw8dlvZbidxOr7Lln0lvePbx3gFLXjjMOAZsjvStzqwD1ntN8q5F/3
         gBrgEULeSZ+Qyaa5RkBsgc04TOqhSeJ0LlakoOnajsdk9Y9CbYQhv9MgcAhH4GyJQ3Jd
         +draa/JjsOi+/kcIryjcLOcC9asUyR8vF5/01LSGIy8oB7lhyw2hEnsvWwBNXsMDyX/P
         TSKftrDbkrHgm4kEiy02CVj/rgFsNUWO3MTDzFN9sET1Lc4OEH/r96e3cuqFrzjOvsD5
         I/Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SH6i2XSR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c184si266304vkf.5.2018.03.01.10.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 10:26:29 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SH6i2XSR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x243.google.com with SMTP id g2so2652828pgn.7
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 10:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=uJokBrBZODeXNXjfU1IZ9IBOtNhUTx3dMZ0FnbF/5m8=;
        b=SH6i2XSRmLQ31jtmu6KE4HWWFTv9qfjI/iARP3zJMCAt/doaiwyGaXlI9t4dMWx8GX
         /sVLj1CiQ9Ki4ik19ijG1z6cQexiMPXt7g0KMxxId6XJ3eG57EVChxAtxkDYDpgT6Sk8
         e6g9zdRptNPg2saPlq+6MQF+sgm3b+Guc+np4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uJokBrBZODeXNXjfU1IZ9IBOtNhUTx3dMZ0FnbF/5m8=;
        b=Ytou8YTFKnFJatZWCJK5m89RutLsGhnaNxMmvMWojCC2haDVhIOd6pxwRJMcNcFf5o
         lgfOvVi4ySEdSEoKtMb3INu6prpn3R4WBwJ79NFPpdhyu6UFonatx7kSVvyL6w/7dq5M
         bO6Wy6kuyjSKK/rfvwd9ay0ssRlxyCGxdW6S/PWHL0o4ArztjAkzu/ZsKthegOU3NukR
         1brA/6hFx9tA/7aLuRmO5Kl9/ZslHpHPBJF59prB8G0pPo7Yz7kYj8wf4RClAgCvVtqs
         fjWXYFe1hKgGqBl1roIGnc4soG4N1aJfcmDnFcvlAzk/VywWarExoVhg0w/Elm2/M2Zq
         UMIQ==
X-Gm-Message-State: APf1xPBGMyLGbCFOb/YhWLDW4dMlHhtd35dqGHXRBYG5Y5Xaeo3/ZBzR
	ZvyRqGnrj8/hNHbBEn/fWEefRg==
X-Received: by 10.101.101.4 with SMTP id x4mr2276365pgv.275.1519928788465;
        Thu, 01 Mar 2018 10:26:28 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id z4sm7236132pgb.4.2018.03.01.10.26.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 10:26:26 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: eric@anholt.net,
	stefan.wahren@i2se.com,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2] staging: vc04_services: bcm2835-camera: Add blank line
Date: Thu,  1 Mar 2018 23:56:13 +0530
Message-Id: <1519928773-10756-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Add blank line after variable declaration. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Format commit message.

 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index e3460b7..c90754f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1979,6 +1979,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	static VCHI_CONNECTION_T *vchi_connection;
 
 	static VCHI_INSTANCE_T vchi_instance;
+
 	SERVICE_CREATION_T params = {
 		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
 		.service_id		= VC_MMAL_SERVER_NAME,
-- 
1.9.1


