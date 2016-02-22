X-GM-THRID: 6254033434194214912
X-Received: by 10.182.135.169 with SMTP id pt9mr24901121obb.17.1456130639792;
        Mon, 22 Feb 2016 00:43:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.232.169 with SMTP id tp9ls735608obc.82.gmail; Mon, 22 Feb
 2016 00:43:59 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr25526846obi.12.1456130639536;
        Mon, 22 Feb 2016 00:43:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ff2si3272500pad.2.2016.02.22.00.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id yy13so87675729pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=YpiAbaziQy2p+exF5Xa16NkT66r9aB7+IneseDpR4xE=;
        b=nwFw6mU2rfm67pzDC/b8oZthY4W4PCz5aDWjjws3f87jzduwhXAh5QNKJl4+ZcO/Q8
         w8GFn7GOPmPvntILuMN23r3tvlq15DcbL92ImG0YKZNOGnHyDzjMxnBvYSwE6o1L+v9l
         dwpcpPlBO+k+K6fVw8gtyZ8Dgl/dz6P5baiZ1JDN43uaRmFdd0/9W2WN2CLfOEsMLKOE
         HeQIEcN9Z2KpBTAKBYH1QdRBFEVaF8zZP93zpRuF6p/mMT9CyVuPxTBYGgNoiGa1GTn5
         0hReJIG9DSUFL5n24tKTfZ8z4/4q6jzTLMiibwYfCavDOVapReHiJ7iyKJ5P+vlzsECq
         2Wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=YpiAbaziQy2p+exF5Xa16NkT66r9aB7+IneseDpR4xE=;
        b=j0KxMcrPomgpzJ9B/p09WItYmKPkF/TwUpjq7Uonojp83KL5C9fQSBVNVK0HyXmRfX
         4Szi+TcYfBtXc/sxHrd2gBlHmgTORZdiO5XMQxRQQNUngQ/VML04bVEi40t22ilEA8+3
         lanaYkN57SGSxZk/dX23eIs+ghbUhxs4VRwuj9zzCwDXID7k359oGxqIMBRoP10BynZr
         NRDcZOvsouSxxLUJNW9ms++vohjbYETl5IKJmvAztFyybdsq0zwea7PzaUfSw6yMaFES
         BZeB+QupeM+mLeTWFz7lH+W1GfenzO5JommXtwKp7hDEJxumxl48+EHccZvEpC1Oc+hj
         CVwA==
X-Gm-Message-State: AG10YOQsi6LBR8t7+GiedfDt8KXX7oL5g9gLkNuf4xmHDJ2mBtb4Ud3gNM/2eVGeDInUTg==
X-Received: by 10.66.235.129 with SMTP id um1mr36249594pac.17.1456130639387;
        Mon, 22 Feb 2016 00:43:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id u5sm34962169pfi.15.2016.02.22.00.43.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:43:58 -0800 (PST)
Date: Mon, 22 Feb 2016 14:13:49 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: lustre: obdclass: Remove header file
Message-ID: <5a2dc5e0e24230f261021c66c1142f3114d3a984.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate include file. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
index 1de3b9a..689f33a 100644
--- a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
+++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
@@ -59,7 +59,6 @@
 #include <linux/highmem.h>
 #include <linux/io.h>
 #include <asm/ioctls.h>
-#include <linux/poll.h>
 #include <linux/uaccess.h>
 #include <linux/miscdevice.h>
 #include <linux/seq_file.h>
-- 
1.9.1


