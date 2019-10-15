X-GM-THRID: 6748170899726270464
X-Received: by 2002:a19:6e0a:: with SMTP id j10mr6699650lfc.131.1571180974611;
        Tue, 15 Oct 2019 16:09:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:48c:: with SMTP id v12ls1785817lfq.13.gmail; Tue,
 15 Oct 2019 16:09:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjpySrD+ZC3bkaKiIztBy9SZ2E/e2LUq0uA7VxT75LNOSFIheVzgDm2V+s+2As9jwA+WXh
X-Received: by 2002:ac2:4466:: with SMTP id y6mr22607459lfl.8.1571180973510;
        Tue, 15 Oct 2019 16:09:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571180973; cv=none;
        d=google.com; s=arc-20160816;
        b=l9R9a651n8aMj3E5eI4ch6hXOV786YSXT9eI0eVSj5h7ShCPzpSKXCjIu8rCD5aa5O
         dlvjP2i4qsLLBoCMay6tccPMESd6pza8vGoUtmO8mSIecQcq9uV4RKBFcsjzLa+hRjN1
         QpvX1KcyvCzhJkj0+UztKgq2Y2YGaTyQ4b3j2MTaOyw2kqnCZ8l77wuNCqhdnd6tI8SW
         nZXT8gDXn95aiAo56uGLv1nxb+Gq8Q+1HtWJq8lUQnhVo5lTFKPSCs7mEdmOChGBYyb9
         ET6PlBgKyc4VU6y8Wvn0tAs9yXnaZvlnJRdaQlX2e81NFzVLihF7p91ZQ7tau8GkNS4i
         9cBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
        b=Wxeii8StjpYR6funGv8jC00Zq+CBQ7CyUm0y+Dg94w71Tku1pi7goYrOF6zXny/urg
         nnL02j+TdUFBJ77KDAxupee/kTkxzzkMJUUz8tT4izQ/HHt/Zhmlvsijq+szBTkn7VLc
         bd51BSF3qJGTb5u274qL4rdjrSixTvM+bZYbilOLikssVWig54ueGqe7yXKb5t6ESpDs
         MjO9nav5UxukbqtWlNP1xX9+Z0a98xR8dyZTIj5hPxLtCuJMuL1GpcuET5VuqindG7nE
         ROc79hohzg7T2+5zGEHE8iOPkHRtf7/GL5r0Xisj1cJC6Lgn6NwwFJaxUMujtTFqaIXM
         BZQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NvZZU4hC;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q25si1278885ljg.5.2019.10.15.16.09.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 16:09:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NvZZU4hC;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id r5so25698258wrm.12
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Oct 2019 16:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
        b=NvZZU4hCK4gBl9/e1Md+nHXL0Y0WlXJ6WZlZpGkTX+su4IryR+CmQW0avCndLe1Nbx
         R4qxA1LunmzZIv9pDDyNN89hSl5hEczj17U5L59hxr02ZXC5UvZYoSdfF6SwK6pyba7u
         U+fvVl8x8Cdk9tv11EbYxmdqQyGwQdIio1OUSvK2XTG+qjZm10LhX9todDHLRQFK8zEB
         Qm+cWX4SvVM/aQQw9Bxjn23b1bry15KahaM/sA8SgopC4eTn0yR4XCmind9ejxdbT0PB
         ugyCDvNRIvstdlDhbpCpIWW1ClD7YMvKBdw7YdiqI19sjI/xN+stgC09eCpN7HVP9xo9
         4sZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
        b=Xzccv0hdKO5ZJoA5Oa70ijgEAuwz2HB9yENsXUKzPK+YjXHkUlGNGKyNbg1r1Zem/D
         5CBi8ANF6ANjsmOdjRLT6jrEInzCYSmPSgdoD/4dGs2jCgfwD9YIVKkGC2Cn0CCJ1Hzs
         7CKul9/m9W6xu56+0tcX42BxpzuQF97bEy5PA7bHOKgIcrt9BN6Pxmy9fiIuEHyqOqc5
         aTAJwGu3JevPC9h4rdwsxFJB0OhAbBl67HcmrZf6vxrAw59OGhaYlZLOl1FLyU62d7Ri
         cqoIv8jm1TSboK3qcT5HbxHDMEPkFhBYzTm2NzFEGXvAvRjSczRR3b42BWhpufV904yf
         gtNQ==
X-Gm-Message-State: APjAAAX/f00StLLI+xKqDwKcjLyKU1oCVr/pLROJGviDtV01LEiMup8B
	D95KPlZ8x7j09YQS3/L61UOMfay90fVhOx4=
X-Received: by 2002:a5d:43c1:: with SMTP id v1mr33618982wrr.91.1571180972896;
        Tue, 15 Oct 2019 16:09:32 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id s1sm33064362wrg.80.2019.10.15.16.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 16:09:32 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	bcm-kernel-feedback-list@broadcom.com,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: vc04_services: add space to fix check warning
Date: Wed, 16 Oct 2019 00:09:22 +0100
Message-Id: <20191015230922.11261-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add space betwen operator to fix check warning.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index dbb6a5f07a79..192c287503a5 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -163,9 +163,9 @@
  * by suspending parsing as the comment above says, but we don't.
  * This sweeps the issue under the carpet.
  */
-#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
+#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
+#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
 /* How many bulk transmits can we have pending. Once exhausted,
-- 
2.21.0


