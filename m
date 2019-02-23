X-GM-THRID: 6661198938033356800
X-Received: by 2002:a02:b432:: with SMTP id i47mr2131212jaj.2.1550931236773;
        Sat, 23 Feb 2019 06:13:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls1345226ion.4.gmail; Sat, 23 Feb
 2019 06:13:56 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibb3hvOG/zwyiQZjNBVlDEEJKZNtnbyu8MJwLf9O6VpUK4u8xIjcvTgRE2I8tbVXJdaH6TN
X-Received: by 2002:a6b:b281:: with SMTP id b123mr2483212iof.39.1550931236074;
        Sat, 23 Feb 2019 06:13:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550931236; cv=none;
        d=google.com; s=arc-20160816;
        b=PpNXgFeo3S0HkIeRXt4kJ5Ao1Wv2V48/78fFwRrhtmWaJsfqJ15t5nlfMdyPZwEYtY
         sZ5xGachk+3tmfz178K8EVaI3ATgOLwTfdqHnKTZdb2wvOl4HCskawUIh+wB4zyQtkwi
         38GuLWLagmawFz2abihiCiABKnUDWBoEk7g3E5um+M2vZ42pREUC+e7v3F4IMUar6aw8
         U+S5/9XpIysL+V42zWVU7tEM3Bx+EIntmkPE2YSQusC+hW+gEUkHbMrk+w1NaB4IAYAy
         oPJFzi1fbgyS0+idrwkOr11Q8rZUUHoxoOGQFM5inuuE1ehnAKd1nf76Tmdj1zgfxwhJ
         hBuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UN88xCPL2hAwUk5bAa1SB3jis5gWM1kstDVhAOz+ejM=;
        b=o7iaRmHfClvperJK6iMVH+gLcTsJZWlfXRtyF+DkOC5Bezl8XBh5SijjQKGodyP8y5
         vyFuKZCgwQ7eewoh2eAMFMa//IrXraCd4MoRG5SavZw3aAUvgBxtfQ8kkat3HvMHg/kW
         OTDXBTUetzXJ1rilggn3nabFicO7tLryXrcdDLOR1iA+bT3+EiF4YFrMqPnBNHAKspRn
         mwbIZYgRte/j3geCPUEOThd3DNc+sePFdALKTyCvG09HwjTT974u5B7W18XcjuSj7AJ+
         3A6riAJeKjiUcMSwl/ybV2SredC+iftXd5ojiTLk/bM+e44zyT+SkQuylHyt0Vcvmo9i
         yIQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FKoUfuy9;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id j6si263638itb.0.2019.02.23.06.13.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 06:13:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FKoUfuy9;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id e5so2408953plb.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 06:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UN88xCPL2hAwUk5bAa1SB3jis5gWM1kstDVhAOz+ejM=;
        b=FKoUfuy9C3h9HJmbCrCsGnQDBsqbG+fHOaQ5o/+DwbePnngtgSFF5xKf/H8YcwaqNf
         umwEKeRQTO86wNLAt2fyuGI19XxJYc/l37BIjL/w9g1eNW4FW4Vfs20bQYBDYayXVmx9
         Ohrv/Mu5mCAtkvGnD8Z+F9xrND9hni07xQPyjLM1qtO6yyVeu6C/XawYJ4SdQmZpsfPD
         a15Wo+UWXvcnhuqQ+LiIE2upb8BJ3/YFv71oxy0DgWVltjS5p4bgGupxqGNqDQ9vbvhg
         zdGIhAy7zbSzZh21NqCnyoCQvZXKo2HWUpnPWyYd8C1DSbLYlSDL+2CVXKueFvxMWYlL
         Qq1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UN88xCPL2hAwUk5bAa1SB3jis5gWM1kstDVhAOz+ejM=;
        b=CozPI+2eTlzkRHtPMd5QKm+iZwJK0HL4j2W+cKOuzV5F0D/vveVOmlIjwuVAvAkWyd
         5V91jLsfhPNvzbkRtSyP4PMEj6jzSivJzLGjVVVWNDc1UD0+k3x7bYu4xLcMwhNwFzaC
         ZhxjZCnx3b7TXo7cCP5mZ5OibzYYlY/gPXs8UGTq6JGazvPTlQc2Y8dEhOqwkU/snL7w
         ZcLTI68Bx5PVrjWXWFqRAoFmCud/r3RDv607AmfmWOpgJ5ItmKE1lqFs+Yf7YOkzhdrU
         3izSg9K5MDNEzEHC7TJCF4c/iECbpFVOYysM1zzKRLtvmMjqwwnqGUoRetlOr5grk7m0
         3aPw==
X-Gm-Message-State: AHQUAuZNgilJ6wrTbUGCTEov7xuuMYCaPYd+KUsn5n5r2STfXzfUzIu7
	EPTuzP5ZyXtF35Cls5wWXfYeHRLWGqk=
X-Received: by 2002:a17:902:9a84:: with SMTP id w4mr9741146plp.283.1550931235122;
        Sat, 23 Feb 2019 06:13:55 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id d188sm7021175pfg.98.2019.02.23.06.13.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 06:13:54 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rtlwifi: Remove code guarded by undefined macros
Date: Sat, 23 Feb 2019 19:43:35 +0530
Message-Id: <20190223141335.6650-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

removes the code block guarded by never set CONFIG_PM defines

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtlwifi/base.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index 35df2cf60619..88838ab9e428 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -423,21 +423,6 @@ static void _rtl_init_mac80211(struct ieee80211_hw *hw)
 	/* hw->max_rates = 1; */
 	hw->sta_data_size = sizeof(struct rtl_sta_info);
 
-/* wowlan is not supported by kernel if CONFIG_PM is not defined */
-#ifdef CONFIG_PM
-	if (rtlpriv->psc.wo_wlan_mode) {
-		if (rtlpriv->psc.wo_wlan_mode & WAKE_ON_MAGIC_PACKET)
-			rtlpriv->wowlan.flags = WIPHY_WOWLAN_MAGIC_PKT;
-		if (rtlpriv->psc.wo_wlan_mode & WAKE_ON_PATTERN_MATCH) {
-			rtlpriv->wowlan.n_patterns =
-				MAX_SUPPORT_WOL_PATTERN_NUM;
-			rtlpriv->wowlan.pattern_min_len = MIN_WOL_PATTERN_SIZE;
-			rtlpriv->wowlan.pattern_max_len = MAX_WOL_PATTERN_SIZE;
-		}
-		hw->wiphy->wowlan = &rtlpriv->wowlan;
-	}
-#endif
-
 	/* <6> mac address */
 	if (is_valid_ether_addr(rtlefuse->dev_addr)) {
 		SET_IEEE80211_PERM_ADDR(hw, rtlefuse->dev_addr);
-- 
2.17.1


