X-GM-THRID: 6395446243166781440
X-Received: by 10.99.60.15 with SMTP id j15mr8540743pga.19.1489161741549;
        Fri, 10 Mar 2017 08:02:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls7480646oto.31.gmail; Fri, 10 Mar
 2017 08:02:21 -0800 (PST)
X-Received: by 10.157.45.11 with SMTP id v11mr8397260ota.105.1489161741089;
        Fri, 10 Mar 2017 08:02:21 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si1811385pfb.5.2017.03.10.08.02.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:02:21 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so11238010pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VSuuvPfa7jyoJh5t36DX/kKXYhUuWQi/EKvN5//sYUo=;
        b=TPSHpj/2SFHEZO+SxkZI19aI7os53HYg0YH64YJNW4izIKgcOiRe8iGN+oy9r/6BDQ
         PbfqxYJuM/x6rncUHaYAoA3JmjKwMPJsr8hYMGwd1aOFqJaVIpn7el9x6knDHYzJVrFU
         1NeJ0irjIG4gmPAFWRewVUrZbfQphr7din8q5zr/HWwFCmHaYOLjsLxvIXwffHFyXiPH
         7rTSuPrkopx0nGF/JPA+spfBFY8DiMs6CaLzeRDBxj3PQ411GwuyfAKU+tq75lMSfecY
         TE6VsD8spcy5dEPojvJm2p9wn8fRfTetPla7onfjviZJI0Hh0yvLfjP7dAwVjn51Kv3G
         k7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VSuuvPfa7jyoJh5t36DX/kKXYhUuWQi/EKvN5//sYUo=;
        b=QQacby/gLksLwkaR2Olt9TWHxl1BeBC9tcSG6dSSQ+tF500B94d41alxqOv13zNdu8
         hgYNkidWf/6BaQZ9QlVmbREGz7OAx3DODvb0qt5wyflqNYKLBroBa3TvgKdHLKENUJOD
         7+mo1q4RDQg1hlHhlEzKfQzIz/BsqCNeuFoBB8yLfB7rwJJuaoxK3v7QDWGzlE+Sm7Mo
         CWYM8hU4CWiW6/ZVzNfBROWQaVvEZaZBjLymsmMalxBckfG5Sr8hu5WB2VO7sXpIQSG0
         zkMFSEAz2QybxSfhzgeLwog7nJ8aAFwumYBEx6CNl+WqGZKNMx0T101S+fao+r2th9CS
         fpXQ==
X-Gm-Message-State: AMke39nS1HfBHZWK5a6ImheNgHexbKpFMYSd2z3JYCBd3CX5Fc7eaSdMAbO2Zh765baNVQ==
X-Received: by 10.99.246.83 with SMTP id u19mr21077604pgj.205.1489161740764;
        Fri, 10 Mar 2017 08:02:20 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id m6sm19459947pfg.126.2017.03.10.08.01.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:02:20 -0800 (PST)
Date: Fri, 10 Mar 2017 21:31:05 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 6/7] staging: bcm2835-audio: fix memory leak in
 bcm2835_audio_open_connection()
Message-ID: <97c79973a44f4695f3d0161b4300fd185363f7f1.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

In bcm2835_audio_open_connection(), if VCHI connection fails or
initialisation of VCHI audio instance fails vchi_instance needs to be
deallocated otherwise it will cause a memory leak.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v6:
	- Remove redundant debug logs
---
 .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c  | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 449799f..fa06bfd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -396,8 +396,6 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		(struct bcm2835_audio_instance *)alsa_stream->instance;
 	int ret;
 
-	LOG_DBG(" .. IN\n");
-
 	LOG_INFO("%s: start\n", __func__);
 	BUG_ON(instance);
 	if (instance) {
@@ -405,8 +403,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 			__func__, instance);
 		instance->alsa_stream = alsa_stream;
 		alsa_stream->instance = instance;
-		ret = 0; // xxx todo -1;
-		goto err_free_mem;
+		return 0; // xxx todo -1;
 	}
 
 	/* Initialize and create a VCHI connection */
@@ -416,8 +413,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 			LOG_ERR("%s: failed to initialise VCHI instance (ret=%d)\n",
 				__func__, ret);
 
-			ret = -EIO;
-			goto err_free_mem;
+			return -EIO;
 		}
 		ret = vchi_connect(NULL, 0, vchi_instance);
 		if (ret) {
@@ -425,7 +421,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 				__func__, ret);
 
 			ret = -EIO;
-			goto err_free_mem;
+			goto err_free_memory;
 		}
 		initted = 1;
 	}
@@ -437,7 +433,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
 		ret = PTR_ERR(instance);
-		goto err_free_mem;
+		goto err_free_memory;
 	}
 
 	instance->alsa_stream = alsa_stream;
@@ -445,9 +441,9 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 
 	LOG_DBG(" success !\n");
 	ret = 0;
-err_free_mem:
-	LOG_DBG(" .. OUT\n");
 
+err_free_memory:
+	kfree(vchi_instance);
 	return ret;
 }
 
-- 
2.7.4


