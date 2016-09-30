X-GM-THRID: 6336182805735669760
X-Received: by 10.129.52.204 with SMTP id b195mr717342ywa.110.1475257520080;
        Fri, 30 Sep 2016 10:45:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls6041456otj.7.gmail; Fri, 30 Sep
 2016 10:45:19 -0700 (PDT)
X-Received: by 10.176.85.25 with SMTP id t25mr2187105uaa.8.1475257519620;
        Fri, 30 Sep 2016 10:45:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ua1si518685pac.1.2016.09.30.10.45.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 10:45:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id t6so1469523pae.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 10:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=shaBhb9n06B5rQSShSnObkzs1lUjGzOGM3nOyuEMJHI=;
        b=E5JngIWnaVlLj23a4oNhI2FmEfCpSikJsReMA5VZrRpJpaYr5qamTTJ4IFrGs/IWJx
         qCsJ7kSdrp3uq+IuRfenNdC5tgMn60CdyvIjeC7TaZNGbvkyAVAwrHT7uNqqKDsi9drS
         UX2ysaRBKWF/ElxC2Bm5Zxem3qW8EkJCZ+ItrjxWkYQca1XvDD88dVuXpGzvgWitpQZF
         Z0DXCSCCRIpV4VTDMeUy7YUJGrrz5KKlm8j8ZS59Svl0OS2fiQQzH0HQnz9w3hNQrJX5
         H3pvUhJnfVGZe0iodFL1wiC7k0cA56rOsCZlchL3zHRW2xmOotUx1Xp2I1oxJY3dkbDu
         igpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=shaBhb9n06B5rQSShSnObkzs1lUjGzOGM3nOyuEMJHI=;
        b=aeWvgEE5lu8ZfytPdRIUTPrsRZtvyYRvKqayAJm6v9OUSOgXlzOv2+u7rlfszFu6jH
         U+pDTv9VYOi378UehV+S3ZFjwiBfmtOoyn6ew5hCAph//AciXeOTtA8cQkLgmtOniKP8
         JdphDq8J7i+WN3//+r6px6cr6ciwP4HTYXHeD8HudIUm3H9XRIQFZCo2VE37usb6cqKE
         604Nc6A7LGl05OggNK0sfzE3bw+4HIbiwvhXPFO4/nj/8URB0ECoDUWo9H4p1X8UmevB
         uT1CDeYMXtU5DG3kWYmR4lxIu2lkhBT5eNN47IUSgyZ02GnBiN/otoSS+7yTHn79CnRC
         JnJw==
X-Gm-Message-State: AA6/9RmSpxlpTys/pllKuc6ubxTF3nZ1bzumkNS5wv8HXtAL8b1FtXVooIisbX2n1LCNJQ==
X-Received: by 10.66.62.232 with SMTP id b8mr13872907pas.38.1475257519411;
        Fri, 30 Sep 2016 10:45:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([182.70.4.146])
        by smtp.gmail.com with ESMTPSA id 19sm29371176pfk.58.2016.09.30.10.45.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 10:45:18 -0700 (PDT)
Date: Fri, 30 Sep 2016 21:49:22 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: corbet@lwn.net, amsfield22@gmail.com, daniel.baluta@gmail.com,
	linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: Documentation: Correct the path used to create triggers.
Message-ID: <20160930161922.GA11685@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Correct the path used to create triggers.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 Documentation/iio/iio_configfs.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/iio/iio_configfs.txt b/Documentation/iio/iio_configfs.txt
index f0add35..4e5f101 100644
--- a/Documentation/iio/iio_configfs.txt
+++ b/Documentation/iio/iio_configfs.txt
@@ -82,8 +82,8 @@ users to create hrtimer triggers under /config/iio/triggers/hrtimer.
 
 e.g:
 
-$ mkdir /config/triggers/hrtimer/instance1
-$ rmdir /config/triggers/hrtimer/instance1
+$ mkdir /config/iio/triggers/hrtimer/instance1
+$ rmdir /config/iio/triggers/hrtimer/instance1
 
 Each trigger can have one or more attributes specific to the trigger type.
 
-- 
1.8.3.1


