X-GM-THRID: 6395446243166781440
X-Received: by 10.99.96.71 with SMTP id u68mr8566465pgb.32.1489161595751;
        Fri, 10 Mar 2017 07:59:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls3239747otr.34.gmail; Fri, 10 Mar
 2017 07:59:55 -0800 (PST)
X-Received: by 10.129.53.133 with SMTP id c127mr8975118ywa.15.1489161595224;
        Fri, 10 Mar 2017 07:59:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a3si1830796pfb.2.2017.03.10.07.59.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so11224843pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oZ1kvmWk6bP+teDjcjZ63AhodXodrF8I9tIFOhg4KOs=;
        b=Y+enIVSngiGkKaziBM/rcJdIZ7BtwWEOP+4VcCHs949DvZw9g0z2HyXDCY6lA4Ln+X
         nTlW3jfR1ldZ9twfKiTeb7PMDmm+NyROw6FT913kOz3XmBwj/dLGK9JXpxanoKO3yNTi
         /CSn+x+jUKzv1teuzKPG05UOT+/6w1ixEc66zUX/B/nEGPFVsb2NEwKO7DH55OuYpfaO
         WeJTGzgF3agXsOQ41xsNQRVIsvcFegIN7dQ2n1z33zgDYilpyNdUcff9GlsjZM8J4eVR
         GBg00zeIht62EDJhbZCzLj76Vm3gNSF14/4v6Sosji6RtTLgT2HH142U8NP64OGHAZIX
         a1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oZ1kvmWk6bP+teDjcjZ63AhodXodrF8I9tIFOhg4KOs=;
        b=Fe+u0FL9gC1VYO0ExTouy2MDxPllIE8597EW1EAI/e1aSs5dSE6Ezq/+fblpZxInBh
         JoiqcIhE6q8e71Tq11oHoqhMI/S2/iLu2nhItMHZzFNzZ6j0AlIjJgTWooz7NzlIJhkM
         0njLRJxYQam2LMjvIsVWk+AeQhccnnFKr5dSWFLCDdhs/yGMMDJ1cd9486/hCdiRSiVm
         Ds1BJAvTZlUKZHgtf3eWPmSXqE3piKSSgeOGmRisPP/UUU5JhhnydDrpcHDWxbhRz6OH
         aCklmQv+iIG2NTZxfdoRq+cvLJxz8UDLWfuWXrK69VfJu0JYFu4NnbzCbA9x8jkRryba
         rXWg==
X-Gm-Message-State: AMke39kX2ZuCeVUFNtyzJOE1eEDomyVLdRisu/MM2MfqeycHF1dW5ODcWnEtutjWb3oD4g==
X-Received: by 10.98.62.82 with SMTP id l79mr21693305pfa.164.1489161592655;
        Fri, 10 Mar 2017 07:59:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id v143sm19631166pgb.47.2017.03.10.07.59.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:52 -0800 (PST)
Date: Fri, 10 Mar 2017 21:29:43 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 3/7] staging: bcm2835-audio: propagate PTR_ERR value
 instead of -EPERM
Message-ID: <da46b8bad93c01aec9781323fc495dcbb0702fa2.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is better to propagate PTR_ERR value instead of a hardcoded value
(-EPERM here)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 6de5209..7186c98 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -436,7 +436,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
-		ret = -EPERM;
+		ret = PTR_ERR(instance);
 		goto err_free_mem;
 	}
 
-- 
2.7.4


