X-GM-THRID: 6263088426063495168
X-Received: by 10.13.234.87 with SMTP id t84mr8044353ywe.11.1458239104046;
        Thu, 17 Mar 2016 11:25:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.208 with SMTP id n74ls1947050qgn.63.gmail; Thu, 17 Mar
 2016 11:25:03 -0700 (PDT)
X-Received: by 10.140.27.180 with SMTP id 49mr8319587qgx.19.1458239103545;
        Thu, 17 Mar 2016 11:25:03 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si1517526pac.1.2016.03.17.11.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 11:25:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so12352009pfn.1
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 11:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MzD3PK150za7lfqGeuKQbC7uCgCCsl7H4JlrICj4nY8=;
        b=hc+yLMj3lZaQkgHrjD+r+2aJugcNsmW8KG5qdhgUiXrmHEGx3cyUAExTFW1ghaXE9I
         fu9SZ7JEfcuh8K1gppbnO6Yf/RYw8QdGqBXzQHStvoAAtx9UVlQPbf4h1VuFMFn19IZo
         I14O2IHJO5JdDuGuXoDHbbURlhGq6fYqim+VTsIJTEgc1AnLaxxNMnLWVNXRD5RldbEA
         yn7Rzv6OOWhiCZ5OnKVd7PmXq2lEBzueu337HuT2r6P/umzxDYk9YE2y3lqCsUyJ6XXr
         OKuw5Ks8wh2dqntp8K4DcZB0bNSq2swqMYLozktb8qPqb/yMRTGThJKIOtS60m8jIuZL
         PAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MzD3PK150za7lfqGeuKQbC7uCgCCsl7H4JlrICj4nY8=;
        b=BoS+lQFazI3z/PN6NExaqrH2gVW6Hb1ub6h4/owy9TrrqoQ+3f4gNDhxdWsJAW5bll
         Q0gZyBcUawpxSl+7ME8DQo47ye1UpG0rkrxPM431iMHwwoMAjrtaIzGVypiGfwg3iqKx
         gBaUgiRTlkq5Z9w/CSYSdWYBL/wsF+RpXQqSMuA6Tgzwh3EVZs0Ue+6qFp1MIvt2+cyR
         uTmvFYUh76B//crLjFjOsvhgwe4jOhZUZPIQAsF+RJgallk6z5R7G/CiNgtNw4WkUPOP
         fT4t9KhOiBv1sAXkaTV+R1cyCI43Oeaoux6RFIEPDyhbsBFz0dWmO1TyG8dhz2xEJQSc
         8K3w==
X-Gm-Message-State: AD7BkJKz9BP02cgk0QnKmG95RDuou8UlZizdK5sEijg9xOsLRRqHMntNGblnUHQ+Xld3AQ==
X-Received: by 10.67.4.69 with SMTP id cc5mr17096730pad.11.1458239103382;
        Thu, 17 Mar 2016 11:25:03 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.0])
        by smtp.gmail.com with ESMTPSA id n28sm15020042pfa.45.2016.03.17.11.25.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 11:25:02 -0700 (PDT)
Date: Thu, 17 Mar 2016 16:55:56 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: i4l: Add paranthesis to complex macro.
Message-ID: <8ea64620333b0c695ab3e67bbfd2949d2a071f2e.1458213062.git.bankarsandhya512@gmail.com>
References: <cover.1458213061.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458213061.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Add paranthesis to complex macro.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/layer2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/pcbit/layer2.h b/drivers/staging/i4l/pcbit/layer2.h
index be1327b..6b9063e 100644
--- a/drivers/staging/i4l/pcbit/layer2.h
+++ b/drivers/staging/i4l/pcbit/layer2.h
@@ -109,7 +109,7 @@
 #define SCHED_READ    0x01
 #define SCHED_WRITE   0x02
 
-#define SET_RUN_TIMEOUT 2 * HZ /* 2 seconds */
+#define SET_RUN_TIMEOUT (2 * HZ) /* 2 seconds */
 
 struct frame_buf {
 	ulong msg;
-- 
1.8.3.4


