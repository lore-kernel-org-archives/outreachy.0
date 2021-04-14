X-GM-THRID: 6950714578600722432
X-Received: by 2002:adf:d091:: with SMTP id y17mr40438436wrh.73.1618380833103;
        Tue, 13 Apr 2021 23:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:9a6:: with SMTP id w38ls496049wmp.2.gmail; Tue, 13
 Apr 2021 23:13:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4mWBSSMun7kUz0URg8PTABIcXt+fjG32rnSPIfIzu6Q0L4b/CIrcHDNzIJSS5OovgB3tz
X-Received: by 2002:a1c:1904:: with SMTP id 4mr1237847wmz.57.1618380831805;
        Tue, 13 Apr 2021 23:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618380831; cv=none;
        d=google.com; s=arc-20160816;
        b=mc6Qdsdlmcaai3Tf235B4fUTQv/XDEzqWkNlamwW3k8T6ACkurBLesF3r6eCNdrXtu
         nlN/hyVBPmF0/eSfZ0v6rUfZh9pJwfIsVOebzEcv/Vb9lTi/ybfbVs2gGJbuKo2ljqQ4
         pfpBvWY1m1du7hjx204Jy095/R8mtqH1zXE0m1kcFe+KsaZvT5ppFOH86GjPAoQ3HfW5
         Qd9MK8awAI5xJli79WTkHT7T0qBQ0neEkZx+5amCFr8owdVQB6VAVOdvdnPzpw0PCG+k
         +bmy6Yv8+aS964+71F18Ve2MnpdlHIcuUaNGcQhko1i848Xv2we+8LgKE+glQ+FiIlUD
         HhlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2OU2KfPs5ZLY9/eANVVEMxuGk0nOH0alcTehz44zqd4=;
        b=Q97v8QX09R8n3NqLWIy8JLHVv/7BgT5m1G6kNTpoLhLfpAdUns0xPfrCWfLNtuZV91
         EagfSIOZBgntQxn/qlqPfjq3SdlObN0+gUg5uJXUGKaF531kh35RBfMSy0Dpk33rDsAB
         G6u7kyg06D6icTYVoTuaKlqfakmHT+Rs25MSvSIRHij4aHHj3lSOsRaGiBJtfBWR8QeB
         OLGNBT81L2F5mMHdFg7Jqott5Xf+g7rspgn9+3TqGEGZBceedN20ju2TsQux92bzedBy
         +uXb0Kv86eYK/kjAi+Oq9Up5H2orR9wZJ5lXBCow6VkSWu2kRLjeryR7CUiVwnVLYNfn
         TTew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q34+3UVv;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id a4si1222282wrc.0.2021.04.13.23.13.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:13:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q34+3UVv;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id w23so22216779edx.7
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2OU2KfPs5ZLY9/eANVVEMxuGk0nOH0alcTehz44zqd4=;
        b=Q34+3UVvVMeRO2pDc0ZhkM5C6ptR6G9eG5qsdyekgxQftdiVVd9V1+4urI+xWpCQ8A
         PQUKFFxiX+TBAT78SVeiB4ByyQsmxu6zuco2JbD8ltFg1sfaQ1Vk4/aaHgj316KJD5mh
         mh25SVYcMnveSSdl9la2RpzBmyosmp2an4lWmAmXZxlTvpdRkEf1HE+aa5qyXCUFTR0h
         1GqX3v57HXeeFnxM8cAkVpRsXigpbrx3zhznG6qmPeD/+g0oMXKq9qD5BP7qhRBX7zFv
         B3LuPWFrKPCOYunZPAj5KzunwgJMmVOiczPYbMXlS20dJ8K7MMCVhQBbq88yTGAboJqi
         W5vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2OU2KfPs5ZLY9/eANVVEMxuGk0nOH0alcTehz44zqd4=;
        b=GPWoKW6PbTNvND4PIkd9ALVw/mIooo4bgUbmZq0+Ai0DME0oWQgE9lDGbpX95C5dYx
         8DcYQ9r/Bz7rpo9sfcLMRuZagGeP9NPvoJD5FuZ2GxNEdjLb12TpMF/04vRvxgqUAh7y
         xM8UR+EG8CMUqqYtfCBd30DTh4y0PJVaqECFU4Fhquo8wkII+/XBc0OVyQV9W6zYkzH7
         +8yur+OxG6d+Mh/CAjl7fnqH2B0kprM2xphUVjpfLZkXbhxYxWuAbEhTzVEFBD3AlU+t
         912tohxw6XXJqQI7/Syfp44Bx71e2ISxDay2FleNYF7YYXcmnImCOKJU/V8Tl6LMPZ5+
         zGPQ==
X-Gm-Message-State: AOAM530XBtgSH1RSH3YEwcKRMpsttG2yMeSf5QhsgktNmYqNzdlnuQTi
	1VhFx9K5j6zVbMscgRf5P+pR0hgvHRbldN67
X-Received: by 2002:aa7:cc15:: with SMTP id q21mr40158512edt.140.1618380831272;
        Tue, 13 Apr 2021 23:13:51 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id w1sm11384312edt.89.2021.04.13.23.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:13:50 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove four set but not used variables
Date: Wed, 14 Apr 2021 08:13:46 +0200
Message-Id: <20210414061346.11423-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed four variables that were set but not used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: deleted one blank line.

 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 77f8353c5ce5..63f7f673aefb 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3199,13 +3199,10 @@ static void hw_var_set_mlme_join(struct adapter *padapter, u8 variable, u8 *val)
 
 void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len)
 {
-	u8 seq_no;
 
 #define	GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 6, 1)
 #define	GET_8723B_C2H_TX_RPT_RETRY_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 7, 1)
 
-	seq_no = *(pdata+6);
-
 	if (GET_8723B_C2H_TX_RPT_RETRY_OVER(pdata) | GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(pdata)) {
 		rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_CCX_PKT_FAIL);
 	}
@@ -3357,17 +3354,15 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 	case HW_VAR_BASIC_RATE:
 	{
 		struct mlme_ext_info *mlmext_info = &padapter->mlmeextpriv.mlmext_info;
-		u16 input_b = 0, masked = 0, ioted = 0, BrateCfg = 0;
+		u16 BrateCfg = 0;
 		u16 rrsr_2g_force_mask = (RRSR_11M|RRSR_5_5M|RRSR_1M);
 		u16 rrsr_2g_allow_mask = (RRSR_24M|RRSR_12M|RRSR_6M|RRSR_CCK_RATES);
 
 		HalSetBrateCfg(padapter, val, &BrateCfg);
-		input_b = BrateCfg;
 
 		/* apply force and allow mask */
 		BrateCfg |= rrsr_2g_force_mask;
 		BrateCfg &= rrsr_2g_allow_mask;
-		masked = BrateCfg;
 
 		/* IOT consideration */
 		if (mlmext_info->assoc_AP_vendor == HT_IOT_PEER_CISCO) {
@@ -3375,7 +3370,6 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 			if ((BrateCfg & (RRSR_24M|RRSR_12M|RRSR_6M)) == 0)
 				BrateCfg |= RRSR_6M;
 		}
-		ioted = BrateCfg;
 
 		pHalData->BasicRateSet = BrateCfg;
 
-- 
2.31.1


