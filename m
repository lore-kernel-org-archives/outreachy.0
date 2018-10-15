X-GM-THRID: 6612482196656619520
X-Received: by 2002:a25:1807:: with SMTP id 7-v6mr9069944yby.36.1539594081777;
        Mon, 15 Oct 2018 02:01:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:f507:: with SMTP id a7-v6ls5086749ybe.7.gmail; Mon, 15
 Oct 2018 02:01:20 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63NxAVQwr+ZUqmmvdnhzq/fjSgKjnOe5RNdLkVlvTt5ZrQ5ZOtN+mATQu5EX/n1abxp7+NZ
X-Received: by 2002:a25:c04d:: with SMTP id c74-v6mr9870824ybf.33.1539594080849;
        Mon, 15 Oct 2018 02:01:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539594080; cv=none;
        d=google.com; s=arc-20160816;
        b=G4m7oHpaZ0Vs5kXTv9HaPGlR70kjyNcXDfHmwQL/uXb48bU1lT7nuXjfDRhlwMI8zp
         7V2CmQIkxceCrkwgMZ9aLkdzLrVsplXUaSCo/16+Nj9HvvXfbOyQwEkJStd/bjbeRmx7
         7fGAciEQ8Z3qq/pmh23Fzi+EBRPR1KzRTkt2NaKkgUaMgl6BBTxRlsPTE7anjBGMpTwK
         oavN2vB3eyHDKhM95lJlU+izOl+2PVToUjxvjwzq8B0unzmdHTl0UB0OAYrCs4IbKdnq
         CboSQsBKymyJqqNge1a/vf2zQ2r2g8e+6tPtmo2oPrz+mjQPKY4DocukWqJ02im6NoNx
         LtjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tUDENr+YROkkBu3U0NTQvEsVYBv1X7nSWd+ij1m0a50=;
        b=eC142MZv/UtizkEGQQF5FcGDJ1OLgXtEAoH1NdT7QGYOHpZicieQSIwoejAJJ0P5VM
         kKXMud3Ipus3XSlH9zBdttArOQvmh2Uarx1EqHqzkh9Veu7VZqCo4x10VO4M3LS/5tGM
         xwixu++XIEzTBqO6JJr3AXP9j5LEk1P7I83hX7Vo/AapgHlB18z5iw0MrD5S3Aox85ej
         v7h62ndz47ajmHAfbPj9C3h6Y0qNmriINrywbRK8mp4N2BxwtY5jbnAVaWrAbz8oT2vD
         Gzdf8Pk8olco4m3B98z1OinLmBWAV5++xHwkqmfcDaQfWsbk+e/P+QWzSJsSmE9ACJgJ
         VAKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWkvpFJt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u11-v6si390785ybi.2.2018.10.15.02.01.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 02:01:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWkvpFJt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id i4-v6so8843656pgq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Oct 2018 02:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tUDENr+YROkkBu3U0NTQvEsVYBv1X7nSWd+ij1m0a50=;
        b=fWkvpFJt3carybxeXNsR7b2gfQJ9rhcL4FVXzqAIL97ptzAWsznPUy5OJZ+edNCRwS
         3lRGp5eeZoz6mEjPWk3foAb/CIEwryPOzJldvgjzDmrJWlX7x192SuxXpdoNuYvzez74
         /CKl/pThJj8RymwMUDVfc3ijy4mG5zxHqZc6mUeLAsQewE/gEBHz8z1fm8E3pSRb9bjf
         MWupQXdYAS1/nyoCaSFmw0k9glj3jNHs5luAjib3niAeRJdRh5+bk5DAQVAYlfuGFn/J
         uVU8imdVtkIphevKkA4PivFLnCka0Tg8qGLtzDcWl4/IFfSMjjjf6px0fOYBmnqQLPRy
         XM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tUDENr+YROkkBu3U0NTQvEsVYBv1X7nSWd+ij1m0a50=;
        b=JSYU/HFfFowXTLo9HkaknsjQp7E478iDgU83VQc//fJmK3MzYyIWcBU/JaO5U/v+Dh
         UnclkXghVQ/ZiSEDvyfhgLlDwM0hy18IdlxubvoujTrH6pDjx4OmfcSpHohnbGlxZSyY
         ij9bjN/ESEoXlkwi+hYeeGVmYccqyNwoQzfvXvFL6/J8jiBBttbhxtvfihq71/OFN/Pi
         5gH15n5xOjScQ1NLpcy7WldiVz3cRjTPJIEwfMrdHVP8r7o3uU26D89Dm2/w6JH3vWev
         g2dH1677ElfM/anCgmATKbVrwYPRT0oe3I33wlGseVP6JrDEKaY9tCyffY3jAHwyCRSQ
         3IDg==
X-Gm-Message-State: ABuFfoiGyTuUXq8jWCFCaq5H85SBjUcRN4jdPTweLHuU7K1ZIVvP1MEh
	rS6qW/UiOw0d7tyXyAMEKI0=
X-Received: by 2002:a62:808c:: with SMTP id j134-v6mr16521321pfd.47.1539594079950;
        Mon, 15 Oct 2018 02:01:19 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id a11-v6sm11667787pfn.66.2018.10.15.02.01.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 15 Oct 2018 02:01:19 -0700 (PDT)
Date: Mon, 15 Oct 2018 14:30:09 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, bhanusreemahesh@gmail.com
Subject: [Outreachy Kernel][PATCH v2] staging: bcm2835-camera: Remove 'ret'
 variable
Message-ID: <20181015090009.GA16087@aakashd-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

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


