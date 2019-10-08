X-GM-THRID: 6745433279172706304
X-Received: by 2002:a17:906:3486:: with SMTP id g6mr19350797ejb.262.1570543572483;
        Tue, 08 Oct 2019 07:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ace6:: with SMTP id x93ls829716edc.6.gmail; Tue, 08 Oct
 2019 07:06:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4zBXFb919P/ynqvYqw9YMRwSg9TpQarH1SRI31mfNONzA4t8kA5gOVLv0lDeTJZoZqqMM
X-Received: by 2002:aa7:c306:: with SMTP id l6mr34222329edq.78.1570543571399;
        Tue, 08 Oct 2019 07:06:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570543571; cv=none;
        d=google.com; s=arc-20160816;
        b=E4Y5ld9LN0IbsMRr72i11cpyBLjuxgOHDz/2LgmBsWZMY6aJZphxvHb39SROY3uULR
         tfl98ooVe+fJWe+hK0fDBK9Osue2REqM/vCQBWsU+gkqR44iFuacI6J04t+5TLoy1/sj
         C4KKtIehmMt/ojN/0c6iFUCk6GT2TfmJzlz0MmcvF1bN2TAIneiR73tf8QmEGUdUxq7H
         tYDJGOXsAnK0N3t64fYl2Gw1o/XTW6uAUBi+oTtSJyuJOYvCrjocP9kOQTNT3LwabUGr
         YNq3MV9xk47mwQ6sffDI/Tibw+6m1NvlLF5ysQPwNNhqLerHkTZ7C74eRdnauhoPA8GM
         MZPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=An7jvhmCsFq1FRGR/Q/NxXtwJ1p9NnL5aLu6c3tbyRU=;
        b=lDexk18VPGUgtr6PDiL7xsmR4tUy3gpBGGccMYb76fEr2+ettZu9xyJX19kNYcmvfr
         Ihk/9Sx6ydOW60SpEavaW3fPaIMEumA4VXHFB6bMZqvXcoDi1wWEzdlEI/C7SToKllPc
         hsWTkLo+h5N2DnzM26+bCw3RTMh99BauiDQxbUpLE1pVtNuInM9QANJfN06pQr28bjHK
         mycdkDcju1wxDnAq5R8lPzNEvfJlpn+zrgbrVsU2tVTt9OGM/Z9QdzBOnn0yedKBCCxo
         mfbqMlmGcnyKR/jyhsCehFVOfr9fKAxqtDmJOQzmprj0SXbdrRbFt9FlJiBJiMxhms6+
         pfZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IgU+0Jaw;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a15si948306ejj.0.2019.10.08.07.06.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 07:06:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IgU+0Jaw;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id o18so19534830wrv.13
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 07:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=An7jvhmCsFq1FRGR/Q/NxXtwJ1p9NnL5aLu6c3tbyRU=;
        b=IgU+0JawdMW4noeIVWuLrvNeIAHLW4Nx1k7GVqT4MOn6klKxDulDzqPlcttTOOu0l1
         CxnP5HJ2rtsA2Zni/SyHkbBHbrMQovbjMSrVrqlX/C40cVix8J2nasrwYeJr5Z2RIkpv
         YFX8qaFy6r/N/cmRVjj2ZXgSY1R5o1pxip5l/dnW//TSKxDSOoXJQWviM1GZCVIz3G0V
         RA3p+nAotKT6eyWGhiuXz7A32kJrqhMHuFEJiDw2ju9he8HpWRfkK9VVYBVbA+Lccvq9
         ECurMw7M+t7lUeePszDm0VuPfgqMRyYxQvA+dAzr3+Ajluxu4/8cUx0ScpJ0LBm39KfO
         s4BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=An7jvhmCsFq1FRGR/Q/NxXtwJ1p9NnL5aLu6c3tbyRU=;
        b=fCQXRp93o7WkNOCr7L2OsgRwGfs4VX4/WN6I+gfAPUrGPFhILX9S66VWQ4tgRdJ22n
         f97BAGOZPbuE5KAxVoD7s9u94pcyhUZOzSwoLzy9y8zbxAzKFoEiSsJ60m1QDeoxfAnp
         BCDnLLyhbipQayVXtxz+zlxW+Essd5q6VU6MtXLZCFxtAUPU5oLmdXC8GaJ2g83+bO4a
         28Fc8tUccHCDtFGPEGIu7+fwHa7d5x1cHpI5ydjRvH7zA/DXSMcMxxrWQwRNJ9bKgJLR
         j0Vb8ReetJvx7RnVwf+NKkApCm2FIBis40BwZCJ8VtAhxRwG04mli7pUSbYJwzEcbgR5
         0uVQ==
X-Gm-Message-State: APjAAAXZfWCezZLGX+vsUYewqcB4EW2o7zhb8Iol91CyOFO8E4FCddOE
	d6lzZGs+NHrj9R9wWPU5QoM8N5Y=
X-Received: by 2002:adf:f18a:: with SMTP id h10mr17176360wro.164.1570543570826;
        Tue, 08 Oct 2019 07:06:10 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org ([213.205.241.195])
        by smtp.googlemail.com with ESMTPSA id x129sm4276908wmg.8.2019.10.08.07.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 07:06:10 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	matthias.bgg@gmail.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: mt7621-dma: add a blank line to fix checkpatch warning
Date: Tue,  8 Oct 2019 15:05:52 +0100
Message-Id: <20191008140552.25639-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add blank line to fix missed blank line warning.
Warning issued by checkpatch.pl tool:
"WARNING: Missing a blank line after declarations".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d964642d95a3..e309923aed2c 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
 	struct device_dma_parameters dma_parms;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 
 	struct mtk_hsdma_chan chan[1];
-- 
2.21.0


