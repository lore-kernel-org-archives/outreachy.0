X-GM-THRID: 6393685966647721984
X-Received: by 10.200.46.171 with SMTP id h40mr2246640qta.12.1488646027072;
        Sat, 04 Mar 2017 08:47:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.151 with SMTP id u23ls3448026iou.27.gmail; Sat, 04 Mar
 2017 08:47:06 -0800 (PST)
X-Received: by 10.36.219.87 with SMTP id c84mr1659338itg.3.1488646026489;
        Sat, 04 Mar 2017 08:47:06 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si578743pfk.0.2017.03.04.08.47.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:47:06 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so15641662pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/gLEu5g3iyZx9eONXpsOODmVEnX94/1u56K/QzTSWfs=;
        b=c1EcMOuo0gW1TCh6oS8DhdSo+onGisMDLXMDN8o7ZPjqqFKgBGpaucroGf6UdRxkfl
         n9krF+jQqF4+b1iuvDgo6pyA6KAvOFJ/d2tygyvX/+e2tWXsPd3sAe8/QMUyqckbfJc8
         4PgM57/O7hRRgP5dlXgOqfYswqU3i/+cBYKIEbxM1szwsp2hzGKg30CnyvGXGDbjZw6F
         FP86fGYBs+SiQNcbbKJ12y8F6qZlrqb25MlIEkZHiznsJWisxAO3tPnxuLr9oepNBkZc
         YhmwZXO5OGpXgbT7bN/Ls+X9tgIybY4xF6tQ+tdozE//sFxgk0dd4vnxVGykTNXCjGAi
         VUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/gLEu5g3iyZx9eONXpsOODmVEnX94/1u56K/QzTSWfs=;
        b=NRFt1v2rURLSMelJwBv8KAKE5WXrnrD28Ql0KRZYQSMtaVA0p3DBUbYORjZWdHBMNP
         jp2qISpaKBBXnfkztxaCJGgz4xLCOzZxHpvU8Tzng4HZPYPbCZ6J5A0sQIFHIZFDZURD
         cw13Cdym31odyRVAF6XQHa5A2II6LE+flqPUvp99dWyrVAtJ/1qHTAB61d8reFOGECuS
         WjX/8uEftGOuYBOC9FyHFXhMoUmalCQ//qxHrXbYPrt6/4lqgfuNiN9zUjjsyyuHzUQo
         cRCkHh9VzjYqRn+IJt8x6i87PikmWqdQEj3Tapygabo5IZQo7CJs2MSqG497drJSyCgg
         rn8g==
X-Gm-Message-State: AMke39knUtm0FFsGD2Z6bLV1LoafftVpDrby0WE44B2pbjx7SFn0Eu3ngKcD+5eytY2IIw==
X-Received: by 10.99.151.18 with SMTP id n18mr10031143pge.183.1488646026292;
        Sat, 04 Mar 2017 08:47:06 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p6sm30415775pgn.40.2017.03.04.08.47.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:47:05 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org,
	linux-rpi-kernel@lists.infradead.org,
	outreachy-kernel@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] staging: speakup: Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 22:16:54 +0530
Message-Id: <1488646015-7059-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>
References: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index c2f70ef..e8268bc 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1324,7 +1324,7 @@ static int speakup_allocate(struct vc_data *vc)
 	if (speakup_console[vc_num] == NULL) {
 		speakup_console[vc_num] = kzalloc(sizeof(*speakup_console[0]),
 						  GFP_ATOMIC);
-		if (speakup_console[vc_num] == NULL)
+		if (!speakup_console[vc_num])
 			return -ENOMEM;
 		speakup_date(vc);
 	} else if (!spk_parked)
-- 
2.7.4


