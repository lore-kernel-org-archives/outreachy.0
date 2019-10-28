X-GM-THRID: 6752887939643998208
X-Received: by 2002:a05:6102:1010:: with SMTP id q16mr9127923vsp.183.1572279245938;
        Mon, 28 Oct 2019 09:14:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls881081uai.5.gmail; Mon, 28 Oct
 2019 09:14:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9++J7BoxoMr4GRb307tc7zpxnrXKMNK/P5BrSCBDEyb+BXZk1a76FvZbCyER1cX6Ojqd/
X-Received: by 2002:a9f:2271:: with SMTP id 104mr9094415uad.127.1572279244492;
        Mon, 28 Oct 2019 09:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572279244; cv=none;
        d=google.com; s=arc-20160816;
        b=ENscPNZAI0wvv+IZcQddoDar1JpbxzeAC16AGsOUwZz8EEWyCQJzq9/8c/J2dMt+D+
         yFAEFJ+UE4SKjSOZ61iWtxavG6CBANMHck3+l6PCT2AmK6wumUCNwLk3KS+n+4zmOvxN
         9vAxPccLfPSODtZKQqHitBIVgaAuCH6lyn181x2Kh09hi9hsM8+D3d/qJYWJHW3u6Ojp
         mtJuBWn8LmBp7Lhj6Rq3Sis/hebTldj8AavkvIkA+lJwylSCTcKTjUImX7j6cNNMOCv9
         MSuhNg+dyBQg8xMS7U1C1X6MbEOVCQXDEMR3klcLsEy1YXs+cttohDbB69Lv+QQ1hEKN
         SEqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zmD+uEYI8lVlzBnTwHy2xQ16swbEXpWBKtAmYBYqmcQ=;
        b=ntHMAepyoLb+U/QO9RDxS1MY0fCQHVKoiwUhb9PxpfbIiI+XszMgdu6t+cRV3mkoMC
         J33ZrgaR8x34lZ9WSlb3hTouaWsHLaaQi635cK0fu/xhSl8Xo7R6NhUi8leNaJ26k6ot
         uwYcNUQjCsJKUZY5C8jDTTA5QtXwk4A2TRHNw7fcbM/LWdx35ikL1kbZbHyG7ZUCKn1h
         Vl9JeonEOd6zlGncf+K4FF+iEtQRcDWS81hi3+qzHYFBBst6FEVtadzSSTcnnf+fFeGg
         U1v6Vhw9GhPHXriErOUtrBps8Bf2nW+5OBkIUVlRrGa3jhvVSV3BEJ5rk9o6y/NNX66b
         VoOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=FtrKgIZq;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id y14si744426uaa.0.2019.10.28.09.14.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 09:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=FtrKgIZq;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x943.google.com with SMTP id d19so689426uaq.11
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 09:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zmD+uEYI8lVlzBnTwHy2xQ16swbEXpWBKtAmYBYqmcQ=;
        b=FtrKgIZqJ4sDzr+STt28P6mnYtFkOaTC3LqZFI7ImYm4yj6Wfu7T1qLYdl0X/oNT9y
         XgUGYyV9wuOjvRfbjPSaFPoPoPk28Rf4IBJZM2IqBycsFMoifMQO2YN1ftfl3r4S12pk
         /G27zed8sPLsW18cTLwU6KuX+FeqrqegOunKGvP8oUNZoKajnrroGpv3tINyDxo2KMIj
         x4Fs2TNh52jqmLFvCKTx6okNNVz1mfZHC1XH7Oprxmy3VHtl5NxLBBaGsiN9gP/FLIE2
         fYVh5U89nceYNDuNqSVBZ8j23UluddbVpKMIBftZts7M1iyTw3Al39pjR6XSrgpbiQi2
         Yjug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zmD+uEYI8lVlzBnTwHy2xQ16swbEXpWBKtAmYBYqmcQ=;
        b=DVrzjr3AtHdrv/hanFxyGshUbRRBBtKf7PsxibatvOp7E9d+aSudA9fJdQqTrqGM8O
         GXA2mhFLw1kRisT4L2ZKU+CrelIqaLJhIPAaet6H9DftMmt/Yubvo2BH+/+rH87NV8sX
         IQJO2A2vVKMUeB1u3kpWMIOW0dp7y01nBQ/+lB0Tg+kwrto7RI7d0NhylcYKEZIWljMR
         LmA1GYRBb8sqSC7OoR5nR1cHxxKoefPEoNuYVbJOnm1bUt6tP0LVnRPWl2Wa0NWYVBvF
         uEMIDii+g5KpSr8BULMHzA1zcAEI6viVco9KyobIRpGG5P7P0n3mr8kx/eJc1cQWHQLB
         TBwA==
X-Gm-Message-State: APjAAAWXxuPq2yIy2glD9w54I2z4vEA+ZwMRCCVqQSByDZ9f0XfuDcqv
	AukWRNOr9Spzb0zdaAVjzmj1ig==
X-Received: by 2002:ab0:1608:: with SMTP id k8mr8916683uae.143.1572279243649;
        Mon, 28 Oct 2019 09:14:03 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id 134sm2441909vkz.56.2019.10.28.09.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 09:14:03 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:14:01 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH] staging: rts5208: Fix alignment and a line ending with a '('
Message-ID: <20191028161401.sjhp6qivm6huxpxm@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

checkpatch messaages:
CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rts5208/rtsx.c           | 3 ++-
 drivers/staging/rts5208/rtsx_transport.c | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index fa597953e9a0..cb95ad6fa4f9 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -873,7 +873,8 @@ static int rtsx_probe(struct pci_dev *pci,
 		 (unsigned long)(dev->addr), (unsigned long)(dev->remap_addr));
 
 	dev->rtsx_resv_buf = dmam_alloc_coherent(&pci->dev, RTSX_RESV_BUF_LEN,
-			&dev->rtsx_resv_buf_addr, GFP_KERNEL);
+						 &dev->rtsx_resv_buf_addr,
+						 GFP_KERNEL);
 	if (!dev->rtsx_resv_buf) {
 		dev_err(&pci->dev, "alloc dma buffer fail\n");
 		err = -ENXIO;
diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 561851cc8780..5f1eefe80f1e 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -677,8 +677,8 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
+			msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
-- 
2.17.1


