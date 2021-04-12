X-GM-THRID: 6950332332596264960
X-Received: by 2002:ac2:4541:: with SMTP id j1mr14968984lfm.89.1618250354730;
        Mon, 12 Apr 2021 10:59:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls206037lfa.0.gmail; Mon, 12 Apr
 2021 10:59:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzoyO7OhdARnyUZO3OrIYjVQrfj4GW8LiRNv9wjhathq6mA1coA81llEKnmOloOCDUFmjzT
X-Received: by 2002:ac2:44b3:: with SMTP id c19mr19117955lfm.68.1618250353281;
        Mon, 12 Apr 2021 10:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618250353; cv=none;
        d=google.com; s=arc-20160816;
        b=h3fxjAEkTx7mMLlQGHoOoW1OlCUUB3CnTvPtXHEsn6nDlmKVuVcrVJ8VHBdos0nBr4
         O+A1Vm1lTCohj8CeNmEZrkSkKBEl+kEbqzUG0Ew6BxZ8B1VdxxmuKLgKM3JBvF2ON6DC
         aiQ5NkJdt0Ij4QWone9k5+nghw3UgidNaks/JwcNXr5LS8TKnQ9EO3TSqcIl1UV/tgS5
         A+6g/W0eiixHRR2DBYzrNIGzH8OgYGmd8UfuDpZAF89+bKzkut47HuaS25IxjcTTDpvw
         fBKPoyLALeL+a2ByAAN/Iquo7BDLVu/rx85xILEuQnr2+1yLZR2klINu6XDEffAluDDD
         AITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HM2+WjgVNp2s8oN3ygCDI5DayIVOUQDYvbW2EA6ryRo=;
        b=Ca2fGGEN9JaYJns5MTkPhe/UaHV4Jya8z8+ThijzTlEVj950vsiX66a9y1VztKx602
         GPCxjd7Nr9WDzJMcMdQXnwrcS+Y4KRYw/7L8nAXBKPy8qgCoSR7kzhnDwSQt61zFNfG0
         jRia7T82BXTZ3krSp0gzCIeu3bS7SNFx6iNEYjQKRB2Qx4PJQnWyJMk3d+yRCLteIHWG
         wdsnHMHgMP503xpmHOEyx9C1xssQpRCNhx2f1MaqpIdoljZZzf2aGENMrBKxDFA/clbc
         rL+OB0SveUv4Qqf2H8SF0xfUABDuNkSuPHQ8O999j+i4ZJqXBuzywa4AOQFAIQkX3tOa
         DbBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=esLCFcZr;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id f7si511283lfa.0.2021.04.12.10.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=esLCFcZr;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62d.google.com with SMTP id w23so5914800ejb.9
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 10:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HM2+WjgVNp2s8oN3ygCDI5DayIVOUQDYvbW2EA6ryRo=;
        b=esLCFcZrPotVd1SoNfCXRoUwMhDLsk6XhgI8BfkxHlgIvZeIIFkMHm9MPiXdRk0ry4
         nUFxIk6MY43ZYqQ5VW3i05wa3dwgYOCVMl6kY0eTIkgojR/K43RpThyUbw8nT1rftzA2
         gHcn6X6Otvs0JDBuJLua8pgrUMuzG8TotjJxLojFmTr5A5nOpVr6KuPp0jmOYQAerHGn
         iRrHqwR77c6iTe+q/4e33w3Al2u2OCWsR3P9U5/hnjioM88JZLiGvswEHFyHnKxJeFOJ
         5lIX3dnlK4tGn0R1nOPZHst7nWwskGtTBA0L9en0Aej80nTKuV1FRmWfxMJchGxGuEAY
         qdsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HM2+WjgVNp2s8oN3ygCDI5DayIVOUQDYvbW2EA6ryRo=;
        b=uAdFs8ZsvD/pbGY1sPQa21OEaReiunjNuNP1wxCUW1tsAiSStJg7dM1La9lRbg3oNf
         qMwB0X3EW39s/MccaloPDBy+gT8iQRuIIg7wRrrIeHof+7/JbVKZnrowBPMP+DZC1dtF
         wwYCcBX4CuCml+fpV00a++HGiteGgcbTLVNdVoQWn1ayT8UeomjL+OkCqoe/keYiJlT4
         MOqQ8/N555zUgi4zfY1pXjDFmKq0bsBJQ72Q2epFnCq/oBunzoIhWmpSK/8Y4nUbiCtd
         AO3zflG6QR0TCAr09JIZ1iJpeKiWy62w8NqVELAIiqL2tPkLhl53KSrL6ETnF1fCRYMZ
         i+Wg==
X-Gm-Message-State: AOAM530afYA+PnhPRUr+HkuCg3kK92P43T7wuxjO1WSnQRnVM200PfWE
	QEWGOjBTidSVE8lreV7DYDhyofjVuylASwgc
X-Received: by 2002:a17:906:6a94:: with SMTP id p20mr28753434ejr.68.1618250352838;
        Mon, 12 Apr 2021 10:59:12 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gz20sm6300534ejc.25.2021.04.12.10.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 10:59:12 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/2] staging: rtl8723bs: hal: Remove multiple blank lines
Date: Mon, 12 Apr 2021 19:59:03 +0200
Message-Id: <20210412175903.17819-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412175903.17819-1-fmdefrancesco@gmail.com>
References: <20210412175903.17819-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed unnecessary multiple blank lines. Issue detected by
checkpatch.pl.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index 1ff2043fb2e2..4a91913e20bf 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -19,12 +19,9 @@
 #ifndef __INC_HAL8723BREG_H
 #define __INC_HAL8723BREG_H
 
-
-
 /*  */
 /*  */
 /*  */
-
 /*  */
 /*  */
 /*	0x0000h ~ 0x00FFh	System Configuration */
@@ -142,7 +139,6 @@
 #define REG_RQPN_NPQ_8723B			0x0214
 #define REG_DWBCN1_CTRL_8723B			0x0228
 
-
 /*  */
 /*  */
 /*	0x0280h ~ 0x02FFh	RXDMA Configuration */
@@ -158,7 +154,6 @@
 #define REG_RSVD5_8723B					0x02F0
 #define REG_RSVD6_8723B					0x02F4
 
-
 /*  */
 /*  */
 /*	0x0300h ~ 0x03FFh	PCIe */
@@ -355,7 +350,6 @@
 #define REG_BFMEE_SEL_8723B		0x0714
 #define REG_SND_PTCL_CTRL_8723B		0x0718
 
-
 /*	Redifine 8192C register definition for compatibility */
 
 /*	TODO: use these definition when using REG_xxx naming rule. */
@@ -365,7 +359,6 @@
 #define	MSR_8723B		(REG_CR_8723B + 2)	/*  Media Status register */
 #define	ISR_8723B		REG_HISR0_8723B
 #define	TSFR_8723B		REG_TSFTR_8723B		/*  Timing Sync Function Timer Register. */
-
 #define PBP_8723B		REG_PBP_8723B
 
 /*  Redifine MACID register, to compatible prior ICs. */
-- 
2.31.1


