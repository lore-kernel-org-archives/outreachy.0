X-GM-THRID: 6329748788022870016
X-Received: by 10.129.5.216 with SMTP id 207mr19561188ywf.6.1473759484236;
        Tue, 13 Sep 2016 02:38:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.24 with SMTP id v24ls33503ioi.3.gmail; Tue, 13 Sep 2016
 02:38:03 -0700 (PDT)
X-Received: by 10.36.238.142 with SMTP id b136mr15019293iti.8.1473759483736;
        Tue, 13 Sep 2016 02:38:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si3378921pfx.2.2016.09.13.02.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id ph5so2897495pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Dl74Ue4FLSnSuxN/ysuFNAuw/cezBTqEgRmfIFZV8b4=;
        b=oB1z7zXvhRT6fpeP3HWbhNpVcTV4cBs5JEaSKIfrFa2fMRut9oBlu1XvVVH/AKGguz
         4s+eBFnxemhjFgEZRAOypxOoFlPnK5SXMsQydoyal2FUrB+BTNmtLdybuH4OL9i/x744
         qznTlCpl9k6CADddJzLvAzVdyMNGPospFybnDInKDliIAT0RKYBmDC1x++MLKw5grBKF
         qTkPfBqap6MeaEUoaj0jySuTnEi0Y4hwtScJTFUpheJRf2t1icdWfatMs93zfFX/aMk7
         sZcG7u+kqCJeuTVHghoQWlBquAar0qHvKCBClWuJb6RtPirWmL7QDEiI2KQ73BsYtSn6
         c48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Dl74Ue4FLSnSuxN/ysuFNAuw/cezBTqEgRmfIFZV8b4=;
        b=YAVB/gqCjPBcRyuDGLBYHdYUup1HagwlBLLJ6T33UAKanzHAfB8orJvMzQ8Ha1QSv9
         p1pGp18BXfo8NVyZ3L8VpiOkC5k/WMhIi+A3EwAyW9wKxhVhTWRlNikIjIZB71Rd0jFh
         zQJCo7GGZhui4NxVqzz67L210600xbcY3kiaKBuSabYijPCHnUd0YkXHvv6zy4tR/7z8
         2CnjyYFM9RsMLohWnZsCsccy6qCBjoKMS/i66a2DPxfmiBBUJx2EggcQu+wOYmqHGBYJ
         FUJ4fdyAPP9CuSByU/ngSfYnyJt7E69f4wE7V2lw9cdGCQpURNnPwEaWeJ4fzyYI+Cq9
         4Ksw==
X-Gm-Message-State: AE9vXwMQ8JvmO/YPUF10oQdYli0zjtg6BweASsJ8jsZBcDJ7Ro0tiyySOk9RLXaUv0Jp5A==
X-Received: by 10.66.232.106 with SMTP id tn10mr42652814pac.130.1473759483567;
        Tue, 13 Sep 2016 02:38:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id d200sm29883561pfd.3.2016.09.13.02.38.01
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:38:03 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:07:54 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: media: lirc: lirc_imon.c: Remove a blank lines
 before a close brace '}'
Message-ID: <52445195710fdedb341ed10b111dff92f739dd3a.1473758274.git.anchalj109@gmail.com>
References: <cover.1473758274.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473758274.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Remove a blank lines before a closed parenthesis '}'

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index 1da5cc0..c12053d 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -211,7 +211,6 @@ static void deregister_from_lirc(struct imon_context *context)
 	else
 		dev_info(&context->usbdev->dev,
 			 "Deregistered iMON driver (minor:%d)\n", minor);
-
 }
 
 /**
-- 
1.9.1


