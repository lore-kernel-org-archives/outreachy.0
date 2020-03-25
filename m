X-GM-THRID: 6807150938444267520
X-Received: by 2002:a17:90a:c78b:: with SMTP id gn11mr5658115pjb.147.1585170051455;
        Wed, 25 Mar 2020 14:00:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls2486319plq.7.gmail; Wed, 25
 Mar 2020 14:00:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtD1rTnbTJi3OSYxwend8YUAAYauWtj9J8/b5nDTQcmA2VSEimVe40Un6Hgi3zjW8/6X5Ln
X-Received: by 2002:a17:902:8a91:: with SMTP id p17mr4994516plo.248.1585170049830;
        Wed, 25 Mar 2020 14:00:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585170049; cv=none;
        d=google.com; s=arc-20160816;
        b=0130cMnnRsGGOT2zXp/okume24BvKGVU/Z47pxgFiP3i6Eoc76cLSL47fzMX3V7AOZ
         gl7IQcUC2X1tACSFhhtkqQ9LbQ9+9C/N5zrRmy/kP/qLPh+9Z3SbkAK0lrhj6XyHhBMa
         1jA+iErfWb1dcWSS9GMFqXs9UoXiWX5c05q4tsaJ7u/0LjOTwwyypy8JPn+5LkGrXNHs
         F2ut4VmCQW6e3+uZwo0IBlaBA53+It/s45LnnkSZ1LT/WEiGgJzIDQ6h69+XdXPwOdkd
         6y8IxUeHtDAD9QY492GFXZ9xUY86o02ZMdfl9hPWwpHLl4WdST+GNDoppuwZsTz7BMYJ
         oVKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7qG8lGXQdD19+kMVRM9ERbSMuU/dDvdJ9LSC92xP7XU=;
        b=fIiyM5gK8w9Ye+ijBe99I57ouiVmS06DjuL2hfhrB4yn1Tsx0I8nr/AnIzTPsY5NKg
         2S1qcXLOIinEtv5kKg2bnUvo3tIL7fjl1M+wSapVbMrJt24esTJgWlUQOnOmq33Zuzl+
         6yGGGkf7tg2wmWs8VQmMDFQX3VVolz5/yE7vgp2T5W3Yw1H+2tqsLAJkQG+Jgra+aj2c
         LNWb5EwVtykE1r1akAqNe27yWz+yMTlZPZWdmU797+TnJ1TNbIS+oKQ9gx0KExK3br+i
         ILmEr1L5Sy3okfDAQkc4A7YUm51GriaMBT4OTFKucvl9W2wrHNcyBRJWwdl453Qy4v8f
         WKkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PUYS5dBe;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 188si15585pfb.1.2020.03.25.14.00.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 14:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PUYS5dBe;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id ng8so1559380pjb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 14:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7qG8lGXQdD19+kMVRM9ERbSMuU/dDvdJ9LSC92xP7XU=;
        b=PUYS5dBeAUc2FPkdbManfGHspdUyta8P6yKt7k0mf+s+UD4AddwgqJFWaO/xavTOVH
         RMWSis9oFwDaBI4CCx3ZG1qTtlxTVkNVaSF0Ot6PtaYaGFI8F43MqIufGCqUmxBufyY7
         2kqzfj4PIrbZoAy6NuKWusJqqRQGIJPDk+FZn0Gzgw9usxzytjFl+2HiljU59e5CeuKS
         nB35VhJlQoq0oUealatfEG/u59JoP2bdJ1ju7+Kzq0+9CDMIeit7UzJAgElOsI6PCjMr
         CzLDXdag7xkofI3WxProcwcq+oJm7wvmEJtPUNsSL3b7VgDV/vloi0oxyOOHaltH1Dwn
         S2/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7qG8lGXQdD19+kMVRM9ERbSMuU/dDvdJ9LSC92xP7XU=;
        b=CWm4BTVUP60HOUEaNmI74rnB/26ZzKeWNzG20UgSvCnpRYfjdFbXamb/2UI08+Hamr
         bXIQMzz2Z/j2j7MhrGZmvtTLzlA1V7YKoqM2NCNVShInV2gZgtMFn59opxOKCq/krLID
         kLohI0HSrNot0ojxbjH3/t+FbPbp4qdety7NaevPpt9TB14EMmcTQM5VwQvmqeZAWpbL
         hK1HarEfXHAWX5SzVAAfD/W5OkTaRPDUkoPcwAbhcOEnZB7kwRZt7z1Wr6jcxPfhwM3C
         TBMrkbX4EN+WaGyQwnkt0dxrWJKC3uqor8P+byowZi2WjiSbOx2ItCyANmUKJmeHqcYe
         Ebcg==
X-Gm-Message-State: ANhLgQ3VEk8nMrxo5qYv1rgZI45PnPbaTs6LoTw9+jnka+lGL0leVgz2
	yhaNiL6hC6usJLnsmJWRgkM7tkm1
X-Received: by 2002:a17:90a:b003:: with SMTP id x3mr5718639pjq.140.1585170045555;
        Wed, 25 Mar 2020 14:00:45 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.248])
        by smtp.gmail.com with ESMTPSA id l5sm52902pgt.10.2020.03.25.14.00.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Mar 2020 14:00:45 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:30:40 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: [PATCH] media: staging/intel-ipu3: Simplify single goto jump
Message-ID: <20200325210036.GA31405@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

On successful node setup, the code jumps to a cleanup label to perform
nodes cleanup. This only call to cleanup using goto label can be
included in the for / if blocks to make it look more associated.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

---

NOTE: Patch being resent. Adding linux-media list as suggested by Sakari
Ailus. No changes since last version.

 drivers/staging/media/ipu3/ipu3-v4l2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index e8f33539a217..bd8cb7571038 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -1295,15 +1295,13 @@ static int imgu_v4l2_nodes_setup_pipe(struct imgu_device *imgu, int pipe)
 
 	for (i = 0; i < IMGU_NODE_NUM; i++) {
 		r = imgu_v4l2_node_setup(imgu, pipe, i);
-		if (r)
-			goto cleanup;
+		if (r) {
+			imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
+			return r;
+		}
 	}
 
 	return 0;
-
-cleanup:
-	imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
-	return r;
 }
 
 static void imgu_v4l2_subdev_cleanup(struct imgu_device *imgu, unsigned int i)
-- 
2.17.1


