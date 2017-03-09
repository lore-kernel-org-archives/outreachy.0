X-GM-THRID: 6395446243166781440
X-Received: by 10.99.156.18 with SMTP id f18mr4536671pge.41.1489055936884;
        Thu, 09 Mar 2017 02:38:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls1686644ion.18.gmail; Thu, 09 Mar 2017
 02:38:56 -0800 (PST)
X-Received: by 10.99.4.2 with SMTP id 2mr5415077pge.70.1489055936396;
        Thu, 09 Mar 2017 02:38:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si1132572pfb.2.2017.03.09.02.38.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:56 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so6418729pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lNpTCm0NGryICOP1Il607Mn7+xq581jxn6wStgdJIOs=;
        b=V+y+rEsEoaKWskdKFBhp8V2LNZbwwOfbyt/sPsKiQwUE/3sBHGSKDtUFbLXlk/0K4U
         hF6j7hGM10NDdQ4hZXh4uMmqSUibgREROeUc2/xZo0X6fFOcea0VWAVroLD0v8edKT3f
         DO9mnsbs5V0eQgGmnV65MCGoD3WQWs9Uwu7g/Hj+Ap/MC63uH5LtHN7tj+TFVkMHyTVA
         PrBZtyH/y35rgMGisRkOSFeDKyBaq1LNg4iT0QKJ7SOha5VA7j1I4aZSm2NtY1k0DfMR
         3ZV78zULqa793pW9ZvmPvwC6PkOH3zfl1/0lFNVB8S6PjXZKuudmEZhXz/QoxHZpU76w
         9E5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lNpTCm0NGryICOP1Il607Mn7+xq581jxn6wStgdJIOs=;
        b=Axq7mHm4+m6kbGKvEAPLgw6D3GkXzDWDybQJwiKdo29Fh2NSMJU/CM89xj91g20sew
         vrTlF8FVV+BaGQzgRtROMBvQl+lJGB9sy7p96PJ7NmS1pn3VnO73OY5Zm00dJ6x12cir
         J7beIfgYJUlpk/aNQtNg8H1O4+DfUfBOPJW0e9F93wIqDcviJQBQ2Y7cJrt1cgpZtb3p
         AUN25H0DtBMXQ/mD1S8RHuJgAAL8xO3y/YoxQpGWNvMYsAVm5pmjpMrCsjPMdEY21QDW
         A9aZZl6qKWai1/LsOyepDcEEboS6wR/OejDm55RITJbg9GQPkXcEDjie9JOdjZ3+piyj
         PByQ==
X-Gm-Message-State: AMke39mlbL8WQOXh6WvLYQdsoHmEACSP8ZtA/hJhh7fUP30Z2mtddluJGcPjamzRPrybOg==
X-Received: by 10.84.238.9 with SMTP id u9mr16429733plk.174.1489055936056;
        Thu, 09 Mar 2017 02:38:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id a1sm11697443pgn.51.2017.03.09.02.38.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:55 -0800 (PST)
Date: Thu, 9 Mar 2017 16:08:50 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 5/7] staging: bcm2835-audio: deallocate work when
 queue_work(...) fails
Message-ID: <5e78aa18edd1478a9b4c05ac21444be8a5577281.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch de-allocates work when queue_work(..) fails in the
bcm2835-audio work functions

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 9545d35..026582e 100644
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


