X-GM-THRID: 6395446243166781440
X-Received: by 10.99.43.65 with SMTP id r62mr4767648pgr.136.1489055947982;
        Thu, 09 Mar 2017 02:39:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls206264otc.43.gmail; Thu, 09 Mar
 2017 02:39:07 -0800 (PST)
X-Received: by 10.157.34.114 with SMTP id o105mr4542130ota.48.1489055947586;
        Thu, 09 Mar 2017 02:39:07 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si1127723pfx.8.2017.03.09.02.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:39:07 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so6886266pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oREedVu186Kf/SOHSP3ERx7EBU4RakFKNhCW8Kj353k=;
        b=Q5kKDMrj1nGAF3Bk6qOi5Mbp11iZEY4JvzpTQcIfkUlf+NPiXW5O/oEUe6+efH6W82
         jcDwWnrfZiDvUiK6UIQnryDKk7mwba8krMZypnsMHQ7ozZZYF/d3kKNmsnWeRxSDLZM7
         OBMaRbUO/9zKO7kXTj9zfJbySKwrTJKsLjQfjVioqkKGp8eqw+ZgLg1ST/iUIGjj9T9D
         r0jxKvlIoG2+BNAuaWzzSkzBZzBNhBYDSgR+WqadvF0ld01Hoh89IKJfSD4JoSJ/MhEB
         njqWGFYBKXzqjZkE6WQT7NlBxBcSIkgNjguPEcNAi5LD6ZIzX9xaqbkyIxpLrjZmOZx7
         Hupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oREedVu186Kf/SOHSP3ERx7EBU4RakFKNhCW8Kj353k=;
        b=rJmrWnniJkdHEVxQZXXYhZW+eNIKU0qs8VVcUaUZCyoDrXSJEUsBTb8ONZFf/loYsu
         TdQGmBVJnNKveSiEqYWIcWVCWctSwXDSnCb1W9WuSDD/9PYAgNOtn3aDsnCmET/zmOfk
         2kgUv3QDUf0jJnyJTg69NOfVch1op7OcVpE4LxPqmkuu1TsRMqw7BRTyAg9Ku5T4m+08
         dYDAH4Rst6qwO1YArQnfv/8TdRlzEMb1RQ7ue067rDct7BfEYT5A+6KFowxeeu2FQyOy
         ULhO9dlpOgeFeEDCWPI9NHf74a7CE1f2eS685yS0kNcKM95+C0tK0qEqJlWd5aVh9xfA
         d4xA==
X-Gm-Message-State: AMke39mqudhVfJVhTfohkrcRaKwN2FdOzIxAs3V2/m4/YhdstvKc7ghVNt5hzGAkOzHxTg==
X-Received: by 10.99.125.68 with SMTP id m4mr13124566pgn.13.1489055947223;
        Thu, 09 Mar 2017 02:39:07 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id s12sm11676787pfj.9.2017.03.09.02.39.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:39:06 -0800 (PST)
Date: Thu, 9 Mar 2017 16:09:01 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 6/7] staging: bcm2835-audio: fix memory leak in
 bcm2835_audio_open_connection()
Message-ID: <1a1aea3c829ecd858673d02b48c48e2d6103bf0a.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

In bcm2835_audio_open_connection(), if VCHI connection fails or
initialisation of VCHI audio instance fails vchi_instance needs to be
deallocated otherwise it will cause a memory leak.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 026582e..c9afad0c 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -405,7 +405,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		instance->alsa_stream = alsa_stream;
 		alsa_stream->instance = instance;
 		ret = 0; // xxx todo -1;
-		goto err_free_mem;
+		goto err_init;
 	}
 
 	/* Initialize and create a VCHI connection */
@@ -416,7 +416,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 				__func__, ret);
 
 			ret = -EIO;
-			goto err_free_mem;
+			goto err_init;
 		}
 		ret = vchi_connect(NULL, 0, vchi_instance);
 		if (ret) {
@@ -424,7 +424,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 				__func__, ret);
 
 			ret = -EIO;
-			goto err_free_mem;
+			goto err_free_memory;
 		}
 		initted = 1;
 	}
@@ -436,7 +436,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
 		ret = PTR_ERR(instance);
-		goto err_free_mem;
+		goto err_free_memory;
 	}
 
 	instance->alsa_stream = alsa_stream;
@@ -444,9 +444,11 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 
 	LOG_DBG(" success !\n");
 	ret = 0;
-err_free_mem:
+err_init:
 	LOG_DBG(" .. OUT\n");
-
+	return ret;
+err_free_memory:
+	kfree(vchi_instance);
 	return ret;
 }
 
-- 
2.7.4


