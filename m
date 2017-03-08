X-GM-THRID: 6394401254530875392
X-Received: by 10.99.105.67 with SMTP id e64mr3103771pgc.169.1488984596989;
        Wed, 08 Mar 2017 06:49:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls1856727otc.43.gmail; Wed, 08 Mar
 2017 06:49:56 -0800 (PST)
X-Received: by 10.157.7.193 with SMTP id 59mr2728570oto.148.1488984596601;
        Wed, 08 Mar 2017 06:49:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si264721pfb.0.2017.03.08.06.49.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:56 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so3640393pgy.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ipy/WsmRcPR/8ZwodFC7I16Oznit5xxUP7x7QsKs4vs=;
        b=M83+SrgEnlHEVKIW6mQWEhsbtqyu45eYYMGRmoInP/9K1pAyGjfkztJXo5X3R4RwvU
         na7FAU2raumTC+LUrStbSD1kePXetXGudIZwhi2d/WUNngIFYT3wmQ1FD+iV7OmpJspQ
         kN67/6zxcEH2UHGHhqxyHfFl5P30AKKvtEkeIWecnXcLDgfgLpYZqeF34n6YUAnfImpD
         CNguIk8DrPTs+hb2BBjdTtkLuRuQTsNoHX3v0MsZVhepQfEJTv0bmDSQw5GhZ7zLxOsM
         UpLxage1gsAWsdWKEZBxuRqUzsjMIFB9Hag1gzo0l8wXV5+ofj+SjiReTMaJy06lnJIy
         Ka+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ipy/WsmRcPR/8ZwodFC7I16Oznit5xxUP7x7QsKs4vs=;
        b=NO7+TWHWME4oUie6+CvVDurSpjHHhkZpP3v+7k+W99m32JGFBzt/M1TImuhLyaw9Ty
         XVIb8j/RMTu6/Jrx1BlVrTntyqPVvwFfCTdgm7CzYZPlem/IwYi93HjfMB3asuZn76gs
         CojrRuLoed+FOa0LwBHrH50zQVHNPLyN414OO6ePV0SFLXHgSgRWHtfET3eMC9n0+LhM
         NeMyMly9zIabMOHrSneygZuLD1+mEi+qfwy17IrSK26AQY4L3uIlF3HxM5Aet4XxgV51
         HjtmUdVqUBUh5TwGVBm3I/I/U24Ex8sz7oozjxN8n0EjfnLMF6+xWNmHWZraQLmUkuh+
         lGkA==
X-Gm-Message-State: AMke39l9+QwhzGR+t5t2DsMTpege6RNUVK0s84bSRnPkakVUACKXKsqj5N9lUTHXGdJNOg==
X-Received: by 10.99.123.27 with SMTP id w27mr7432529pgc.155.1488984596176;
        Wed, 08 Mar 2017 06:49:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id g21sm6829998pfb.41.2017.03.08.06.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:55 -0800 (PST)
Date: Wed, 8 Mar 2017 20:19:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 6/8] staging: bcm2835-audio: Add function name to debug
 and error logs
Message-ID: <e3541396d2f2171a9abcb932b1e02b118377159e.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch adds current function names __func__ to debug and error logs
in the work functions.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c   | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 026582e..77657a0 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -138,7 +138,7 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 		work = kmalloc(sizeof(*work), GFP_ATOMIC);
 		/*--- Queue some work (item 1) ---*/
 		if (!work) {
-			LOG_ERR(" .. Error: NULL work kmalloc\n");
+			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
 			return -ENOMEM;
 		}
 		INIT_WORK(&work->my_work, my_wq_function);
@@ -146,10 +146,11 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 		work->cmd = BCM2835_AUDIO_START;
 		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
 			kfree(work);
+			LOG_ERR("%s: Error: Unable to start audio\n", __func__);
 			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT\n");
+	LOG_DBG("%s: .. OUT\n", __func__);
 	return 0;
 }
 
@@ -162,7 +163,7 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 		work = kmalloc(sizeof(*work), GFP_ATOMIC);
 		/*--- Queue some work (item 1) ---*/
 		if (!work) {
-			LOG_ERR(" .. Error: NULL work kmalloc\n");
+			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
 			return -ENOMEM;
 		}
 		INIT_WORK(&work->my_work, my_wq_function);
@@ -170,10 +171,11 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 		work->cmd = BCM2835_AUDIO_STOP;
 		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
 			kfree(work);
+			LOG_ERR("%s: Error: Unable to stop audio\n", __func__);
 			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT\n");
+	LOG_DBG("%s: .. OUT\n", __func__);
 	return 0;
 }
 
@@ -187,7 +189,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		work = kmalloc(sizeof(*work), GFP_ATOMIC);
 		/*--- Queue some work (item 1) ---*/
 		if (!work) {
-			LOG_ERR(" .. Error: NULL work kmalloc\n");
+			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
 			return -ENOMEM;
 		}
 		INIT_WORK(&work->my_work, my_wq_function);
@@ -197,10 +199,11 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		work->count = count;
 		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
 			kfree(work);
+			LOG_ERR("%s: Error: Unable to write\n", __func__);
 			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT\n");
+	LOG_DBG("%s: .. OUT\n", __func__);
 	return 0;
 }
 
-- 
2.7.4


