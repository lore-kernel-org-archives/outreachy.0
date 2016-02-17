X-GM-THRID: 6252315246455685120
X-Received: by 10.66.163.4 with SMTP id ye4mr2629193pab.23.1455730583680;
        Wed, 17 Feb 2016 09:36:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls4989762qgd.34.gmail; Wed, 17 Feb
 2016 09:36:23 -0800 (PST)
X-Received: by 10.13.194.67 with SMTP id e64mr2522858ywd.17.1455730583155;
        Wed, 17 Feb 2016 09:36:23 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id 79si361034pft.0.2016.02.17.09.36.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:36:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fy10so14701286pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ETBKco1eDNQ8Con3aHE5FznxGRmY9gpw1pTr06AvxFE=;
        b=Zziky/5unlW0mAUUieBaHpIlqn9VkfqtOiUMBZtCJNkVpqK+wdq8rOH6NxDwClI7VT
         2doQ/MGCj98zXdixfoSaBMx2ED4Myi42ENCU2RVonDpK4IOOtY/d7elQolT1bLXLy+GJ
         jDvlORb3ZEXg5X0/8dMR2yEWd1QJTrkDKY6fxEG0RbDQWhyCOcI4p8KdfqhZH1flBZKu
         i6mXMnib+r3MYbFCPq+DwEmhSZpLjGYZNEa5bOZ0k4p8riQRLnSXcEDkREpamsOhAxn6
         W+E3oX8TbaVmu9FuJVGP56R8s9OHd3nFo48LE6BOys4Q6htF73UFbY4s0KsvvAQvDhAV
         vVOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ETBKco1eDNQ8Con3aHE5FznxGRmY9gpw1pTr06AvxFE=;
        b=Alg1V0hcA9JtNmcHbjncebiIqkQgU1nmnpYXdRM1cNodlbXyOD3ExHTsxzisMKWMOw
         su8nVnl+KF740Yr5PT29AQdopicnHc0HnarPYqQqu8WZsfIPVQPz9Tl0d9vHAhIJSfur
         DzhVPszvNpH8+boTbqoIiGAQhHPPWH/VOt+FsfUfGlPtSS3sF35mv44NQOlOEgba4sPs
         T1+FOaQlG6WThDmXvmuEBj1sfxk5qH+tv+daiJiwobd1V5/sSY5LSj0Hd4kPWInSUH1R
         O4EHjaSpzNUmv5K+svJ8tH4pLVbeUg2JmL2RlATQEY0aKykFrRh0AR3Nbb/RYUuCkrCP
         ZKXQ==
X-Gm-Message-State: AG10YOQb/N7lY1gniLbD/xvf6AjoxjDGqvh6VXitbN+ZgBmYvSW0DEKyRPfberk0hKEDaA==
X-Received: by 10.66.90.136 with SMTP id bw8mr3842871pab.52.1455730582970;
        Wed, 17 Feb 2016 09:36:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id by3sm4013035pab.39.2016.02.17.09.36.21
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 09:36:22 -0800 (PST)
Date: Wed, 17 Feb 2016 23:06:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: wlan-ng: Remove flush_scheduled_work
Message-ID: <20160217173614.GA9911@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

flush_scheduled_work() is scheduled for deprecation. Use
cancel_work_sync() instead to ensure that there is no pending or
running work item.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wlan-ng/prism2usb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index 194f67e..ae6a53c 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -177,7 +177,8 @@ static void prism2sta_disconnect_usb(struct usb_interface *interface)
 		tasklet_kill(&hw->completion_bh);
 		tasklet_kill(&hw->reaper_bh);
 
-		flush_scheduled_work();
+		cancel_work_sync(&hw->link_bh);
+		cancel_work_sync(&hw->commsqual_bh);
 
 		/* Now we complete any outstanding commands
 		 * and tell everyone who is waiting for their
-- 
1.9.1


