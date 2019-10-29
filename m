X-GM-THRID: 6753357485842628608
X-Received: by 2002:aa7:93cd:: with SMTP id y13mr23108192pff.240.1572388570720;
        Tue, 29 Oct 2019 15:36:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5043:: with SMTP id q3ls7054263pgl.14.gmail; Tue, 29 Oct
 2019 15:36:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxuPTsZ5ymmw5nF0BClAXF0pjKeDaVn1x826klqRXyxVc0vna8bw1pmgHCv46AQHWPtd9+0
X-Received: by 2002:a63:aa4e:: with SMTP id x14mr17390561pgo.393.1572388569158;
        Tue, 29 Oct 2019 15:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572388569; cv=none;
        d=google.com; s=arc-20160816;
        b=obl5+eCEycUvoOCI+/RcsHiMOaoaGPIM3Dh6YyCwtF565UKqDZzTD7JXnF0qEoYStn
         hT2bMjU/IdULgG1of756ftYxYd078f+iSBFALIF3GwWgKOBJPLENIz5whIEQYZuN5cle
         eedjDbawaLWZD1U89r96fTf7PWdFUWhiRLyFbYu/CbyOsIE1+ukAJjdESJTMEByVFSdP
         Xk8z5kROvGVk2r1WblWl6TozTXfYv3+dhFEWjKx9SFcWmx4IvlxfYp+WjyUCXh+PUGHv
         kEI3nmLNrvFc2cMxl1B4Sz2jIHzbmR8RiHrAlJUEm6Vpk+CiAGx52dO3InS0UZjp5zAE
         yfnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bAJA1RNDhAkbm1xO3/krIWUAY9zwBPAKxHWFAJSdUMY=;
        b=aCspH0/r+ncNXPriTxsOdl4YYvtIjZxHbVUgwGcmtJBiDyWDtJXQeydro0oUVFzz2f
         GITmJ8KAIyxn3rXnqw0R4suOJ66DzYXgJPnNyGLsCMwXBnv4Lgd10+9gg6Sa/yNQjD5L
         zE+HZSnmVeVaW7F7ac28I787K/ZdYBfrDAlejKUbNd1mZ+AtptuFHITemQV7J05dDpgE
         rSFV5C59M5vUkh+UbsSHf7XLJtfS9Ez5sIa1/RPtr+LZkR3/JjWKtLnuhLOc32UxLbNO
         0qAKDijXV3ci1t+OVNn6/2TL0EwkqyMIAJeQpOdsgYNQtsg2smbMzLL7iOiaQw+8vFYN
         QsKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCw4jKnU;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id d9si14089pfr.3.2019.10.29.15.36.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 15:36:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCw4jKnU;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id a194so580388qkg.10
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 15:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bAJA1RNDhAkbm1xO3/krIWUAY9zwBPAKxHWFAJSdUMY=;
        b=uCw4jKnURRfwfJVwzUVthW/4p4oxCjYTxVp1YNNuyOMFS6EuZtRCFiWR5BsmhPOB0u
         qg/UrUSKGJnODRuLeHpe8qcmCNxJbuS8l+qQlZWrd47EsAc5iSV/bt3Q/348XLydOSb+
         13rtoDBaK7MsDyzy5mI8FyTw+JKeoOHtTTUt60x27MkPgAyNHkhwVpn6Hf3BeFKUyCAP
         reJXOHB/pkWERSpU9kRgRlZuRd7JWj36RMs2igTybqsY2cX97Bl0t3w8OkRE0+EFtQKt
         JQhP/qO2Y9AFSHT/8yyNcOqnKOX7MXefl9DXJPZRVLyYekAN1Pkis+9JL4O++3GU7rJX
         agCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bAJA1RNDhAkbm1xO3/krIWUAY9zwBPAKxHWFAJSdUMY=;
        b=chH/b9ZA2+x1746k5sAMFzMz7DjHJAuViMwrlE+VDUEnMousbXvMaQYUm9tOOTk66P
         XgmX1i2dOTPOBtcRq2+QVuPBO/tGxUUECQ5xtrLcY42ShsBSnmNR7kznT6bCHLxFljX6
         1BKF+pxDjawhfqKbFgtEXDbjJy//3o+fNBCh/3+fUsopweP4C6IK2XBJv/wC0v1tuabm
         CNhhKG9RvD53U6ji1AaTNFt/wtWLiGigpVbX41MuOmDIOsYMwktURV8097voCAi6t4Tg
         l1QF5nzmh0NA5RXXuQZ12WPKFSlzp49nLE4C7wIl4Jr24PK4rKKS9oCViOearYc3Q14A
         yxZg==
X-Gm-Message-State: APjAAAXEb4dz5ZzVzsQoYVqX1lJ61ayJk6f1NT5lCZzpf6khcqxcF4yZ
	phbrT82ajAbudrZKrC3di/jf1J4RSXk=
X-Received: by 2002:a37:d02:: with SMTP id 2mr24922492qkn.307.1572388567956;
        Tue, 29 Oct 2019 15:36:07 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id c21sm72374qtg.61.2019.10.29.15.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 15:36:07 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	axboe@kernel.dk,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] blk-mq: Fix typo in comment
Date: Tue, 29 Oct 2019 19:35:56 -0300
Message-Id: <20191029223556.2289-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo in words: 'vector' and 'query'.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 block/blk-mq-virtio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/blk-mq-virtio.c b/block/blk-mq-virtio.c
index 488341628256..7b8a42c35102 100644
--- a/block/blk-mq-virtio.c
+++ b/block/blk-mq-virtio.c
@@ -16,7 +16,7 @@
  * @first_vec:	first interrupt vectors to use for queues (usually 0)
  *
  * This function assumes the virtio device @vdev has at least as many available
- * interrupt vetors as @set has queues.  It will then queuery the vector
+ * interrupt vectors as @set has queues.  It will then query the vector
  * corresponding to each queue for it's affinity mask and built queue mapping
  * that maps a queue to the CPUs that have irq affinity for the corresponding
  * vector.
-- 
2.20.1


