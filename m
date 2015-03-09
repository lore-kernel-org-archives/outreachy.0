X-GM-THRID: 7207946027008
X-Received: by 10.52.62.68 with SMTP id w4mr26343965vdr.1.1425897836193;
        Mon, 09 Mar 2015 03:43:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.100 with SMTP id jf4ls906520igb.9.gmail; Mon, 09 Mar
 2015 03:43:56 -0700 (PDT)
X-Received: by 10.50.55.102 with SMTP id r6mr49312830igp.1.1425897836009;
        Mon, 09 Mar 2015 03:43:56 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id gb13si2538489pac.2.2015.03.09.03.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 03:43:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fa1so65637162pad.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 03:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bJZeM97Obb2DcSOGUTyDz4SUcdnJXmzGDx7IieAYHw4=;
        b=MA0nUOxOvzwqwnbvm+JgywQ7WiyfK++3DO/bIdVbRvO5VMHz9MCBILpjQy1vaTY8tq
         KqTjm+pUiiPf5KyNXUPAzN4sD3OeKtHSeofqBEzNBbpxnfPOTB90cVhyv0M0rWLSFx+l
         kdPD12zEwTJMZ7GSpa2QgQ0irNp0gODG8tt28UjUy/VjXYEg94c+Ve70k7UsE5St7xEB
         C+3dhuW9W+bszu/ustpkAEF9m2qy6eiXPSVSLWHxP+Ax5uHt4K7kaT9Irm6WOtKc6V5F
         Xomoh5XiDztu5zJ/Qgpij7kPMTbFOYYEEFnxffrsADy7+uw9g6x947iA3Imj8hS5o4xC
         nOEw==
X-Received: by 10.66.124.129 with SMTP id mi1mr51985333pab.21.1425897835895;
        Mon, 09 Mar 2015 03:43:55 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.18.210])
        by mx.google.com with ESMTPSA id n10sm18603765pdp.18.2015.03.09.03.43.52
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 03:43:54 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 3/5] drivers: staging: iio: meter: Removed unnecessary variable
Date: Mon,  9 Mar 2015 16:11:18 +0530
Message-Id: <1425897680-6179-4-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>

Variable ret is used only to store the error code to be returned.
Hence use of ret is removed and the return statement modified.
Coccinelle was used to prepare the patch:

@rule1@
identifier ret;
expression e;
@@

-ret =
+return
        e;
-return ret;

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/iio/meter/ade7758_ring.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
index 3792b57..9725a04 100644
--- a/drivers/staging/iio/meter/ade7758_ring.c
+++ b/drivers/staging/iio/meter/ade7758_ring.c
@@ -120,8 +120,7 @@ int ade7758_configure_ring(struct iio_dev *indio_dev)
 
 	buffer = iio_kfifo_allocate();
 	if (!buffer) {
-		ret = -ENOMEM;
-		return ret;
+		return -ENOMEM;
 	}
 
 	iio_device_attach_buffer(indio_dev, buffer);
-- 
1.7.10.4


