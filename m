X-GM-THRID: 6675208982241476608
X-Received: by 2002:a02:4f4a:: with SMTP id c71mr11021467jab.17.1554193203695;
        Tue, 02 Apr 2019 01:20:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:282:: with SMTP id 124ls1928827jau.0.gmail; Tue, 02 Apr
 2019 01:20:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzw3savlpryLicyUcGlT61SlXxQ4eL2LODro0qDD2PFWVYO+SLNmyB4rZb8pAHZW9j2GBAA
X-Received: by 2002:a02:b909:: with SMTP id v9mr605793jan.3.1554193202752;
        Tue, 02 Apr 2019 01:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554193202; cv=none;
        d=google.com; s=arc-20160816;
        b=wRjBXx9oKCt7MxWuuiJPML+lrvvfFmhu6CDCvblejQDYcDlSkTI+DMldpuo/PtPbBe
         L1q3XtZojX+bESJ8p0Pmkhk7N7J36wZbtjQ/1DZ6uPM3vYGlnNP8/xLCX7ienkxiDc7f
         1NxuRcQB1s+J0pAcnqBjRDMLOVuCU0KaYUJqxADT2u6Ab059N8A/dopYc4j6KhSMlpLa
         /rM5OIpAdYo+jahr7DKJOIRjJrqI3SPEH0hEfs6rdkyYLocr0PBjGzIGFMG0Y6WNM9wb
         /9l8fDD+liy9YatqQkKpXa9XiNOneHbJ6x4UWgMuc4DbJ+70+8ux73uKxOFqBgSUUZYK
         vQ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OiRBSN/DdKBwDfGG59Q+9ndnxs2iXJTjIH5tXq8YLqQ=;
        b=lkBi5cmygoOM9ENk7riKMcsfZ/e9VWQC3DNQb5RlSJcaRJnQyhxYEpUbNssMlA930Z
         EdRTYfmsL7Nz5PIrMg5HGkbu9HUPCwQUnmWAJplewPBVhlFA0TdHR7Mkl+u67IR9cbUh
         WEQZwAv/kFlGS+0mg/2feeQ3ftuNwaJMM6QOY4oUg6UKNEswPqHuYkmjhw7sNY+ifGYq
         5n9PkV0lsjD6LOzdZ6Fyhopwrd9ae9+Xpkezlez4X7exVgfcwsEMaRhfhMssQI8p0Wv/
         6KQEZV3KQ1n/gSwB+oAgIbHMkA8z/sKoK72f5aHvdpN4kYlrVs0EgAm1USJokaZolwIj
         XTZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RGiis0Rb;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.145 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-21.consmr.mail.sg3.yahoo.com (sonic314-21.consmr.mail.sg3.yahoo.com. [106.10.240.145])
        by gmr-mx.google.com with ESMTPS id e74si670890ite.1.2019.04.02.01.20.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.145 as permitted sender) client-ip=106.10.240.145;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RGiis0Rb;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.145 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554193200; bh=OiRBSN/DdKBwDfGG59Q+9ndnxs2iXJTjIH5tXq8YLqQ=; h=From:To:Cc:Subject:Date:From:Subject; b=RGiis0RbRtapMWONOnBDGoXVz3Ark4ZCCv0xydd9uNlmquSiuzFbw9rvF2LmxeFjFa6w/OvSviqS0RnotofWB+qLg5WnDK+VOKJoHNvR9XJzqLKK15icXJZfPq6bn7bIv/AbK8gfiv0O19KQXlgVRiSnxmozoxpScAeD0byb78Vw0Iwo7zAc/Yl9vSawTKWaX1W1ioh4Hd8NunUr/ztz43CD390QYAjkY7rK+d4E99bk0viufd2hnG5+ydlDGFbjzQYrO2ELZKQCCNYfcZw/h2TDccT2vdl4OYJD6yePjwqmK3eXAhIu7ZCupTDucf/SIGI7LRPDaL8mzXr40JettA==
X-YMail-OSG: Czbcp6AVM1kLW3WeQRoYvEPky31YHn9.sp1fiY1LJPdXp1HEP3Eq2DoMGbioFqr
 0hPcyLPmDdtFYP2MvWJHs2TNT1bqebjmEyyQ4DRtaZC3ycslRg_n7y4VAJBDBZhfGYp_.fAKTYfR
 e42poJjReQr8tRGwrFhILdhqZbsfqbFbmsYlW58Ts_dMuMAI_bcsdL.CtKNkbHOSNAvGOQ5..pBE
 UzPlAPWL8JZApt37ki7NCQoXiu.JMQ6qlVVBJq.O8DSRfHHwcJVfqvwIwviV7LzVw1yYlAiUv_2I
 c_bkj1Pe43ItrjvYrvlVeaNzQZSNDOenFqJsAcew4j2h6cfr4dUE5ZXTKeRzKpTDvzXKqBLJcx6G
 cxMRBC9pwnNa9RRs0PJU67e1y.O5X1YnQOtPeZ7dY_1Dhq4r6jZA89YkT3kuCBzVE3hOotGoiBIi
 rOcJ7rOXBHMGpqpvK89zh1t0GMoMX0lzf.mYQCbCruC10NFZ88iQL5Wm6L8R.YBs2K3Gqv3PEjIT
 OXVXlN3jQq60bp4HCFWwaAeZgyCgPkdR6Xpax7ze_zg_9jQR40OKJRqrdIqbR_EHLq6rfnsq9BCw
 u2oLs87kjqxaOCvFMAYAWGDNk3gJYNJIt1JJR_YgHgNCrjRpwGqbf90GmloCNqpEnnNMJhx10fsU
 jJTtMbMrQMqMJ2CsA41mHMz6of9bernr8AxnCSctwjOZqL0qiAP2Z_Ax6UG.lBKlD6Jf9jiQsT1V
 njmw_tynn4mvof15IHsRgB4v0yArjMiFQFm0XYaxNR0lDIDhy0KATxMXuFciNt.A6He7KYlE.GJK
 Nc6MAMqNBoUoMuymb_DslVjMYj0VmPLLbDYv0RFd7KL0L5I66uecpzfLPAMsYf7dSTDwx0nrztSd
 NsN9BIvoet.BfcpqYL6whf3mezbN4uLNT.JAGpTjtktEA16XvB3Wpl0YwpAKh29dy8TJseDmnqMQ
 BkaOfyvqkj46cZrhMjaOmnR.Y5tIUvOiQYyT_SWzQe2y4qNEHfXDUuJq9qF_Onl1BoVnEAJSJvMA
 jkjEjVEIJKBA8.7n1encd7uioiiVYA6bQtxG8xeGEASfmNTSao3pCTClquJezMjueAk0CP2ARa6a
 AUejSFo7kGYm_PUff2zYF_aoza0Fv6Ac-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 08:20:00 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp403.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 679b26ad6879254837b609cc4fb3e57c;
          Tue, 02 Apr 2019 08:19:56 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: rtlwifi: rtl8822be: hw.c: Remove parentheses
Date: Tue,  2 Apr 2019 13:49:46 +0530
Message-Id: <20190402081946.22590-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary parentheses around right hand side of expression.
Issue found with Coccinelle script:
@@expression e1, e2, e3;@@
(if(e1)
e2;
else
e3;
|
e1 =
-(
e2
-)
;
)

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/rtl8822be/hw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c b/drivers/staging/rtlwifi/rtl8822be/hw.c
index 88ba5b2fea6a..847bd3bcd1d6 100644
--- a/drivers/staging/rtlwifi/rtl8822be/hw.c
+++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
@@ -243,7 +243,7 @@ static void _rtl8822be_fwlps_leave(struct ieee80211_hw *hw)
 	u8 rpwm_val = 0, fw_pwrmode = FW_PS_ACTIVE_MODE;
 
 	if (ppsc->low_power_enable) {
-		rpwm_val = (FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK); /* RF on */
+		rpwm_val = FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK; /* RF on */
 		_rtl8822be_set_fw_clock_on(hw, rpwm_val, false);
 		rtlhal->allow_sw_to_change_hwclc = false;
 		rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_PWRMODE,
@@ -474,7 +474,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
 		rtl_write_byte(rtlpriv, REG_SECCFG_8822B, *((u8 *)val));
 		break;
 	case HW_VAR_AMPDU_FACTOR: {
-		u32 ampdu_len = (*((u8 *)val));
+		u32 ampdu_len = *((u8 *)val);
 
 		ampdu_len = (0x2000 << ampdu_len) - 1;
 		rtl_write_dword(rtlpriv, REG_AMPDU_MAX_LENGTH_8822B, ampdu_len);
@@ -583,7 +583,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
 			_rtl8822be_fwlps_leave(hw);
 	} break;
 	case HW_VAR_H2C_FW_JOINBSSRPT: {
-		u8 mstatus = (*(u8 *)val);
+		u8 mstatus = *(u8 *)val;
 
 		if (mstatus == RT_MEDIA_CONNECT) {
 			rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AID, NULL);
@@ -1912,7 +1912,7 @@ static void _rtl8822be_read_adapter_info(struct ieee80211_hw *hw)
 
 	/*board type*/
 	rtlefuse->board_type =
-		(((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5);
+		((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5;
 	if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) == 0xFF)
 		rtlefuse->board_type = 0;
 
@@ -2406,7 +2406,7 @@ void rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
 
 		rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
 		rtlpriv->btcoexist.btc_info.ant_num =
-			(value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2);
+			value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2;
 	} else {
 		rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
 		rtlpriv->btcoexist.btc_info.ant_num = ANT_TOTAL_X2;
-- 
2.19.1


