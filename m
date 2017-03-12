X-GM-THRID: 6395446243166781440
X-Received: by 10.157.37.82 with SMTP id j18mr12882326otd.68.1489333201023;
        Sun, 12 Mar 2017 08:40:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls3647831iof.31.gmail; Sun, 12
 Mar 2017 08:40:00 -0700 (PDT)
X-Received: by 10.99.139.202 with SMTP id j193mr10318408pge.151.1489333200151;
        Sun, 12 Mar 2017 08:40:00 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si2303358pfb.0.2017.03.12.08.40.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:40:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so15519901pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SxPN4YuJlaVAZS4+qC84x1gAuF5EugsWC9c02xKcLpE=;
        b=NUjgpwTR4SRWnqBeipkNsJrAs3Vc+c3oduxSrcdXLzQ83EGCUTV3864KLGYvHt8XTJ
         UWzmt9UB0xa2eJxiojrgEf/7soS1PGq2cyHBzUCZ5zcFv8orwg1qkVTRbnV21EeC0Ovt
         l7c/uCeJvx5VsX8RSu+L+wZoGU7tKj0E3T7+4y2wbCHuN43Qm5QtsknLbpWxdR+KD82/
         KmSoMq5mIa5712zB35QdAsAZIpeQarqQSlOgFOjsKg8XDBGywprj93Hc+FitimDwYvul
         Zdf0cIgu61aSFYZxxj7lXoO+IVIp9xjOwP2Ipi/1QQgBJRHOkMbs5yX69b8Au13APvsM
         swLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SxPN4YuJlaVAZS4+qC84x1gAuF5EugsWC9c02xKcLpE=;
        b=LRJYPbsaJy4KvrmX4pc0+7g0BN5feRPBK/FxNzajLWtL3ERxVoSTZQKjUbITg49k2R
         Sta5+HPubO7zbqdZFWgmZIktSBUoOKY/AKgYPxu745cExJaK97LGSlDUzuQldiRyvOIV
         0MI0gtw7tReuHReSmoDbqN31SVwXQ6nAqx6Bz5E2H6cB2tj+ZJEprJMnHltU7RwVa/5K
         JVscpKBdKolRUzZZOrMIdZzp8cELk3OeR7IpqBYAp3OM28zt995w5F/dWCuNQRsnPCYt
         DqhE9bwAPlu72WFFLF/GTIWGw93+WOk+RsPC0mLl9qrDs6+pI9qTKiYQudKORMHphIpl
         1yXw==
X-Gm-Message-State: AMke39lU6an5MOMOnVF+gxeJjwP7nqg8+1aGakY6zelAusk3ALK5Gx2NmeQ/dxQqFbTqVw==
X-Received: by 10.98.144.69 with SMTP id a66mr32654286pfe.30.1489333199822;
        Sun, 12 Mar 2017 08:39:59 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id b14sm28946163pfh.114.2017.03.12.08.39.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:59 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:09:49 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v7 5/6] staging: bcm2835-audio: deallocate work when
 queue_work(...) fails
Message-ID: <fe2a9b7546167d8af2adf24d337bbb5ba7c70431.1489332734.git.aishpant@gmail.com>
References: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489332734.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch de-allocates work when queue_work(..) fails in the
bcm2835-audio work functions

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 6feb1a6..af16d0f 100644
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


