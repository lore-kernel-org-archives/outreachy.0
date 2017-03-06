X-GM-THRID: 6394405934540521472
X-Received: by 10.157.45.11 with SMTP id v11mr7287380ota.105.1488813705438;
        Mon, 06 Mar 2017 07:21:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.6 with SMTP id a6ls2559358itd.22.gmail; Mon, 06 Mar
 2017 07:21:44 -0800 (PST)
X-Received: by 10.99.8.196 with SMTP id 187mr6674154pgi.115.1488813704647;
        Mon, 06 Mar 2017 07:21:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si80396pfd.3.2017.03.06.07.21.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:21:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so3786041pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=S2QIkQao5wXohjsT5vDgIM3mtFTfu4btzLQ+L7OWj2g=;
        b=ZATi1xyb051zpna2I9CsSby7vG4grVGnh/7NjQRvb8uUHu4NqEDohNfBpc71+H7GEH
         4gVOwyUevOmXWgWkR05WoVW8n7BKwN/FPEtctgFYcx7+6JeeKSThnFMKwVTVsjwz/Gg4
         wijR+/lhyjYkgVzW3V/NRD5Y6SDRGDw2DpZ3wV4TlypivTWiFedhTLkXLe9jZ7Z9wP0i
         Xcy79sDu1gBA8KQB99KsQCngWTfxA5OwCBehqj/fzEM0GGh5Dkjve9+38Ro6/YvT8iLP
         OmLQpufMSRyN4julmubNG78GB2F8NAiuAs3uPRlkzBWT3HDInVw3iOb2njHg9l45aGQU
         GzbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=S2QIkQao5wXohjsT5vDgIM3mtFTfu4btzLQ+L7OWj2g=;
        b=Wldr0dQdkQFwxtMqAruE1FjbH34pxk5S/QBGNFhYfw+YAIPIVAt7VaPL9XH5g6BbLK
         Aoqn1DDzPRlCDA+0QWksx5hdcu8hjlg1Q1hW/PR2UUCrzWipTgn5GyryNH+XuG1Z8+hp
         U5YR2zNYIBPuW5iG3WrDG+Fo8sADO0rrq+cVneShCpuAW1LLurYkgq0AwNgZ6ae+Ycp5
         BF5its18JYuIfg7PWW3Aq6lSaApwsN4MwcB2gou8bSxdZL6GwOlXA1goIDIIq1gXzwUJ
         sajPYE9R187dY7hzPNWL5gwWhZQohfkMhvHn9VhctYA7/a5x41OxnQ+1Pq0BcbR1xmyb
         SNiw==
X-Gm-Message-State: AMke39n2XmzCKymgNGYs+y1UeZjy7aYWlwGwhNfU9h/bJz2PjuSdmwoaOIhInopTB+iv+g==
X-Received: by 10.99.238.5 with SMTP id e5mr20838920pgi.49.1488813704460;
        Mon, 06 Mar 2017 07:21:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id u75sm40575672pgc.31.2017.03.06.07.21.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:21:43 -0800 (PST)
Date: Mon, 6 Mar 2017 20:51:27 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: bcm2835-camera: remove redundant function
 get_msg_context
Message-ID: <0dcdda30438c63c4728010a955cabe94f5b671a7.1488813479.git.aishpant@gmail.com>
References: <cover.1488813479.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488813479.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes get_msg_context(..) with a kzalloc at the caller.
This is safe as the only usage was found in mmal-vchiq.c which has been
refactored.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index ded9a99..1650bbf 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -163,17 +163,6 @@ struct vchiq_mmal_instance {
 	struct vchiq_mmal_component component[VCHIQ_MMAL_MAX_COMPONENTS];
 };
 
-static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
-						*instance)
-{
-	struct mmal_msg_context *msg_context;
-
-	/* todo: should this be allocated from a pool to avoid kzalloc */
-	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
-
-	return msg_context;
-}
-
 static void release_msg_context(struct mmal_msg_context *msg_context)
 {
 	kfree(msg_context);
@@ -394,8 +383,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	if (mutex_lock_interruptible(&instance->bulk_mutex))
 		return -EINTR;
 
-	/* get context */
-	msg_context = get_msg_context(instance);
+	/* todo: should this be allocated from a pool to avoid kzalloc */
+	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 	if (!msg_context) {
 		ret = -ENOMEM;
 		goto unlock;
-- 
2.7.4


