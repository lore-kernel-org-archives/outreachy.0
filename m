X-GM-THRID: 6755177272483774464
X-Received: by 2002:a1c:28d4:: with SMTP id o203mr20363746wmo.147.1572812272955;
        Sun, 03 Nov 2019 12:17:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4645:: with SMTP id j5ls5913678wrs.0.gmail; Sun, 03 Nov
 2019 12:17:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqwuyb259u/3lTT6pH/UWFMrCq+aNvV55Nc+NAMUeJ1+NMClfPCN3CeYJ9Lu5Kg76DfHbAmS
X-Received: by 2002:adf:f048:: with SMTP id t8mr17058567wro.237.1572812271871;
        Sun, 03 Nov 2019 12:17:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572812271; cv=none;
        d=google.com; s=arc-20160816;
        b=LpLtdI+7yfSmgX7M+FGqkFHk44U/2BO1KUbibBUmteelCorDIVmri+GHAngmEqmBLJ
         Pd9tCtKZevxwPg8CFgjIL80EPoxV9lIWZPKEg78HzdauGbYbJVk+2BIZVDn2p9MbmCJ/
         jwq+7e297KWYR07abUJVNlVaJ/vs+xTp+xNcr2FMLTyDu/pxBMst+DtVbARgPeXtVQ57
         4RVMe7ZmVsdWrM4joSIOBjfz3dg+IS+dELsHCpFiakr19KiGDl/EnqBzgewNNY/n+tYQ
         g/l4mTMbHqd5/lFJVzxHwML12XIckfAHTeLWPBIYxaLxgJu6lSfYs6BjHr5hQLuA1Xzl
         yuOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/yKgFQ5PYrohJaekUF413Xt6WFPh+U8MVUoji5xvoCY=;
        b=YKsoLvE5kMH0sIhMmFU/mfrTLK1qp0Tkrah7QQiDMmIU+wJOk3/rn+iqdeuXvHFpPB
         ouj0/yfggWGgnFM6u0YHgRfQea2bce6MlLZfoIqX0Jm5lpSxaqxJGQdcGyEVUXz/80K5
         YMEzmakYkpCLQxUXWbqmL9LfnB4ov1dzjiUvXnnw/tI9y6EoYbIcQI4Kk4fYTucpuYM0
         2Rxa1/CCBxqD0EJ+mpmt2ojaozXecx7adAV7HHtlEgRoiyKPQmrJ30KzFtYd+pVYP5Oo
         fuHqoNwVoOa7rlZHQ5+tzrIDjC/5M5Wm0thkHedwwoC/VOmEP6HLmzRpkB+FxF9reRMk
         lMww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L8yRLEFS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b66si617360wme.2.2019.11.03.12.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 12:17:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L8yRLEFS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id 8so6946708wmo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 12:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/yKgFQ5PYrohJaekUF413Xt6WFPh+U8MVUoji5xvoCY=;
        b=L8yRLEFSeUbxjAgj9I06+M3d5SIqBbQOFtZcYrXVWkh2HorplUdpDgoL50kqKMrGvS
         wHlGdb4zfAmGlICXfVKndCNR1T/KDWpC9hWWHnu/el1GGmr7tqz92Ev5XIQTct+D+UwI
         /ZynNGR6+zhO8TOVYcAKHVol9+P1GE/kcocdeI0zj+1I6Alpy3L8wQ8q6JCU24g8Y+J2
         5kwpAZP7YyH6nc3ZF6XXWpivzOthdbpzgpTWfHf3pijjeOqHE2P2jhBtswuSsVDbB/rp
         HmtYuOtsdhTcUgv9KtdQwRiyL2nn//JkWiSr3wgIXyJgEuUwB3sWc1WdO4MK6Q57JFl7
         fgeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/yKgFQ5PYrohJaekUF413Xt6WFPh+U8MVUoji5xvoCY=;
        b=n5cZs9K1weLnXuDGZvVbawvoA69l9iZI+k7oWV4lu8lMQjSFpF80I6Vhe2TmkqiAlG
         /7UsdA7oRieAtcjo1KbKyIQ8ng6IwKCgOpvoGg/E8QhMfS0RSYWdtquH1PDmFlGcnAEV
         ZFBnja3MzKS0Bwv6C9NV6NOIP2EjsEWYvaK5gubtdxsZrjbUET4F0nszhQjq7QUcKozB
         zrjIpeEU8Ob5mgBb0omthbQkp2WKuztlxoW3OLb7vUWxAqbxoGtuNzgcwIaZr6CjLP6i
         Ff9G1uM22SnCsuoVY/umTivvXfLeB1Bpk6TkcAO6HCGCTGU4KnlB5DNV+NC3G8VeYKeH
         AMJQ==
X-Gm-Message-State: APjAAAUq6YhhjXWo8u4444YsSsB81UKLY+yussztLKm/Fo7K1dlG3Y0O
	wrFaUccwalTR4ri6a2h1kbUGt4lI1NDl
X-Received: by 2002:a1c:28d4:: with SMTP id o203mr20363689wmo.147.1572812271115;
        Sun, 03 Nov 2019 12:17:51 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from buntux.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id u10sm18183630wmj.0.2019.11.03.12.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 12:17:50 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: comedi: rewrite macro function with GNU extension
Date: Sun,  3 Nov 2019 20:17:40 +0000
Message-Id: <20191103201740.25415-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.1

Rewrite macro function with GNU extension
to remove a possible side-effects of MACRO argument reuse "x".
Issue detected by checkpatch tool

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/comedi/comedi.h | 6 ++++--
 drivers/staging/wfx/queue.c     | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..d8a8eec82930 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
 
 /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
 
-#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
-#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
+#define NI_USUAL_PFI_SELECT(x)		\
+	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
+#define NI_USUAL_RTSI_SELECT(x)		\
+	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
 
 /*
  * mode bits for NI general-purpose counters, set with
diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.17.1


