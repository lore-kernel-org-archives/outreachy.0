X-GM-THRID: 6806430751874088960
X-Received: by 2002:a5d:604a:: with SMTP id j10mr13628423wrt.126.1584745652508;
        Fri, 20 Mar 2020 16:07:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f803:: with SMTP id s3ls2465609wrp.10.gmail; Fri, 20 Mar
 2020 16:07:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt35V7KkN0dboRc3gNQheZjWQwOL+bVqcn+SNB/7y7o3WvMoFa1U965XKjjKt1Q1EVhSG+J
X-Received: by 2002:a05:6000:d1:: with SMTP id q17mr14093304wrx.409.1584745651271;
        Fri, 20 Mar 2020 16:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584745651; cv=none;
        d=google.com; s=arc-20160816;
        b=LgR2pCCUBjLxo2l8eQ2iKwyJ7FiWCJkGkMfs5yQkvYdpJ8x9a1BmmJnxe+ldCZ+5bO
         +zDSAGvRBHy3e/tQaPowbmvuRYQ/ikwA8WLetWy+a6AFzR7Atru3Eapd139ZT1mzSf2D
         xcdrtoFTizy9r6KP84qkwaEJls5YVV5rytXfYUTdTU93MHPtyXNgf53T4TeyGuna6i+6
         ZEbMuVolA0z917nZiQM7mpkBBF3mhhv8fkWup9YmH6zP9XuTrnHcRY6STWsACAXNhmxz
         6pJGCa4YE3CsZZlwHRExLEL6VWnbJ1b8eywadeRP7uie6UBqdx3At4LOX7NY1lmUm8C/
         WJqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=RDNoInlo3KMxyd6BbcJmAMLlpbyd2X8Q0hqRSOWIRd4=;
        b=ropiCVZ1Y2AwGHF7xFa8ernujui5GRM+Wr/kaWAJxlkNL84OGKF6MrA9abA+qRIduk
         F8vLFfU3lMws1K32K9ONeyCFp22yHS2w3pDmdrAk37zl29N6dc7aL22h33d9wGd3w/VF
         WP5oVc3t9PfxFKwdenluxvVT6yL8065Tk9CzRLKZ9FaYNX2RcZRsSdmzpw46KXCqCyBc
         StTftM9j72efGft2RXWS3jTAKEjFPve4oGhXjM1bOo6/eXlHt7bVnud6LdAHnv5aY6oh
         FZT3z45kfAGdz61VMfPlDqA3DVBOR/lIJDK0ipfO4pyEZN3Q6NgOpiIUm8MlFpG0JCO+
         blNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YIQXyFQT;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q205si373685wme.4.2020.03.20.16.07.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 16:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YIQXyFQT;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id g12so8265354ljj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 16:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RDNoInlo3KMxyd6BbcJmAMLlpbyd2X8Q0hqRSOWIRd4=;
        b=YIQXyFQTN7EPSDTQ0cLDjFXkkkN6TixFrPAcDgAB/RIQrVIUK2CIvSzYwQgvsFkLZA
         8IuQM8uFsLpfs59Fe1HfZvboflYbfMUJi7OkXF5bEa1X3g0tmYkt6KpwqCMqCjEjE2PX
         teQa1k3JMpToRhWkXAds61vq//sXrB0/xKfbpBThz8o5Gx3QVgKUpur/Mbi2/r+gVRku
         FOYwMaPaF+qlzBAwHghQJ0miiKa5Em9aOgP5q7JJmDbyswyC0glhnYp87a8WO4tPkuvH
         y5vIbiS9sIffBLyxwQjLSmIS5YCljIa1REHL/C5WcXDvacKGNczYvrz/yUyWx7Z7tk67
         oPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RDNoInlo3KMxyd6BbcJmAMLlpbyd2X8Q0hqRSOWIRd4=;
        b=bmwASFyknpoicJbMbb02gXi/fuN1N3+16b8+dXx3cPdjDm0D4TQF4f7EC8wzjRrUTH
         BjqsgdOQSgNi90vNdS2GNW6HftYXqoWupHRamxKptRmhgJpi9XgHsQGNvuAu9lvrUYb+
         bI9MIjKqFskaU3LGayklZmXYs6wnIu0CTIpTNMAcX+kcUAx/9Qn2vD0XLWwJZXw5vth3
         bIu2R7Gkmtrf+8ewyjYXxkSd7w+yT3pzsdXy/kPiBddygx4U1c0hAxCjfkT3kT3lmYxS
         lCisGihErzPXj2IxU7MFKdXN0Na/B3PdfCVZ9L+QlCKuR3KXFszjYP3znY/vDNcVMTSk
         spWA==
X-Gm-Message-State: ANhLgQ382mdGApa5c50z8THEGBu2ywbLOD4EVvvjcXDIO+yMgiwPTmJX
	s4dSYojyTGVAQjMgCUn7CNKZzb8eNYA=
X-Received: by 2002:a2e:6c03:: with SMTP id h3mr7131407ljc.8.1584745650700;
        Fri, 20 Mar 2020 16:07:30 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id d6sm1688632lfn.72.2020.03.20.16.07.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 16:07:30 -0700 (PDT)
Date: Sat, 21 Mar 2020 02:07:27 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dma: quoted string split across lines
Message-ID: <20200320230727.GA7287@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

quoted string merge to upper line 

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 20b8989..e194dfa 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -209,8 +209,7 @@ static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
 static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
 {
 	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, "
-			"tctx %08x, tdtx: %08x, rbase %08x, "
-			"rcnt %08x, rctx %08x, rdtx %08x\n",
+			"tctx %08x, tdtx: %08x, rbase %08x,rcnt %08x, rctx %08x, rdtx %08x\n",
 			mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
 			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
 			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CTX),
-- 
2.7.4


