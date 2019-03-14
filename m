X-GM-THRID: 6668378512224681984
X-Received: by 2002:ac8:28c9:: with SMTP id j9mr459938qtj.21.1552602861188;
        Thu, 14 Mar 2019 15:34:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6b82:: with SMTP id g124ls3174667qkc.3.gmail; Thu, 14
 Mar 2019 15:34:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqye5WKhK9+5PG842QApTeO+b1RhcLDy/O/LevN6gkhhBRnjTdSRR1IonF+o5RVsxCfr4vH0
X-Received: by 2002:ae9:ee1a:: with SMTP id i26mr335531qkg.56.1552602860433;
        Thu, 14 Mar 2019 15:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552602860; cv=none;
        d=google.com; s=arc-20160816;
        b=FHT2voZ70sGTW2BTAE8sLDyzqy65jAGlgLTwDD39onQtQyQrf5Gs2hg8lnT+cO7s99
         TCEImvUZLuJfKt1DMcCkCAVznvHGNaz+77dz+qbLjW/eqbkB9ykbO4c9c9R17SkCeK3y
         sb8H+zuYjl/mS6OeKBctiY+iLkCIQyrwbAF6tFVjJiLYnZVb0srDkD4sHjRd/Ms3YVlS
         9uNfThT/H2zfNmZ9YQctTf3t6ITtu61RGob2xyBYMete6ITvpxV3kQxwcgdDYQU95iL6
         rFyNInpakM7chs/1RNuPZ0C2iDIOVGh6SCefFcv0SAJhidI0Ug5heix/31uPt6HnnbCh
         8eyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nts1pJX/8s4sXlYbmoQ2PV2HynuCL4AHJ6KMAq8fydM=;
        b=BHLMeHMCIsR/RweoQs9sYld/aFdC+XlW+fN/6VDmeVSGWT950/Ge7+E3Fkv9a1Izzi
         0AlVJqfTzuSdgx7rnigh64s8KTlF3faJlVElAUgvGUTwI7+coK6bG+t7Z9fuGpSvnt3N
         +ZhEnYrGOMX3SoUH2y54MVv6fSIwHrSM+rFemD1ptAs+0Sga/CMP6DEJNoNjbEA87CjV
         hMkuWL9R/4dJsfoLPWDECjJLvF6NtybZLEL6p2TjXgs0ZcO3aoAhPEf8zEgUFVDj9gaM
         ri9L0iKts97OtMCcdsMo6dt3LJ43DrZk5/2S5B8ZdMmQfjzff7r5A1oRmoSgSNQGR6t+
         CJWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HE0B/cjj";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id 27si24251qtp.1.2019.03.14.15.34.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 15:34:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HE0B/cjj";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id t82so5761112oie.12
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 15:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nts1pJX/8s4sXlYbmoQ2PV2HynuCL4AHJ6KMAq8fydM=;
        b=HE0B/cjjbWLqhZIXneKSDHNtW/2L/pXvl5qPDxRY82mqFKUp3K8q2xL2PFHZt84Xca
         aWUy7dyifXGiOAozLoik+kVna5DoXxb/0p9yHbcggQ57QrtvekO6DeXDRaRwxmen6WQ0
         904RjTb8VX/vA0zWRpYl3JcbINU66f0SL1DybZXLOT6aAkxA/6gFK0d5ndcu3yxilpVK
         q7z1Edqs1QqWiuRMiFYrcMJPj5lQdf9wtwwqKNY/oPu7Ize9BI8ErUL14n9gpIqKQ5Y3
         xq0ut+pAH9vdZVpzsZhZT1i4Dx2q3aG+KSmVW9jH2exYihrGi9scs/jgOHZ+JSdIgfB0
         MzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nts1pJX/8s4sXlYbmoQ2PV2HynuCL4AHJ6KMAq8fydM=;
        b=IYBn+ZRNe4RwlYGgi9Acz0IGEjH8ASwJeCjfn6jLt441KjdXT5WrrOkV1BmNUphqOn
         4RVKU5NS08b0QZFNApT5JA8bC313KdG8e4/qQQCpaKeHcvRPdfIBxyxi4PlV4dhKz9U4
         RPb6Tye4F33GJGnCLDokkVIdgE0LDovzlOlHySc3Nohi7x18ESRwwhsgpTN5JbcvpgSI
         /U9ODtOLuzhOFm4I1pVsIKwO/4RHn5KYOgY/Ik+SsWrPCWRhgDDAa6fy79gi18GHFJbB
         AGuSGbdBckCJUpj/5smPIsn4Fk3iVxlgR23PhQJiHDYqc9f5Bh0Vz8LVsf+35E+ftfoI
         GkaA==
X-Gm-Message-State: APjAAAWvYwwqJ9r320y47Wo9ksyr4w60HDtzyfg/6g7cYbYxPgwzzXFO
	5dPHffQcrHv9FBcbuCzDFEvJAJ74/ZM=
X-Received: by 2002:aca:bbc6:: with SMTP id l189mr25253oif.11.1552602860087;
        Thu, 14 Mar 2019 15:34:20 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:206e:2013:2a4b:1043])
        by smtp.gmail.com with ESMTPSA id c131sm122192oif.3.2019.03.14.15.34.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 15:34:19 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8723bs: Remove functions and replace return types
Date: Thu, 14 Mar 2019 17:34:16 -0500
Message-Id: <20190314223416.3994-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

- Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
purpose is to call the other functions _rtw_init_cmd_priv and
_rtw_init_evt_priv, respectively.
- Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
rtw_init_cmd_priv and rtw_init_evt_priv.
- Replace return types from sint to u32
- Replace local variable 'res' data type from sint to u32 in both the
functions.
Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
 1 file changed, 4 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca3bbad..d8c362947dd4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+u32 rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	sint res = _SUCCESS;
+	u32 res = _SUCCESS;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 static void c2h_wk_callback(_workitem *work);
-sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
+u32 rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	sint res = _SUCCESS;
+	u32 res = _SUCCESS;
 
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
@@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 	return obj;
 }
 
-u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
-{
-	u32 res;
-
-	res = _rtw_init_cmd_priv(pcmdpriv);
-	return res;
-}
-
-u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
-{
-	int	res;
-
-	res = _rtw_init_evt_priv(pevtpriv);
-	return res;
-}
-
 void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 {
 	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
-- 
2.17.1


