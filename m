X-GM-THRID: 6395446243166781440
X-Received: by 10.129.121.216 with SMTP id u207mr8789861ywc.170.1489161648074;
        Fri, 10 Mar 2017 08:00:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.81 with SMTP id c78ls2703319iod.28.gmail; Fri, 10 Mar
 2017 08:00:47 -0800 (PST)
X-Received: by 10.99.245.15 with SMTP id w15mr9318407pgh.63.1489161647137;
        Fri, 10 Mar 2017 08:00:47 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si1434515pfb.0.2017.03.10.08.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:00:47 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so10701627pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lN1XpqRHXP3M2WMa6rV3Y9+gbGQI5g0d7fy5qtFCxE0=;
        b=ITMFJrKwpmlMvArNEeYyIJcSRlEXNXMr25lkiDCmgXI8pX1KULB2qCmrJobct4VHUw
         gYW/Vhrne+GPyIWyN9FRfcmf1LFisiK6VNQKlczmEnhZqxC77NZLMROXdoBnHEU3bpVC
         kUntF+lOeGMzn0KYhHGlGbq8K2tkcLJQf/xr4gc1u3yc0JpH1lAWM0vMTb4P/o6jyQuQ
         IcsHZ3OP0VXaAwOKVsOeENZrJhFNWTJQkdxHmBAphEN2J5uLRS9osZ6/t2Hbglw7gOUE
         Wef/ahS1zdxfIdX61f1jOvtsm5sAiuvGEDWRWGIgryfUa6RrSX/Hj1lYTpsUpnczLU4H
         dDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lN1XpqRHXP3M2WMa6rV3Y9+gbGQI5g0d7fy5qtFCxE0=;
        b=H3bdKgZ59jUPeuAfN56M8K7sR7J7i4a+QNsuc0c2fUdfMeU0MvpLkrR/id48IFM4EO
         JuVnLcxWXnLOxUKaxH6o0saQnDSnmqWS0O6y8Egmh7NFyjNL9saCFevkBDeyrHY+R4QR
         7BtHltAMjwzvuhWkNIqY2PhMm2ZnKKmYkgl4KcbEYeRUCiuEJMwWsqFJF1K3isfRG4Z0
         EpDGVCcBK/Yb7V7gZWSn/rP6P6t8jzCIJC5D2qzGGraZWLkfwgnKoSi+DHx7899WEu8v
         Vd45C1sICyUYcAE768p2n7D0JsOtcBa9qDzlkiLvXcmJm1E9w5dF36s8M/jpkWELT2C9
         Ge0A==
X-Gm-Message-State: AMke39lmXDRDcd9IBx7h3mLBJqvCAe3NS8cwPbktouLy9265yZKBtiPcvj5pvXm7VLb9vw==
X-Received: by 10.98.80.93 with SMTP id e90mr21671338pfb.7.1489161646890;
        Fri, 10 Mar 2017 08:00:46 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id r134sm19501384pfr.83.2017.03.10.08.00.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:00:46 -0800 (PST)
Date: Fri, 10 Mar 2017 21:30:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 5/7] staging: bcm2835-audio: deallocate work when
 queue_work(...) fails
Message-ID: <8c0f6572332b691f73a4c4eeb3dd59699602511a.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch de-allocates work when queue_work(..) fails in the
bcm2835-audio work functions

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 9b10027..449799f 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -145,6 +145,7 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 		work->alsa_stream = alsa_stream;
 		work->cmd = BCM2835_AUDIO_START;
 		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			kfree(work);
 			return -EBUSY;
 		}
 	}
@@ -168,6 +169,7 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 		work->alsa_stream = alsa_stream;
 		work->cmd = BCM2835_AUDIO_STOP;
 		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			kfree(work);
 			return -EBUSY;
 		}
 	}
@@ -194,6 +196,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		work->src = src;
 		work->count = count;
 		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			kfree(work);
 			return -EBUSY;
 		}
 	}
-- 
2.7.4


