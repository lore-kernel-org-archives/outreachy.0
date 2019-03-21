X-GM-THRID: 6670934867500335104
X-Received: by 2002:a1c:5546:: with SMTP id j67mr571621wmb.95.1553198059643;
        Thu, 21 Mar 2019 12:54:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c4:: with SMTP id b187ls960893wmc.14.canary-gmail;
 Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz10RQHrQ4FwI8gOxJlPrBDWm8es+qbcAcJycswBv/6znWmKLdr3NApw3Pc2LNsn0bKgU9E
X-Received: by 2002:a7b:cb14:: with SMTP id u20mr651175wmj.150.1553198058660;
        Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198058; cv=none;
        d=google.com; s=arc-20160816;
        b=bTHwZsWNrmYWIhpAsvRaq8W8R06q08m3d6AFtLJUyuwkcq55kii87qPa0DXVee//ir
         8R06LOJqNF8zQ1uX9IUlI/4ywL6rHqG+oN+kNwjHh1skM4xb9qxBrSJa0RcUv7g4M38C
         hydDFZuMG1JF54WYVR3Z6OD+ewABJQxTaoVI/J3uLU7keY24J90vORsR4hpiXoibhXcU
         u4f0Yup38VeoBTcev1fBSGr4UyES2kFJ946X7alLtqqr7YMP9Q7IT1v5s7Gyd+yy2E2Q
         CjoA1C1intmL+B5Y3WGaY2IzQJ0E37u8Oee9omPtH4pro0GZF8BNacwSEC2W2uJma0gB
         jBBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4aBffobzEytteLhCmDWb4K3o1Zu7GVEljf0e8K4xrik=;
        b=d836wg5LxBW1ptaKkpzh/DF2RNrfS/NxxqTg0NLrZaVapOjFA11V/xiePj/8xX5yg2
         WcYWFtrq9pWOvoEvyWWEUqX3yWt15kvXbuj5PGqy7k0xjX3b4a6IYIhuHIuXqA9Zxarq
         1hJ2IubZ4Xt+OVxem1+KF1JvdX6DuBHHYlx4Cy670CAlU9CbC/k31ks4Rfh2uSiDBmMW
         LX3993TAUqPgptHxLoyPqgBMHQqXL8xA2ZBO6gg5mgBct7YN2Jgzb/fvKYpy8fcjvIVC
         NO2IPLNCztQcMMOKVNHY0CDJHU8UJ0R4Pnmm+qpm2ri/gZr4bdfpyF2PtJrjvUdnOkLs
         YlkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qGJ3sWc6;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 7si279684wma.1.2019.03.21.12.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qGJ3sWc6;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id p1so7983022wrs.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4aBffobzEytteLhCmDWb4K3o1Zu7GVEljf0e8K4xrik=;
        b=qGJ3sWc6kLHQc6VrYqP422uFyVOIJF/Kc9dykofFtDXrXabAecJLv6KomLyAOdDet7
         rtRT3hA8oYQqI5rnEK9IdHuSFdGzxauEULrWYZcV5pnom9qJCGkNTjU4iLIPsn2mckyV
         vAD+3AwqXXpWNecwCUPNzsmE8lwgMccvCrxgiQ/ppdI7+6joYaSnsDokB84dqQITVfcM
         xqNW4v3Z3ujT3XbeKMUgXDBAVNFt2sGk5qKhuS0SVCNFZkedCk+EAbbE1yMGlglJK388
         Whp7E/kZz9K4lRz5bCHVG2914TfKOoaU/15MnS9cJsaAtrA9m23BQxc0reCZRv4cMPVO
         GwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4aBffobzEytteLhCmDWb4K3o1Zu7GVEljf0e8K4xrik=;
        b=RaSFyjLIPhFnXel76lmZqG1IqbbCM4Sjdt5Fc8rdOxRicz2dgkeQJHKEenRWK3U6kl
         OaKA0BsTN7TvLbgOebToEWiNsQA7DaAteKubaRSGXLe6k3q1agGVYmApK9aeDRIR8+p/
         iUEOTQm9++PO30/78QVTvI+SJy7ZSUaluCxxnqz4NBBEIZtzYU+LmZXvzJ73XtYqdFPz
         Om2UTU3OixPfPhMgPPlfvFJrUP10/dyf5oZSMA2rKc5ylOkd9oZVacbbORvFO6ML+DOx
         /hN3oSLTTvoc5xOtAQ4LRYh1nLZORmEihFYquLqOpf+F7hQ0i3C8I3GsYSvx6QmZY1Zk
         Tmog==
X-Gm-Message-State: APjAAAV1qrNv3ZeOrycnyfty9gU1G15QI3X2EqdImhuQB9D4aVgJLVTP
	uvzLHkQu6Utbas2lbNyJuA==
X-Received: by 2002:adf:fe85:: with SMTP id l5mr3715691wrr.0.1553198058146;
        Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id y1sm6423805wrd.34.2019.03.21.12.54.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 12:54:17 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: pi433: break line after comparison operator to fix checkpatch warning
Date: Thu, 21 Mar 2019 19:54:07 +0000
Message-Id: <20190321195408.30440-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190321195408.30440-1-jbi.octave@gmail.com>
References: <20190321195408.30440-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 Break line after comparison operator to solve checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index b2314636dc89..f537722395c6 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -479,7 +479,8 @@ pi433_receive(void *data)
 	/* length byte enabled? */
 	if (dev->rx_cfg.enable_length_byte == OPTION_ON) {
 		retval = wait_event_interruptible(dev->fifo_wait_queue,
-						  dev->free_in_fifo < FIFO_SIZE);
+						  dev->free_in_fifo <
+						  FIFO_SIZE);
 		if (retval) /* wait was interrupted */
 			goto abort;
 
@@ -500,7 +501,8 @@ pi433_receive(void *data)
 		bytes_total--;
 
 		retval = wait_event_interruptible(dev->fifo_wait_queue,
-						  dev->free_in_fifo < FIFO_SIZE);
+						  dev->free_in_fifo <
+						  FIFO_SIZE);
 		if (retval) /* wait was interrupted */
 			goto abort;
 
@@ -513,7 +515,8 @@ pi433_receive(void *data)
 	while (dev->rx_position < bytes_total) {
 		if (!rf69_get_flag(dev->spi, payload_ready)) {
 			retval = wait_event_interruptible(dev->fifo_wait_queue,
-							  dev->free_in_fifo < FIFO_SIZE);
+							  dev->free_in_fifo <
+							  FIFO_SIZE);
 			if (retval) /* wait was interrupted */
 				goto abort;
 		}
-- 
2.20.1


