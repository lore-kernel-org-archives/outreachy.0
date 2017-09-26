X-GM-THRID: 6470000031137005568
X-Received: by 10.36.208.1 with SMTP id m1mr1704663itg.37.1506414352328;
        Tue, 26 Sep 2017 01:25:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.97.70 with SMTP id v67ls6155169oib.11.gmail; Tue, 26 Sep
 2017 01:25:51 -0700 (PDT)
X-Received: by 10.157.89.129 with SMTP id u1mr839622oth.173.1506414351664;
        Tue, 26 Sep 2017 01:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414351; cv=none;
        d=google.com; s=arc-20160816;
        b=eZ14swmF6AinWWAeG+RDUM17HOb5DjKysM2x+J0taQJtSOMqFl1JxEWRmnyRuDXBl4
         ZfdMfMpE6oDzLi+isdFQYUXvDIDGmDiDG1VIIU5wcCsb+ovRmv1JuPtAPSd7FYhYN8ve
         RE+1OBor9Wwaf3UoSznbaqmg0xF6ijvhN+6CxB09x10/jsIdAjVzRcZAKnApqNkzXKpd
         gRgzDdzp09vhup0z36vRFkMjwL+6EjS/trCLlNS6uFQK63H5tlQyBBgP9h2kTNM+YN3E
         /EOlaScpaaXwLynexqoDczKreoxZKYKFiXaCJ4eQM86oV0Ieai7hLX1afolcdnFTvjbx
         HeTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=JPQtFN+3XRc/f7m/QKQsQSLWxRbd629cka6EwQDZ0/o=;
        b=sbwv/OZgUgqAnRiEb6OC/YTeHPFMcqJRKp0Y86pgQNjSw70k/LNFgsL9Nazn5cEwkf
         ITozRJXBZzD0KT/Nknj34N8tFGCPlXJp9CCq9U9KPpTrRnVajrMeEQn7sFc47CpjVK60
         QkDUgsPuFHbuda1bWziyMtEbmfNl5FUb7pFW7lM6kgVVYBOQ09fCYqMuPlvukpp9uTES
         Xdtlwo+U2mliCKXaHhmhzXTB2+wOtDN79db7SvYzWwkElhBukYGnPQBoiXc6kmwZm3OV
         FHM/gG/EJsim1uQVjlnlE1FS2b1ku5IbOEoJUp9ZdlB+h4jp2w/04pCsCWK73+UPOVmH
         NFFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rDEJWAtW;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id c10si365513ywb.24.2017.09.26.01.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rDEJWAtW;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id n69so4191659ioi.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JPQtFN+3XRc/f7m/QKQsQSLWxRbd629cka6EwQDZ0/o=;
        b=rDEJWAtWxO62BpQ67ucy/mTfrIAqRaaknaqOE1fxnwSA8prAXAaxrbdIqVNVkimBhw
         Y1/rwPB4PYMv36BtmFyFHoIXVQ8y5tNu6W8qwFLyY9qSL7NhU2Sd/TmDKhNW0xhR7tbs
         C3nmm+qcBxHjhP3xdgvzt6TAbXoD8jpJtI8maUNNH3EqJDHK1jgNFFdQXkkNH4tNtaMg
         NZ1+Rc8woNSPg8g5LQRLWg8MXLjCnTjQhXMnF3wftufabupxGqpUxC1OgpXDl3RVD41J
         DWoOY5zVDf2qfrC0AAj1ZWrCIf8/aBziwqPmh+sfK+LkFlmC/fNz9H8zH8gSCyeXOc04
         pdcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JPQtFN+3XRc/f7m/QKQsQSLWxRbd629cka6EwQDZ0/o=;
        b=ELjc4ouhhPVWYyxxMwyJoc01CsRmQgJHE6+ROa9ZT80CSE2PjNc81PQ/7Q39voTl6f
         Qf4fmGEPRD1Lm9aq37zkKd+gqRJDDnShNC5dmRv/ZJk+dd/oSeUOs3OJBCYPNa61vzrH
         ZkiGiv7RPu4I9D1u/i2Nh+S6HmQcDB30tic2ujLKadj7GON6JzVZ77VEx7SKvNcM1okk
         6Vjy3EZFUE4C5CmJlvBTn6TmmJcH49Giw2UQdOxSR57rrGsVukfvGDgkyGsAdXAYNQ+/
         IoHuQDpXfy5vohdaY2wV2+yXrEAbuRUVRleVcViQ/KfwQhs/LlDXzBKPJnS5IQNU6pm/
         p8+A==
X-Gm-Message-State: AHPjjUhZmq+ElxSZpKtTLwJVMZ40N7/90VlZ0ktu/bcuqw/7yI5xUFBO
	RzKoB5T8XepOnyxVxwNG5Gg=
X-Google-Smtp-Source: AOwi7QDMs0dotbD7q1U19MIhh068DIn+6XnBorMPpnYBpC+WVAOx9YA01DIb3jD6f60Xq0kv3TvOSg==
X-Received: by 10.107.152.207 with SMTP id a198mr13327191ioe.168.1506414351193;
        Tue, 26 Sep 2017 01:25:51 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id h84sm4025619iod.72.2017.09.26.01.25.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:25:50 -0700 (PDT)
Date: Tue, 26 Sep 2017 13:55:45 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: vc04_services: add spaces around << operator
Message-ID: <f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerthigd4990@gmail.com>
References: <cover.1506413998.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506413998.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Follow coding convention by adding providing space
around << operators

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
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


