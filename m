X-GM-THRID: 6808643373543456768
X-Received: by 2002:ac2:44c7:: with SMTP id d7mr4100310lfm.124.1585260819278;
        Thu, 26 Mar 2020 15:13:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls1404544lfh.5.gmail; Thu, 26 Mar
 2020 15:13:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsShSXBD3L78S+OdusQMypA+s3CK5XiWsBUOsWcbiLIAY1SCsyeVCbwWt0nIC38sKTRmY1p
X-Received: by 2002:ac2:5608:: with SMTP id v8mr7047383lfd.189.1585260817842;
        Thu, 26 Mar 2020 15:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585260817; cv=none;
        d=google.com; s=arc-20160816;
        b=l6QqFLiIT7X/8V8R/tE3zpe0RBCI1TTxlPH6zV1p7XULCi1AoEQQdkVDOtV7+ZmJkd
         WEMuLvj/WOuDhKMTNG1gGiLcGxZLSyMh4/Hqdae6XiqxmatVSbI9VCro/bzZ8bHUdtE+
         0zeYNtyhw2oSIHIbIsE30qMf6yjgxm6IaV9mO1Js1ayKXJFF+JmLJxzo7Eg5lXCtPD7V
         XMgWTLyvU4v3LnWue2QTTbyFhwBwtXV5glBkiXxYVVKA+Vt8N0rbE3RBuCJrtjjzE3F2
         i1svI4M+1G7w7ppvICGxcoqqZE4nIILW/nGvtZutoYSttx6xUHrTaRJc3BH7Z1gUKh++
         JNDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=aOSMotNvHx7PYv2zXwsTmPIUh3iI1Lq3BgtrWkthQTQ=;
        b=HhM7uJIoETGza9qOvRpDwplBYU5IcecnuIPN3belk411xJzHAlTaKphgRaLneJMJFu
         s6qwBOBHbhqb6UpwOJI+3TC8DX07f+P9BILpQAJ351jy5EJllm1QKFn1mnDsGIMm4e0w
         EYUOfiQmNY6eNKfu4NsWsl+RpVJ6LNdqwKmxVD620mnaAugJgYEFWff9+9namcm6qmw8
         LIUa36gaLeKZ/D+F0t/WxBs7Lj14XW/YHuumDnQuna4RyEOu3S1nJRAyEheHxZhcorjL
         GuxKS7CImGa3wsn92sFv3zc5jsL1YjBqd6x+/1MeM6aZJJsdIT21Tv4gEUvdibUjzXHL
         IptQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="aR88Og/j";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id q13si249045lfo.3.2020.03.26.15.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 15:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="aR88Og/j";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id j11so6245401lfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 15:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aOSMotNvHx7PYv2zXwsTmPIUh3iI1Lq3BgtrWkthQTQ=;
        b=aR88Og/j4OyIvX1lvJp5FuW9He75m+ht244M1Y0NL1Uy3IugNFTj4f4HBbHRG3Ufl5
         tLt0kvJau+jJQjn0ZJY0QDswf6Olx+q3i7X9Arjli/VEZp6wKnMr1ZTtlIxsKgum0QCt
         evPxoZC3PObrr1V8IL5Dpusbl8KfGxhOFoisainBAlbOSylOZMzr25bcvLcBEYHYdnmI
         C17blVO5qbQQu/pgVZCe9OwsyH+VmJsJEETI1xdcN+jNmdfd8uP8BywUXXGtx+BhW4LT
         lEGYcpwiYnydXaAhMEE0J9mMuZ7PUJq41u975/1CzvQxkFKXR6WLhfuEK8fZMbYXvwh9
         Q8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aOSMotNvHx7PYv2zXwsTmPIUh3iI1Lq3BgtrWkthQTQ=;
        b=Pue48xwTmqwUE/0a9lJHQ3onjytkVd2vgfxsHItK4OixaVN9twM8EuL0Md9tMXKrBF
         yNwPRtoov5MMrKWjNlSqHS1xA3WsEt0O2imu/VnSqg+xqHuCOPoeuGH5krq2k54/sImu
         nEO7T8IZlWo4aFwka+FOIiQ1md7wojb5NYuRIXuNjHL7G7GabaiFTH8eJVH+kO701YuT
         MaucfAAdOeTelE9ohNpnl/PAi7ok9YlPwcSp7DUEMIhA6WoMA6uqu2JKkExSwYlmBFea
         r83r25lrtnATpb1MUn3KmScBNVLqK6OcuQn3cspix1HJEn9Cuk5XwioxVHj/FO9X316Y
         y3Jg==
X-Gm-Message-State: ANhLgQ37J7mXsHi+Cw1otm+XTndb7utg1SuzohdBxtG47xqMvVSD35w2
	3JMte+pxse8v7FLIPaCbl7I=
X-Received: by 2002:ac2:5b49:: with SMTP id i9mr7129914lfp.21.1585260817532;
        Thu, 26 Mar 2020 15:13:37 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.33])
        by smtp.gmail.com with ESMTPSA id d12sm2167843lfi.86.2020.03.26.15.13.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2020 15:13:37 -0700 (PDT)
Date: Fri, 27 Mar 2020 01:13:35 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ralink-gdma: add blank line
Message-ID: <20200326221335.GA25502@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add missing blank line after declarations to follow 
the Linux kernel coding conventions.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf109..b43f37f2 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -123,6 +123,7 @@ struct gdma_dma_dev {
 	void __iomem *base;
 	struct tasklet_struct task;
 	volatile unsigned long chan_issued;
+
 	atomic_t cnt;
 
 	struct gdma_dmaengine_chan chan[];
-- 
2.7.4


