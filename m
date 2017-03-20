X-GM-THRID: 6399599665816272896
X-Received: by 10.129.141.75 with SMTP id w11mr3143359ywj.83.1490022916107;
        Mon, 20 Mar 2017 08:15:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.50.212 with SMTP id y203ls3744361ioy.7.gmail; Mon, 20 Mar
 2017 08:15:15 -0700 (PDT)
X-Received: by 10.36.66.80 with SMTP id i77mr386499itb.37.1490022915173;
        Mon, 20 Mar 2017 08:15:15 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 190si1392010pfv.3.2017.03.20.08.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 08:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so11780921pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 08:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uIDr4r/+nJzJSsYYhXArLyYZMGbJ6gMqTS5UOrxd3SU=;
        b=M6GgErfYodhIRWoJXzD0kRehOROZHn3h7e5VOfxlVanc+88iv/t70lAZti82HLWmuI
         npwWCilAeXBme5kI0Blne5CBp3H8RgI7GoaMYVA3L5CBU52mFhfqbYTqrTJmcuThLj7T
         vj0xRUrP0JCPYUSo4D8qDGX5+DaVb7ZPo17Ucuj91M2qRVS3KKNtRuyy6S3f68/KG9ux
         ANgZUlVbgMfLLi4vX1oy1ER7EPJXcQKMQuZvs8O0d3BWCpSYhHDTke3NyjNZTKfFRgOO
         OSXTECdZl/ImXuGnP+vFuf5CV7i1161v3yZm+85+mV6ZM2tGK44Y59WxIWEFcEy2PiMb
         UhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uIDr4r/+nJzJSsYYhXArLyYZMGbJ6gMqTS5UOrxd3SU=;
        b=X14u5UNo46CRG62FPiLnGmqiSXPeOV55TuAx+JcbPJedOjiJvf9prHve2ql5gKhVeF
         h5U3L2EmcYMU5/leD413cp8ttNvkzA7ktNDtK3qK/wllXnV6+tHCIClditQFbXFjoEsz
         UKMI+ugIr3LX3t9/UUhomMM2pZwQ2R4ChM3GLGvhK+rCcMEPHwf0HymOICPCdCaocBsF
         eJouUpkoQHkDXBRYpBpNwXOxW0sGuCIb/WNyRfuFYXsrNqKj4NJwnZn8mUb/4+m192Nj
         KqwTWYp0HoztXHT9qOBP6cs3191siPJlsfctZC2l/nqAQng8WiwqdSnn7IY7ie2LduxF
         Mo+g==
X-Gm-Message-State: AFeK/H0uLkm0dDn4TEEdw9vadaS1/MQVlTqvWd7J+VO6yftFc/ibe+3KTbE2qTzzlaXsgQ==
X-Received: by 10.98.141.138 with SMTP id p10mr33060542pfk.111.1490022914785;
        Mon, 20 Mar 2017 08:15:14 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f205sm33992325pfa.35.2017.03.20.08.15.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 08:15:14 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: ade7754: Clean up #includes
Date: Mon, 20 Mar 2017 20:45:05 +0530
Message-Id: <1490022905-18422-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490022905-18422-1-git-send-email-singhalsimran0@gmail.com>
References: <1490022905-18422-1-git-send-email-singhalsimran0@gmail.com>

Alphabetize and separate kernel and subsystem headers.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 42f7b06..fea93d7 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -6,18 +6,17 @@
  * Licensed under the GPL-2 or later.
  */
 
-#include <linux/interrupt.h>
-#include <linux/irq.h>
 #include <linux/delay.h>
-#include <linux/mutex.h>
 #include <linux/device.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
 #include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
 #include <linux/spi/spi.h>
 #include <linux/slab.h>
 #include <linux/sysfs.h>
-#include <linux/list.h>
-#include <linux/module.h>
-
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
 #include "meter.h"
-- 
2.7.4


