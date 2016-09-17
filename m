X-GM-THRID: 6331272586985472000
X-Received: by 10.13.231.68 with SMTP id q65mr12903176ywe.58.1474196403712;
        Sun, 18 Sep 2016 04:00:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.40 with SMTP id c40ls1897249iod.24.gmail; Sun, 18 Sep
 2016 04:00:03 -0700 (PDT)
X-Received: by 10.107.9.79 with SMTP id j76mr2668452ioi.79.1474196403325;
        Sun, 18 Sep 2016 04:00:03 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si4430820pab.1.2016.09.18.04.00.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so5568145pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 04:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qKYifgCRGT6zkczjGMCSsxkohJrIkmkv3uoWh8988pM=;
        b=BNAM5wywSNkfLAjkmXkFHK26jzDzCaxPd6T36HxNuhgi45mWpsA4V+QVOZV7/GAjvJ
         ygRYkXdoJeltlXEFJzJ57N84HKKe4kEWvE1sVe5mt+SqANr5BmL8vVWI6uiGv8+fRaU3
         AfyYYY+mCfByD4WNp6wl2/bIvdfDTruYEpmmf0gwJyKH9xB8Z+LswkM4gSEhheATBoSB
         CdEJ7BRURnvTZyv8E4cFeA0a+vc4h9tTQ7aorfrIyXC+VymdlsBe/6AYuMHZ+bAlwoOX
         MdcRXcII06ipRFN3Upe4Hea4V/qfB/WWq4KftbYTU8o463/6SqJEoaJ9iPyP/6LJA0Q1
         +WzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qKYifgCRGT6zkczjGMCSsxkohJrIkmkv3uoWh8988pM=;
        b=UjgFgi2Bvn4BRK4CQR4QrUwZVIYI4LKFSTA2+mmdkiqK9Uk7YBc2fUk1sAcnM2lJLx
         siumMl0N/s6D0hzIdndJyJ3gwnt6/m3Gnsr5FzxuPIfxYx4IL3XitrZzuD/HXgyBiJ+9
         bxGOiODnfpgCdCAnkakXQmFUO8gYgE9d2MiRe+hfx7JQ/n/9jzgJbMJzJvFjZFBA+KAl
         ZCA+ayESjV7nZGlrSFQByIaVmyfJpG9lnqTUbrStXMW+oZKhTX2aM+cZd97Wd8jP/XcF
         /xvc1jO1hxaiTZH0c+bkU406ww7o5XShIWmfj3/Hw4UEF0kLXJPo40uMLxt9pEcQjDjR
         Q/Tg==
X-Gm-Message-State: AE9vXwPf5Iwp5t4AxG8NW72B4DhglXZh+rDPww7yt4/ylmvbtcqrkdZfSGHO28zF4rtULQ==
X-Received: by 10.66.120.11 with SMTP id ky11mr38003811pab.79.1474196403136;
        Sun, 18 Sep 2016 04:00:03 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id q8sm23864709pac.32.2016.09.18.04.00.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 04:00:02 -0700 (PDT)
Date: Sun, 18 Sep 2016 05:29:03 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] Staging: i4l: Do not initialise statics to 0.
Message-ID: <20160917235903.GA24748@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not initialise statics to 0. Static variable by default initialise to 0,
so no need to explicit initialisation. This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
* Correcting the file permission issue.
 drivers/staging/i4l/act2000/module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 68073d0..39a8940 100644
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -28,7 +28,7 @@ static unsigned short act2000_isa_ports[] =
 static act2000_card *cards = (act2000_card *) NULL;
 
 /* Parameters to be set by insmod */
-static int   act_bus  =  0;
+static int   act_bus;
 static int   act_port = -1;  /* -1 = Autoprobe  */
 static int   act_irq  = -1;
 static char *act_id   = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
-- 
1.7.1


