X-GM-THRID: 6394809093953945600
X-Received: by 10.129.137.3 with SMTP id z3mr657032ywf.20.1488907517512;
        Tue, 07 Mar 2017 09:25:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.88 with SMTP id 85ls362360ioi.39.gmail; Tue, 07 Mar 2017
 09:25:16 -0800 (PST)
X-Received: by 10.107.16.83 with SMTP id y80mr697671ioi.75.1488907516681;
        Tue, 07 Mar 2017 09:25:16 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si132013pfk.0.2017.03.07.09.25.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:25:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so759369pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6XclYRGusz8RoONeqJGJff8vMbXhfhHK0HXyAyxnEqE=;
        b=lx5Sg1EEeBVIZfzLx/j2A4DGYKlLM+p/bq+H/YYhPLCiSLlOJmPhxLsjZX22U9H3u3
         j025WzmZHUYeA54HkuMUm9upQcZGgx8vL+Lb7zA4Szl9ZNsfskD3MptYB7t+w1GnGank
         MEDsIj5t2/YDcFMgQn1o1cml99KSB6vQFgp5+QtPrl+OXVnqd954OVSto79/ZAKfoxU0
         ecvPCI+P3PXDcAKOS0jgMamB+yPmzsvdg0ZkI1eEq+Qh8XafX5R6ERGAn5EAwyK52r52
         f0EZRU2Iou7VgGsQvXYc8a7Ww0zW36oWTByr3Ptk5TlBKhXTT/F+b6YII5KpZCShNp+/
         XTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6XclYRGusz8RoONeqJGJff8vMbXhfhHK0HXyAyxnEqE=;
        b=irLqq2534qLKRMSr6tSo+qRFsew18DVKlx9zlfZUUAHLMHRLepnUPTyYTqS0s4sVr8
         ErFseIaJGmqZsKT7FPLH90Vz40C8jQvq5rtLGu/gQPsh5HjGa4WzB0XxHosegvXdewoR
         iNVgO2Z9noTR8VXg4VEdHkhshYyvmlznoL65F79MPC4bYbfsKNn2vpEQ0i+0yTjnNMyb
         PdOgMFGzBVvGJKSEGf+6NbxyZwBBLWcXQzQEPPLWKn+Ud3qhxfW3EIZhHxJeQcB14X2P
         GKvp5a5NwGLd17oet5m3OIcjkEB3TB4SRfAB8JN+e3UUiIeOgLf4JPUzZVcQZHxGVjix
         nRrQ==
X-Gm-Message-State: AMke39mi5dDqGZHTJEWCoJ2q4be8/ggqzlGJi9he0xKWtKCvMobyOvVQoA5Hui/QCwzURQ==
X-Received: by 10.98.95.70 with SMTP id t67mr1605352pfb.37.1488907516418;
        Tue, 07 Mar 2017 09:25:16 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id c28sm1005742pfj.77.2017.03.07.09.25.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 09:25:15 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: gdm724x: Replace ternary operator with min macro
Date: Tue,  7 Mar 2017 22:52:51 +0530
Message-Id: <1488907371-26513-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Use macro min() to get the minimum of two values for
brevity and readability.

Found using Coccinelle:
@@ type T; T x; T y; @@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/gdm724x/gdm_tty.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index ae39663..fc7682c 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
 		return 0;
 
 	while (1) {
-		sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
-							 remain;
+		sending_len = min(MUX_TX_MAX_SIZE, remain);
 		gdm_tty_send(gdm,
 			     (void *)(buf + sent_len),
 			     sending_len,
-- 
2.7.4


