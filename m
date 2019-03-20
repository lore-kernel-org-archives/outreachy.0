X-GM-THRID: 6670611894113402880
X-Received: by 2002:aa7:c64a:: with SMTP id z10mr23471edr.0.1553122860896;
        Wed, 20 Mar 2019 16:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls698717eja.0.gmail; Wed, 20
 Mar 2019 16:01:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyi2rAn/V4MkYT3qkbq3FAOdKfq+WoWZtw0E6kH6giTIbEr54WJkjb539CT8OcmVEg66Jir
X-Received: by 2002:a17:906:48c2:: with SMTP id d2mr79530ejt.2.1553122859921;
        Wed, 20 Mar 2019 16:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553122859; cv=none;
        d=google.com; s=arc-20160816;
        b=uHxUJJ3v5ovpPInlX+dDf2wTiqAUy4kOJ2eR9DxNb0VE1SsrGESDJjvMRQyi9lCCYf
         DdR7QaAPQx0SxRHYquSR58/5h2tX5rYIowOavHZjwLp+/JBxw3UPoGf44aC4zfQ0eygB
         6Ijvs0jiDOyi4afYVNEGhbAF26XOTLe9cVBM/YwcDyjA/bJvtPtWoV43VT2JAZabNixQ
         Q3/b3cT11Yk/H1qPZt6x1xWnMUufzazkADJs0xOHjaPo1VAVQ2FkUxU1EeKGR/GLP4lY
         cIsiUJ8Sinx2tSQ8VTFzgUzCwDafBSm5l0FBzkbEoE9vXhmigKaK/iMaVVKMuiqMla4c
         CPqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y8VnfTP6A8vafL5g4eMao51tlxvR1x+uL8o50tWG5+Y=;
        b=0PajeIUMorj1Vk4HPoODTLbb1FWrqVefE14E4/zw3A1WOAPtPi+Y3ict672k0dScTb
         bcw4q9waPlMm6PYtJCCRzlVXe/i1+0SGomvSsl2LmlIsvm8aMbBZtn2T5N3hyI93HhAi
         ob+GfgaWlADp82sAlc5PWDh95ZRj/xwoVQu8spzNX+1aOQuSMty219OhlPpyRpSO1cBc
         aKiSiS1hwdrRp4z55hfBgctLvpJ8O42iufvZCSyDDZSOpodDk3du2cNjQyUgrPCAl/H5
         u5axDMKw76sf8y9kjg9kNq3oDsuEOt83bpdXLw39w1EgXMcqcG9EUhlCcbq4DiGJRWj9
         ef3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CI1u4tKk;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id i16si165679ede.0.2019.03.20.16.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 16:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CI1u4tKk;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id p10so4623260wrq.1
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 16:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y8VnfTP6A8vafL5g4eMao51tlxvR1x+uL8o50tWG5+Y=;
        b=CI1u4tKklMwhJI9ru0xq3PeIp/VIXvY/f4LW10Bsa7a6NoPUn/Rdmew/qpLVniqSVN
         9XuuLsrB2kBErrpAndn+ShfAw6KiIxwZ1qrh0nZwXCzgZ91LtNRVpf1sUivaQd8oNxdT
         XFvgQLbx7O22I4tE+u+NekOknOQN/ytSq5r9p1o4Ke4JClFeM4ajFpYLfHlPvCdwHGMY
         9HL+MdYXmKU2kY7C+dvDtNViJbK/uCgF1inwNdNbT3HqtEE5pX2Jmwt9qGhAUeAKnHLu
         IikTrKJXVnsAgs7MuZEz6IVL/CiN72HyPF3cbfoPI617681K133HB6rLBwhdW1Zo7UAx
         Qrmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y8VnfTP6A8vafL5g4eMao51tlxvR1x+uL8o50tWG5+Y=;
        b=lKdubwhGFuoUeaWavvcQBkZrBlkPFcCkOQm5wl8PypNZLfOLAYlAQOjwmd8swbXcKY
         lrQAX6A+oE/bZwtAStWibermFlqU4FQFRyfo+3a0FXS4x5rW+QGneiILjjppFGqLT29/
         MWpiXsp4PP2HUTUvy5oW1PxnYGOkv1oB6grmwPg6rODIxw1ERm5TL36cBHZblt5Q9m1u
         7g3sK57313XfffHNzNx8MXgbvR3Vl4ddfW9v2ZV5NjMb21gGQivhdkROgl204RhbRi0S
         OTEJlF1YtHVq+KKOa2HtkKRdco1wuQAvEZ2o44Bf4Z5ph62xB1VhkyQjSy97QXLOjmCp
         JYaQ==
X-Gm-Message-State: APjAAAVtoIyEfjwlb2Us5iZ8cxXDMQK+sTu8Epaf6V58VhhDnFCI7GR0
	EYC9p0jWlOFrBs8qNlqIZvGOmwk=
X-Received: by 2002:adf:f803:: with SMTP id s3mr392835wrp.38.1553122859610;
        Wed, 20 Mar 2019 16:00:59 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id 7sm5809065wrc.81.2019.03.20.16.00.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 16:00:58 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: pi433: fix line over 80 characters
Date: Wed, 20 Mar 2019 23:00:47 +0000
Message-Id: <20190320230048.6340-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 Fix coding style issues which solves checkpatch.pl warning:
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


