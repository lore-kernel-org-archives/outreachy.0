X-GM-THRID: 6395446243166781440
X-Received: by 10.129.90.215 with SMTP id o206mr13482239ywb.101.1489333218478;
        Sun, 12 Mar 2017 08:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls12296098otc.32.gmail; Sun, 12 Mar
 2017 08:40:18 -0700 (PDT)
X-Received: by 10.157.24.90 with SMTP id t26mr12400763ott.91.1489333218237;
        Sun, 12 Mar 2017 08:40:18 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si2691594pfb.5.2017.03.12.08.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:40:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so15539225pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Dx+59pw8Tw5RjNnSp5edy/YKRL4E4u7Rl52k6MpNDio=;
        b=HRpKokAhKLC0PRI3lzJ0/AaOL+aZ/6GV4ymr5Ky5rFyypMIGEIbCAMqzWyGffeI2zx
         8YuZmrIwm+zxgL1wjVvJfq8Y6VuDsYSRCVBu4TRvf2w70vr8Nh9Kv14cBB74iVi9jfxF
         kXuTiTmlsPfYO1Ft2KTqFqNobw40zM6gL4RRxaQTNPSGINy6gYyqOLsFtpk0Bw10R2Mm
         o5n0VcO5S+VTROc1p9rfvsYGVYAaw7vYayMaRY2HM7ok1nwczz5UgtF7iVirWQ/GSbgC
         ++g1XqxZPEsMWBREx8QVjBYp0WKNpsdsDX8Trtmxk/bM8OSg1nVVRhMHIRe8RfsEbmI1
         Bhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Dx+59pw8Tw5RjNnSp5edy/YKRL4E4u7Rl52k6MpNDio=;
        b=Mnocwwazf0kRlTq5J5I+UOdHKRbi+o+fSku4OUkSFunKg9zwHy6xTL1Pk1VnHUxDGN
         E8tUPSUDmEGzf/cUa6+E7fNoVM8+K9Oky2p1T3F2XbssQa5RDOKCHM6GqfEEQ8L78Ov/
         wFTXRCbF7C7I1/5XFQnhNp4GmHrPqtcFK+5yCAkhVTYJMPgZ6guM8burE1O1fyPiJ2WZ
         nff/lz9ULK2r/WMbQmPOJl5hC5Xua9F3XenC9EOLX6mzx7m2kNN82fT2pFBWyBjXK2ZS
         gR8+m7uYypwrAXycgztaWaXJWF137+v/JHRwLgwvAZ97knlBKW2JLk70wtGN4AeFrXI/
         I8dQ==
X-Gm-Message-State: AMke39k93r6bspXcy11NUERsOvZ7O8Hh1dOP1prT3d1PPGu/LZWSMgA8OL0aC8ejUXYjSQ==
X-Received: by 10.84.149.102 with SMTP id b35mr41030686plh.3.1489333217876;
        Sun, 12 Mar 2017 08:40:17 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id s26sm29203965pge.33.2017.03.12.08.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:40:17 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:10:07 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v7 6/6] staging: bcm2835-audio: fix memory leak in
 bcm2835_audio_open_connection()
Message-ID: <6a8532d76a55f1ab6519f49874ad85a9b31e9b87.1489332734.git.aishpant@gmail.com>
References: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489332734.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

In bcm2835_audio_open_connection(), if VCHI connection fails or
initialisation of VCHI audio instance fails vchi_instance needs to be
deallocated otherwise it will cause a memory leak.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v7:
	-Remove label err_free_memory, re-use err_free_mem
	-Add back the debug logs

I have added kfree(vchi_instance) under label err_free_mem. I understand
that even if vchi_instance is null kfree() would not break.
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index af16d0f..6e007db 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -446,6 +446,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	LOG_DBG(" success !\n");
 	ret = 0;
 err_free_mem:
+	kfree(vchi_instance);
 	LOG_DBG(" .. OUT\n");
 
 	return ret;
-- 
2.7.4


