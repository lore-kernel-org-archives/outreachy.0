X-GM-THRID: 6673442126229929984
X-Received: by 2002:a17:902:b210:: with SMTP id t16mr1119436plr.96.1553965949708;
        Sat, 30 Mar 2019 10:12:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:683:: with SMTP id 3ls1823416plh.1.gmail; Sat, 30
 Mar 2019 10:12:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/075rZ0HcQQdMa/yGw36nSDLe5r9oh6Z1eUwIi4C3x4iIbyvUuLp67+PgkzRfO+loH0XG
X-Received: by 2002:a17:902:32c3:: with SMTP id z61mr1047625plb.25.1553965948910;
        Sat, 30 Mar 2019 10:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965948; cv=none;
        d=google.com; s=arc-20160816;
        b=eXwkByaO/lpSfycSQSYZ5ARkGF7vnTsifS8RkEV6M+zu/oy77nEbXNz35HEqLDFaTL
         2JcOXoIOXeHYHjieGkAJEP9GJWLsSkN3CKKvtvXkHet4cFtCGLUwvNPyTCDbENDT3sMP
         XGi/Ixjd7o6erLoW5L+I++wKxlkI43XD/ZcokaGuEhY01og1KHYlCtn+9MpQXfquBLtx
         OW7qqj06X/4AACqA6H0lWs8abwku8N6Xhse6YDMXyNVr2IoQ5SCKWj379KIEhfNvPLNG
         aLlG/7I2I/iPqXSEkF55xPlantIbUXc7s2B6jxO7P6e+6B4UqL5oQjZ1/sZt4SskMuil
         jEIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1Pl9f6hQE5g9qqiucAjOh3CNgFdnfslDaHv13WX17OM=;
        b=VAFcdgV3DWMlmfeqBaXWYpWjrWSh6TuuBBW2m9WtNbJyvCWKmqMHJTPMAzqZmq8ATm
         bjOl6u+KPgI5sK4CCnHpZND/9D1abpZWr58qNj581liVAKeO+C1V55TrG48D9CiGEqBm
         Squc6bq3dw0BYARgj2qoOSBHhWDMjMZHgna+F99IK/IaGDrjNTQVjflEI2ExMiBIi07Z
         nPGIZVL0+NKoIPHDq0UnAykRzVL6DMk3eX6uYgAZ2gZsUs6Gsb2pR57J6Y1I3tvAYlur
         YTusiO5D8LUOrO60Viqlu/NDnnU2Q+cLRLpukq0dHRWy2/BdxJ5e8dPL6K8vWIGqBTnH
         mzAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+fvOTsR;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b38si354386plb.1.2019.03.30.10.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+fvOTsR;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id k3so2677844pga.6
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1Pl9f6hQE5g9qqiucAjOh3CNgFdnfslDaHv13WX17OM=;
        b=V+fvOTsRkv758TgrD3A5mL7XNAqKs2iQD6C4zK3jUvlJAUihalvuwuLjAk14kkYHgl
         Mg5Iu8Vrg5+6Ow8mym/qUvyO7g5nZjD/vRbDl6218ijavARrSmOgkgBVRrmgf4eMWFwc
         beaYtX/JfgB65RwmAKVt8shKJYoa4eGvCbXKSAiYR80YcszZUS0LB8p2STCuG04JWsHV
         6C++4aMjUsv9JdwjH45bu1T1V4x6jnJuumU55GfzG+U6gCZL+j15gCzi4tTw7qlCCR6g
         Z+1rxGPdqb6/YO0BvS6ANiLVVjlXulvWhkS17ddcQrr29r50d5d3nKSI5cd9Ti7lfuSz
         bhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1Pl9f6hQE5g9qqiucAjOh3CNgFdnfslDaHv13WX17OM=;
        b=E1j6K7uTz1tr4/3MUhvJgqnHvfw1oNFvMdHs1xWiCEOp78xMW0bAC/p8VhOozHXLlV
         CHJmF+N2A4rc4BgubDNVq/pKJMs4q8gt2x+CiGNjHELHZL34lcJqWsjW62O+3/wba/u2
         Wtz8Mhnr1C8DrBvHcIsBTlSZm4QVgze9vxd6atRnZsJ5a0lV1Q0gY/rpUYIYHLgDudVz
         74IckHiF1FWum7ib5GkkKCFCkcJ972qHE/s1OhRruUDB66Kb66CxV7OoyxdVC8LAKYj8
         pVrFTHkLecE8Gy2Smb2gMY0Gxdrxudgwkx1lPMS5AI+Z5KWoLbdPc3ZgRHKhw9eokiM9
         um0Q==
X-Gm-Message-State: APjAAAWgtJrMMvXIv+K03cQ691iThVGjjqb88m23xs3cf6Dpuw86DBcR
	o3GP69cF0hkFiH83EV6QTHt8uoEa
X-Received: by 2002:a63:c046:: with SMTP id z6mr710254pgi.81.1553965948353;
        Sat, 30 Mar 2019 10:12:28 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:27 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 3/9] staging: rtl8723bs: hal: hal_com.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:50 +0530
Message-Id: <67501ecc706a99281695c1532fdaf6431fc97839.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 7f8ec55..151e4e9 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1389,11 +1389,11 @@ bool IsHexDigit(char chTmp)
 u32 MapCharToHexDigit(char chTmp)
 {
 	if (chTmp >= '0' && chTmp <= '9')
-		return (chTmp - '0');
+		return chTmp - '0';
 	else if (chTmp >= 'a' && chTmp <= 'f')
-		return (10 + (chTmp - 'a'));
+		return 10 + (chTmp - 'a');
 	else if (chTmp >= 'A' && chTmp <= 'F')
-		return (10 + (chTmp - 'A'));
+		return 10 + (chTmp - 'A');
 	else
 		return 0;
 }
-- 
2.7.4


