X-GM-THRID: 6391488728330665984
X-Received: by 10.99.189.17 with SMTP id a17mr5056087pgf.53.1488135020504;
        Sun, 26 Feb 2017 10:50:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.71 with SMTP id 68ls2457050iod.18.gmail; Sun, 26 Feb
 2017 10:50:19 -0800 (PST)
X-Received: by 10.107.24.67 with SMTP id 64mr4475413ioy.52.1488135019747;
        Sun, 26 Feb 2017 10:50:19 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2454418pfa.4.2017.02.26.10.50.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:50:19 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x242.google.com with SMTP id s67so10145925pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 10:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V7KXv5qKeTQNn9Fs8mNaqsBfUONEdIh5gMASvb8Nb8w=;
        b=Y+XR0dXbmrl7z28WOGP4VvBB1Qwqhg6v2FNO+PVG74Np9TqzToTXfva5U1AC9WpjGv
         Lss/iYq5CEMDUSTJbBjZmPyAGrjY0pqBpStJ9+KI1YkfW71CmHO2RPGVezUsbRLokMil
         ZVLONE6VMYhIsnZxZcXztYDaI/Q2Alra4NjSVbtkwLLmRvPHU9ENtE4b4kk+mGzJfKEB
         is24EdrLTTTxoNs/D6q4Dcg7V12hfFAz7aQHaExf3j2q4xlSU61+2eH0lfxzlzqQPyZo
         RBZmWh9RtzKXmSD6/e5cHM76YuJRVpXshThCu8+Z8p6J5UFYu8YdJeTm3aDWjQkDFHw0
         WXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V7KXv5qKeTQNn9Fs8mNaqsBfUONEdIh5gMASvb8Nb8w=;
        b=rLNpEVgZ9M24N6Lf0YXAuP708VwuZ3laOO4DltkE/gTynRfAdYMFjAg48bQrghXpYy
         gOSrR2oJ6Y8DjhVVzGtw9YJGaG67eGjLU1morBNfijhrerzTatNouCfKU5OEAwS/DXty
         RwrVU++wZoM5ZpC3TlEV7X6TGbEPgrTA464/JAnmew1aQS110MieMcifooFUYWNdJBTG
         rYQJ4XAlAH3NWWmsG5meglxKBcnnabfa5Zz/vIi2Alw4uE787eCTKqKOgi6Ojl/ua9dB
         TcL3BLdZLFOyhab6BqbTQh5AVx+LUALKXenVsmLM13JmBATKnREtqhIrI9qWWR8PB59b
         haxg==
X-Gm-Message-State: AMke39nDxWeD9f27wJDZ1fVCL8KpzwD0QRtaMJm0or15bh6+n2A/5+HlIn4kv0VAynWeu5YP
X-Received: by 10.84.128.74 with SMTP id 68mr13598314pla.111.1488135019551;
        Sun, 26 Feb 2017 10:50:19 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id m12sm26009320pgc.46.2017.02.26.10.50.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 10:50:18 -0800 (PST)
Date: Sun, 26 Feb 2017 10:48:07 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [RFC 3/3] staging: iio: meter: Clean up #includes
Message-ID: <e3ddd60060761d6b581e4a9d54ff2a3b7daf8add.1488133199.git.kdunne@mail.ccsf.edu>
References: <cover.1488133199.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488133199.git.kdunne@mail.ccsf.edu>
User-Agent: Mutt/1.5.24 (2015-08-30)

Alphabetize and separate kernel and subsystem headers.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/meter/ade7753.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index f855c60..5ea3ea2 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -6,20 +6,21 @@
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
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
+
 #include "meter.h"
 
 #define ADE7753_READ_REG(a)    a
-- 
2.7.4


