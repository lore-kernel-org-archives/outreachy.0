X-GM-THRID: 6612504415220793344
X-Received: by 2002:a0c:d8f1:: with SMTP id w46mr14272201qvj.33.1539593659649;
        Mon, 15 Oct 2018 01:54:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4b02:: with SMTP id y2-v6ls7530365qka.4.gmail; Mon, 15
 Oct 2018 01:54:19 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60jM9iyuH8OT9WIrF/dig0gvMgLjmpBr9c9pB3UShZY0jV2exQpcGoGFzaJldtjYAlt7WQ/
X-Received: by 2002:a37:19c9:: with SMTP id 70-v6mr13689899qkz.56.1539593659016;
        Mon, 15 Oct 2018 01:54:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539593658; cv=none;
        d=google.com; s=arc-20160816;
        b=eJ7HBlkSSx/Z1DkfGnL0TvmXJv590GdflOhSJaEBcdRutt21RihmF7NOd3xmqyXTmJ
         gxNUPgguqmExGPkenTjj6eCfW1a9EvTGII03z3MqS1cOFrm3aOVycQxE0bf5kA29TO+N
         fcwjqGgMTjBg5cLbIE1i0Y+GSf2SCTq98Efs9VN0wpMF/Gm8X4+cu+TwAeDxPrabmvnq
         NKGeAi6wWZBkK2wVQkvuOaoV9XUXC9iJTGO4iNbpdCp8/lVlSJw+ExPFQzhF/AZ/EMGO
         qbihvvOwGtl/lG2ZoP+Jw9QIpaP3usGjVrUB+EHtgf5d2aXk0NNbWGXkM0GF/0Y34qDj
         NBsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:cc:to:from
         :date:dkim-signature;
        bh=AzXbpkSqQjVzv7Qo3Clo1TkLIeG4qAjpmVwuXzSY1Rw=;
        b=SHcOxvVaDc7Yuv6S77Q8ZxMaBCEJJP68RDZ3pMbT+Ijt2ktRjrDowNhmZnBl8RqBSn
         F7kekf+670/+B9kiz8IxuYnw6yIwxelnf4FgeiJjxygo6y2otb0QI25wP2JCGQ+FVAdR
         vZ1gYygjUtL3bj6G7WpE4Lr5XGkbBAkxs0M38otkdLwDJi0L9IU0FPEvNTj1WGGFhCsm
         us10WvQOZiVJGVMvIcmhNLGYdKyrcvqIBD84wTHpwqXZJ1k32hX8wd2rig66RSE/j2HT
         O/UeZjummDZHn8UE+Foa4vbhAPoG7oNNfjdQyH3S0LooRRrA0Oa2eoojSboac4HJvbWF
         WntQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kg06Yx6O;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p9-v6si388967qte.4.2018.10.15.01.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 01:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kg06Yx6O;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id f18-v6so8855071pgv.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Oct 2018 01:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:message-id:mime-version:content-disposition
         :user-agent;
        bh=AzXbpkSqQjVzv7Qo3Clo1TkLIeG4qAjpmVwuXzSY1Rw=;
        b=Kg06Yx6OPvvluG+Dhm8pkylZmTRj8P6X3XVCgJv5zV0Rp0CbhvG5c0ONpYqbIVJnCa
         ceFXN25H6sMcAqH6447EoCXVAKs52hmCN11uh2jLV4TXFHBSKnYT813YoIZLApvHEpVe
         KzL7DGp0yMCqQ50J2GGVlA4Zrs7N6i7mA4z/EUFny3Zo2R+bVXX57h+5rCfUxPd6hGM+
         WTAuYMJddpYpdb+Vi+BQG1AvrQIHUpTfEuqp5vgJ70LHxpKIeN6FFSKbldP/SME1lfdj
         FdWTzMX1jOe9YDf3NK6YX7Nq8FwxdB6Hg1bzLGVuyROrmVVEk1/U9VgkingbX2BDT6uB
         3Jww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:mime-version
         :content-disposition:user-agent;
        bh=AzXbpkSqQjVzv7Qo3Clo1TkLIeG4qAjpmVwuXzSY1Rw=;
        b=puoYDXbTe30IWjSGPVRUUY4g7QqP9lC3cfGAfCpbcxcS7vgByjHXwuH/JSQpu57pJT
         pS/ChLq0759jfpfZCNQZG20YaQ/rglblR8SknpKuhgncoPOpH6KQ/v+pXInvFscJTDwI
         nyqKe5eeSKUVRrL+JN8Rvf3BPele25YTJ4AgaS1y8fkibMOjmSKIWQrWqAOG9z1UwFry
         3QbiRAPY2BZbAnzwq/RQQVp4c5jqh5WQGsg/d887ttAEyM9oYSC48wL4JR3VVfWxKmJj
         z91GuX/gkN00JI0Rxzrk4FggpXr8sYk8eMgK//K+lJYFfesr5M7BO4IRktwWwSA5NqGS
         8jfg==
X-Gm-Message-State: ABuFfojcrc7n54b14KVAqbJrLieh8wLb1vlVAYRnUlBqLIAeDeXFuTsO
	e0U6FRzX3pl8lh7mGx1/seg=
X-Received: by 2002:a63:2903:: with SMTP id p3-v6mr15386519pgp.188.1539593658025;
        Mon, 15 Oct 2018 01:54:18 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id u36-v6sm22963073pgn.56.2018.10.15.01.54.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 15 Oct 2018 01:54:17 -0700 (PDT)
Date: Mon, 15 Oct 2018 14:23:07 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Message-ID: <20181015085307.GA15896@aakashd-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

bcm-kernel-feedback-list@broadcom.com 
Bcc: 
Subject: [Outreachy Kernel][PATCH v2] staging: bcm2835-camera: Remove 'ret'
 variable
Reply-To: 

Return value to be returned without using extra variable 'ret'.
Generated by Cocinelli semantic patch ret.cocci
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


