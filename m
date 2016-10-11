X-GM-THRID: 6340039641563922432
X-Received: by 10.157.38.241 with SMTP id i46mr132948otd.82.1476155557964;
        Mon, 10 Oct 2016 20:12:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls3580883ith.10.canary; Mon, 10 Oct
 2016 20:12:37 -0700 (PDT)
X-Received: by 10.66.81.194 with SMTP id c2mr343669pay.158.1476155557614;
        Mon, 10 Oct 2016 20:12:37 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id x14si138620vkd.3.2016.10.10.20.12.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b186so375178vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZUWxzM0p5ty07E83E4LRtqQBs1iH5ck7XN057RvSKLI=;
        b=q5YM3CRYpqnAtMtKm6rNOBTKRIIgbOlN2cIsBxDj7I4MDkAcp4JeDESvSr2zyCOt/i
         XgoCy+wWiP9OPQGhLLni3hAPkk5baP+RXHfSwai4uPrEI7Yld8nkaGd67WZ2Vh0092Wn
         SGzYWsVbjUh+nAx56GoZibPl8AGrKoAB/GPAj7+dftu4ZySfgwLJ2ELWzvQghZ4B9aLf
         K9pUQgLr9peuxOR05mT9hHkm2x+u+6lmHwfCkg6aRt/9B9wN+K8YN6YfWzdURKabxlui
         MsVLlmrM3KeHP1IxWVvguql5KClAz/Xi71oxEcTV3flNhBcJm8YFxv4FHHtPeUGbSSl/
         0hOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZUWxzM0p5ty07E83E4LRtqQBs1iH5ck7XN057RvSKLI=;
        b=m0QzCxMNlhz6ngtq9VujuzuXcABvxpILhHigTtorw+Kpz27VXCzaXKOXmI6whF9DQk
         lRI0QTicJ6nAyq2adSvLTdospAsCXRwLoIOMqs2sPpnnRPH4f9HQ4plOjz7jz8IGHXJa
         TMej79WSmLEmdlDElEyFoZPgG5vu9Yh6l5fp0ZtVbwhfjZ4rickSFIuFs8wjJFCxGqUA
         q5p3xq103aXfagaeA29vCMDA3rtgphRryJ2WBy6MCpeIW8wyLCL22AAJq9xz20gVtpK0
         7qcpEiwDNKKT7MGV4o/bN+P/cOfv5Fv2TytvMUzhDzuzPHGJeYRImQFYz0Z6niLb3OPl
         CIkA==
X-Gm-Message-State: AA6/9RnqQgCyHiYMVZhe2Pt+yVwCjGUx/xh9DEEV4ldg418IYgTiineOLFBAF/0y/2h5Aw==
X-Received: by 10.31.84.195 with SMTP id i186mr1287507vkb.66.1476155557428;
        Mon, 10 Oct 2016 20:12:37 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id b186sm579136vkf.15.2016.10.10.20.12.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:12:37 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:12:32 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: greybus: Add blank line after variable
 declarations.
Message-ID: <20161011031232.GA21944@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Missing a blank line after declarations

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index b625169..5c76067 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -114,6 +114,7 @@ static int gbaudio_map_widgetname(struct gbaudio_module_info *module,
 				  const char *name)
 {
 	struct gbaudio_widget *widget;
+
 	list_for_each_entry(widget, &module->widget_list, list) {
 		if (!strncmp(widget->name, name, NAME_SIZE))
 			return widget->id;
-- 
2.7.4


