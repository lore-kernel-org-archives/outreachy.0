X-GM-THRID: 6392600442196459520
X-Received: by 10.157.1.33 with SMTP id 30mr2849645otu.101.1488393275222;
        Wed, 01 Mar 2017 10:34:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls1442327iof.31.gmail; Wed, 01
 Mar 2017 10:34:34 -0800 (PST)
X-Received: by 10.107.4.145 with SMTP id 139mr2933798ioe.90.1488393274297;
        Wed, 01 Mar 2017 10:34:34 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si185245pfz.1.2017.03.01.10.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 10:34:34 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id x17so6644244pgi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 10:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VxbRSBF7Ile/9oX69O+FOzWr+ltfmWJ6xFM1wqUxnn4=;
        b=VhzTk5Ro9eJ4sEK+IzpUIWpdolKFgX1KEhwGnDupz2dNouSamHYKm1SUizxVhhDyIK
         pN5m+SCApRsT/Xdv3Fr1uxqGYHD5qOmbA4BEha2z3wKggxV4CL9mV25gXedXotzsdbns
         eYZXndMXuTA/h0SdbfGQIFvPyyGfJv89YokFGEppEVsQ5CGLYCOrAAuuj3jyiel1jjw9
         HRMGkKyjba4oOk0I53kdzkDN/3rrhjig/FuN/9lIKSbUmWe3LQslq3DshCyFHT6Bk5WF
         a3xCwPVLb1L4YCTVofQNwiSL8iZtZ2OiD3v49gH3UsRfGFpwxiwKIeQzOEtRBxHeaCDY
         z7aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VxbRSBF7Ile/9oX69O+FOzWr+ltfmWJ6xFM1wqUxnn4=;
        b=Qf8RH92w9cku5vuMfEAc/OMuTMldFTRS53ilPuCUxJYl1hpTbcl8gNLQmJHt/cqgZo
         N4qPwRNX37DJgZhnXa9rSTfQ9Tyu9KIZsP27BQ6+GS97MKiUZ9ZQspUg3J7gUc9Uf+7q
         nlgy6lYbGfeKi+3oeU1LTnxDa0W1RBVF6ozc3RGAqXBmEZ1XKHC2Wb8FeYp6drgkP1lx
         R7zc+jlfkqNBzrVUry17p9BZIhPXsyqjaQzXISDJd5umWZYlX61Ig12574exvD5NnVz9
         WMaJRcNPZJZ3XD61ludyI7dxTBB1zC2/UxiYAPnBswMN5EfjSWhYTLGV/pJx6fs22r/i
         IjMQ==
X-Gm-Message-State: AMke39mNHF7+sSSCROLG2D+HSritIQLPUpst/kURChqDJF9++Vm0Y77uzXMiKcQNGwHXrw==
X-Received: by 10.99.9.65 with SMTP id 62mr10360060pgj.22.1488393273966;
        Wed, 01 Mar 2017 10:34:33 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id f21sm11965924pfj.111.2017.03.01.10.34.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 10:34:33 -0800 (PST)
Date: Wed, 1 Mar 2017 23:54:01 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: bcm2835-camera: prefer allocating memory using
 sizeof(*ptr) instead of sizeof(struct type name)
Message-ID: <20170301182401.GA15456@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using sizeof(*ptr) instead of sizeof(struct type name) is more robust to
errors.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 53e275e..ff7be55 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1911,7 +1911,7 @@ static int __init bm2835_mmal_init(void)
 		num_cameras = MAX_BCM2835_CAMERAS;
 
 	for (camera = 0; camera < num_cameras; camera++) {
-		dev = kzalloc(sizeof(struct bm2835_mmal_dev), GFP_KERNEL);
+		dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 		if (!dev) {
 			ret = -ENOMEM;
 			goto cleanup_gdev;
-- 
2.7.4


