X-GM-THRID: 6395503303001636864
X-Received: by 10.129.136.6 with SMTP id y6mr5698464ywf.157.1489069150479;
        Thu, 09 Mar 2017 06:19:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls1818660itj.3.gmail; Thu, 09 Mar 2017
 06:19:09 -0800 (PST)
X-Received: by 10.99.123.7 with SMTP id w7mr5407206pgc.133.1489069149470;
        Thu, 09 Mar 2017 06:19:09 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1216981pfd.3.2017.03.09.06.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:19:09 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so6964065pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 06:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=dlIlkgKxJsPQe8S84Ix8yRu3WB6kyMz9Ysy513wZhpg=;
        b=ef71fjj4+MPM051yvyUvs2bHKxZsLpQB37iUtT2Fxf2ra/9e1vwWb4V0vUB9gNZ+JL
         Icwty7xLJm5OSM3bwqWgcOGe5TPmxGuz0GT3k687NT4TkcJbmnTYSWUU60rztmBc4sSx
         vstx4Pc5gB9A8B237fp9JnfCf8fxam74JVwPmax5uk6LxSaluPmWQUG61f6IW6prsgru
         hxwXDxPC6yhzrhE55s9U+JnWb0GxjQlufY3SYUXlVCC3U/S7mMJiwZU9ba98yc+Mrvao
         HJuxujyCAbQTEY9MwUA+9Z8nvf6I8EtJZYLWgHEhISFXQYlbxfHhWBQ9UFk+S6LcyGLw
         m2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=dlIlkgKxJsPQe8S84Ix8yRu3WB6kyMz9Ysy513wZhpg=;
        b=kDFVoYNIBh+fpqguYpWZuzzn7dkuv9vFZakK8CJjVNgh039zROMKcb0V9SLThSM/VE
         VsU+iGyKCKJ0S000Sa/fYa0e0tLZAj7WIrGn/Q78UuzgPQDH0wfSJdp97MXJyzid8Zfg
         LfB84iPeEj2n6T7thagX6C/I9F430/IM8P24Yg/oyyFUPMB9mWUd5rQqMhj3ZZhnJeR9
         CHB+jQ3Z0oigV3f1WpbhfEl7Bs+1ybhYWMTJhvHQOChYqsYwzV/KyCGefqyxLogulONs
         zKgfdmExHG07c1hEMdNb45FjYG6xrHM1BoenrF/lVOsH9hTu1/f9QNsuZrslAyZx7vxI
         TyQA==
X-Gm-Message-State: AMke39lqFNBEww3yjAP5CYqOK6vC8ydkvgSBAi3P1ujKIkPK0b/QUpJiyDStCQSelCbVow==
X-Received: by 10.99.98.6 with SMTP id w6mr13942438pgb.223.1489069149110;
        Thu, 09 Mar 2017 06:19:09 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id e76sm12923260pfk.75.2017.03.09.06.19.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 06:19:08 -0800 (PST)
Message-ID: <58c1645c.cf9b620a.9896c.d32c@mx.google.com>
X-Google-Original-Message-ID: <20170309141901.GA14749@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 19:49:01 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: Remove useless cast.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Variable dac_data is already declared as of type u8. Again explicit type
casting of dac_data to u8, is not required. Hence this patch removes it
by using the following coccinelle script.

@@
type T;
T *ptr;
T p;
@@
(
- (T *)(&p)
+ &p
|
- (T *)ptr
+ ptr
|
- (T *)(ptr)
+ ptr
|
- (T)(p)
+ p
)

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/comedi/drivers/s626.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 4523378..0b189c5 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -599,7 +599,7 @@ static int s626_write_trim_dac(struct comedi_device *dev,
 	 * Save the new setpoint in case the application needs to read it back
 	 * later.
 	 */
-	devpriv->trim_setpoint[logical_chan] = (u8)dac_data;
+	devpriv->trim_setpoint[logical_chan] = dac_data;
 
 	/* Map logical channel number to physical channel number. */
 	chan = s626_trimchan[logical_chan];
-- 
2.9.3


