X-GM-THRID: 6395563647379177472
X-Received: by 10.200.36.187 with SMTP id s56mr2837603qts.40.1489083217674;
        Thu, 09 Mar 2017 10:13:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls6945382otc.30.gmail; Thu, 09 Mar
 2017 10:13:37 -0800 (PST)
X-Received: by 10.200.49.99 with SMTP id h32mr2811465qtb.71.1489083217274;
        Thu, 09 Mar 2017 10:13:37 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1353097pfx.8.2017.03.09.10.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:13:37 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so7589189pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 10:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+mqTXY6jCnArLHzefSYGdOam4nGlQYEzQTJW6PdzLGs=;
        b=n6Xq+5eSQ81FUDU3bBWJ51wFkigK13YUzvXPWgkFsnV94U1Lr5uvKScgFq3Q4U204S
         +wGdwvPxDTLI5sgpAawWeGe+hKgd20UsUyycq6gw2e05W6iM4oIxhjuFAjQBLblXQrC/
         DEyoWgYByQnuYf4dKJRJLCuePxgwJ9ihswECdCFm4InbU79N6WXeVvUn0ZxFw1Y1TPSu
         vLqYGMskow9nLPqDt48T6QaiKtScLV4eKn+BZyKr/lm0wtvNPV4oNAq5ugByoxSlHf9C
         fm9FCcoOvgDnE5BuaAgdsYUPFeYK+YPcvD7G7O8UCAbuFZTO46AhXWLjGs5qbZqG6ShI
         T8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+mqTXY6jCnArLHzefSYGdOam4nGlQYEzQTJW6PdzLGs=;
        b=JKS9wsv1DNvyi6ljzctE8cSPtv18RlEhY61azS0GYfHRCloK1XAqvA4yogqNmfVqjx
         4O5if82BJ1Qiq8oTg56zN27G8zPYTgcjq0y0ZPlCWjwQiOpZhO4WvXAeweFBibVLkLvZ
         Gp48xH6OcD1GiOUIiUMWxnVZsGEWSUg3U/48cLo2nzc/wzeAK1z1JsnJwS2UnMVOgisN
         rX2JI0FzfpUrpaot1yvzznHWIyrKrJ+jXMuoulXDwMFhJIU2m7OXrN0nxwz8k+hbqiEr
         2EPXVbx87k8Rx0XjGoT8ItgaaDYhQdDT4BZtpCwCqGS2yNsIKLk0v9RIvYJP3076uZGu
         3cBA==
X-Gm-Message-State: AMke39lJXJzcGnaKouxPniAhYlOKz7UjEeZstz4IMZBZEXiPbwfdvnFiX1K7twydguszBQ==
X-Received: by 10.84.195.1 with SMTP id i1mr18819494pld.77.1489083216980;
        Thu, 09 Mar 2017 10:13:36 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id n15sm13835337pfj.18.2017.03.09.10.13.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:13:36 -0800 (PST)
Date: Thu, 9 Mar 2017 23:43:28 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: bcm2835-camera: add check to avoid null pointer
 dereference
Message-ID: <71d82d5b143c924f775a83a525cbd186d48777dd.1489082995.git.aishpant@gmail.com>
References: <cover.1489082995.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489082995.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch adds checks after memory allocation to avoid possible null
pointer dereferences.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 6126919..a258a72 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -263,6 +263,9 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
 	memset(msg_context, 0, sizeof(*msg_context));
 
+	if (!msg_context)
+		return NULL;
+
 	msg_context->instance = instance;
 	msg_context->handle =
 		mmal_context_map_create_handle(&instance->context_map,
@@ -2008,6 +2011,9 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
 	memset(instance, 0, sizeof(*instance));
 
+	if (!instance)
+		return -ENOMEM;
+
 	mutex_init(&instance->vchiq_mutex);
 	mutex_init(&instance->bulk_mutex);
 
-- 
2.7.4


