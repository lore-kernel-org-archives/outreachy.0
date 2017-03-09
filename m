X-GM-THRID: 6395563647379177472
X-Received: by 10.129.173.101 with SMTP id l37mr5521649ywk.73.1489086329343;
        Thu, 09 Mar 2017 11:05:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls7450232otj.6.gmail; Thu, 09 Mar
 2017 11:05:28 -0800 (PST)
X-Received: by 10.157.21.37 with SMTP id u34mr5634750otf.40.1489086328955;
        Thu, 09 Mar 2017 11:05:28 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1375460pfd.3.2017.03.09.11.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:05:28 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so3233232pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+iHGvnc2Cim5+1w8EoaGTUJUCYH1M0cVaW6sf4rRmco=;
        b=R8Phm2og6RAHCNek0AtCop+zxbTneWwkXTtAVyKMfycjLjOqEbjl2jbugKceIcxT0l
         4+kifpJgbrnfa1nrDKS8kXTQhfnsGsZIhmxj8sfV0DmJpgAoQyTd/xuw6zAzZFTnKjnG
         4uUppkf6o1OEzNX1sRCLa4p2JMytDExOdzAZUiAx/1uLyV0sHztyjLTNlwP0JAjrUBTj
         cY3ipNZFrPqOs6f8CrETbUKwFHrennJWq92iqxxUlaKGjB6lZCdoOQNm/FMM4mRXimeZ
         w+vwFZsWgYUvRao5kW5VQMiSIkT9TsM71S+iL1octyAZjmIalaFFG0/MrxINqtc+1Tct
         2miw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+iHGvnc2Cim5+1w8EoaGTUJUCYH1M0cVaW6sf4rRmco=;
        b=aQGvobXPJ/eIvuDx9//J3vSW47lpJesF241KtZrXyBONu2eN4/1MYcSnQJYWQXv6Ad
         8nhhY7Ok3Y8xoHaJ52uemIIFzhnOEKj6Ei/YC0d4FJI/6wLPdv0Xzwy4yB4EPEIW++F3
         /wlQ6mkuHsntlGo1IppLJcS7GRmdl3ii7IK8xheydl7/EvaUNt/gsl4ehQYG3AZGcpib
         rQ7ylmpSFwJ1H/RmoZW9qQMXRBqqAoyrRhEU3O0cTVhHGd/A53EMeaMCXN3rEqCjF88P
         N6J5Nk3kTH8tqfNlHly8kMhWpu4jhd4kvpNiKTJpHuvVyDu1PPSg/8B9fc84Ag6hcBIJ
         3xmg==
X-Gm-Message-State: AMke39nQkYdVc8U1+CCJbhMHuWa4e95sPmnP8jHqepKMpy5eqy8OUFOBDoNg0uQPgyDd/g==
X-Received: by 10.99.125.68 with SMTP id m4mr15766158pgn.13.1489086328737;
        Thu, 09 Mar 2017 11:05:28 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id a78sm13962910pfc.25.2017.03.09.11.05.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:05:28 -0800 (PST)
Date: Fri, 10 Mar 2017 00:30:58 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/3] staging: bcm2835-camera: add check to avoid null
 pointer dereference
Message-ID: <8e1f8a3edab8bbc2f4267f9a2f8983e22f9cf9e1.1489085851.git.aishpant@gmail.com>
References: <cover.1489085851.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489085851.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch adds checks after memory allocation to avoid possible null
pointer dereferences.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v2:
-- Fix null dereference in memset

 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 6126919..4eead48 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -261,8 +261,11 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 
 	/* todo: should this be allocated from a pool to avoid kmalloc */
 	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
-	memset(msg_context, 0, sizeof(*msg_context));
 
+	if (!msg_context)
+		return NULL;
+
+	memset(msg_context, 0, sizeof(*msg_context));
 	msg_context->instance = instance;
 	msg_context->handle =
 		mmal_context_map_create_handle(&instance->context_map,
@@ -2006,8 +2009,11 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	}
 
 	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
-	memset(instance, 0, sizeof(*instance));
 
+	if (!instance)
+		return -ENOMEM;
+
+	memset(instance, 0, sizeof(*instance));
 	mutex_init(&instance->vchiq_mutex);
 	mutex_init(&instance->bulk_mutex);
 
-- 
2.7.4


