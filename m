X-GM-THRID: 6752899555265609728
X-Received: by 2002:a63:b44e:: with SMTP id n14mr559217pgu.154.1572281949995;
        Mon, 28 Oct 2019 09:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ac93:: with SMTP id h19ls5442346plr.6.gmail; Mon, 28
 Oct 2019 09:59:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4jPADC0wXugyOZlCLgplT7+3fewjkBvnAQBi/RA8T/79edXgII6AGNFx2sTqJgvi4PXk3
X-Received: by 2002:a17:90a:730a:: with SMTP id m10mr344836pjk.80.1572281948962;
        Mon, 28 Oct 2019 09:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572281948; cv=none;
        d=google.com; s=arc-20160816;
        b=mBGrtEZj95T8UZHfNQ+QYAYvx2XKprSAT8klC6UMzEJFV9DqOETxTM1YSm4yw+KvlH
         I9WE0J2v2SgJngDR/OKgiWkeFfTgljhn6jRk7vTANDj5hCJL6+Fx93pGRU001Z3REb3A
         7xIH8XtEKYqSySInEMJutmMxtIbXwmok0St0rNiCMKuKosJV+NPqmBLo9dsIJPvsGPGG
         VAk0c245mBCQzGWvMIT/dYA8dF2jYI8UjnObZKNljQuwEZbaAkId04SMm83r0d290t+M
         D0ZdhjuBV6jSS+RCJhTsKhXRXS0Q0jD+M8LN+nLAlrz64fk7+5G1C15H3whfDhZzXm8t
         isOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=rSs1cBajR11A+yi1jmAoOJ6C+1HJspoUAc3WaGB+j78=;
        b=fwUIFleqzEvvSkOb2YNpZ9UZ1PX88BLVL2LVPSdJcL/KBCvBre9/Ow71kZZ+6lEqNd
         jUK+ciUIpu34jPBhi5SzpovD9Pyu9ilZhB+DzeUIU7TSKD/QT4oqQC8sLRWRNGvaz9zR
         uCxPmi4gFYfpV0twIlTdgdwNpXVHAo2N/5Kp5FZ0cdz1DBN4K+LqpDbrs2Iz4JH/+maY
         dSO2orOLEcCJ1DoGTkJ6u7G8zHBEDBXavqexOWBZxppR8da0a+vU+hZXef9K1mYch+ma
         lJUWkCrlYnYuUraenvcCUP9oZ43KJtqGXQ7nxkSLpv63VOEwUqg/n8hyEXQSxhrC8sUU
         AeJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=MTbY6nOM;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id d9si6706pfr.3.2019.10.28.09.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 09:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=MTbY6nOM;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x941.google.com with SMTP id o4so1638984uat.13
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 09:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rSs1cBajR11A+yi1jmAoOJ6C+1HJspoUAc3WaGB+j78=;
        b=MTbY6nOM5Kbdr8N4JNqvNoqV96wSZB8zH9KIElnByRG9SdqDk5C2zcrhIY/UeRIfSo
         6JKaBVr5eWi3m1lsPwJUVnokarB2WLGp85B1poV8tMBLGHUJugRmnAXEtulQFymhI548
         LBKSvkEW+glI+zXZcFxgwRFMW7pd36Y/qT9ZdkCCQcLzY+IpEaEqJreuCXU3rdMb7+qf
         2egDrH2m92+QeG2qdKa+DbyJYUtW6QeRRgLR5i1xBqWIydmqANiNPZZD4Q+4trf6+VCa
         3NyFGwVYV3O7zuxgRhu9tMEhaXO6BPK4e3+qa8b4AGUQMbe6/Zl6olj5Fnj3Q1ZK7ADL
         zhog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rSs1cBajR11A+yi1jmAoOJ6C+1HJspoUAc3WaGB+j78=;
        b=KyZTid8HdOqnd+1AxntSczsHIQoawmXXKigUdUTjGXOOr1qzTQClnBzC1jbxeCavdN
         54r9nWSB0AEWeUNrOQ4RH1u3mCmwVvgw9iMvDzsl6r5+GfmoD8J7teU9KhjkLu7ZChwm
         2yfOSSlXPwQ5A8n+kXW13vp3HYtRWD//jdw/Ei4i4vllr5nJrRkYum6Ut0nsp6t6dNGO
         DnfT4GCrgjkSn4rbY2pAz2hF8/ChdPdX64XmH645CI/13iAIxruGr+L0oJJ4BuqajvkZ
         cMDsD8PAs04rxe8zGL+IUiu7HVHbxBH5TYR7q/1DvI3KfvRhNMQ5X3E9qWUGO8fKuQVd
         OtPQ==
X-Gm-Message-State: APjAAAVQPThtTgt6pywq3o6w5a862zETcU+Lb8fYe8ZSFQYEHM3V9yGF
	p1B9AqrNkUThKcE3BaEX4XYXEC+AYT+Xlw==
X-Received: by 2002:a9f:3c2c:: with SMTP id u44mr9110789uah.2.1572281947701;
        Mon, 28 Oct 2019 09:59:07 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id d4sm4374460vko.8.2019.10.28.09.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 09:59:07 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:59:06 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH] staging: emxx_udc: Fix the format of a parameter list
Message-ID: <20191028165906.tv5zxjiqwjthygnq@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

The closing parenthesis of a multiline parameter list looks better
in the same line as the last parameter.

The comma that separates parameters should be at the end of the line.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
This could be the last of my simple patches before start sending
patchsets.

 drivers/staging/emxx_udc/emxx_udc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 9e0c19eb867c..e899130aedce 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1072,9 +1072,8 @@ static int _nbu2ss_epn_in_pio(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep,
 		if (i_word_length > 0) {
 			for (i = 0; i < i_word_length; i++) {
 				_nbu2ss_writel(
-					&preg->EP_REGS[ep->epnum - 1].EP_WRITE
-					, p_buf_32->dw
-				);
+					&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
+					p_buf_32->dw);
 
 				p_buf_32++;
 			}
-- 
2.17.1


