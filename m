X-GM-THRID: 6395446243166781440
X-Received: by 10.129.137.3 with SMTP id z3mr4886577ywf.20.1489055911021;
        Thu, 09 Mar 2017 02:38:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.193 with SMTP id c62ls1682641itd.17.gmail; Thu, 09 Mar
 2017 02:38:30 -0800 (PST)
X-Received: by 10.99.2.78 with SMTP id 75mr5184070pgc.37.1489055910458;
        Thu, 09 Mar 2017 02:38:30 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y90si1114341pfa.6.2017.03.09.02.38.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:30 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so6901290pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=mQHyetgzmM/EU/wXUdpuzDuxxrSENYgJ6Bgc2O5gGBAvFQumQCzoy0+0Jj0m6mYCPU
         V2QzfcdHb7QP8C/Y8Mcin9/XqIv6o0+qjP29jS0BUAWm8iMXGF5yQEioNFip9KaOIfFH
         +5UIBhEAnUEtKuXhRleOKEk1J1b/8AZvGe1TfaUNOW4E1ulgKmB7qsIiBHLkTDmhammm
         TnvCAXs2bTEXDmxUcdcQyefo6i7ttwTru4aL+jAYPGzW0dOzCIt7H3pY+It5CNWcsthe
         rMRp9dyl+jxWiojMZ400KuJQJ9RDplO830VYeGh0M7ZLagMHHIIqB70I/NHNctMoTYkV
         YDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=H7I8o2V7/UXMtUsBIcc8jgcal9lNJOS27BLsfuEvkUP7aKOgK+Jto5IY1ePjStE2VR
         fghx0rmqBvENgBvsMwWa5djXlP2C4P7HQOi8ZkzPNPeAkCUnpBtJkev55B8+kYUUlBMB
         iLcXltdM2ZS2mDnk7iq4CG4tGYQDds25bplcyMcYquuOzvJMpPCtnnZYQa0qlKm2qlr8
         6FOKKyiGOE+KFoiLOHPWkZPSXIAZY+ggLXAn05kbemAWgEjapyMOmuWvc4KocPHURg2U
         7FoMo49uM9SCE9Qcib3Gaur1/jiouOVypncy8Z7VnLzEgfG4iogUAhpVnx4ZD5xLrvy+
         icHQ==
X-Gm-Message-State: AMke39lUs/tWqvE/q7jaQnzxvtHp9rBfr1SeRCT8wSDmJ9H2n0XslOx5ZlAKpbyWD/PrTg==
X-Received: by 10.84.232.1 with SMTP id h1mr16065151plk.95.1489055910147;
        Thu, 09 Mar 2017 02:38:30 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id q64sm11605364pfi.69.2017.03.09.02.38.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:29 -0800 (PST)
Date: Thu, 9 Mar 2017 16:08:22 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 3/7] staging: bcm2835-audio: propagate PTR_ERR value
 instead of -EPERM
Message-ID: <03b75ff90f8658b13fa967527392bbf8d83b6eac.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is better to propagate PTR_ERR value instead of a hardcoded value
(-EPERM here)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index d2686b4..c5f3be8 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -435,7 +435,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
-		ret = -EPERM;
+		ret = PTR_ERR(instance);
 		goto err_free_mem;
 	}
 
-- 
2.7.4


