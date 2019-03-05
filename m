X-GM-THRID: 6663618170330284032
X-Received: by 2002:a25:d57:: with SMTP id 84mr2206733ybn.24.1551826125882;
        Tue, 05 Mar 2019 14:48:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:330a:: with SMTP id z10ls6702229ywz.0.gmail; Tue, 05 Mar
 2019 14:48:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqx24fQ7ZZstGcJayPXQUiuF2jYtC1l5sVQ/g7IZzCi0Blcs97OJWvZ4t2klyfJXZWXpK1tE
X-Received: by 2002:a0d:fb06:: with SMTP id l6mr1833602ywf.26.1551826125004;
        Tue, 05 Mar 2019 14:48:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826125; cv=none;
        d=google.com; s=arc-20160816;
        b=efbFKXr3CpbFWcQGZMKJvwIqygnLxGZV6AklAL2AOC2uAPy336DOn9VkGGRLlmlNoI
         SFjSoBhzd+ULee6dWiDGGdUTQh3YlUccMxkPNSsGrHgXNsyHZj+8Yv6ihyb1R+G0x/fm
         mMyBQpi/v0UMTH3YtY21dGN3BHghPoe9gV44eP6EvEr34DnLXNKQ++ZkB2nNuLEewdJt
         kVJutYo4wKFme3nRZpNL3O801LkOZfTijGI/JBxH+iZHHmnBcZf9DVD6uSUCbtaiXYVZ
         kOd6sxPRlQoI2AXfT/H9CZWdeBx7EuIiVCO4mgQGPeRPuYUaOzg3exKfCU7y0VIY7D3b
         BNrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=dmJ7tAH31C+MUCenbLP3sVmLFzPkhKOs0xHBymbIRT4=;
        b=cagst1GnRyKNIFX4DGx7jph5DUCfcccN5hK7vifZZwjIOIiYWWBbeAMonTs3ZDwXN6
         L7BS4EWbjXUFqTBR3ZUgnWeSfNlfAdzcshTTAXD2Vsdnl2YlTDkA70YdS0gJnHoGcrND
         vs5hlc7LP9DpYQ4pY3pllXWzFB4043LE9fjyyhgsxg9g+8rgKSMYxZfNV0HO/rD9HKin
         un8qg0xK0+9LZs5WZL7t68jTX4axJGRDz5z4Td9ZRY8Y9EUJoRqN/0PiLIrkXHmUYrfT
         76zDSLBdg6bT5QXX+MJTTv/xNzM4dGcAiKRGhzcPwSk4w55wRQBhCQhuVHdrkM3NIHll
         VObg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d5RkDR8u;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id j16si539767ywa.2.2019.03.05.14.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:44 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d5RkDR8u;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id j10so8221895oij.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dmJ7tAH31C+MUCenbLP3sVmLFzPkhKOs0xHBymbIRT4=;
        b=d5RkDR8unCDz76q3BrPRLTr88xE/1QOPA6vJQNMk0gz0Y5gad9UrSJXVqgITYb8Ua8
         OFwiJn20jaZp4YpXTBFaCTYdd2Uu9+RDMznN9mUitE+mWupnv3mj/vt2G4MGfpqgwXtP
         wdJEwDDYLVOuGSaxqvIL4kR1ymJSRlepGf8g5TPxMx/gpuxzbxz07OymlOBNwdFsOEO3
         xSbn+ARc/sryRJw/tkjzdzb8AyYDLp2HdIN/UqJoW8LeqO39FnmLHoFJXEaN10V28bz7
         RukE3P8aJltl92BacBjmCf+C3pl3p0VJlLglw+8ZwPz+wD0qUknLBWcCMEDTckH0VdOU
         WRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dmJ7tAH31C+MUCenbLP3sVmLFzPkhKOs0xHBymbIRT4=;
        b=Xq5XcHLSDcCl/9WwyOvU3xzIxBkipFFE52FB1Kxbm3vwJsCWMYh4GwCifneGKvJK3Y
         L0ekTmz6/alq1FAl9EmAzEEr9Ve3mo/WqHdkr46GB6fKL8S00VYzXmX67KU6t/qBlCE3
         M033UyUnWBQ3E3xnTgryzUb+IzcQawV0GGyQAzFU0rqZRFEUeZvU4aba8SYkmHx6qONY
         tAaXHL9fvHOII2HR98bet0gCF3dNDRuHLk07HSX6EJ+NTwwy71t1pTZF94xDuL1zVcxJ
         f2dHjvRcYlu/zMiOSjD9fFov4q2m0Mu7l6iyET6m5NE3GJtSNSfz6+XQZquDbMkt9Vsx
         4vXA==
X-Gm-Message-State: APjAAAULLJvMBr+E5+FlSUadBnd89QGXNc34fpVIfLRy6PbTrJ4PxamN
	tU7fi5w+WFCWZlnnERWIkdB9gxSiwj4=
X-Received: by 2002:aca:4a10:: with SMTP id x16mr500364oia.73.1551826124658;
        Tue, 05 Mar 2019 14:48:44 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id w22sm4491586oth.45.2019.03.05.14.48.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:43 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 5/6] Staging: vt6655: Fix the warning line over 80 characters
Date: Tue,  5 Mar 2019 16:48:27 -0600
Message-Id: <4c5d9db96a544bce3c2acae1846b0146b9396cac.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
 <cover.1551825578.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551825578.git.madhumithabiw@gmail.com>

Fix the checkpatch.pl warning
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 8c8c26792343..99de843b4551 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -883,7 +883,8 @@ bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 
 bool MACbIsIntDisable(struct vnt_private *priv);
 
-void MACvSetShortRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
+void MACvSetShortRetryLimit(struct vnt_private *priv,
+			    unsigned char byRetryLimit);
 
 void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
 void MACvGetLongRetryLimit(struct vnt_private *priv,
-- 
2.17.1


