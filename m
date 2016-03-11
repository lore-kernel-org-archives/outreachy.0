X-GM-THRID: 6260867082594811904
X-Received: by 10.66.119.197 with SMTP id kw5mr8263115pab.15.1457721712921;
        Fri, 11 Mar 2016 10:41:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.227 with SMTP id e90ls2187825qga.74.gmail; Fri, 11 Mar
 2016 10:41:52 -0800 (PST)
X-Received: by 10.140.150.210 with SMTP id 201mr8200414qhw.28.1457721712323;
        Fri, 11 Mar 2016 10:41:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id 12si1503681pfb.1.2016.03.11.10.41.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:41:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fe3so89623210pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 10:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QHnZqji2soSJ7W8xjba++9kKuB9wnr7Pcyp5Y3V/LB8=;
        b=ncQAih1zaWRbu7u28EzlYtbrr2/EoWZR3gIft2tsE20XjgPShm9FikO4/43Zhn49aU
         wsAaHoKRpqc8Tf/xq6QGDTXTquyKeKbgCupgOkmCwUx4hlLejTrfqZLwcw9T4h/fdh13
         91LcmaCm18wOQRLbCbPi6+Mxbwht0Iuz2KAMmFsfYTzmRWLyhPltCYAMT4dio6Ngvxob
         daOS54d13wlu1nLJG5PBmN3ydFWX9i5rLAltVGCEStVdwE6AixOv8+s2FySNj4JOi5oy
         QWmHj/w74lAPHHIzpQU0s2q74DPnKrfIWscSgNYb3bZNavorny6TQUHfBxUZzZmbDVmF
         Znsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QHnZqji2soSJ7W8xjba++9kKuB9wnr7Pcyp5Y3V/LB8=;
        b=ltskymDXCmT/daMKcZaWfbkDhRqv5CXhBZypnxBS36vJsa5+g466sYinX64fOxciyF
         LZy82Ai65vtJ0+11LucVv1yj9ab6b8cDwNBO+wjcYAy59kM7t6na3CHVaLmMXzDSBjga
         pAwXKOIRKpTta6MJkb7NhflW1h/TIdOroB+J2UplFR7cNeMh9DiPDsrUH3LZgpNAbif+
         3tsAQ077lI6NLr4x8zPyiLHcsu5AH5avJz98Qb5kcOELCqtxvSpDmMBxw2X8Gn76Wm34
         5BcbYN7f6a+vljoiMG2JoU+CdArL8SkMuhWuqm33A5NbyHncXSzgl4PkOA+jQV9J2piJ
         fTMg==
X-Gm-Message-State: AD7BkJJwRAXilOacOOpvhyGvUDfA7jUDkucHabHm8tC0lFPi9pqciMoRC6KZ7Oe2dMFwMA==
X-Received: by 10.66.141.42 with SMTP id rl10mr18278399pab.48.1457721712099;
        Fri, 11 Mar 2016 10:41:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.50.160.208])
        by smtp.gmail.com with ESMTPSA id t76sm14618418pfi.7.2016.03.11.10.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 10:41:51 -0800 (PST)
Date: Sat, 12 Mar 2016 00:11:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: most: hdm-usb: Remove invalid reference error
Message-ID: <20160311184147.GA17747@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

commit e3479f77("staging: most: hdm-usb: Remove create_workqueue()")
cancel_work_sync(&anchor->clear_work_obj) is introduced after freeing 
`anchor` causing a invalid reference error. This patch removes this
error by shifting the call to cancel_work_sync before freeing 
`anchor`.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-usb/hdm_usb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 9d5555d..ff057b8 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -221,11 +221,10 @@ static void free_anchored_buffers(struct most_dev *mdev, unsigned int channel)
 		}
 		spin_lock_irqsave(&mdev->anchor_list_lock[channel], flags);
 		list_del(&anchor->list);
+		cancel_work_sync(&anchor->clear_work_obj);
 		kfree(anchor);
 	}
 	spin_unlock_irqrestore(&mdev->anchor_list_lock[channel], flags);
-
-	cancel_work_sync(&anchor->clear_work_obj);
 }
 
 /**
-- 
1.9.1


