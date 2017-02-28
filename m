X-GM-THRID: 6392252135167229952
X-Received: by 10.46.82.157 with SMTP id n29mr553565lje.29.1488312179927;
        Tue, 28 Feb 2017 12:02:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls209535ljf.34.gmail; Tue, 28 Feb 2017
 12:02:58 -0800 (PST)
X-Received: by 10.25.67.70 with SMTP id m6mr492823lfj.21.1488312178975;
        Tue, 28 Feb 2017 12:02:58 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id y19si1314372wmd.0.2017.02.28.12.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 12:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id q39so2888022wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 12:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vQXaDxV/dCJ1gEntO1GiewImYL9OPxTr4WcuFCx2g3Q=;
        b=GIOAXT7jIbJMmmgRqjOqjMtDkBEUPhZn08MZV1TAMX/mMqDte5XkscUuO/JJniDL2m
         ZerVbp7tP5VlpJ2dI0VRkIVULyUDvIIWnFhDel2LMSopKhHOoOMwwboAWEIZNI6U8cof
         pdzPhxvBqfJGR4nKSx0kcekd8YkeRiJGceEXWSuJT4iKb7vz+32oRnJLFFwfILrqUWGw
         387TNc/pE3sKi7uLSLqsBs7qCe1Cqddl0B9rNtmq5Sef3XLzKBBTzvbA0JpWkbc/kWb3
         j6eo13XgSGht9Dt0ZtQVk2lhDbjmzhLKgxzFRgYnIeVIX5+6GYacrb0rLzvAuLz8eXye
         rAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vQXaDxV/dCJ1gEntO1GiewImYL9OPxTr4WcuFCx2g3Q=;
        b=WYNonFrd0HOi0PrCt+e9Tsa5AGfSgdRNleyw8s6l96AUxQ+diREGGi8FZ1M1JNCMzU
         sEJgOvEEQAXWgd2srFgl9CffuJFQ0cHZa6FzHEAVwMio6D53JQsla0RtfwZTs6CP3DzT
         0ef1S0NpwWvYMoo50mwdVfnqw7gIBSyFy8T/2E+fo117cPNTaeCJzZqSg7OQ9eG7Ym2O
         Aj9kEcZw46v1SWzRw9hxeKKEqypYnzHiWH/QX3dx5jCa7DInjE7XRiqFdNZLOSi1aPme
         0vusuYzgdd+6nc7kKwfYakLZOpvfIo3NUHPhq5Fu0yoCEsFQfieu3ZXRGf6BFf34zdhJ
         tm4g==
X-Gm-Message-State: AMke39lgoT67FmGRBCZ5ROMX2fws6GV28bEDgkt5KM4mQKuKFJpqr6e0t0BbbF4zz/BX/Q==
X-Received: by 10.223.164.83 with SMTP id e19mr3797596wra.201.1488312178761;
        Tue, 28 Feb 2017 12:02:58 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id t103sm3640527wrc.43.2017.02.28.12.02.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 12:02:58 -0800 (PST)
Date: Tue, 28 Feb 2017 22:02:57 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging:rtl8192u: Check memory allocation
Message-ID: <20170228200257.GA14816@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check if the allocation is not successful and
return the error code -ENOMEM.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b631990..04025b6 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1689,9 +1689,13 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 #ifndef JACKSON_NEW_RX
 	for (i = 0; i < (MAX_RX_URB + 1); i++) {
 		priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
+		if (!priv->rx_urb[i])
+			return -ENOMEM;
 
 		priv->rx_urb[i]->transfer_buffer =
 			kmalloc(RX_URB_SIZE, GFP_KERNEL);
+		if (!priv->rx_urb[i]->transfer_buffer)
+			return -ENOMEM;
 
 		priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
 	}
-- 
2.7.4


