X-GM-THRID: 6395910423688773632
X-Received: by 10.129.179.136 with SMTP id r130mr8958233ywh.162.1489163959056;
        Fri, 10 Mar 2017 08:39:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls8699051ota.23.gmail; Fri, 10 Mar
 2017 08:39:18 -0800 (PST)
X-Received: by 10.157.7.193 with SMTP id 59mr7963311oto.148.1489163958611;
        Fri, 10 Mar 2017 08:39:18 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si1452687pfb.0.2017.03.10.08.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:39:18 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so10822781pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jdY6fAYox/x0U3lVDJjUkh2MmcDowyEY0wUQY+5Awrc=;
        b=athJ5VQWzM3VMwTR5GzTHdgNuY0fYaepA6Y/49sSxm26G2cg+rr7Zymk/B64asVNi3
         2O90jR/wthH3dtM3zqzk2iAMmIMNi+pbFntv26gizpa2vLar6xfEIU02Er2B/Et1wGdv
         KykMVGjyruXjvEmILMqFH7lOmC7vNthwxRZZTvKnrlzokN3MefpbW2+f/mPuyFmXwboG
         QRdBjE477Hle75mZnvR0Qmv9mdT3j8oYaTjXl83Lw6dZG5wY0L1f6rLUUGz78nRbMSzA
         PGfsgts6dTtkuVFj3iHeUL6hhFB8mvlRs2iHPIHFkzav9Weu17+fBoWUQjgILeJ44YoD
         g17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jdY6fAYox/x0U3lVDJjUkh2MmcDowyEY0wUQY+5Awrc=;
        b=nlmwFuLwLZKvXvOKQYCnBl7Y0Jz/1NPMQ0U2HTKXig69+IQzf8xL36CL1yznj2LcF8
         Q4PH/a6mMpdollf3/EqpJcyGot+DDF80i2UesVplako0ALLa75pr96jSDp2XbSq29ZW+
         pweL8tT3wn4NN/urTqitYefj3lLny1vwP8vHquNpri60Zx1SeRUMYdtSY2rPbEHBjUbB
         yhJtoRzRBsIq2Oa+tqtjKgXAvBQB8UPY8S/OU/1RcztYRMToYgQgE9oCzqKwzyLgEfWa
         BK5BgElT/fh2pFLB/lv6b3pjjxCRGHa08+EWpsOkWlVgwzfSn7/7VO6sFKSYAEjn11xb
         k5aA==
X-Gm-Message-State: AMke39nZUPZ+m35MIGHlVRd1NKH0H/U+0XG+IJi9Ws005LenobmevY+s0HEAXzH2STIIkQ==
X-Received: by 10.98.23.202 with SMTP id 193mr22149727pfx.141.1489163958205;
        Fri, 10 Mar 2017 08:39:18 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id s12sm19701000pfj.9.2017.03.10.08.39.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:39:17 -0800 (PST)
Date: Fri, 10 Mar 2017 22:09:11 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: bcm2835-audio: remove anonymous field
 declarations
Message-ID: <7056e45a158a780d25a956b61e7dcc444e62c002.1489163547.git.aishpant@gmail.com>
References: <cover.1489163547.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489163547.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Anonymous field declarations are error prone. This patch replaces
anonymous declarations with explicit field declarations for typedef
SERVICE_CREATION_T in vc_vchi_audio_init(..)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c54bef3..d8a8e91 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -302,16 +302,16 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 	/* Open the VCHI service connections */
 	for (i = 0; i < num_connections; i++) {
 		SERVICE_CREATION_T params = {
-			VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
-			VC_AUDIO_SERVER_NAME, // 4cc service code
-			vchi_connections[i], // passed in fn pointers
-			0, // rx fifo size (unused)
-			0, // tx fifo size (unused)
-			audio_vchi_callback, // service callback
-			instance, // service callback parameter
-			1, //TODO: remove VCOS_FALSE,   // unaligned bulk receives
-			1, //TODO: remove VCOS_FALSE,   // unaligned bulk transmits
-			0 // want crc check on bulk transfers
+			.version		= VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
+			.service_id		= VC_AUDIO_SERVER_NAME,
+			.connection		= vchi_connections[i],
+			.rx_fifo_size		= 0,
+			.tx_fifo_size		= 0,
+			.callback		= audio_vchi_callback,
+			.callback_param		= instance,
+			.want_unaligned_bulk_rx = 1, //TODO: remove VCOS_FALSE
+			.want_unaligned_bulk_tx = 1, //TODO: remove VCOS_FALSE
+			.want_crc		= 0
 		};
 
 		LOG_DBG("%s: about to open %i\n", __func__, i);
-- 
2.7.4


