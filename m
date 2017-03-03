X-GM-THRID: 6393234614676094976
X-Received: by 10.176.71.224 with SMTP id w32mr234465uac.12.1488540935513;
        Fri, 03 Mar 2017 03:35:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls6575242otd.28.gmail; Fri, 03 Mar
 2017 03:35:35 -0800 (PST)
X-Received: by 10.129.163.208 with SMTP id a199mr862397ywh.26.1488540935183;
        Fri, 03 Mar 2017 03:35:35 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si4401pfb.5.2017.03.03.03.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:35:35 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so9714970pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 03:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=s5i2pPn4vGHj5GRuk67PVny1aEe1SGSjM/umGRvpZd9mX2tT4H8IJAZOV6w5rfL5nu
         SGSFfCRXTkmocWTJEN9A6ynxkHAM2wEpGcuD9zyMcCSqgT7ISlKirPpsKOKZ/v0Ya8Ae
         Ylkf7+RKQuIX5kvOMvzFTE9lBbVxJ8pMLWSUS6+dt+5zRz3aLWBalSKrP84ghRSrWQ1c
         xRWyEQdn87sG3hF39hnArCS84E5l7yNeUN6XiYx0LBxGYGEzSFZHl8c2nvB/y9mIzwsT
         zbtb67XYePKXxhiDt9ywNXcwk0xcHuXH8Tab0Pg9s4NsPv1dzgmkhQcPi5e7oegh1VX1
         x77g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=n+VHH/AaXdUG+hq5aISllgSff1x07oX3pEL6UL+8FPjFA+Ke19WBytIYXKlsCz2pPP
         60CM9c5EalXQ0GI6w1SPHKveFLNn94F8SAHC0ceN96eK2vLQjGjodLpsnMxz+IH+PFWX
         q9YTIglNrbcSl64Z4UrqpFGNKrn6FxBVgcvEALe2q8GC21Wg1BjPnoAksoCH0dgc3IHp
         G/Z9F/PN4iueVSDabL0u6RrG7KDkVm7d2sO8vH+oAH964JagQGcEj+MyZlkEVmtZyHXP
         ENWNvNFQLwK3CcGStCfyLRt7hbznblT3v8T9HL8F07hhGXzbVsdi3hRBI1fuvnPgVZ4a
         diRQ==
X-Gm-Message-State: AMke39n9r/TFHkNPt67w1oVq4ZKJHyEYrmwRcncByUV7NAX4MCRYLF3A3T6EJ3+HdZ9jcQ==
X-Received: by 10.84.210.15 with SMTP id z15mr3726345plh.11.1488540934613;
        Fri, 03 Mar 2017 03:35:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l22sm22942659pfk.69.2017.03.03.03.35.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 03:35:32 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/5] staging: nvec: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 17:05:21 +0530
Message-Id: <1488540925-16898-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:

@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/nvec/nvec_kbd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_kbd.c b/drivers/staging/nvec/nvec_kbd.c
index e881e6b..a01f486 100644
--- a/drivers/staging/nvec/nvec_kbd.c
+++ b/drivers/staging/nvec/nvec_kbd.c
@@ -58,7 +58,7 @@ static int nvec_keys_notifier(struct notifier_block *nb,
 			      unsigned long event_type, void *data)
 {
 	int code, state;
-	unsigned char *msg = (unsigned char *)data;
+	unsigned char *msg = data;
 
 	if (event_type == NVEC_KB_EVT) {
 		int _size = (msg[0] & (3 << 5)) >> 5;
-- 
2.7.4


