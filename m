X-GM-THRID: 6394401254530875392
X-Received: by 10.129.174.1 with SMTP id m1mr2852751ywh.64.1488984586286;
        Wed, 08 Mar 2017 06:49:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls3194876ota.23.gmail; Wed, 08 Mar
 2017 06:49:45 -0800 (PST)
X-Received: by 10.13.238.134 with SMTP id x128mr2985073ywe.59.1488984585901;
        Wed, 08 Mar 2017 06:49:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si620315pfd.3.2017.03.08.06.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so3637042pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lNpTCm0NGryICOP1Il607Mn7+xq581jxn6wStgdJIOs=;
        b=b+n/8aMqWN8csi36dD+UOypzX460USKoTNfujxPYq67mGO2p+ce0qMIE4loHpKOgy4
         MZQy1DHclnQMR0sudRR4CQ+We0qt4UtKmsdsc6GCS+Q8bMFoQvV7wKxjXObL+/dvYxpW
         C6Q+4B/26NprvHADrBn0mXI34JAGOYFJx23+yxUjvtVZk+ogq9JPTmpXA1fQRH9T6h9Z
         UURY1HV1gyf+YUyJqYMhHPY8Rjgarj6yN/zw2IH+liYGCjRBXetCgAnzzNb2cW5ET8cn
         XX9GYPHO+OoL6Dw9dmfGFQJHsfMjH73kwe61hoes+DO7VJr7idpGsrRBx6Ql1/zrJzLI
         9hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lNpTCm0NGryICOP1Il607Mn7+xq581jxn6wStgdJIOs=;
        b=YonR8Lz3rpR52CssP2/uCCyGwjqUVL2E/dnfSC03CKKE9iZQE68MotiKXwG0Qjehj8
         tqd49wGVplBS4pCOm3hm9tVvMycEV+lpwD6i6KSVtURq3UE4HPz77UpyI4yPhh8D5sHb
         dEE4mhh1boyShRckuXjLbDaOat63OPCQhEvJ4Ztwx+KY/do5plPWQJUzqx8Gss8yGJKI
         zR6OxBRLAp049sr8LIXCStFsXtvu1EGgjLkIdM5A2PmlE4xB07sqJiOD5jVtp4ziA/eL
         vj3bY2PIuuuloWY+1tSwTf10yE111I8O8y0B8tz1jn2g45NYtdbr3dTP8/0Iqateu3u8
         1D3w==
X-Gm-Message-State: AMke39mdWkjNVuZrivTZ0vS3CHi/GcF1CXmYUtYNm3OMG1WNngPgKlc0s2raOeQqTfMkDQ==
X-Received: by 10.98.51.70 with SMTP id z67mr7488317pfz.68.1488984585525;
        Wed, 08 Mar 2017 06:49:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id e13sm6850764pgn.38.2017.03.08.06.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:45 -0800 (PST)
Date: Wed, 8 Mar 2017 20:19:42 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 5/8] staging: bcm2835-audio: deallocate work when
 queue_work(...) fails
Message-ID: <5e78aa18edd1478a9b4c05ac21444be8a5577281.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
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


