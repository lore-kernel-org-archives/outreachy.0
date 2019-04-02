X-GM-THRID: 6675214855900758016
X-Received: by 2002:a05:660c:f8d:: with SMTP id x13mr7339937itl.5.1554194571656;
        Tue, 02 Apr 2019 01:42:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cc6e:: with SMTP id j14ls7839jaq.8.gmail; Tue, 02 Apr
 2019 01:42:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzsMI7qKPQ4dvbfNwXWk68DIgpoogp5NVFH7fdyAHpal/vKQmq7a3x3QXWep8yXFwbvvJfX
X-Received: by 2002:a02:a490:: with SMTP id d16mr1455407jam.5.1554194570695;
        Tue, 02 Apr 2019 01:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554194570; cv=none;
        d=google.com; s=arc-20160816;
        b=hE+tN0EfCO8rJPMcZi406vNnNcT0WidGCl9qrxXL4kVX6GaaPdypeML+qeKwcP00EQ
         Ce4BxEXMVfpfJ0QkYyKeh1knAEqWZI8ukXYaoak8Gw1LsfeC9yX1GALCii3bqxWDygVE
         wdVxoP4EQOWBVY0O4QOQj7i+rAg/vjIV0OAqkqd7GI+ZyyRWFA0QmltFRfLzv9UW7AZv
         TVsS/cA4XRetx4yIvg0NAiVPrhnpAcjZbQOXXobx5CxLMTXurUMTRFKY/LwAqFw5Rbyh
         O0xDMDHinwrL+fhsAAZ0bYmlWstUHNUxqVvwEhqJO1YkKqJNEJlNT/+i7WnUQepq3ZEY
         mxMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QENox6L2PiEvizhyg0SMkX7WX+Lj+oMiAV2e0k9/rlc=;
        b=jYvNtFVnIQMur2VRrEMdDxyLgGZpGhIm8SfXzYOfafvhpbxSdCUD5w123tdst889KO
         0zYB7CnoTp3p7jpOYnNcQ2pP9cdCULl2PBdIK2KizNdAyfCXbqPkvzGvV7xjtteIoV74
         eUfP50nKipf8mMKu8jUoq8A9AVuRkMJQYdTyoUXmXtVnRRDUp7W7knrtclQfC6By0rpq
         fRF7F1ibBpZdzepP62U8nPcOq3RyNJcGkfcems1gt0kRuImgAh0HVNOnwaAcIVu4bIvX
         vLtL4BIjFuZRFHLNA72wgIhWm+oCNLfxKJwJ8yt3bjGxK7ZmaOSZ9Zrluz5yfXSa03FE
         /sfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=lWRIv2Yh;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.82 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic305-19.consmr.mail.sg3.yahoo.com (sonic305-19.consmr.mail.sg3.yahoo.com. [106.10.241.82])
        by gmr-mx.google.com with ESMTPS id 196si1599411itw.0.2019.04.02.01.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.82 as permitted sender) client-ip=106.10.241.82;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=lWRIv2Yh;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.82 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554194568; bh=QENox6L2PiEvizhyg0SMkX7WX+Lj+oMiAV2e0k9/rlc=; h=From:To:Cc:Subject:Date:From:Subject; b=lWRIv2YhxBwTsSzino0ZvaAcWfrwDjUirTEsXUVWXUDJUc9jmgMcGhGNgshQFZJX/7nGVNEhaZ+w9F1Tfb/YLTPGsNvpQs4S6mdSptL0Gb4rul0JW5usWKb8Ttw8u9OqXQmDTAc5pG2ARzgMIG4a/MzIIY4RdssIw1BsCFQBC8U1YJpY9r9+6wUJdcvLRSXsK3bbF39UOJQlu6au6vkLhtZcI+8KSQFzCalQOMtsTtVBzsI/HX8E0qlvNcxuT6Zja/TKJLgLVwUD7uXEw9yqR9WcZKNxIxZ6BYQCQu0EOkEVfdCJgba2ddyXJVEQziMRmUeCfIYt+avfcmZVTV2zxg==
X-YMail-OSG: 8l6tu_kVM1mWGkH31BDwbIN0x628zJ_dyKpQcM.GNnq7_mIpuFeqOd7Tz.3sGId
 U1wjgH0Ls30oQKR6EZQwU0c5.bWziLX83ARUwWpa_X_a6SxXQjBa4P6EmB3V66y9.WLK6w1F7yK7
 c7MnqjMCEw3ncIsLwZlL6dqoUIiIzElQZvMbsDmBwh61SKXeqtHaB.2AqZTcJqwIXcM6m9ApzGxR
 LMbhAnI5uvm.tXYtTatTqcuN9tMUYnlu2L0c4qGZvIY7SQIwFD1EGBphewwhkVYtN0ty8RkhMhtI
 v8lyizxX7eUDVfbIvpz6QpFa8OVB63JWWJODi2X2QpRYwwnJ9moXOMVes7ItPJwftQ6JdwRWozyN
 v2S6c4x.xDjFc1HnEyKFNJjFSHA_4eBa3PUkC0TAO_5fclrOnthWqbH8_KZzYdvx_aJoPtVh0iID
 HwQ_cn6PeXMRcQ5cOxvnYS2Nrz_98pvnlIMYg4NLrrMLSUheh90_KEQ2UOFMlSdHwzKOQjRbwrzK
 zUlDW9V1U_UL80HlU4ZMqXYiv8lvMkFVf5GK0x_VwvI13U9XQpvd0Q74zpH4iksUttZKkMCuZAkO
 m_KoY1zrDLOcCqI5QLvRNQK79KhKAdFrE9Fu0nXJr5FF60rBEdb7R7DS6WEspvyOU0zJNfXV_Y8_
 mrqFF0VeOEJRkavWQOCPAmd4xG_B7Lr8a3C2jzyyrIEyepWxSYLouXYTrpILebeH7mLp1nkclkNu
 WvN5QU63JHH3a8BgRXZCLKUQsBggBzrW9dI28hovPNBM22bI9ZI97_k26rAbA3p2IX5wFscMonFg
 CWrsm1WhINWYzX.K8gzNUyd.XyXBtu8ww2J.DTXAg.OIEpCrFkQVti_ujSu6TLFYa2EgTePNKQX9
 kCEy0hgpmXnczrte7FqfcrZhpJAfbEUG5n1rdh4hf29lpdv5uRv4EmX75Loz7VrBXIwApoP25Dxz
 1NywjdWtidD1LK5gOsJF7ZWaDriwQsnJWei2zSkF34eUmtkQ3sVhjMipEwtRoHKoUpB9ztRXJiOP
 Gqnde_f3xMQeJ7ZKA0WEWXZ0BuOAQouprWy8NVlvaXiL6PvNb9RaXFMt3cfxI5t6M7f0UxQCQKa7
 MrKcnoLll35SsHcPYcFCIhOVhGDiusKo-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 08:42:48 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp419.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 318b30c6889f0aef6a508abacbecc362;
          Tue, 02 Apr 2019 08:42:47 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: rtlwifi: rtl8822be: Remove functions
Date: Tue,  2 Apr 2019 14:12:26 +0530
Message-Id: <20190402084226.26645-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove functions _rtl8822be_set_fw_ps_rf_on and
rtl8822be_fw_clk_off_timer_callback as they do not appear in the results
of `git grep` and the driver can be compiled without them.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/rtl8822be/hw.c | 15 ---------------
 drivers/staging/rtlwifi/rtl8822be/hw.h |  1 -
 2 files changed, 16 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c b/drivers/staging/rtlwifi/rtl8822be/hw.c
index 847bd3bcd1d6..3015a26f23fd 100644
--- a/drivers/staging/rtlwifi/rtl8822be/hw.c
+++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
@@ -219,21 +219,6 @@ static void _rtl8822be_set_fw_ps_rf_on(struct ieee80211_hw *hw)
 	_rtl8822be_set_fw_clock_on(hw, rpwm_val, true);
 }
 
-static void _rtl8822be_set_fw_ps_rf_off_low_power(struct ieee80211_hw *hw)
-{
-	u8 rpwm_val = 0;
-
-	rpwm_val |= FW_PS_STATE_RF_OFF_LOW_PWR;
-	_rtl8822be_set_fw_clock_off(hw, rpwm_val);
-}
-
-void rtl8822be_fw_clk_off_timer_callback(unsigned long data)
-{
-	struct ieee80211_hw *hw = (struct ieee80211_hw *)data;
-
-	_rtl8822be_set_fw_ps_rf_off_low_power(hw);
-}
-
 static void _rtl8822be_fwlps_leave(struct ieee80211_hw *hw)
 {
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.h b/drivers/staging/rtlwifi/rtl8822be/hw.h
index cf3536113f06..0e4decf64aa6 100644
--- a/drivers/staging/rtlwifi/rtl8822be/hw.h
+++ b/drivers/staging/rtlwifi/rtl8822be/hw.h
@@ -51,5 +51,4 @@ void rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
 void rtl8822be_bt_reg_init(struct ieee80211_hw *hw);
 void rtl8822be_suspend(struct ieee80211_hw *hw);
 void rtl8822be_resume(struct ieee80211_hw *hw);
-void rtl8822be_fw_clk_off_timer_callback(unsigned long data);
 #endif
-- 
2.19.1


