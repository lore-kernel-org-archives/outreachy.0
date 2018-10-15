X-GM-THRID: 6612482196656619520
X-Received: by 2002:a81:240a:: with SMTP id k10-v6mr9798236ywk.7.1539595111941;
        Mon, 15 Oct 2018 02:18:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4206:: with SMTP id p6-v6ls5379588yba.9.gmail; Mon, 15
 Oct 2018 02:18:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60p1V984jz2e1uPYYn+4RfbHkypoFij5ivn9JRbY578SWZGQDGbPv8twHit1Rs9RxSAUz18
X-Received: by 2002:a25:9d06:: with SMTP id i6-v6mr8694875ybp.4.1539595111348;
        Mon, 15 Oct 2018 02:18:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539595111; cv=none;
        d=google.com; s=arc-20160816;
        b=BxEzUUZphNL6+ZFp13ViAhW6FPk0cmGc7UycWDM0Kiqa3mURoDLHkEcKDPSRWUxE7/
         ZKekpCQ2lC11O5tFZrowxC59o4g6e8A1PFQMVd2TvXyGPW2VnBp5EJIQ6V9RabBGX8nj
         +6ZD3jFdIKQEL0ttxm+mqyp/9E4g20oEdKFEIR4E+7DVqjg4ad+5NvZmhUkwWqqqLVgi
         WfzIhZ6SXMVAYpO7Ay2JfiRNSqdij707qj8Uyi7v5ecDdQm7pst8yTBzQ0U3k2eJzZhh
         tgRPuHMVzmothM4XDL8mnuvGKQ/AegVdbMXDqIZm1fF2ZQY3sem+dw7J+GCywqAd08V9
         8ebA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FG6gFgBk/a788eSBCYpggIiEM0tQE/+FDxta7ivRuqI=;
        b=drnU7JZag0K4JfLgDMbFbr8I4Ixr7MCU+5p68WtJtKE7I8KQjh954h5newJjTdJks/
         eoboMQI680QV4s+AmZAxLqAa0eBwkvCQ4W9q8P2mCLomKdBP+sioBcmEAFC64b54TmA8
         7Ug4mDgOmkC3XV8YY7n7rnlKFITHsYr0i0jeugS+bcuLD7Yrp+39pWEFFfXdc36dVXWC
         TLDYSeUoBxSCsNoV8cwjNNS+pABsSy+QWxtMEBlIKTrKzx8sMnj6ONOp+PdpFilNG9hN
         U2DPW0Ca0h09tfc6SV7E7SdRaNHGdSZcrsyhqLfQHKaZ+iub2SquVpA3eDbiW9yQYTd1
         CFZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aEZWU+W7;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id o125-v6si374170yba.3.2018.10.15.02.18.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 02:18:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aEZWU+W7;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62a.google.com with SMTP id y15-v6so8990201plr.12
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Oct 2018 02:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FG6gFgBk/a788eSBCYpggIiEM0tQE/+FDxta7ivRuqI=;
        b=aEZWU+W71iHwR73xvKgtHUmyvmgrHYfUiUDQLjKkea6jKlALeL+d4pGDM3ghn+bzRn
         CqHyxCDfI9FvwekKS5b8U28FiTxbCLo5bqhwqXxCenjnE89PLWAS6/TUvat/c5Wmd8f5
         GJcZQdJx7Bp7ZPHc1uxsVTkSP10AxRhn0aNHgE+NWNZN6P14vuaDrdFbArqZIF49mHpb
         wATtgi9oYH8l7IwKo0DpN0OTv+osicN5mnZTtfR+8UjkFKFfhJQQaAR7VfRUvbJZY7Mw
         cAa3SbxXYDlj4Gl0hP1lAjuZuLUcKFx42rsRFGA6rE+rh23h+f5k4Z6cGNtTz1lFIR5p
         75jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FG6gFgBk/a788eSBCYpggIiEM0tQE/+FDxta7ivRuqI=;
        b=BXQ6VlZG47m4HdbdvLSe50Ko4Q8laiJqrq4OdyqzDcpdtvh/wPuRBhSZ5Js/X6IvRV
         7E0w/RsQnkp7SlNrPxh3nlimEjmjR9gumG9x51iIRNWG/WZiztKI1igxFHSDUMrMxtMd
         PgaQrob7EuTpLkWfnUTU5vSA9gMF4p2yDSdZic+gvdvKMradjecaM5ug02sJlVD8FeYl
         432jaiD24BKmLQ0c2IpeJRye4Nt+rLJUXtl3DifxCGNNC+9O9QLzZ8JZEcqhDo3+xMOm
         QrnCJCmqDbhmVz+RLmsg0XeCWPBo9C5VHLd7k5/zBtXnP9M2yzOv6yWiPBYsi4Da2L5k
         75lQ==
X-Gm-Message-State: ABuFfoiW87a+ftnvvAo27H2Pf1rfPog/qbwL/6vzQVPc2MxVAAThOOja
	V9B6O1lU3LrZ2BYCRj9ZUng=
X-Received: by 2002:a17:902:aa0a:: with SMTP id be10-v6mr16419068plb.294.1539595110786;
        Mon, 15 Oct 2018 02:18:30 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id y23-v6sm12256153pgk.91.2018.10.15.02.18.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 15 Oct 2018 02:18:30 -0700 (PDT)
Date: Mon, 15 Oct 2018 14:47:20 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, bhanusreemahesh@gmail.com
Subject: [Outreachy kernel][PATCH v3] staging: bcm2835-camera: Remove 'ret'
 variable
Message-ID: <20181015091720.GA16418@aakashd-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Return value to be returned without using extra variable 'ret'.
Removed the useless variable 'ret' by hand using coccinelle semantic patch ret.cocci
The following is the ret.cocci semantic patch used:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

changelog:

v2: Include semantic patch used in the commit message
v3: Modified Commit message

 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c04bdf0..a124f51 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1510,7 +1510,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 				 struct vchiq_mmal_component *camera,
 				 struct bm2835_mmal_dev *dev)
 {
-	int ret;
 	struct mmal_parameter_camera_config cam_config = {
 		.max_stills_w = dev->max_width,
 		.max_stills_h = dev->max_height,
@@ -1526,10 +1525,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 	};
 
-	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
+	return vchiq_mmal_port_parameter_set(instance, &camera->control,
 					    MMAL_PARAMETER_CAMERA_CONFIG,
 					    &cam_config, sizeof(cam_config));
-	return ret;
 }
 
 #define MAX_SUPPORTED_ENCODINGS 20
-- 
2.7.4


