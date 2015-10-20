X-GM-THRID: 6207482452562149376
X-Received: by 10.194.71.166 with SMTP id w6mr1079272wju.6.1445371023394;
        Tue, 20 Oct 2015 12:57:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.231 with SMTP id fb7ls939944wid.38.canary; Tue, 20 Oct
 2015 12:57:01 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr1078418wjd.4.1445371021531;
        Tue, 20 Oct 2015 12:57:01 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id d7si185692wiy.2.2015.10.20.12.57.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fx6so61479078wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GFb5aBmxkwA+C9Tao2bkopATMEA8zRJ1wZpsoJiwLaI=;
        b=YU/fUV+scDP1JURt4wOKIeBw4/za0zeLOwg8ibzum/Gciel1KZvBoGWRvnMxEaXhui
         OE1ub9/hEBjBP6Fxpxhg1xRV7+LKGP6T2+qUopsPuIfjf+/zRwjpcP5BpNS9//QPMdAs
         1LGrS/rPpGfCEMX6kHcMt7e+Qgt2I9wZ15Vc/Agto4Yh6Pc1Jinwsa0gQrnRgiVOAZMp
         /vOGbRrc6EByJWsNJrhzCL0qTK+p/2dioeiJOG8PDQ2Q/nR7POMxFVvkgEuSxplPX+X8
         XhuRMF7p4+Ftk/qeaNrw4IYcIIfRiihGd2LgKo+vmNuGsJD8Xj/JTWWIjNnLIVSYdTwJ
         AaPQ==
X-Received: by 10.180.240.169 with SMTP id wb9mr30809446wic.88.1445371021448;
        Tue, 20 Oct 2015 12:57:01 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.57.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:57:00 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 4/9] staging: iio: accel: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:42 +0300
Message-Id: <d2299b5e2253d21e7ffc20b7dc35a3fce5d6c667.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/accel/sca3000_ring.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index 23685e7..6d19e12 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -267,7 +267,7 @@ int sca3000_configure_ring(struct iio_dev *indio_dev)
 	struct iio_buffer *buffer;
 
 	buffer = sca3000_rb_allocate(indio_dev);
-	if (buffer == NULL)
+	if (!buffer)
 		return -ENOMEM;
 	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
 
-- 
1.9.1


