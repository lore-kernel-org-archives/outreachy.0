X-GM-THRID: 6263088426063495168
X-Received: by 10.50.32.38 with SMTP id f6mr8188446igi.3.1458497778588;
        Sun, 20 Mar 2016 11:16:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.72 with SMTP id j66ls3644876qga.0.gmail; Sun, 20 Mar
 2016 11:16:17 -0700 (PDT)
X-Received: by 10.13.248.4 with SMTP id i4mr20162644ywf.20.1458497777806;
        Sun, 20 Mar 2016 11:16:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si3420619pfa.2.2016.03.20.11.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 11:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so26236226pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 11:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ADmZbvERg+GVpWiwHvsMVWReL9uspZfOkflqbzBYXYU=;
        b=TH4R4JCyhdvXl/t6E3OINFQA1LzV50MGeyhyJF07PJSvO9z8wepa96ERvqGv82sh+m
         UEO7tSa/KNw1ePu9ySaLJTCN1O/VQ0GXwiIl7KfDC+XgHIVK50RWmH9NH96rLrPjnHu/
         yio7BVOikKRfAEgm6LkjomtQfAyd4gN0j8+ZKCeBKM1a/ORZvXqXzt6uJSYbCCS2fRE2
         JUaI1NRwxiwn5Dk8vp3OVVnXHMqPMxawX6IXdn5LKvfFbXnEhrry8ntQvTFXE/QRTUN/
         qjutehiP1uFTJkQ1mQixIBvg95Go2VCwCyiuR7jJwVt4UZxft1nxgkS+oUfZWoI54JYN
         OWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ADmZbvERg+GVpWiwHvsMVWReL9uspZfOkflqbzBYXYU=;
        b=Qk4uglbmlQEZJw8IgEfufnoZHi/7/qcpGSPLsju+AR0RX05P56AGh+8us5OcR6NpeG
         kiL3ln/d2H6QYkdP+apJHJ5wfUNPcOwhImX49eUK6zl4so1Y+TVdopEQ48pNIb4HXdi9
         o1AF/7opMxlTu73iRq2ZyVZ+N8Wop1qarQUBS4jan+aLW+xC75znwi/zV2cxFie+WVwR
         mlZbFOh4Ap3OVvq2zfJz92mZtv1zhh3whz3hrULr6N15Hs/mYHibEcy52Np8EnocmaTI
         Mr1tzcfTj6BxXnZNeOD74dv/+UgakrfO4OYdIl3hNji7Wd2WaQxCjUqRvkzZK/RRzmNs
         QE/w==
X-Gm-Message-State: AD7BkJLlwk/mahY3xpr+iKZXDpfjz/oneoP46DkP1oeiwz5QO1uCYTx1PFoli6TYID83gA==
X-Received: by 10.66.193.161 with SMTP id hp1mr39604107pac.9.1458497777651;
        Sun, 20 Mar 2016 11:16:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id dy6sm34909388pab.48.2016.03.20.11.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 11:16:17 -0700 (PDT)
Date: Sun, 20 Mar 2016 16:47:28 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] Staging: i4l: pcbit: layer2: Add  parentheses to
 complex macro.
Message-ID: <8ea64620333b0c695ab3e67bbfd2949d2a071f2e.1458471224.git.bankarsandhya512@gmail.com>
References: <cover.1458471223.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458471223.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Add  parentheses to complex macro.

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


