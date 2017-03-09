X-GM-THRID: 6395563647379177472
X-Received: by 10.13.194.199 with SMTP id e190mr6535282ywd.93.1489083248822;
        Thu, 09 Mar 2017 10:14:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls741194otd.12.gmail; Thu, 09 Mar
 2017 10:14:08 -0800 (PST)
X-Received: by 10.157.37.37 with SMTP id k34mr5476325otb.121.1489083248464;
        Thu, 09 Mar 2017 10:14:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si1357850pfb.2.2017.03.09.10.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:14:08 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so8073860pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 10:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WxRcfjIdPMNXZZGv442lps15/Dtxs5nuKFslYKiucT0=;
        b=eM7EU3cR6qdwIjFaIQcRrfeYg2198ZUXwVDYsB9uqtf3eDeWV3PbxyCpGaVGD+ibxw
         RbIbLb97hy0g//1IGenmLOU10gbWnMoH77xdJg9U+AUcBr1X9qH0lwCx2ruVfQWPBRD4
         q1+KJVHSyKDdR+NHAnsmVY3IVX5UcObTLrz3KU46Mn3srxVJzYd9ZZ6NtDx7h3iisk+6
         GfHdbgiKtmbrLquXOuemGCa3H8jhzwZNDIgGSDsPNeFMkdOOP/JIvcOMfywfcMgNSXCc
         3Cvu2rrZmHPyQCpDb+eto4ukU+N2+j5AkydqiDTFBa9f8BeW8DV0biDD80sSydKdimRx
         /lWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WxRcfjIdPMNXZZGv442lps15/Dtxs5nuKFslYKiucT0=;
        b=nnqE/ol7o2x0ozl/o41laM9SChRUSe8cqCluyOaDLyl563Ui9sjqGIujtlaAvK6RaR
         cxKwy73lMcMF40G7J4NRFK4xquYS1gWoHHcEGZSdxBmSn4vfXNF45G5vcwMtWLkjus3d
         f47VvYjTBCVlI9Ak9cIeUnZoUCMbDG0vZWwOFAB3Ev9gq1W11Pu069dp+X3L1GFW94rc
         TrH2G1i40SD7abO+SJYl+d/RrzH7FEw94V2MQvNaVrm2MkGLnqQs2plsg7JCOOQtoOSY
         31wnTU4O3hdXwSVu6tWRJZ/U6d+L4Q7tB62hkJmYQ0HAWIprgCqk92OgxmFSCnIRkw3k
         nqZw==
X-Gm-Message-State: AMke39lo86E++NF8m2YAB8TqutSZ/w+E5vQWta8FBN/oXA9oC+CJuxBGzQez9TjDs7lV1Q==
X-Received: by 10.98.111.129 with SMTP id k123mr16042017pfc.18.1489083248101;
        Thu, 09 Mar 2017 10:14:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id 132sm13896430pgf.27.2017.03.09.10.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:14:07 -0800 (PST)
Date: Thu, 9 Mar 2017 23:44:04 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: bcm2835-camera: use kernel preferred style for
 handling errors
Message-ID: <ee8fb15c5e07c1abfb72c69ea30f3ecd6856cd24.1489082995.git.aishpant@gmail.com>
References: <cover.1489082995.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489082995.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces NULL error values with error pointer values.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index f795137..d87e2df 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -263,7 +263,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
 	if (!msg_context)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	msg_context->instance = instance;
 	msg_context->handle =
@@ -273,7 +273,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 
 	if (!msg_context->handle) {
 		kfree(msg_context);
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 	}
 
 	return msg_context;
@@ -508,8 +508,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 
 	/* get context */
 	msg_context = get_msg_context(instance);
-	if (!msg_context) {
-		ret = -ENOMEM;
+	if (IS_ERR(msg_context)) {
+		ret = PTR_ERR(msg_context);
 		goto unlock;
 	}
 
@@ -836,8 +836,8 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	}
 
 	msg_context = get_msg_context(instance);
-	if (!msg_context)
-		return -ENOMEM;
+	if (IS_ERR(msg_context))
+		return PTR_ERR(msg_context);
 
 	init_completion(&msg_context->u.sync.cmplt);
 
-- 
2.7.4


