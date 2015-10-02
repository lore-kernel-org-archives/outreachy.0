X-GM-THRID: 6200774307110453248
X-Received: by 10.112.40.17 with SMTP id t17mr2403694lbk.10.1443782277489;
        Fri, 02 Oct 2015 03:37:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.98 with SMTP id fn2ls306818wib.54.gmail; Fri, 02 Oct
 2015 03:37:57 -0700 (PDT)
X-Received: by 10.180.149.210 with SMTP id uc18mr793450wib.4.1443782277155;
        Fri, 02 Oct 2015 03:37:57 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id xl3si41351wib.1.2015.10.02.03.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id lk2so27690199wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=blgXVedxr0d4kINZYj2scCDyo5H9+yDtJHg9pUz3o4w=;
        b=uj/qXHdxBeN9mabXC1Ua7pYuFRQhoyUAkhS18M0G+cnlRvIVWRmaTNpEEIYd7JCqU1
         kNh3xnYPs4Z8TjRQTvi2mDzozXO8gkbQ0rcIVxHn2JiYptj1DGewKmGoDjwcZE5yqhrG
         cYyC0w5I0pxLPof91trqt6Ffybov1V4NJ+HU2lJoyLh5PZ2B32idWWM2AimeuMg3d51Z
         7ygsmHnuO7SQ+E5IZDbTUc9sHTBRGe+S6t9VGU8D9LLT7bkC4m57gIaHFnDP5FuIYS1d
         XnNxjknHiefIGe2F/AX/QxpQD3G7fBMmjJ3JpbFFXbLktftQM8iCjXXyVYA8d/6+uyk7
         /hfg==
X-Received: by 10.180.39.175 with SMTP id q15mr3784692wik.73.1443782277058;
        Fri, 02 Oct 2015 03:37:57 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id g5sm7709038wix.13.2015.10.02.03.37.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:37:56 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 0/3] use resource managed devm_iio_device_register
Date: Fri,  2 Oct 2015 13:37:47 +0300
Message-Id: <cover.1443781973.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset replaces the use of iio_device_register with
the resource managed function devm_iio_device_register when the remove function
only unregisters the device. Since an iio_dev registered with this function is
automatically unregistered on driver detach there is no need for the remove
function and therefore it is removed.

Ioana Ciornei (3):
  staging: iio: cdc: use devm_iio_device_register instead
    iio_device_register
  staging: iio: light: use devm_iio_device_register instead
    iio_device_register
  staging: iio: resolver: replace iio_device_register by
    devm_iio_device_register

 drivers/staging/iio/cdc/ad7150.c      | 12 +-----------
 drivers/staging/iio/cdc/ad7152.c      | 12 +-----------
 drivers/staging/iio/cdc/ad7746.c      | 12 +-----------
 drivers/staging/iio/light/isl29028.c  | 11 +----------
 drivers/staging/iio/light/tsl2583.c   | 10 +---------
 drivers/staging/iio/resolver/ad2s90.c | 10 +---------
 6 files changed, 6 insertions(+), 61 deletions(-)

-- 
2.1.4


