X-GM-THRID: 6463032628218953728
X-Received: by 10.36.192.85 with SMTP id u82mr396764itf.49.1504792046770;
        Thu, 07 Sep 2017 06:47:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.135 with SMTP id u129ls540240ith.13.gmail; Thu, 07 Sep
 2017 06:47:25 -0700 (PDT)
X-Received: by 10.129.51.194 with SMTP id z185mr1588161ywz.169.1504792045783;
        Thu, 07 Sep 2017 06:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504792045; cv=none;
        d=google.com; s=arc-20160816;
        b=lDxqBZj8uJLZ3aw9XdMnY6paFI2h/jIewMJq/VKVAaDXNYU0q5gO/BgtN1pNtO+9KJ
         QVrYUUlFGOYQaXwjoY1nCd9glOsW0nkIb6sDrSCWa/8dg6UoRr16m++KC7iQYp+vgOr0
         ArzDjex/m0X+vxc/a3XLy+zV2oQjSQASou0iwxJ7e33xqRyC7rkedOqD+QeU5JKZy0Uy
         uVoaw0Ay23ezPUauncqTdx6ONrxkwnGp1XEFntlz/dV03AHxC8meJpLxQaBf9nn5H6Re
         YAGyLElbjfyVDxS3rCfia3WFTpxSakh2NQvBkGoojg3zKZdoiZ1NlYSd/5wKND3IRCR9
         lWiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=5NybLrjWTMQq7H0Ey5gcj+UIuLUJjvg6t0AdJ+caM1Q=;
        b=K4lF7TzX3Y6O25jZPbQyuJcnmHtbIl1I8BIUkf8fVDJa0ywcLnIwdxF8JIaFW1ok9N
         VHDHa/vDKxhZXKJerzf+6/vmc9VmhcsqKp5iZ7gBaXeaqNOobpUWU4TH+oDD6Sn5ZVxD
         rSb4COwjmnrbYZxazA9awcltctT1DDbLW/I8L3KFcXxCwUP/LVoYl30OfXLUr9h7uWuE
         6tcINslo5+vBaLEadqGFNxhJodFjCi1BB3rOKMRjfNTFW3eb6ri0mW8jdq4BK6I3uAkl
         dxWldykSNW0gxbx673u7IzKkHhnHesilrR5Aa5capAshgp+HsX7dH6PqjGe2kFqpaQJr
         k6SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJiw1zlR;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id i15si296780pfa.20.2017.09.07.06.47.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 06:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJiw1zlR;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so1333469pgn.4
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 06:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5NybLrjWTMQq7H0Ey5gcj+UIuLUJjvg6t0AdJ+caM1Q=;
        b=dJiw1zlReruyaxzl7g8qUMCmXf7iUT7eY+1awmMSmUd+3bxv3QP9E4tVM+dDq7sc85
         pa73sVplqIuhiFFd2fSitqIbb9+n5kd7omocL1Ng1JD0wwWtfwJljMbyrpHRkQfXa5CG
         e1CMBbDo7JH8S6molUZbTd9K+46n11pXMfHF7ErUd2xwO7qjtSH06zCty1v2BjQOJzAp
         gkPWPyRWCJOVcWULNMPFsEEzKkAJbMIUsK6+QJKyu0egA3DKEoq0g/+FQ9uzhglUZxVI
         rQ0XexkI7sP9mmeVHPlnuhVAXf4Lnm1xnmvxX5yQ7HR0ButSHohTCHSlIJUDC55WkiZj
         Ei/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5NybLrjWTMQq7H0Ey5gcj+UIuLUJjvg6t0AdJ+caM1Q=;
        b=oJ2NmqKwRmNUw2SfKC7HC64AJ/5t2P8UPHz8daWCvjSS5RZZcWq6X8/r2x7mozS7YM
         gqlxQmDyYNv5+Nfs62dDdSwW8e/F5G4JuBfIJZJcjNU2LWLTQNb2wJysWS3gX2tJpIPS
         wjBivG2XY4W5E7SU2LziLgmepAx8GLPvOD/1hrimI8Cbb5fSH++IrebOvtEdQ9rWy/pg
         /2L7l2nP1RAlpyL9BenxpcVr2KWJ33SVq5irmRwwqrIQGbn5d+Bh4eisLA1b17pEm6bb
         al//0lb7CmB2H7sGooQ/r4CQl2vT/EOHdEGEKozaDY6i6v+/pC+Ndn5V+zV5cYpPZ/+x
         FD0A==
X-Gm-Message-State: AHPjjUgjWtJ+6MC/blSVMVCzGEST1gGPR5ExO0NHvgCjgWev3+YDlYvI
	zZun5TH7XDhZzQ==
X-Google-Smtp-Source: ADKCNb4sSqfPRPfNfhIvnY1CFUV/lgQQ1WZeI00bWjFfInrtzxS59KATHuHX2ghKz0E6utsEX1iPrg==
X-Received: by 10.98.48.194 with SMTP id w185mr2775666pfw.231.1504792045453;
        Thu, 07 Sep 2017 06:47:25 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id c62sm4651845pfk.94.2017.09.07.06.47.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Sep 2017 06:47:25 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: ccree: Prefer using BIT macro.
Date: Thu,  7 Sep 2017 19:17:09 +0530
Message-Id: <1504792029-8050-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use BIT(x) instead of (1<<x), reported by checkpatch.pl.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/ccree/ssi_cipher.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/ccree/ssi_cipher.h b/drivers/staging/ccree/ssi_cipher.h
index 296b375..6fbcf9d 100644
--- a/drivers/staging/ccree/ssi_cipher.h
+++ b/drivers/staging/ccree/ssi_cipher.h
@@ -27,11 +27,11 @@
 #include "ssi_buffer_mgr.h"

 /* Crypto cipher flags */
-#define CC_CRYPTO_CIPHER_KEY_KFDE0    (1 << 0)
-#define CC_CRYPTO_CIPHER_KEY_KFDE1    (1 << 1)
-#define CC_CRYPTO_CIPHER_KEY_KFDE2    (1 << 2)
-#define CC_CRYPTO_CIPHER_KEY_KFDE3    (1 << 3)
-#define CC_CRYPTO_CIPHER_DU_SIZE_512B (1 << 4)
+#define CC_CRYPTO_CIPHER_KEY_KFDE0    BIT(0)
+#define CC_CRYPTO_CIPHER_KEY_KFDE1    BIT(1)
+#define CC_CRYPTO_CIPHER_KEY_KFDE2    BIT(2)
+#define CC_CRYPTO_CIPHER_KEY_KFDE3    BIT(3)
+#define CC_CRYPTO_CIPHER_DU_SIZE_512B BIT(4)

 #define CC_CRYPTO_CIPHER_KEY_KFDE_MASK (CC_CRYPTO_CIPHER_KEY_KFDE0 | CC_CRYPTO_CIPHER_KEY_KFDE1 | CC_CRYPTO_CIPHER_KEY_KFDE2 | CC_CRYPTO_CIPHER_KEY_KFDE3)

--
2.7.4


