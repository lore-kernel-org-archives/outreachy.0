X-GM-THRID: 6202847107501522944
X-Received: by 10.129.70.6 with SMTP id t6mr142248ywa.5.1444212884388;
        Wed, 07 Oct 2015 03:14:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.14 with SMTP id 14ls176127iod.21.gmail; Wed, 07 Oct 2015
 03:14:44 -0700 (PDT)
X-Received: by 10.50.43.233 with SMTP id z9mr548362igl.9.1444212884175;
        Wed, 07 Oct 2015 03:14:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si4517244pbt.1.2015.10.07.03.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 03:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so17813019pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 03:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bvqvnv+Oeti80ssdhJeBphQgEr4rjDgIp7MHD9QBGQg=;
        b=aFEEEGufYYx5ABwtZRdbN60Sw5ffeDthxDRt5SnPK4b3Vz3lfSVmIEzb3kB9cmMOZ6
         XDfIW0KloQyygq4CgpTla/whIKb7uM1tytGqszZrLFGNTapRZYg3zs4a7zL3jRGx0Sb+
         6/iWFhIwbOzE1qrbgQS+UvShsJlaeH5c6gHvCtb0rMA7FK6je7DzJqVLDHGaSs5uDxQO
         zfKMf6gdsXjlvkWcQu1qNiJaP2xHqgEf13JyASBSVae2/tfk7FcPaQnRezwl6n9gaRS4
         ZdzjJVH7XPPGGO5mwErO2pN7vQO+vhbdShI566qX8CRTQJZoXfVMA9ebGah6t8puuYxu
         d1SA==
X-Received: by 10.66.121.133 with SMTP id lk5mr290591pab.14.1444212884070;
        Wed, 07 Oct 2015 03:14:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yg2sm38489155pbb.79.2015.10.07.03.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 03:14:43 -0700 (PDT)
Date: Wed, 7 Oct 2015 15:44:34 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: most: video: Changed the return value integer to
 NULL
Message-ID: <20151007101433.GA50144@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed the sparse warning : Using plain integer as NULL pointer, by
changing the return value of function *get_aim_dev(struct, int) from 0
to NULL.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/most/aim-v4l2/video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/aim-v4l2/video.c b/drivers/staging/most/aim-v4l2/video.c
index d968791..8333245 100644
--- a/drivers/staging/most/aim-v4l2/video.c
+++ b/drivers/staging/most/aim-v4l2/video.c
@@ -430,7 +430,7 @@ static struct most_video_dev *get_aim_dev(
 		}
 	}
 	spin_unlock(&list_lock);
-	return 0;
+	return NULL;
 }
 
 static int aim_rx_data(struct mbo *mbo)
-- 
2.1.0


