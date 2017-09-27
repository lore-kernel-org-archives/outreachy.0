X-GM-THRID: 6470514248174796800
X-Received: by 10.99.109.8 with SMTP id i8mr420019pgc.87.1506533997705;
        Wed, 27 Sep 2017 10:39:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.130.66 with SMTP id 60ls630857plc.14.gmail; Wed, 27 Sep
 2017 10:39:56 -0700 (PDT)
X-Received: by 10.101.92.135 with SMTP id a7mr410546pgt.70.1506533996678;
        Wed, 27 Sep 2017 10:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506533996; cv=none;
        d=google.com; s=arc-20160816;
        b=OQR3F6LOylGBXzflLfbiSJKoMNvOKf8HSJWuyTA9V4lk1/oeDH3SgjafyXy9mMth0g
         h5zrnwPDBSUPX4BJq7Y5BT75/srHZx0Q3PBCeZTut0ytp5H7qh7E5qOjYUieWmbKw9Yd
         8m2t2XU2qc1KNodC0Txx5MQm/rDklX6oKlG15lsvthndKbSXgrp6MaNvzOmYwD4LDfYd
         MLImq2cKELgAyZMjh/inXT3Sl75L3HQ+vllIbn/CKbfX1/PZ2yVDtt9NSFrzTZXqhW1Z
         IKJFiXPnKnWwKHsQ5ynQQIWRfZmn9uv3wNgw2KPHhOzMh7un+YkRxrr0PU23Xo+vfdxI
         QrDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=c+Xo1zeszC+UMbAuUl89HeDC49b3CH4f0SpVSyrVz4w=;
        b=t3FbkaVUEKM05lG8ydz6dwIAy/MmbhIsR1w0yxZ3jBoVN20u/lw0pRRqm87EVlZI2k
         Xobe7U7S4qQmPj+7HNqn8atXZVKMeyiCStngUUXtuFNJJY92alEu6glKOlPHAu5XLZa+
         gC7iYwNB+w/2r4vv4AcpC7hc2CJuWuZDBG4ZBqh/jqeuAq2r2OKDwRHcuzthFeKezs4B
         mbtu3zfkCm6R5ogDSTHgMWFFhBfF1EyO46Sib5PfRBlRmy0FTM58cb2TLMe+yP98CyOI
         QWadw0YkDTLM9e4L40KSD4lEv3ueRnfvg/LDv45wWDMczM1tt5Xw3olzLABh1xl+IDx7
         Fg1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZF0Ol2/Q;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id k76si1060877pfb.5.2017.09.27.10.39.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 10:39:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZF0Ol2/Q;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so7338180pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 10:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=c+Xo1zeszC+UMbAuUl89HeDC49b3CH4f0SpVSyrVz4w=;
        b=ZF0Ol2/Qttdjbv8WUzUICQfLuUk2u70TORD5xN06MT5YolG+vfUKcAXWeCQV/LO1vm
         GKlMy00ak8EIxZMj6OYmMb+3xGHBlfB2PgnzCVfR2xkqVvDfQgwIpXrZ6OQ58RXrffmT
         JGqs3MnxB7+dtFWmDz4SrgltGLtjhI7V491o7OHomvyrdTjBbuamW2i8TSBASFItceX1
         7+Ox1IUQXgKMSDm9Zz5yo6ARo0YhELVHfgwyvLiihDUPQ/d11U18DrkVmsv2k+jZMa8g
         HV6I8VO2k6Kw/c5d7RgGPHiRGjPjupd72FHL408pvo8FVZMplG5jj/HRwFmvgLU6dcqN
         I0Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=c+Xo1zeszC+UMbAuUl89HeDC49b3CH4f0SpVSyrVz4w=;
        b=gQQAxOtm2RBZ8LcGuLiX3BziXNWfQaUDZIr7bJ7UZow7xDbSvDwNXR1StWkkEY2OPW
         0xSthvIe6E5JmkgXyb+2G1Lv4GoY3HeCZQsUkUsGWNGogxeSEFoxSG0AK6tdxYrfEzDy
         J4a7SG4d3mifIxrZbi3QDSbDujGbEatr3Do4WtzvtMZ1Vzf4v2/XlkGxL6O0vjvOtpTM
         U0mi+E7XylBJCtEflfBQQKoLr8JqcWGG2cZyHVg8oW+vJ2pLg9S8VQCOGsoExGaWbq9+
         J0Fb8x9AijzxUbStcFDgqY06IhEqA8tw/gyAPNNHNjGjmwv7Y/Ur6R55+TE7ptLnRmcu
         NXyQ==
X-Gm-Message-State: AHPjjUjk53SaX2vcg7HDkNiVG1IfAhiWz6rkkd3jDCE6sCUO2y4Gmlgp
	bnWWeku0kfrmXvfvaX6jRjCXLVq0
X-Google-Smtp-Source: AOwi7QAXtzjNRK1H0njr/FNbXpvY1rALxfA5liLU9fW09oLN5f6LhIVNuR6rgptV5lzLKlVPXqBNVA==
X-Received: by 10.84.239.15 with SMTP id w15mr1844877plk.29.1506533996431;
        Wed, 27 Sep 2017 10:39:56 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id d23sm15702716pfe.115.2017.09.27.10.39.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 10:39:55 -0700 (PDT)
Date: Wed, 27 Sep 2017 23:09:48 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: stefan.wahren@i2se.com, outreachy-kernel@googlegroups.com,
	eric@anholt.net
Subject: [PATCH] staging: vc04_services: bcm2835-camera: use BIT macro
Message-ID: <20170927173948.GA4829@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

As suggested by Stefan, I split this commit from the previous
patchset. 

This commit changes left shift operator to use BIT macro

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
 .../vc04_services/bcm2835-camera/mmal-parameters.h |  2 +-
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 1144d9d..5a1b2a7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
 #define MMAL_VC_SHORT_DATA 128
 
 /** Signals that the current payload is the end of the stream of data */
-#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0)
+#define MMAL_BUFFER_HEADER_FLAG_EOS                    BIT(0)
 /** Signals that the start of the current payload starts a frame */
-#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1)
+#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            BIT(1)
 /** Signals that the end of the current payload ends a frame */
-#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2)
+#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              BIT(2)
 /** Signals that the current payload contains only complete frames (>1) */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
 	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
 /** Signals that the current payload is a keyframe (i.e. self decodable) */
-#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3)
+#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               BIT(3)
 /** Signals a discontinuity in the stream of data (e.g. after a seek).
  * Can be used for instance by a decoder to reset its state
  */
-#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4)
+#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          BIT(4)
 /** Signals a buffer containing some kind of config data for the component
  * (e.g. codec config data)
  */
-#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5)
+#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 BIT(5)
 /** Signals an encrypted payload */
-#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6)
+#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              BIT(6)
 /** Signals a buffer containing side information */
-#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7)
+#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          BIT(7)
 /** Signals a buffer which is the snapshot/postview image from a stills
  * capture
  */
-#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8)
+#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              BIT(8)
 /** Signals a buffer which contains data known to be corrupted */
-#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9)
+#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              BIT(9)
 /** Signals that a buffer failed to be transmitted */
-#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10)
+#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    BIT(10)
 
 struct mmal_driver_buffer {
 	u32 magic;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index e730022..1967fd1 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -24,7 +24,7 @@
 /** Common parameter ID group, used with many types of component. */
 #define MMAL_PARAMETER_GROUP_COMMON            (0<<16)
 /** Camera-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16)
+#define MMAL_PARAMETER_GROUP_CAMERA            BIT(16)
 /** Video-specific parameter ID group. */
 #define MMAL_PARAMETER_GROUP_VIDEO             (2<<16)
 /** Audio-specific parameter ID group. */
-- 
2.7.4


