X-GM-THRID: 6395910423688773632
X-Received: by 10.157.21.97 with SMTP id z30mr8264842otz.147.1489163983660;
        Fri, 10 Mar 2017 08:39:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.19 with SMTP id p19ls2589198ioe.47.gmail; Fri, 10 Mar
 2017 08:39:42 -0800 (PST)
X-Received: by 10.99.126.7 with SMTP id z7mr8893509pgc.130.1489163982846;
        Fri, 10 Mar 2017 08:39:42 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si1818992pfb.7.2017.03.10.08.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:39:42 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so11319784pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tFVHBfn89g+8EMGy0bZshKyZFy6K4h3phYQIEBvz1Ao=;
        b=PSwEMv8s410VCwNMaRRsi6bnFQDyyj/ktDlEgzV9JTjobq5+qN99Vizr/4TDXaecNt
         RvZNSmhpDZOJQGsWE8xQyYbzs7SEmHSCCXEPxl1Wzob/Qkqf1g6z0a2psFhXsJBM6tlW
         Yn/MbTY/wxlzZ/ybJYUJ0ri3KA1eN6UrwW8SCn9vtjyqprSC2a+RpEZuqkzmZqs3wzQT
         xq2EHIQnhK+sAVC0W8qVbNEtOiviE/0rhqMD3ZPrLBXrf4xleGL+ukoO2/xtFJWnfoBK
         fxIxZVpK/KMwDgnXAlTM+bI0hgl4T5mJ4F90jDuiZOp+NGVOMuIbXDvHpXl08d/bkI58
         6Q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tFVHBfn89g+8EMGy0bZshKyZFy6K4h3phYQIEBvz1Ao=;
        b=lAOEShuY3dZe9k0o7kqaj7hk5H55Z+JEASL7ee5o+8wuZwnWGvVmWI+36hTGZgt96j
         12Q143aCDtHZ/Lcd8PB4PiIjbQy/CoX5CDx8IbEFndw2A1k8TpI7bBByx4u8Rh2r9mq0
         ILYgKZC8PqnmzvVDn6SF5XREMemA8i5AtvwUVIMgAynxKUpVW+pq9CpcAilibNzWp6MO
         kBFdGtOGJjKAzJB8UeFsZMDIbnA1yuq6kzZsS2NvA+/skZwhRPUhKdoko7g7/eLmCub2
         IXDiIYxdI43bAkiqALl9i3tgls4/v1bHIa2CJVHawiYhr+F68GFC6oX4bCRVIPzV+Y5/
         6pFw==
X-Gm-Message-State: AMke39m6KOJd5e7BULpRp2l/KYYDqVTDKALdYJ3/f25PMQEiu1SuBLh9c1ZfGwMYJlMWKg==
X-Received: by 10.99.223.5 with SMTP id u5mr21487539pgg.58.1489163982393;
        Fri, 10 Mar 2017 08:39:42 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id v186sm19745133pgv.44.2017.03.10.08.39.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:39:41 -0800 (PST)
Date: Fri, 10 Mar 2017 22:09:27 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: bcm2835-camera: remove anonymous field
 declarations
Message-ID: <a7acfee24fab685d28cc5bb088b2fe4288a4aa81.1489163547.git.aishpant@gmail.com>
References: <cover.1489163547.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489163547.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Anonymous field declarations are error prone. This patch replaces
anonymous declarations with explicit field declarations for typedef
SERVICE_CREATION_T in vchiq_mmal_init(..)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../vc04_services/bcm2835-camera/mmal-vchiq.c        | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 803095e..88b379f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1977,16 +1977,16 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	static VCHI_CONNECTION_T *vchi_connection;
 	static VCHI_INSTANCE_T vchi_instance;
 	SERVICE_CREATION_T params = {
-		VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
-		VC_MMAL_SERVER_NAME,
-		vchi_connection,
-		0,		/* rx fifo size (unused) */
-		0,		/* tx fifo size (unused) */
-		service_callback,
-		NULL,		/* service callback parameter */
-		1,		/* unaligned bulk receives */
-		1,		/* unaligned bulk transmits */
-		0		/* want crc check on bulk transfers */
+		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
+		.service_id		= VC_MMAL_SERVER_NAME,
+		.connection		= vchi_connection,
+		.rx_fifo_size		= 0,
+		.tx_fifo_size		= 0,
+		.callback		= service_callback,
+		.callback_param		= NULL,
+		.want_unaligned_bulk_rx = 1,
+		.want_unaligned_bulk_tx = 1,
+		.want_crc		= 0
 	};
 
 	/* compile time checks to ensure structure size as they are
-- 
2.7.4


