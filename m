X-GM-THRID: 6337006318696529920
X-Received: by 10.194.242.8 with SMTP id wm8mr680136wjc.2.1475449260377;
        Sun, 02 Oct 2016 16:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.209.66 with SMTP id i63ls1207691wmg.1.gmail; Sun, 02 Oct
 2016 16:00:59 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr1019070wjb.1.1475449259813;
        Sun, 02 Oct 2016 16:00:59 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id u64si479712wmf.0.2016.10.02.16.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 16:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id f193so7478518wmg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 16:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fTnnBd1lW1RYFSnaUMulpj3QKsxsMDVCgiKNtL5eqUI=;
        b=Qdjy7htKhfB0bIpHXHfk6TxouJm5Tm7q5xR50/fVzKxANPT18MFurBOHo0N5DhMQJF
         /3ah9sZN35WPSwU37imJcGfHGpJm8cnc7cNSub9w+53dhU0fR3Ze3cezbKL1BVK3wKaF
         aQE/CSWeK3YSgbcnH2Dl1Ft6K5T1JSkEElKpVsZiTxWYwFZmSJC33uYFDI8P6LcH6L20
         ynnP03DZRNwSBctF/EeABzBDduvb2cfscTtn/Wyr7AspSYcbQRBqgPzAlpwu5qWKpmqA
         ojjMeHWQKBnN5ZUw6XRj+6zOXxvCIAaqiVn0Z3+3YtCvp1/aZCNYWklhL7OJUBmBtmYY
         8n+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fTnnBd1lW1RYFSnaUMulpj3QKsxsMDVCgiKNtL5eqUI=;
        b=LYx62Sd32OOfQswaeWupxiq/E27w4V2Xax/CvbQ16DxOi7vg3QCTQMiGfxTljg9H4L
         KnwpCYi2F5tqzsTYF2ITzaeT+in+pxzDivtM5sqRPxtQpqZC6RI9B6NbQslbapyiQeSU
         3jcYqUjWTESUYnv+4E4WudTd6ZLKYFpYk1t6Kv5Il/Z0Z1l0GYD3Ul08qK3Jl2xwN60d
         Y/xDjqoESqqc6+UaEbXtp8jzKwybB+VFDWThKoz5iXEc6r0SNzqdQXoU9PJGYIGfZfmP
         8daKQCxmml1xMeLgM7iaeymBnHAp3LHura6+jx4VOyxzbEnWYsuBGjIdlrgEd1p1DzZw
         xbxw==
X-Gm-Message-State: AA6/9RnSAnPzY6c/bPYuJYWfJYn6hLUknBKNFdoQe1wTj8AczHjOVFg29lFdb2nRHOWTiA==
X-Received: by 10.28.196.200 with SMTP id u191mr6563727wmf.67.1475449259622;
        Sun, 02 Oct 2016 16:00:59 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (240.red-79-150-62.dynamicip.rima-tde.net. [79.150.62.240])
        by smtp.gmail.com with ESMTPSA id bl3sm31344290wjc.26.2016.10.02.16.00.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 16:00:58 -0700 (PDT)
Date: Thu, 29 Sep 2016 01:10:22 +0200
From: Keila <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH]board/Kconfig: Add a paragraph that describes the simbol.
Message-ID: <20160928231022.GA14711@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The staging board allows continous upstream in-tree development and
integration of new platform devices.
---
 drivers/staging/board/Kconfig | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
index 006b134..deb7fda 100644
--- a/drivers/staging/board/Kconfig
+++ b/drivers/staging/board/Kconfig
@@ -1,7 +1,6 @@
-#These is a Linux kernel configuration item. STAGING_BOARD directly depends on
-#OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP.
-#It will only be visible, if OF_ADDRESS, OF_IRQ and CLKDEV_LOOKUP are different
-#from 'n'.
+#
+#Staging board gives support and configures the Kernel build.
+#
 config STAGING_BOARD
 	bool "Staging Board Support"
 	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
-- 
2.7.4


