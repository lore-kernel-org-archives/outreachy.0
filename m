X-GM-THRID: 6334696931695001600
X-Received: by 10.31.150.3 with SMTP id y3mr3965801vkd.29.1474911563343;
        Mon, 26 Sep 2016 10:39:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.38 with SMTP id j38ls1401320iod.24.gmail; Mon, 26 Sep
 2016 10:39:22 -0700 (PDT)
X-Received: by 10.107.8.97 with SMTP id 94mr5937930ioi.71.1474911562271;
        Mon, 26 Sep 2016 10:39:22 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id f12si4404616pfk.0.2016.09.26.10.39.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 10:39:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so9056931pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 10:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=at3ZUlQxArWAHvLO/ejZ6TGHHvrD2Hm0ZGU+mrh4ok4=;
        b=vsKdZhK9G1znHS/e3EvqLOHNb/Z+Tw3NnsCz+25ePH9cNd8D3rZClrnxzAxkVi1q70
         OUkhwAO3cv6FVD3j1j5Tvq1vBSJ2FIdHlTZL3fYq4+U6GOfEbN/LgIfU7jzp2Ie4Bisb
         63j/dJuLRmn9LrcqWSqj6fNKUaiRAHxNuUICVXDVWIRLzvMsXkcP2+xzWTiaDgXUSKj8
         t/8A9pJ/ARj9EPzONRTHKPDnA4WoLYKjOCdhPEDHVKQPt6UeyRxwZjWyAdeHaMed6eLO
         ySHWu8wFc4WGVfygb59LTyTD0m7SE9zRC8srJlrg1FCy3mC4hYiARPger6rG833Wq+4S
         Dojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=at3ZUlQxArWAHvLO/ejZ6TGHHvrD2Hm0ZGU+mrh4ok4=;
        b=jl51MVZMcQQW7qleVrMoJIVlRBZhYYzOTEieXK4BsEp67DqBT5PF6/jOjjfvvKYpuF
         R/ZAOldMoKMuK/R31sA+kCw3rWmbJPgoMvvyezDqCz7d83dD5fH8CEu2k4BElw4liq61
         Jck3x4Ls2xzUrcS28O/g4HInO7M/Qtj3ATptcfsabAfnwz4GWeyLWY7MetCFQ/TJ515y
         PtpXjszxnrHfUL/mDf3sNSDq7NoC6WutQBsuTlywVjjVrGKGBr3QEQElO8W1bxFx54sP
         54fko7veJaAnCSGCp3Z3WwqXSi77hRmYt4eEom7fFIRuXdL8SqwFs7wjrkVbdviu/2Xf
         D+LA==
X-Gm-Message-State: AE9vXwPCCmNTeT5TwsXij8VwKxng772GpuhS88O3HqiUhbeCBLcM1sK/pXSISdxS8tG0Ag==
X-Received: by 10.66.193.71 with SMTP id hm7mr40779778pac.164.1474911562086;
        Mon, 26 Sep 2016 10:39:22 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.141.109])
        by smtp.gmail.com with ESMTPSA id w69sm32612902pfd.28.2016.09.26.10.39.15
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 26 Sep 2016 10:39:21 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 26 Sep 2016 23:09:08 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: most: aim-sound: constify snd_pcm_ops structures
Date: Mon, 26 Sep 2016 23:09:03 +0530
Message-Id: <1474911543-26099-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Check for snd_pcm_ops structures that are only passed as the third
argument to the function snd_pcm_set_ops. As this argument is
constant, so snd_pcm_ops structures having this property can also be
made constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct snd_pcm_ops i@p = {...};

@ok1@
identifier r1.i;
position p;
expression e1,e2;
@@
snd_pcm_set_ops(e1,e2,&i@p)

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct snd_pcm_ops i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct snd_pcm_ops i;

File size before:
   text	   data	    bss	    dec	    hex	filename
   4963	    192	     16	   5171	   1433
drivers/staging/most/aim-sound/sound.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   5075	     64	     16	   5155	   1423
drivers/staging/most/aim-sound/sound.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/most/aim-sound/sound.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
index 3dc625c..ca290b3 100644
--- a/drivers/staging/most/aim-sound/sound.c
+++ b/drivers/staging/most/aim-sound/sound.c
@@ -453,7 +453,7 @@ static snd_pcm_uframes_t pcm_pointer(struct snd_pcm_substream *substream)
 /**
  * Initialization of struct snd_pcm_ops
  */
-static struct snd_pcm_ops pcm_ops = {
+static const struct snd_pcm_ops pcm_ops = {
 	.open       = pcm_open,
 	.close      = pcm_close,
 	.ioctl      = snd_pcm_lib_ioctl,
-- 
1.9.1


