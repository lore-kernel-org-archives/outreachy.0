X-GM-THRID: 6470000031137005568
X-Received: by 10.31.84.67 with SMTP id i64mr369569vkb.39.1506440128664;
        Tue, 26 Sep 2017 08:35:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.34 with SMTP id h31ls919806otb.3.gmail; Tue, 26 Sep
 2017 08:35:27 -0700 (PDT)
X-Received: by 10.202.171.206 with SMTP id u197mr6282325oie.67.1506440027716;
        Tue, 26 Sep 2017 08:33:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506440027; cv=none;
        d=google.com; s=arc-20160816;
        b=wRJsMP8Cl7oovwOzaYMpzwCqlfM7R0bCBFDerJunzC4qoVm2eQa4XDt+2XAreCO4DX
         0QimNePjObaYuRZNmNQcmgb7JI+zubGyh8ZKkNmw3IaR6YECukt20HM42gx8YSNYsAfY
         4XCaE8AB53z0pdPMOppI1TMG3YKpWc0NQcbDzymiquOHR6Y0Yk/0sNWq3s8+6yAUV6XC
         jfd8GpKmq2RRlkgXYe7hMrdpNxsofW8gIrEa9iHJb0JWVKGQRQcn+cw0coCW8uF7wSH5
         msJcBCqgu0I2yN6D+XqLSJ5NyMgkzj9OFq9NsadPd5un2mC0fR9zsE5O7/2qwrzSV+3H
         N1wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=CLTIDMHQtD3YdGiAANImNghjOuwbiLH6IuZAO5dwrLc=;
        b=iHXThrvWBjgjKwqT8THNRAIEOqAlNZdTXgTQJ26xSnd/Ybe4fKkdBM0ySvNg9us0hE
         QT7bAahY1Ylf95VzWRQ0cxifFyaGk+00o3l6S0Hdo1raun1OfJMCJAHAK2+BgeEikI6j
         HRevYcOXmE9yWCvTWvBUpSp7XkXo1lBElB2j8kj0HKwg7FnRX05WvJ1YbBNRnZ3C++Rp
         P/4saXwZT+8qSKlvIwqa/7Yx5fp3i8R/P+ukF/I1Ld+doV5meItsu0mRegX8Gi5v5Jit
         9jWqtQU1dZZaKi5dMHcpUWjQOLHrQvussAS5GAtzupLUQJ6gXqz/xVlRgEX0aBeybNTy
         L/Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sJEsD3Wz;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r78si707933pfb.3.2017.09.26.08.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:33:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sJEsD3Wz;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id f84so5147859pfj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 08:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CLTIDMHQtD3YdGiAANImNghjOuwbiLH6IuZAO5dwrLc=;
        b=sJEsD3WzuTtw4FMTKlLXOWrxbNG0LZt8szyEYypEXSOJnLf44JcT2Tl4oU9bcM0gpF
         +yvbIlbwcO3zf2Z4YbLchtANTFXUXMSzctqfb2q3CNAEZq2OjcyA/qjIkmwGP5uMvZP8
         FlPuKMJdK9cES+N5sZcbQmNaCmrouGhmUa7PpvPei8YnpZO9ObRCRGjXZVbq9gcq86DF
         zkQB4ilyRgPAuOnQ5tU2JflfQZDW3Vvuc1m9v702457b8briArgSB1Z4RneOIF+/jAiW
         618X+OUQ23K5AFt+sYPh2AM976MLlMheOvFepPdvP8m1wKXYPRnP2+qGa8O7hDTkCZ8b
         aUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CLTIDMHQtD3YdGiAANImNghjOuwbiLH6IuZAO5dwrLc=;
        b=ZY9vmuRm0ZRP+NFWFbBlikjUKj+ZqMfDSlTgT66J+hVUz5ljT0eAIyWK3epYNaTyaZ
         4CdkMNcnwoEssaI7rB4lZjmw8GcI9WCl8COXpebJb+57sj3oMBPCkP/i8+gohuWI/iVT
         VROLr0i94Xf3frvoV2ZsqeA6fdOIFu9PDncUHbdB0TDurGHq3P7Fid3pj3shUgwWzL1K
         Yd0bypNe3n4EoBhwXQ5H4A2j3cgVOQOUrgy+fjqjX4wN1xHdnsGWDta3oTjZYG8KGSUo
         hGrpIO5uMSFjXfH4K5oeEO+PtndJM5K3ejrWiolAQh/gpWigqPo2g6LzlLiK18r6hVxr
         s3Sw==
X-Gm-Message-State: AHPjjUixSB3iDAi5bpqJGOepqEVJs6Db/RsFbKMweBP+jyZpx+6Sdmxz
	YZtjr7/5Zw5Urctb36NpC/A=
X-Google-Smtp-Source: AOwi7QCbhQZcCc2aIyVeb2jPNsvIJOa436qzsLJdEHrn7ZhauH5vo2NgU5pCwxk/MskXr/HFQu52Rw==
X-Received: by 10.84.200.39 with SMTP id s36mr11269921pld.257.1506440027443;
        Tue, 26 Sep 2017 08:33:47 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id q15sm15917303pgc.64.2017.09.26.08.33.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:33:46 -0700 (PDT)
Date: Tue, 26 Sep 2017 21:03:42 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: vc04_services: add spaces around << operator
Message-ID: <e95b9e3b5f74eee2e2a5586761e2972065dd687f.1506439214.git.keerthigd4990@gmail.com>
References: <cover.1506439214.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506439214.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Follow coding convention by adding providing space
around << operators

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 changes in v2:
 * No changes

 .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 12 ++++++------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 1144d9d..0dfad29 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
 #define MMAL_VC_SHORT_DATA 128
 
 /** Signals that the current payload is the end of the stream of data */
-#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0)
+#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1 << 0)
 /** Signals that the start of the current payload starts a frame */
-#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1)
+#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1 << 1)
 /** Signals that the end of the current payload ends a frame */
-#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2)
+#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1 << 2)
 /** Signals that the current payload contains only complete frames (>1) */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
 	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
 /** Signals that the current payload is a keyframe (i.e. self decodable) */
-#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3)
+#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1 << 3)
 /** Signals a discontinuity in the stream of data (e.g. after a seek).
  * Can be used for instance by a decoder to reset its state
  */
-#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4)
+#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1 << 4)
 /** Signals a buffer containing some kind of config data for the component
  * (e.g. codec config data)
  */
-#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5)
+#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1 << 5)
 /** Signals an encrypted payload */
-#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6)
+#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1 << 6)
 /** Signals a buffer containing side information */
-#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7)
+#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1 << 7)
 /** Signals a buffer which is the snapshot/postview image from a stills
  * capture
  */
-#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8)
+#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1 << 8)
 /** Signals a buffer which contains data known to be corrupted */
-#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9)
+#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1 << 9)
 /** Signals that a buffer failed to be transmitted */
-#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10)
+#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1 << 10)
 
 struct mmal_driver_buffer {
 	u32 magic;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index e730022..c4a2380 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -22,17 +22,17 @@
  */
 
 /** Common parameter ID group, used with many types of component. */
-#define MMAL_PARAMETER_GROUP_COMMON            (0<<16)
+#define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
 /** Camera-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16)
+#define MMAL_PARAMETER_GROUP_CAMERA            (1 << 16)
 /** Video-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_VIDEO             (2<<16)
+#define MMAL_PARAMETER_GROUP_VIDEO             (2 << 16)
 /** Audio-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_AUDIO             (3<<16)
+#define MMAL_PARAMETER_GROUP_AUDIO             (3 << 16)
 /** Clock-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CLOCK             (4<<16)
+#define MMAL_PARAMETER_GROUP_CLOCK             (4 << 16)
 /** Miracast-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_MIRACAST       (5<<16)
+#define MMAL_PARAMETER_GROUP_MIRACAST       (5 << 16)
 
 /* Common parameters */
 enum mmal_parameter_common_type {
-- 
2.7.4


