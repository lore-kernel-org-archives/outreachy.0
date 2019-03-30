X-GM-THRID: 6674191522051653632
X-Received: by 2002:a1f:3a8b:: with SMTP id h133mr5408736vka.4.1553956313875;
        Sat, 30 Mar 2019 07:31:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls864741vka.1.gmail; Sat, 30 Mar
 2019 07:31:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqztG3Bj/VAP7zB+DcNeAL0UtaxqVMnFfVB4EzMvVESZjWvQhJzbDJmTxaqlrzqw9Xqtfx8P
X-Received: by 2002:a1f:2f92:: with SMTP id v140mr5394974vkv.15.1553956313259;
        Sat, 30 Mar 2019 07:31:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553956313; cv=none;
        d=google.com; s=arc-20160816;
        b=d163HlbRzHvUK/DAPFIt7qAwD5+fSEXHnymQyoBvofIZYJCAszi1bx2M2xQ6zh9fyy
         EtAxIpa+Z7TtFQq6S5UTbsN3Kuh1/E3Y0mr38AxRqM/7qgvroVxUNgZYiZTLfKhQUb4v
         aXSJUsAwjETFjktZ0Urd49vJQZaxL1OjwxHTjWzVY6QHMA3qGF/hbeTDTIMAcySzLajt
         OeFnsZoDcg7CkM6Z6Pgmy+3aPZGoKaHAZ0T7Ro3Jc18ZAc9vg+c7wuFHO5wBA8Ns5S17
         6A/InI5YO+MpS0SSyBIVeIuZk7wh13vcQO+iJXcZIQ0we3j+c9K3+3YAvU53mbt+MhYV
         gscg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=XSbigfRTWO1O+ItLvnG91qzyIZ31FrEBRKl6MzBAqVs=;
        b=Hrl+cIDSgSCetFFnsmBHBRcrReFEXa2ibuAdxdGXBNRbUr+MXTtVpvFrso+oYj7dpy
         Xu34boojpzYIqtaX+T7wc3tlEEV01M/Ey4piSb87g97sp2/oYyLDafFH0ivP9bnql72s
         BlaGKg5beCWohefJ7ELLnnO8y91Y5ZCMFpTMG+WWTO3kSohLc+DXGygabKHuERlvQ9Yq
         epFg75tg8+9H0JK8h0H2mM250kLz8aHM8XVaczqJ3uGjOpWd0LhFQlh2iacwANmgCNVu
         F3UlpUKSYv1wofdcW5qzHc0KAE6yBAEhPySjKAPZNVruZBMCo6dRnhYlSAnaIw4TIQ4s
         93uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CfX631FR;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h13si346664vkf.4.2019.03.30.07.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:31:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CfX631FR;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i19so2403093pfd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=XSbigfRTWO1O+ItLvnG91qzyIZ31FrEBRKl6MzBAqVs=;
        b=CfX631FRmnY2kDMKuEiA/wWBUBsXEDUsrkEQsc4WBZiOctFbTOviWOoR3wKz6zjIQV
         A6CUbr2u85/h1leL+xcsGara8NkLnI4OXC9FVAsRzuNuVByMjWIf5oDlL77XEcM6AoLE
         9+6qvmmg604/Wup4Aw2yTjzVjn3ieKccGg6iV7JxdczO5UjzBZEZzwLtdumHIgSjj3Qr
         TPN3nkLXtcC11GnCH+sJiACStsmqpNMvmxPw5X43lq4SaLOHQQ5CwmMTT7Z2g+Vg5RBt
         tlF20zcpRAC1JOj831L18I4ECJSkhHMLJvPQPN38LTuIhtbybeGjg+IwItRY1mtmG9K0
         6+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=XSbigfRTWO1O+ItLvnG91qzyIZ31FrEBRKl6MzBAqVs=;
        b=ZEiJ9BnTZIPz5oLf09ueXyOmjzDVPxHep9OZFA1URrcpvYh4svXd2UfRMscpf7fHI4
         SDf1Q86CfpQNk8QmqREJY7Qd+1DhZsyAN7P/rP1/rkDiaGCAFURBa/4861q7rOWw1dAW
         uSPXzYlTd1H0fqhqV4k9SzIhC9wnynk+TWnN27S6Ums5/nXvNAHSTWnhqoPgo3G3Xkfe
         8Vrzdws1qF9cpfRoU/TKqjYmhyytWzew94+vzFz6RU9kbq7PaoJxdgJuUYYDpDxGDVJs
         OqVQ8ZySQGLRKxtxSMfYnmzjp7/t9uWgsv7ztjxcVJQqUkj+Q9LcQHcM31nXyEr+JaQ4
         y1Ew==
X-Gm-Message-State: APjAAAXtd754hqgfV0zuOx9GVigmpk7TDFZwlM/Mfcdd8taHbBbljywQ
	BHL24cfk3a3899o2xdEaXVxTg+fS
X-Received: by 2002:a62:458a:: with SMTP id n10mr54293703pfi.136.1553956312081;
        Sat, 30 Mar 2019 07:31:52 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id i1sm13330453pgc.63.2019.03.30.07.31.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 07:31:51 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/5] staging: rtl8723bs: core: rtw_efuse.c: Compress two lines into one line
Date: Sat, 30 Mar 2019 20:01:26 +0530
Message-Id: <f26c4b383ebd0a1f209dfda8b10ab3eec30db1d6.1553955183.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Return value directly without saving it in a variable and remove that
variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 33 +++++++++---------------------
 1 file changed, 10 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index eea3bec..3b88481 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -125,11 +125,8 @@ Efuse_GetCurrentSize(
 	u8 	efuseType,
 	bool		bPseudoTest)
 {
-	u16 ret = 0;
-
-	ret = padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType,
+						     bPseudoTest);
 }
 
 /*  11/16/2008 MH Add description. Get current efuse area enabled word!!. */
@@ -221,7 +218,6 @@ EFUSE_Read1Byte(
 struct adapter *Adapter,
 u16 	Address)
 {
-	u8 data;
 	u8 Bytetemp = {0x00};
 	u8 temp = {0x00};
 	u32 k = 0;
@@ -253,8 +249,7 @@ u16 	Address)
 				break;
 			}
 		}
-		data = rtw_read8(Adapter, EFUSE_CTRL);
-		return data;
+		return rtw_read8(Adapter, EFUSE_CTRL);
 	} else
 		return 0xFF;
 
@@ -378,11 +373,8 @@ Efuse_PgPacketRead(struct adapter *padapter,
 				u8 	*data,
 				bool		bPseudoTest)
 {
-	int	ret = 0;
-
-	ret =  padapter->HalFunc.Efuse_PgPacketRead(padapter, offset, data, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.Efuse_PgPacketRead(padapter, offset, data,
+						    bPseudoTest);
 }
 
 int
@@ -392,11 +384,8 @@ Efuse_PgPacketWrite(struct adapter *padapter,
 				u8 	*data,
 				bool		bPseudoTest)
 {
-	int ret;
-
-	ret =  padapter->HalFunc.Efuse_PgPacketWrite(padapter, offset, word_en, data, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.Efuse_PgPacketWrite(padapter, offset, word_en,
+						     data, bPseudoTest);
 }
 
 /*-----------------------------------------------------------------------------
@@ -447,11 +436,9 @@ Efuse_WordEnableDataWrite(struct adapter *padapter,
 						u8 *data,
 						bool		bPseudoTest)
 {
-	u8 ret = 0;
-
-	ret =  padapter->HalFunc.Efuse_WordEnableDataWrite(padapter, efuse_addr, word_en, data, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.Efuse_WordEnableDataWrite(padapter, efuse_addr,
+							   word_en, data,
+							   bPseudoTest);
 }
 
 /*-----------------------------------------------------------------------------
-- 
2.7.4


