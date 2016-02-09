X-GM-THRID: 6249304586736107520
X-Received: by 10.66.146.193 with SMTP id te1mr32306564pab.17.1455029609037;
        Tue, 09 Feb 2016 06:53:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.164 with SMTP id x33ls3484617qgx.8.gmail; Tue, 09 Feb
 2016 06:53:28 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr34770417ywa.9.1455029608335;
        Tue, 09 Feb 2016 06:53:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id y131si2108763ywc.0.2016.02.09.06.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:53:28 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id x1so70969514qkc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cBvkALzlFFnSMtX5rN7Xykq1z+d7sLhjRJmQW1X1R/s=;
        b=qFrT+LnGMNidPoimFQgwXxKI5cLcTusfpYKB36Nj4RsjnWp4htrbMX0wdYxlr7S4OZ
         YRro7QIFg660MuLpohoFQQKAOnIMh94PZu+cHRBjDhFJUv8fvQLSOjzuiZAGl8LK0HcL
         qkD/GG6bIQRTqQItxaIt6UMlQ/aMTldudp3tiILYUTelJe+RbuC4zgonJc3Vjd2D/aPF
         AKSonwnKkp+4ClAU44ztctYqeKUuO1QOrcyHEkfme5wJ9oYHT6JWgZdtTSEFK5sCvNUw
         +YbYT0sDRYLavlVQBuGyJDMqrWspMtcOAqvZtZkIla7GV6G3RfzV4yOVvInlTgNhOJLc
         e3Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=cBvkALzlFFnSMtX5rN7Xykq1z+d7sLhjRJmQW1X1R/s=;
        b=ECk8qzUYPr11mgRiSZMnmwQM//Mf52JtrzLjPrtI+tI4VK5BadKD5TpFD6eJt+SxB9
         vfm9S4aYk4ji1ODcshmpmNSQyjitZtrjx/fdjTkwyZm2p4iyo2PDUjFIFm2AZCv/+ZMR
         6fH96Zsc4Aa76/hP+77QQGaa6s8H+HliaZyeTXr5bGupyNmR5Ba/p4Qeqhczk2hYMA3e
         Woy2wJ7Qqgz+iPArnYo04W/lF4ILKpKKwvvDeIa3TDu35DgIuyJC0lTJQtLq8Yvg9GUp
         I4oJNC2DVfFxPexDrqs+KXcZLIXccFrjRtlSBjETLy97O8Ujh883Bk0A3itjo4PMIcri
         P9bQ==
X-Gm-Message-State: AG10YORN1r0ZwtO4NPujHneCxu5tksPNUG0ORQD1U+jk1i1tDSkdMjXY5V8XiFVSJw5wSA==
X-Received: by 10.55.221.129 with SMTP id u1mr22370343qku.42.1455029608202;
        Tue, 09 Feb 2016 06:53:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id b135sm16054765qka.2.2016.02.09.06.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:53:27 -0800 (PST)
Date: Tue, 9 Feb 2016 14:52:51 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Remove unneeded comment
Message-ID: <20160209195251.GA6614@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove this comment as it does not have a meaning here.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/nvec/nvec.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index dba1766..82f7600 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -14,8 +14,6 @@
  *
  */
 
-/* #define DEBUG */
-
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/atomic.h>
-- 
2.5.0


