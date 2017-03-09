X-GM-THRID: 6395446243166781440
X-Received: by 10.157.83.26 with SMTP id g26mr4628200oth.24.1489055958323;
        Thu, 09 Mar 2017 02:39:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.193 with SMTP id c62ls1683027itd.17.gmail; Thu, 09 Mar
 2017 02:39:17 -0800 (PST)
X-Received: by 10.99.67.197 with SMTP id q188mr5640710pga.31.1489055957929;
        Thu, 09 Mar 2017 02:39:17 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si1132572pfb.2.2017.03.09.02.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:39:17 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so6418729pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vRkquCtBy/LnyKzZLwGwcE0mh+XAvBUBRePIFYRYzVo=;
        b=LqOsAGkLckGotQq4xGWP5j3jgfYNSlD9Em1BNj9HwUul1UAjnadv9mNhx3+1c8OkYz
         S/2JWFToBqCnaLISRXOTLgwr3NzDKTqT8tatwMjytX7V9DUwzgKFVdUQfQwHs28AIFQt
         UfEOFnihIvLMOyvliV6qTTWrNR+SPNUnf3Ls3VuCBw2s3ZIkf42emvCrgIkMsvu3AU61
         xcAk8KrwFP8fIoyYrvmyYwbO9uUIR895C4s6Oe00quVSJ+3/h8WLr/BMtsvVnbXo8wsz
         MP2Mk9OWdGEJb5pHtKUTQMZ/XxsC/USD0+WsyWT+40SJV+di5VYXaCHIIbJnAG7UKB55
         VYkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vRkquCtBy/LnyKzZLwGwcE0mh+XAvBUBRePIFYRYzVo=;
        b=XEwAc7/h6EB/vZyF9spuPqEVVdbasE7kW9e6sWU/Fewsv6BwPFsLNddk7tnnzm2Htu
         agsAvUPyWQDB9yRNiLABsqIsyjpEb8AklHmq081Os7PqZe+/ctYoc0aXcBvGH71Sim7z
         AwlFf/hTy6YRQ8FHko9UG7L48HDh/BZ2Pxuyz8UsDIZj7lGOzxFPcwKNzSitQzp5UQZb
         OXAZTvdxrcTTvucovVp5tiFa4u35I7jm8lIx2h43yuQ5Aeio8UgbJzxJyohk3wDABGgb
         rMLAuVyZNX/5AvFqul1Pf4BW0HVxWnJdPmx+03g77Gno++xrnXnWYf0oipHECxL+8nhN
         fAeA==
X-Gm-Message-State: AMke39nG4p1UM1QbYvYoMxyURvMRHNrML4bo3j8PRLNvRgiUL4IoQQHU/fKvsD+iEn9M/A==
X-Received: by 10.98.214.4 with SMTP id r4mr13343042pfg.185.1489055957573;
        Thu, 09 Mar 2017 02:39:17 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id b190sm11594644pfa.110.2017.03.09.02.39.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:39:17 -0800 (PST)
Date: Thu, 9 Mar 2017 16:09:13 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 7/7] staging: bcm2835-audio: remove BUG_ON() in
 bcm2835_audio_open_connection()
Message-ID: <aa42dec3952c9d77fe8ae00cb6219c9e921203a9.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The presence of BUG_ON(instance) in bcm2835_audio_open_connection()
makes the next if(instance) block unreachable. The desired behaviour is
that the function should exit gracefully returning an operation not
permitted error value (-EPERM).

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Not sure of this change. This driver is still in staging so maybe then
BUG_ON() is required here for debugging. The kernel coding style document
suggests that BUG_ON() should never be used since it kills the current process.
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c9afad0c..df3267e 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -398,13 +398,12 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	LOG_DBG(" .. IN\n");
 
 	LOG_INFO("%s: start\n", __func__);
-	BUG_ON(instance);
 	if (instance) {
 		LOG_ERR("%s: VCHI instance already open (%p)\n",
 			__func__, instance);
 		instance->alsa_stream = alsa_stream;
 		alsa_stream->instance = instance;
-		ret = 0; // xxx todo -1;
+		ret = -EPERM;
 		goto err_init;
 	}
 
-- 
2.7.4


