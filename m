X-GM-THRID: 6394267453866639360
X-Received: by 10.200.39.100 with SMTP id h33mr4633345qth.73.1488784913323;
        Sun, 05 Mar 2017 23:21:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls6730412otb.26.gmail; Sun, 05 Mar
 2017 23:21:52 -0800 (PST)
X-Received: by 10.157.7.78 with SMTP id 72mr6017157ote.55.1488784912946;
        Sun, 05 Mar 2017 23:21:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si1218057pfa.4.2017.03.05.23.21.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 23:21:52 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so2143531pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 23:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=d7aunacTp/+F2svdxn+9E6BQRoFsRcsViAWLTzDnIPE=;
        b=O0znapyOTOBZcvP0j/JbrXSVmA9XesWY9rFp5uibK1jnYUjTTZJbD+2vcVQtNFWV04
         TYcEB445FKmx+uoz9F9BKSSefNh8aSo4alrwofQ12MMAHXKDgrH/dJsq4igHxBDiHi8Y
         ZY2W3sd7/mNqLiNyu9Jv+MZE80/28IFvAkLzeQbRyxDx+gk1T5A2Of3d8MGCaPWIXHgj
         Q3CMB1d1h+8uhzS0WgjWxPXYk5rlmdOwLOhNeu2C5H75OVmKWcFirgytdlExlBv9GwZX
         Y7vTcAm21TdE5DOTkbGBUPt1kttW8nsdB59G2eOFENCYzRBcNLQXSqnbjSbRtilXiLcC
         dlhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=d7aunacTp/+F2svdxn+9E6BQRoFsRcsViAWLTzDnIPE=;
        b=NI/U+m/jM0eDkvsKWhCGFYwcCk8X5klBBRGetd3hxcQ8zZa2xFOpyFbvfxgEsKe8em
         vFmi9w7yiClgdU3P6v9a+J4mEedss7Mt7zIUoyjfaZtXbpY8PoWQOLIOtQ1gbUiirej9
         cX1d3Tvd+tiK2rMZF3Z81mxc/NMUlvSDhBeonmS19FMH0NO5J6Nab0Lkf4kEleY1b0JQ
         Dqkj5SRqHGjEQKaDFePMjo0UVwFCGz0NbDgme6yW7Mauim7ZsakaixQATQjwolNWsI89
         85B6CgGjI0Tld3RxNNYvaBebhPwWm26yZeRCfKuLEytJBmMJUim8S3U9DlaFhEGhSkS/
         cpIA==
X-Gm-Message-State: AMke39lf0mpxvvoJvfOHm2z+CJb6w5U7Gv7vw+HL8zLR1Shhb39J4Pg6ezTRTgJ4LUMgAA==
X-Received: by 10.99.154.9 with SMTP id o9mr18709657pge.69.1488784912706;
        Sun, 05 Mar 2017 23:21:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id x10sm22772342pff.72.2017.03.05.23.21.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 23:21:52 -0800 (PST)
Date: Mon, 6 Mar 2017 12:51:36 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: bcm2835-camera: replace kmalloc with kzalloc
Message-ID: <20170306072136.GA19014@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces two instances of kmalloc and memset with kzalloc
and refactors function get_msg_context(..)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v2:
	- Return out of memory error number when kzalloc fails
	- Refactor get_msg_context

 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 0f96ac8..87d7681 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -166,13 +166,9 @@ struct vchiq_mmal_instance {
 static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
 						*instance)
 {
-	struct mmal_msg_context *msg_context;
-
-	/* todo: should this be allocated from a pool to avoid kmalloc */
-	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
-	memset(msg_context, 0, sizeof(*msg_context));
+	/* todo: should this be allocated from a pool to avoid kzalloc */
+	return kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
-	return msg_context;
 }
 
 static void release_msg_context(struct mmal_msg_context *msg_context)
@@ -1881,8 +1877,9 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 		return -EIO;
 	}
 
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
-	memset(instance, 0, sizeof(*instance));
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
+	if (!instance)
+		return -ENOMEM;
 
 	mutex_init(&instance->vchiq_mutex);
 	mutex_init(&instance->bulk_mutex);
-- 
2.7.4


