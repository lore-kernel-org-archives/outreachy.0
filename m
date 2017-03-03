X-GM-THRID: 6393338025823174656
X-Received: by 10.99.9.129 with SMTP id 123mr1719720pgj.120.1488565046736;
        Fri, 03 Mar 2017 10:17:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls3100900iod.49.gmail; Fri, 03 Mar
 2017 10:17:25 -0800 (PST)
X-Received: by 10.99.109.10 with SMTP id i10mr1597823pgc.152.1488565045928;
        Fri, 03 Mar 2017 10:17:25 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h79si192082pfh.2.2017.03.03.10.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:17:25 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so10494016pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+YerM1Ewgwfmf4TRiThKWbYvmvW7Or7nrfC+s3ji7IU=;
        b=Cy6DzAfsI8HSxqG6O/HsaojPey8xYZVfWOpP1g5UCEUxD6ErQfPq2i20vJSxp3FwYy
         7pRnayTyPM8WTsopFcdDvyjQr0sqGQ/y2fzbeoS3v4BU2a8X3G1nIZym06qopdpgT7vK
         P8aNjUE7kwVi6+AJQxD4ZGke+sD9I4NRLcwEdj8I9jXC9F/oaV1/PtWs1wdafB8hAtzZ
         JBI7TqVMWhRgjfFdI+bvSkWqHXN98k9u2qg6uuax3phi0RGLc9lGDayi5oc0JSdVQ0+n
         U5YKZnB2kZ5d4j9G5uWp9hM4vmezya2cqeJgP20o2M1VRXO5oriAMs6avhNpXf+0Lm6w
         /zoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+YerM1Ewgwfmf4TRiThKWbYvmvW7Or7nrfC+s3ji7IU=;
        b=ikq95ZOXxhkANqkJ1n2RzHcdMsBypZfpaXY/Tn7e+PrvT9LDTX8N5Kyf9sQg5FmWvg
         +nlnEQWj+Z9XI9KsWZ241AHO/JHi32eYdVB4wFiavU1TtEyzhtyN8LFGHGt2z16my7ZK
         vomK/8H1s3f9aUSwLBZP7GQwZmErz2lMVsYueMif28pV1ifFtLT+QRVLgw5UT5xIipDz
         C0pC8LnkimxmkbpljVD5nQ1JgQgd9lPMbY5O3W1OUtp+SIFI1ZhOOto6gr+IBA6h9EKp
         oZnKFfKOdcfqdkCSzqnaRBXLemxm1UisaJHO5Z+xjJUwZxXs56WjkHKPlvbMAP/uXPCa
         wzlA==
X-Gm-Message-State: AMke39mW9ae6XaoClGmLzuA19bnpJe/sLwHVeGR6TtFeKK2ODXc2bAHNvzhMkseIe72HlA==
X-Received: by 10.98.34.86 with SMTP id i83mr4993165pfi.89.1488565045702;
        Fri, 03 Mar 2017 10:17:25 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.136.156])
        by smtp.gmail.com with ESMTPSA id 74sm24917851pge.30.2017.03.03.10.17.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:17:25 -0800 (PST)
Date: Fri, 3 Mar 2017 23:47:16 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: bcm2835-audio: use braces on all arms of
 statement
Message-ID: <73383b1de91b0792676d399f17fc58bcd37f49ba.1488564925.git.aishpant@gmail.com>
References: <cover.1488564925.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488564925.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add braces on all arms of the if-else statements in bcm2835-vchiq.c to
comply with kernel coding style.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 3cc75b3..07f7c34 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -145,8 +145,9 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 			work->cmd = BCM2835_AUDIO_START;
 			if (queue_work(alsa_stream->my_wq, &work->my_work))
 				ret = 0;
-		} else
+		} else {
 			LOG_ERR(" .. Error: NULL work kmalloc\n");
+		}
 	}
 	LOG_DBG(" .. OUT %d\n", ret);
 	return ret;
@@ -168,8 +169,9 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 			work->cmd = BCM2835_AUDIO_STOP;
 			if (queue_work(alsa_stream->my_wq, &work->my_work))
 				ret = 0;
-		} else
+		} else {
 			LOG_ERR(" .. Error: NULL work kmalloc\n");
+		}
 	}
 	LOG_DBG(" .. OUT %d\n", ret);
 	return ret;
@@ -194,8 +196,9 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 			work->count = count;
 			if (queue_work(alsa_stream->my_wq, &work->my_work))
 				ret = 0;
-		} else
+		} else {
 			LOG_ERR(" .. Error: NULL work kmalloc\n");
+		}
 	}
 	LOG_DBG(" .. OUT %d\n", ret);
 	return ret;
-- 
2.7.4


