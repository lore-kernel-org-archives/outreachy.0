X-GM-THRID: 7382846406656
X-Received: by 10.182.47.228 with SMTP id g4mr33232128obn.5.1425988987681;
        Tue, 10 Mar 2015 05:03:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.226 with SMTP id qd2ls1231679igb.17.canary; Tue, 10 Mar
 2015 05:03:07 -0700 (PDT)
X-Received: by 10.70.94.102 with SMTP id db6mr18156183pdb.0.1425988987486;
        Tue, 10 Mar 2015 05:03:07 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id m1si79169pdc.0.2015.03.10.05.03.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:03:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so1209669pad.12
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7Ojy3XPQedq7vazWomtvd9xgadu5WKF/UBEuLq8T1EA=;
        b=jIUYvj8t52gLH0oLHO6gQmoJanVr+FcAYUNkD8FSVk8Fkvm1+JHTIYq6goLE87vjmS
         Slil82gYYI0RcqklwEVO2OPc6kl9EOUi0LKyOiw66ZcELq7JysXQAeZKGMDvs11fvUgW
         GCQmloZ22NN3ZX8UGhN5QKjumk91YtdPA91ZDvkCkBnkiCmzptuxAaQVrRHuxPHktEar
         2iLfryDj2Xc4SilxoC+tvMTodUQIz3GVgH6FtrTBn6vEfwPJxjThA02GA16jOrzC6KRB
         uiUNAZK2kWr5L6QiLuEmsKCfKnVg8Vq7RLz8e2TXzcqCe0Sj0LNPFbaFAFfoO+oyPalL
         n8nQ==
X-Received: by 10.66.97.106 with SMTP id dz10mr66342951pab.66.1425988987204;
        Tue, 10 Mar 2015 05:03:07 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id ey10sm666524pab.47.2015.03.10.05.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:03:06 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:34:29 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/8] staging: iio: Use kcalloc instead of kzalloc
Message-ID: <6225245c1e3f49131bf8b76239452294779c29aa.1425987911.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/iio/accel/lis3l02dq_ring.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
index 1fd9009..e6101bb 100644
--- a/drivers/staging/iio/accel/lis3l02dq_ring.c
+++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
@@ -118,7 +118,7 @@ static int lis3l02dq_get_buffer_element(struct iio_dev *indio_dev,
 	int scan_count = bitmap_weight(indio_dev->active_scan_mask,
 				       indio_dev->masklength);
 
-	rx_array = kzalloc(4 * scan_count, GFP_KERNEL);
+	rx_array = kcalloc(4, scan_count, GFP_KERNEL);
 	if (rx_array == NULL)
 		return -ENOMEM;
 	ret = lis3l02dq_read_all(indio_dev, rx_array);
-- 
1.9.1


