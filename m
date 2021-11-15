X-GM-THRID: 7030748849446584320
X-Received: by 2002:ac2:41c6:: with SMTP id d6mr34116132lfi.400.1636973786529;
        Mon, 15 Nov 2021 02:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls165362lfv.1.gmail; Mon, 15
 Nov 2021 02:56:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJylgLeBz4CrXM7yAXWUD/KCfXBKZV7GcaWs5czB6asG2g2dobXB2krWNitHnwpE5vzX96Xn
X-Received: by 2002:a05:6512:4012:: with SMTP id br18mr33702456lfb.215.1636973783981;
        Mon, 15 Nov 2021 02:56:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973783; cv=none;
        d=google.com; s=arc-20160816;
        b=IHlsHHqlgKikFa1oLeq3JFxbnqnZ4/Y0WXOmW9Z55e+nlpxi/9uCUGdsOSQDWQs6+b
         mlvOTOu3ow7TMAdWEYBg61FSUBtoTjKW1U5o0Gj6/TNARFe31phZxaeyhTj9/5kN3RGX
         xajU9Jmz1y+zU/odt+GplIB3iZk3qp57f9kV+J+aK9/96s3BZevPniCQi8RiZcZ9RTTT
         dcdQLXQhpH97vlqA+VUT0W775pgzX+Zw5URWuzqwl5B136A7ilVIUPt2vOiZtSydjCLp
         QUVfr5wvxMVmTpGaeMU164oKIqtBnE9HudkdyNBGvASlcC1RwuCMuCBqIsUumSQn9y/C
         ATpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=J3m1ZcrPeitMRiq9GZNf+n5I5iliMi+d5wYw/rsR5qI=;
        b=S8fwatPSMWFSRLxT7ZdRspS++9CXfPpqpKxgyUgs9buOErrmRzpXO0zC7CcDpb1q7G
         i9Q8yMyAPh5/TePaiRak5jlybJCuw+56wCaAh8Fzqgq2FPoBlp6xPz9ww7+ePs8SBruV
         z+3jlnXuJ1nTVup9g+vJK9T/hwr38Yc6tlBmJJaWC80fopMEE7L9vp5EPSLRWwZpM/l4
         yoSkbxZ+L3R6D6eXQcJNfp6DO6WipFygCjWb7TwXhC5P1nu6eT7fCOs7aRGii1EAloeV
         T5dGbSCC9Y6L0osfybBVLZDnRJ165LiWju+vVNEVo+nmn7hnYwVqaM9P2blembRKvgLd
         41Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="dQ/HBlrM";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id c12si1088807ljf.4.2021.11.15.02.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:23 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="dQ/HBlrM";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id a9so3599770wrr.8
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J3m1ZcrPeitMRiq9GZNf+n5I5iliMi+d5wYw/rsR5qI=;
        b=dQ/HBlrMCGEUoTFBJc5ipCvUXuGcDMmzQSKMxSEFphc2QHj/uftOln0BBnusCMUFOc
         nYwgPPQXKsVm0gSDooWD8KCYHmbqDlIxYlnSLv1k2avlPGczvBbncksbaE/vx2rt+UOO
         Ed6Ra+YET9weQHyFeGhzBhC88Se4caYeg0SUWCi29Mp58Z2nhhGwvxYXGBRiZ4+xzhKJ
         63pndRCb/+sTIxnRSD+0ieDbHg9izG4qXnYnf3nh79DqCTlczz6Jycf2Cpn2emG05hsg
         uWkx9AE0R8jhbJdhsY2vd8+lSGormrzuFpIeQk8et7wTof9eOIwrMp0XtLlZD0IpBUI+
         uxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J3m1ZcrPeitMRiq9GZNf+n5I5iliMi+d5wYw/rsR5qI=;
        b=2LWkxGNq030G1laxiMJ3uQfTbINh+Gxbjp5ZcGFH1ph4eI+BO8PG4IYQ+E2x+0s4+e
         co6UgOTP1KhfEjNUjaIl3wpS73xxrJ3AtGAYOMH6ai2TRH41KNJdK4tpHwceD+fXcAKa
         /WCraMVpKuAaDmcxfkqEIqIGjgbDHSMzcO6SQzq9vrM8m7/us1J4Xq+0Ci+nluXgmCIY
         lVw81PpVsW9gZYJ9PTndMRLVdRd9vd8saWFZpaZOAjBgmnhYAhLRg3DBkwrigp/LhQtI
         iBw1kR6NanrbwB47RWSGgdjhK+P0+Fiqs8hPsiC8LS2cMheVuJ63utDt5+rCZyiOTzne
         rgnA==
X-Gm-Message-State: AOAM533MiOW3pWR+SkfpopjYCuBxecvj6wCF4qdHNtWg7fD7VL4kW7D9
	xAmwDUajJBGUCdYeV59HQwyo/dAiXCA=
X-Received: by 2002:a05:6000:1564:: with SMTP id 4mr46513965wrz.9.1636973783540;
        Mon, 15 Nov 2021 02:56:23 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:23 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 4/8] staging: vt6655: Rewrite conditional in AL7320 initialization
Date: Mon, 15 Nov 2021 10:55:45 +0000
Message-Id: <28169210bc26d5fcc1080ed18dc8e043bc3ef30b.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use conditional operator to determine which table for AL7320
initialization should be used. Introduce `init_table` variable
to store this value.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index ce91a03eb58f..5246ba211ffb 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -684,6 +684,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 	unsigned char init_count = 0;
 	unsigned char sleep_count = 0;
 	unsigned short idx = MISCFIFO_SYNDATA_IDX;
+	const unsigned long *init_table;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
 	switch (rf_type) {
@@ -714,13 +715,10 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
-		if (channel <= CB_MAX_CHANNEL_24G) {
-			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
-		} else {
-			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
-		}
+		init_table = (channel <= CB_MAX_CHANNEL_24G) ?
+			al7230_init_table : al7230_init_table_a_mode;
+		for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
+			MACvSetMISCFifo(priv, idx++, init_table[i]);
 
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
-- 
2.30.2


