X-GM-THRID: 6336886336201424896
X-Received: by 10.36.245.4 with SMTP id k4mr3844066ith.28.1475421324634;
        Sun, 02 Oct 2016 08:15:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.198 with SMTP id 189ls2599247iof.0.gmail; Sun, 02 Oct
 2016 08:15:24 -0700 (PDT)
X-Received: by 10.36.185.24 with SMTP id w24mr2899442ite.16.1475421324247;
        Sun, 02 Oct 2016 08:15:24 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si6429862par.0.2016.10.02.08.15.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t25so2120224pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=orsOIoHea6lXP21xuuKTXXrLR6RRqimPFCHxJocov8o=;
        b=ehhO2wycna7q9fURGLUFK9cfsJUFB9Z0GbI3xriIWlc0aMeAk7bCrymXHoXtCYL+AT
         IFR+dVXwjjPRKQdKbqu1i6omjs6GX6F52EK1xbVrKomaNV3W2wEYUOK1WlLzNY8GLhto
         MNCOXm0HCGmz8XntWOWoJ8HnvpDZ/mFvmSp/uEseXBI+Ij31aTa37FB5t8N4lAJ778Kk
         eP0XTXITbLVbrVc5UkUirp4Bved8kHa7IWTujWruM7dhKb6Fllvhrto2zsa0iuHhZKe8
         33h9jeXravCMWB0suuo2u9Ul6iaVD55SwPvcuATZnEoi7qHeusVXopy6S9sUUs1GXmm7
         iRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=orsOIoHea6lXP21xuuKTXXrLR6RRqimPFCHxJocov8o=;
        b=YZkjL7AG9VAPuFh6NSoIe9trJ78AB1shkfYmRex6Yj0wMT2XRRVHSUFkapeV1tNkaz
         Vf3M/vWQJ1R/AyIGTlQ4KBOAijnxGyoPReQBJHlsCyJ6GpuqkQuY4msAbaMNoqUMY0Gj
         fvIatk4IMxpNzlF3pQpbIaymZWpssk7BPxkz7+RkH4hudU7jS3j7DraM2SepGU8wbRKB
         bVfXH7lK9PxifZ2lN+72xxs4Dj30Dyic9Qv2fJlV5d04OtyDjr9dnYIkbe+h+DGSmqK4
         z4O4+iaF+h8gkP55rrZhC+laahGzmhNHjCn+GXNLEmW7ZKBYvuYOmKdVg/UwFQcVdCnU
         rnWg==
X-Gm-Message-State: AA6/9RlTUmTqIvgcLwl0d08YmZ7bBNx9eMSnngTJirOoFiwfT5QEvcslXjLGBRXvGx8hAA==
X-Received: by 10.98.138.207 with SMTP id o76mr30430924pfk.100.1475421324077;
        Sun, 02 Oct 2016 08:15:24 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id t7sm11115366pax.46.2016.10.02.08.15.22
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 08:15:23 -0700 (PDT)
Date: Sun, 2 Oct 2016 20:45:14 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: arve@android.com, outreachy-kernel@googlegroups.com, knaack.h@gmx.de
Subject: [PATCH 1/2] staging: android: ion: add comment to mutex
Message-ID: <20161002151505.GA4095@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl issues:
CHECK: struct mutes definition without comment

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/android/ion/ion.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 5f94aee..0941b63 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -53,7 +53,7 @@
 struct ion_device {
 	struct miscdevice dev;
 	struct rb_root buffers;
-	struct mutex buffer_lock;
+	struct mutex buffer_lock; /* protect from buffer */
 	struct rw_semaphore lock;
 	struct plist_head heaps;
 	long (*custom_ioctl)(struct ion_client *client, unsigned int cmd,
@@ -85,7 +85,7 @@ struct ion_client {
 	struct ion_device *dev;
 	struct rb_root handles;
 	struct idr idr;
-	struct mutex lock;
+	struct mutex lock; /* protect from handles */
 	const char *name;
 	char *display_name;
 	int display_serial;
-- 
1.9.1


