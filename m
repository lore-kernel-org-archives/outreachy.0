X-GM-THRID: 6393330913423392768
X-Received: by 10.129.52.17 with SMTP id b17mr3357364ywa.107.1488641461602;
        Sat, 04 Mar 2017 07:31:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.99 with SMTP id u32ls771416otu.28.gmail; Sat, 04 Mar
 2017 07:31:01 -0800 (PST)
X-Received: by 10.129.4.73 with SMTP id 70mr3333808ywe.153.1488641461275;
        Sat, 04 Mar 2017 07:31:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si546297pfz.1.2017.03.04.07.31.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:31:01 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x66so12759048pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=mZ650vuRP2mVGXVcswFuiC+apTCBKuMJPSlBMho34NsFxsD7MD7hDNH6RmqT6hhtX2
         B8zZB+P/RoOuQ5tDVemKNj1q6v5FIc+Q0cRW8RbuIdZWyVkxEIi+KJ61AE2v+UrDfn6s
         9toZE66xXiMdBIgCeZTSEXKb6Y1tTs945dhONKN1S4zZ/b0TSlV415B8ehWl8IV0q/87
         e8ydbph7IqoYLa/htSdSc1tEhh8Zvsdxus5/NEcGayH3qvF2eKamIa/kmaGHHqen/aqP
         XrcGLQptltdYxCfpT7bB0zfd+mhinHOwNJTqWaG6/hrhJ/V4UtRf3S2gpex55a+lUFlL
         agMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=AV96p8lOezwP3Agxv4q81i+SmnMA0iagHI5NvDYwAuDYrMEAzgkk7Ij8T3KYCflJT3
         h+m8E8//4VGBCYzOetXniP3zcLVDLsWMr2U+6poQu8stmP+UfIJ0IV8SqGeCM/Z/nmPj
         0n34CsrtR7c1HCDiABa5uvuBAFbIX5yaIGK/SZH9VnADAMAd0yLKdFwACyE3GP9zeMBv
         zip3av8Azc+JwEU/+jV1YgyBEplByfLQ9RnTZFk5NNluxfFzNlY4DZ2BjOBQlw6VmM/3
         6xv95s7x5cbieSNJWjt55OQGZ58UuZNnFhrhIbkYli+vZ2VCOrKO2r5lS8iQ9SqbcsuW
         u91Q==
X-Gm-Message-State: AMke39knfBCE+KwC3cFu9byROuU2c2P566Fmc1aR10PK3I2So0GJINUnpHlnWnBcq9hRNA==
X-Received: by 10.99.124.10 with SMTP id x10mr9705593pgc.25.1488641461034;
        Sat, 04 Mar 2017 07:31:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 199sm11323100pfu.40.2017.03.04.07.30.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:31:00 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5 1/5] staging: nvec: Remove unnecessary cast on void pointer
Date: Sat,  4 Mar 2017 21:00:49 +0530
Message-Id: <1488641453-22575-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>

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


