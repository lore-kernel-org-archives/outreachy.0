X-GM-THRID: 6670934867500335104
X-Received: by 2002:a1c:1d49:: with SMTP id d70mr634073wmd.36.1553198060147;
        Thu, 21 Mar 2019 12:54:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:49cd:: with SMTP id t13ls1495611wrs.6.gmail; Thu, 21 Mar
 2019 12:54:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJYd6GeR5bc5IRjpOAxt1g3ZbaIAXYpDSDN+gUA884w6gwMh7OEXQxVfBaCTtpvZQsQ03L
X-Received: by 2002:adf:e443:: with SMTP id t3mr3997808wrm.257.1553198059213;
        Thu, 21 Mar 2019 12:54:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198059; cv=none;
        d=google.com; s=arc-20160816;
        b=CxbzIvxWjM5T8iQxcDL+lgqnP5c5DCT9N41J2V8QfE1eTroLoUygR4lfsaXRRBrZXE
         N2a+Ihq1/CFeNwc0lwywDAyGBP23ugPqkO2VwimDjCllbjAkF/u+9mOV28TrkL/Y9TG/
         l9FyrLWYTDBS7g4iLAKrxce6lyPogHXboCmsRYYCQ9fYbbSHB+8KorBXuatKF3hd4jwJ
         hXuWYLYryC9d18c+wXcXjNdmDwZafYzTJNsZS4fN3hGH25xyeDhMxKSktzOCrwwliVxd
         pEVILPfhwX6XPTzv7FJ37pugY+uvXFLK1D+Xf2FiQ44bhDIF8CxjuqMyI+yAExTX8htt
         BSAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YJ7hPp2EZIB79WbLIrM6RNvkiMZ0wb9PJARLqsdcqqQ=;
        b=FV9QJgSpfRgUxJsBVU7IPP0z6Q+BiaICvqsbwnbi32gcxEhhLmG56dIQr+HCkhjsk1
         AEgtqIv62VHXR/VuGOpZ8tXrXHcnbEwlga4/DF0loI4KZoWsdnELq2TdTOKnDYuMMAAx
         9piv9iJPX2JfHG4/TQVVkbMOKT+AptX6lV+KyfhVvfekr0BrNJYuVfsnlmPrbYf1Z0rm
         hAW2egLO2YgCFlxWd6EeHpt4y+dHdnP8JZF2SvK5X/tdTMTVSCtiZ/FbdgFVwA79IdZB
         HA8ukumGbImzfGmkdZp+uZ4SCmoqHAdxK7LrOsmBlzRB8iwtqoTCwYuxH/DujoDPOa0S
         U6ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVAJTsGT;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id p4si320023wmh.0.2019.03.21.12.54.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:54:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVAJTsGT;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id q1so8052779wrp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 12:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YJ7hPp2EZIB79WbLIrM6RNvkiMZ0wb9PJARLqsdcqqQ=;
        b=dVAJTsGTSEQ2McCx9zMbNNcDHQBvQZ2ZxKLM1NNktKli1apc+XQ3UcLqLAAlgz2TTt
         ihQJZ6ZBpcMnCc6I51HX2bIZs5XclL5FkQkd1ab4oq7TGlRxJLIwur3oSkw4Tty4QhQN
         Oq274qy2YU00XCryU2FuTqCZrhkjN8DkNmp51LZ0adIi0uVMdHl6asLD7lX+De8PGQhh
         ku/cwqchh6yBxjAHQ2IWcti3UJXKX/PgcgDeQQX5dRioEPrzgeH81Bpbnh5ep7JpUlwc
         BX12Tv3XVPWdiPvjRUu2vem8sWlcxZijE2c4C9AzbalTDK8it9gXeZfjQpcI8Qc/UMov
         /sDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YJ7hPp2EZIB79WbLIrM6RNvkiMZ0wb9PJARLqsdcqqQ=;
        b=hrusMEzVr1vZbVO9ImV/HW+SlG9G/PKIfZgx87amr5JoyNP0sTW/Knh356DDruJ3ei
         SLMgPmOJhDrnCs9FrtAdk/yaBvlmMmeVBmghjPTCqPhLIsFFk7YCVzFD7PGW0ECqaFDj
         RQ+WUFfIuF1QgyKKs/MO/T01L1SNN3ySPcGhJH+tSlyDUk9pFrR6k+V8fvuEWsBRbqRd
         SSct/SxsKmRJx/4/qgl+YMRh9IRlrdyoz5HuGMQS1/sHYtIItTWkJQK+tdtrbVJx3slE
         j5nOnIUiXIXZWNyp0g1LbBBGc0OMcxv8Vw+PKZ13nZWWfaj57jrANueoiy1NVGS39kYY
         cgBA==
X-Gm-Message-State: APjAAAWyko63O/bzBlu3y+g9KDl22RdYNjsbkRNeSQwMcubSPdQgKa5E
	xP0CqD38aPwW9PtHbENUuA==
X-Received: by 2002:a5d:660c:: with SMTP id n12mr3702550wru.160.1553198058851;
        Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id y1sm6423805wrd.34.2019.03.21.12.54.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: pi433: remove empty space to fix line over 80 characters warning
Date: Thu, 21 Mar 2019 19:54:08 +0000
Message-Id: <20190321195408.30440-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190321195408.30440-1-jbi.octave@gmail.com>
References: <20190321195408.30440-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove empty space to solve checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index f537722395c6..76511d01e41f 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -45,10 +45,10 @@
 #include "pi433_if.h"
 #include "rf69.h"
 
-#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
-#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
-#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
-#define NUM_DIO				2
+#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
+#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
+#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
+#define NUM_DIO			2
 
 static dev_t pi433_dev;
 static DEFINE_IDR(pi433_idr);
-- 
2.20.1


