X-GM-THRID: 6671625526346514432
X-Received: by 2002:a24:2705:: with SMTP id g5mr2699315ita.152.1553358865581;
        Sat, 23 Mar 2019 09:34:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls5001310ioc.1.gmail; Sat, 23 Mar
 2019 09:34:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVV1+i9VKcS6Bz0P7yIWQRFDydNhIs4ARJ+JC74qjhFG+H//RYTxMeexTDW3rWXTxRbTnh
X-Received: by 2002:a5e:c249:: with SMTP id w9mr11017557iop.284.1553358864724;
        Sat, 23 Mar 2019 09:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553358864; cv=none;
        d=google.com; s=arc-20160816;
        b=wCvZuDZreK02j9zXezYviCcl8YS8jB89+vtVv03PTsDf5NCTXDdGDIaHXdFcfEBG5r
         EvLIHt2M5Ld9PIki43zfyr4Ia6I6eBrHEcx/LaVDD6a08ga9yAGKZRtGs3pyiujRr8F3
         tT633pyRWv44m8mKm9shppJKaW/KfQ3Mbqt6bvBwRCQDyoRDyMdg02tFDe3BhWjgbAot
         vpovLLJX2dTDDXrqo9UX559DO9Dlg83IJlFvaXF+L/4+7IA2xDtdETN+r6GHhXEhtNrz
         7mNq5TudTh8q+cxGf6ieHcvIlg1eMFvjgtVblmg6ifMEVofGpeyclQFNuGmPQXD1CDqD
         SaNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VcY7LVAhsnD5DzViBiGQESK5Q27aKC43emAs64rBPOk=;
        b=qOcJM0F6kSVZhKOtrYYRSQkZPBKM1pF1wER6OWT9jdjkV6f1HM+xV6W9pCVNU6fcME
         JQNRWHNTDr5LY8I1cYtbYUxLSyJikj73tQkV/YBKUeGKeI7oDYeOz2kP6WhdCaQTKVka
         zde6J/ih5O5ZW2Jl6/Bx70R3AnMMxZK4PlatgciidwmwnarbvgeGkdhdcA+D9X47tlXt
         3/7CiyWzJYPczRCRJoPUBrP9jo8POiMSQJEz+0xZGnUq5RNUjRr9EdCSxpzwvr/s8egR
         xfHKOv/Edvnnh+FQLGlD6Jvgk4ksuB2gaZ5mgqnKFlL1KFEv9GT/KyhEZo60UKOWFgUC
         239A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hpcZIsXd;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k26si396526ioh.5.2019.03.23.09.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 09:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hpcZIsXd;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i19so3565461pfd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 09:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VcY7LVAhsnD5DzViBiGQESK5Q27aKC43emAs64rBPOk=;
        b=hpcZIsXdwYGVLddluj0SdwQ7o+/U+5envuElUcq59YChlEcbMQoxB3XaFT8dw0elrq
         LiP9mwi+SgaP8st4UdjQ1Ult/bL2F5IrYnEXeYqKwgyIJGmJCcV3nuaKng+3JIkqVrip
         X2c34R1ZHzfJXSEmIQ34xhojs1hafkq7Kc3tBV2cEfh5abQYIhGFDvmJEZ63Uu3GirZ+
         JDN6l1XcKKJd3tpF/6mangUCdnfXcVsUBvf/ZJ1c3+jhyWlkb7rZTiuU5+1F457Yk9be
         DVkYx1l2uSpnqSfWeTMpKIjzjpLcyvqkQQLrKlXhCUAmyPEspzxAq4hGJyJna99i91sS
         AE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VcY7LVAhsnD5DzViBiGQESK5Q27aKC43emAs64rBPOk=;
        b=LnpqO9BpmJfXzxpSYjxMxQy6ooKGLWQ9jh2JRx/pp/AP7QpwPXdCpBUsDH7DH+Gf9M
         uNN/yq59F0yH67QRfi2bE3KuAYTKaRzpmswOCN3CddkNO7w5TfWJAEmhOpQPoz6yY68N
         FKMWXCidcRXWYzs46o8BV2gwaltQWO+rlwJm20+at6v84PS+LPao5Sw127B/ZpgZ8Att
         Li2WIPW7NUM3Q1sNmTk2ni5gEmocjY9ZjOsbUJ9Av3dTXWNbgtKF6+sU7hfgcIMfXw+y
         aJf+b+wDgJIp44Wz5CthmwJeIk9w8H/T5ezc/Ej1dqPgkpgJr9j0pCeeNTPVnOaFFJtu
         yKAg==
X-Gm-Message-State: APjAAAXvBefVFLT0dLzHtNEyANo+783Lsr9GPuJ2yvp5JF8jZk2vo6+2
	4I+BNGxd20QfdYWeqsNiNxrz2lQk
X-Received: by 2002:a63:2c4c:: with SMTP id s73mr14968334pgs.113.1553358863717;
        Sat, 23 Mar 2019 09:34:23 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.154.243])
        by smtp.gmail.com with ESMTPSA id t64sm4322322pfa.86.2019.03.23.09.34.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 09:34:22 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtl8712: change type of variables
Date: Sat, 23 Mar 2019 22:04:01 +0530
Message-Id: <1553358841-3093-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

It would be better to declare variables having boolean value as bool
rather than u8. Change variable type u8 to type bool.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 3ff64e2..dde1255 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -23,9 +23,9 @@
 /* reserve 3 bytes for HW stop read */
 static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
 
-static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)
+static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)
 {
-	u8 tmpu8 = 0;
+	bool tmpu8 = 0;
 
 	if (power_on) {
 		/* -----------------e-fuse pwr & clk reg ctrl ---------------
-- 
2.7.4


