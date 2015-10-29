X-GM-THRID: 6211172728012013568
X-Received: by 10.31.134.2 with SMTP id i2mr3180095vkd.8.1446151344487;
        Thu, 29 Oct 2015 13:42:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.165 with SMTP id k5ls371170igx.37.gmail; Thu, 29 Oct
 2015 13:42:24 -0700 (PDT)
X-Received: by 10.68.89.101 with SMTP id bn5mr3147406pbb.3.1446151344149;
        Thu, 29 Oct 2015 13:42:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si399898pbb.0.2015.10.29.13.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 13:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id z6so50583197pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 13:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wLZ/Ys6REeJWpUZB0EaKyfEHhih7j1QYx2hYHcPLZZM=;
        b=o/FKpzb0M5/2yUM/uFVyelV+EPJrYTn+CTW/Zvfe2IU9UIhHrPIY/XyK7v1WszL9p+
         Np4CeXteul8p7gWClr39VxXRJyIMDFcIqlfRXsZZdCI1SO8auEebMXXvD4F5HgCGFx3U
         F4dHLwdhfNG1MR1IvpVC6mAKTEDTJrCsY5dhj7GMJEnRPlEWiIW9syjBTqww2SMBxhj3
         hLtsJ4HgzFqjRU6ay7jTqDxi+498GvhNyT7Ng5byKaFaXqWeV8KctAO7VRNSgWjP2ufv
         ASvXc53Ls2yfy07ze/p3oZz3WVQ7iFEgZWvgkECftlU7uVS+asLFDaoJyCtSJrnPmbIR
         00JQ==
X-Received: by 10.66.119.201 with SMTP id kw9mr4168903pab.64.1446151343922;
        Thu, 29 Oct 2015 13:42:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id b6sm3900446pbu.90.2015.10.29.13.42.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 13:42:23 -0700 (PDT)
Date: Fri, 30 Oct 2015 02:12:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm72xx: Remove wrapper function
Message-ID: <20151029204215.GA11802@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/gdm72xx/gdm_wimax.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 6e8dbaf..57c51af 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -84,11 +84,6 @@ static inline struct evt_entry *alloc_event_entry(void)
 	return kmalloc(sizeof(struct evt_entry), GFP_ATOMIC);
 }
 
-static inline void free_event_entry(struct evt_entry *e)
-{
-	kfree(e);
-}
-
 static struct evt_entry *get_event_entry(void)
 {
 	struct evt_entry *e;
@@ -180,11 +175,11 @@ static void gdm_wimax_event_exit(void)
 
 		list_for_each_entry_safe(e, temp, &wm_event.evtq, list) {
 			list_del(&e->list);
-			free_event_entry(e);
+			kfree(e);
 		}
 		list_for_each_entry_safe(e, temp, &wm_event.freeq, list) {
 			list_del(&e->list);
-			free_event_entry(e);
+			kfree(e);
 		}
 
 		spin_unlock_irqrestore(&wm_event.evt_lock, flags);
-- 
1.9.1


