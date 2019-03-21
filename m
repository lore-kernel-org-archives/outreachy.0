X-GM-THRID: 6670853778972868608
X-Received: by 2002:a62:41cc:: with SMTP id g73mr3585264pfd.145.1553179179311;
        Thu, 21 Mar 2019 07:39:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls3103634plc.8.gmail; Thu, 21
 Mar 2019 07:39:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzsCqRMDljk62almmeFE+IqjNvFhqkOFVnGQLoIC+/6QHSze2clATZtqzmuhFORGf6aJz8
X-Received: by 2002:a17:902:bccb:: with SMTP id o11mr3948542pls.23.1553179178488;
        Thu, 21 Mar 2019 07:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553179178; cv=none;
        d=google.com; s=arc-20160816;
        b=DLkuYl8Hwv6lF5h0a3ttXOmt6/mzw8M9kh69h1TuAjG4vWIpQ2DLFB98EzozVf0Hvj
         olswMHIZoDbbFNqo65I08Sncx4y0zrBHlQrxSkmnTPCuKum9mKEb7p2FCCnZaM23YFyQ
         Tf9gkAOIClcY/GbFkUS72S4U3WoxufizMr8ga1fwMi4jspyKSLB8/JoUqyCtSMSX0xnE
         x0EGfa+3pDY0UFz0ltxODyYxxD+KsYdf/zkdKPqleGb/kGZvlkeO8f9YnO3hutc53i69
         +3WvRtdRrqFg0GSlPf4vIggPogxhO4Vq/TK78phgpIvThRO76nKKduM+HjBoGV5x1HIg
         84Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fmJWsJwSvaZwrWsMCUuA6LJH4jLSmndPJBwkfxjBnWI=;
        b=U3zh139DVv5h1xhhC67Fs/cLXPA2hcDKmHI4BRuAeFGsp0vdfdT+vE/rJf8eYcHeBP
         pfSOchiHqAk3UxjusQo0F8jOWNHrzhpYDLmrq6fCRcHDuFlplD9iQyST81qKeQk7wbKg
         h4lxD6qwJkfefqLUo+0MYlggs2h4QIi1SM62AMLQb0qz8cHaDX6adAj2F+i9MrXF6DHR
         42YZ1jCyZsC3CHhzcpzQHQMykzfzrx/gjrayfMeKJJreYiRkvoNAMYaFGfy4y/s51Rue
         InbCsAHHgWVn0BjC924bj5nIXN0zm7J9MCmdlq/Y62K3yqp7obbNKSmSNnUR7yqs3+ad
         sxjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GrBKI40t;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p15si262276plr.4.2019.03.21.07.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 07:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GrBKI40t;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id p6so4329304pgh.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 07:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fmJWsJwSvaZwrWsMCUuA6LJH4jLSmndPJBwkfxjBnWI=;
        b=GrBKI40t6HGUjqUkgLw0ut/HC6wPSER0dhkOJGc+gl6o88Khltc6RRAgmBzP/DNRd5
         495GiNzm6ONVKKW5+onESwQiAkNFoYMQc+TQoIEd8N6hMhXcd+aU1hzf4eIRMM/V5wKt
         TmstDFERiX1c78VPvJ+ijiKmFPurTjTbtqi3r+eetLhujvJLewthjruMO1RxE8q44w2+
         hxkc1tknBaiujKFCQ/re9URltS02NKQa1cscT0og1CIz3/jD7m4WnTozufIP9h7QPSxT
         tRCO2FSGRXGMxE2yyYCC492Vy3m8ZFAZEKeKO1Rk8JTXMlaxG5THSCVvwUqUWMRLql3b
         Fk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fmJWsJwSvaZwrWsMCUuA6LJH4jLSmndPJBwkfxjBnWI=;
        b=IHJVrjxluW4phHHIXHDSP+AO8mg3L+BfXPWtDJKgNPQA6BTDN8TieHJUcDVf4ENx62
         qUyTVl7qKkdCO/cicPtDL8op1FEzUORwiwQnWK0+zkVzsMNCHeu6bsOO7EAyK8yDs6Bb
         JjOZXhdxcq6YF40tVouHpDNhyP14i2d4nfhSTeeSjzI6bgEP3Dhm6hEsZmUnKnXkZFzG
         T3Xsmv4HF/6nnhRZa/pjbDJP6ol0OwHCKYkTbw3PRpEHeDpjN1P7VbNnBuIayNMIVFxZ
         FUzLXNk3w1DuXH1CQhkFrirHgjbXJrB7uM9g+4Gp/SmS89EsB4HZdlamx61IrqElz4Z6
         10jw==
X-Gm-Message-State: APjAAAVxZZoL8UPE6ae0774jzF/DeJZvc0b9chCtJP1s57Lc/b9+vA2c
	88cyJwCXkk4yUxNu91+PCQgaECmn
X-Received: by 2002:a65:63d9:: with SMTP id n25mr3669596pgv.243.1553179177915;
        Thu, 21 Mar 2019 07:39:37 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id 20sm7064525pgr.80.2019.03.21.07.39.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 07:39:37 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtl8712: alignment should match open parenthesis
Date: Thu, 21 Mar 2019 20:09:08 +0530
Message-Id: <1553179148-6216-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Align code to the open parenthesis to fix the alignment issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 39eb743..00babd0 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -353,7 +353,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 }
 
 u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
-			 const u8 word_en, const u8 *data)
+			       const u8 word_en, const u8 *data)
 {
 	u8 pg_header = 0;
 	u16 efuse_addr = 0, curr_size = 0;
@@ -441,7 +441,7 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
 			break;
 		}
 		res = efuse_one_byte_rw(padapter, bRead, start_addr + i,
-		      data + i);
+					data + i);
 		if (!bRead && !res)
 			break;
 	}
@@ -554,7 +554,7 @@ u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr, u16 cnts,
 		offset++;
 		if (!empty)
 			if (!r8712_efuse_pg_packet_read(padapter, offset,
-			    pktdata))
+							pktdata))
 				return false;
 		i = 0;
 		j = 0;
-- 
2.7.4


