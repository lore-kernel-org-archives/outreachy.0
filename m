X-GM-THRID: 6950714578600722432
X-Received: by 2002:ac2:5617:: with SMTP id v23mr23646415lfd.123.1618339349224;
        Tue, 13 Apr 2021 11:42:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3886616lff.3.gmail; Tue, 13
 Apr 2021 11:42:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwtHU2v/cCclIgPVFDDx1W1NSRBD8EYoQ0JbDxD3aBSq6Wj0JzM/M5p2uNX6+DOfXziwj7
X-Received: by 2002:a19:484b:: with SMTP id v72mr1154469lfa.429.1618339347604;
        Tue, 13 Apr 2021 11:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618339347; cv=none;
        d=google.com; s=arc-20160816;
        b=hWgB5tkBsJqik6CtYJFPmJ4q4rl9LxKpguuucuhGh9ukMEBxzPTV0gld44qOzyNMN5
         AFOP00KQdS7wKe0Q3YnZYChylH3FnNoFTy3DyLRsI++tkYYx06zCqP+X1+pE18d380Uc
         1xQmTXA4AddvJss7Wq7IjlKslNscD6kDICOQ4RFJOKMRsFyzqAbHmQxYmVmoZo6gEKp5
         O0961qu045teI++4gijnNgqnoDvNTcJyUS7WUUJx42huxBCbvCvLwTMEchDE78058cr1
         7exgKC9VV917RCNNcbrGzrDVetlGWpTlXfkiBdSq9VndU1BHZOvGHHFcWbJcdJHF5DbZ
         Fb0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=onqd5io8gO8TF2jNxNjVt3EUovwErpIeRRu6nXL6B/A=;
        b=rgXEcgxuvEEtTD7HdsjpDhVm4Dz6eDLw8ZqUUVUPJIeZOSMmkt6WkUcJgy8BrimU0M
         Yp4YKKhx+ta9/gOq1+OI0asmEEuHAL7jfO99ttb+DwHGMy/IWAJiBnisT1ZeMKO1v5dH
         LEQTL4NnfnXG8lxGRHs3JwqAd2dDjYUB9gvpZNXeBr2DuKO2/XLSXFeZ4gR6bG/9IUgl
         IKKsKJMIXKJZ8tM9oefJ4TYvdlmcCZcXqkR7vroJ/p4Lcd/DHGY1hTOfebXr1LPml+14
         3PMmJJxcVOUVqYWQl5Wo2uCH86zOoh03Mymo6gMDot7w/adq4olOmeuMSpAWwZ3OPh7b
         WLJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mhxg0jTN;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id z3si704928lfu.12.2021.04.13.11.42.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mhxg0jTN;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x636.google.com with SMTP id e14so27517088ejz.11
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 11:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=onqd5io8gO8TF2jNxNjVt3EUovwErpIeRRu6nXL6B/A=;
        b=Mhxg0jTNUUWW03BOheyo6id20xNDkcrvWCMKt2165RjRwTyHtQp6TIkWXBk8zsflT5
         1XBreAGHlLjubA6lUe3j5DD178ipOCTyVm9G2ZUEJS7sj0OvMG13oAJiVyjq1v1msG10
         AWJP1ztgBcnq59m1OU1UErs+VaipKPyOOYfOkWUysiO1R3CTO8wGJo3MHe/IlN0yZeMP
         x6lswigNafMCbF5QTg+Q6Tpe8ruS0BoUSfgkn4P8XLKMGK+BJk4jOK/8CRaT/XgKVU4W
         0VOvqR+xGIKG3g+a0ySDQDDNrZHI5PQEQBRMm3GM9VUV6zV6xTmFawDcAh+afTM0PjjH
         mtvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=onqd5io8gO8TF2jNxNjVt3EUovwErpIeRRu6nXL6B/A=;
        b=Al+J3b1l7GMh6YvW031nQyk2ovdmNCD5ch3MDXvgb3zQLrh7yFPpez6WC68mntx/9n
         DozpqRZBdEn+mktwtrB2GiuBmRiBD+rJIBB5631FLBATCiEWf6cOf6CB4KdXKjBCrWKC
         gCDIkqiD40f/EthcH48rUKVbn12geRCnZCVGs2hnlR+ALtaqiGJRV+6glg4fwOY42UBQ
         7NPAHAY/5ZZnHtY6gTrma6ehxyeXX8tkzNuQ0O7HkahD1mxorsLDMM6XWFhIZRKrvOJs
         o9VcNcKcMZ0T4N2kRtscjnQQW6JkK+bCr9KvA8EfxJZgoRoDBxlXEzhBDC5R9xfDC1U1
         xQzA==
X-Gm-Message-State: AOAM532kRnkX6dUcFo2g4EZl4xbJ4rbiZ++1TURimJWRxdRCavILmtwB
	Ckuc3Q3zUuMy30AWZquvx2uuVSRrCt7r798n
X-Received: by 2002:a17:906:3f88:: with SMTP id b8mr34519778ejj.36.1618339347135;
        Tue, 13 Apr 2021 11:42:27 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id d15sm8339776ejj.42.2021.04.13.11.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 11:42:26 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove four set but not used variables
Date: Tue, 13 Apr 2021 20:42:22 +0200
Message-Id: <20210413184222.19539-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed four variables that were set but not used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 77f8353c5ce5..fad6a3bfe07c 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3199,12 +3199,10 @@ static void hw_var_set_mlme_join(struct adapter *padapter, u8 variable, u8 *val)
 
 void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len)
 {
-	u8 seq_no;
 
 #define	GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 6, 1)
 #define	GET_8723B_C2H_TX_RPT_RETRY_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 7, 1)
 
-	seq_no = *(pdata+6);
 
 	if (GET_8723B_C2H_TX_RPT_RETRY_OVER(pdata) | GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(pdata)) {
 		rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_CCX_PKT_FAIL);
@@ -3357,17 +3355,15 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
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
@@ -3375,7 +3371,6 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 			if ((BrateCfg & (RRSR_24M|RRSR_12M|RRSR_6M)) == 0)
 				BrateCfg |= RRSR_6M;
 		}
-		ioted = BrateCfg;
 
 		pHalData->BasicRateSet = BrateCfg;
 
-- 
2.31.1


