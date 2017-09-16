X-GM-THRID: 6466298549228273664
X-Received: by 10.84.141.1 with SMTP id 1mr17050053plu.39.1505552453009;
        Sat, 16 Sep 2017 02:00:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls7994025ioo.47.gmail; Sat, 16 Sep
 2017 02:00:52 -0700 (PDT)
X-Received: by 10.13.210.196 with SMTP id u187mr5285994ywd.194.1505552452323;
        Sat, 16 Sep 2017 02:00:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505552452; cv=none;
        d=google.com; s=arc-20160816;
        b=fh+gbFwwahcpjS8DQO6He6iZgWunIcYzLJpcy+LxNgw5XBnnhrF0QPebd+798eqDoz
         WhLYEr/zpr6pYzjsTk47inJKRvsW6K9a3ZtUBru1YG8VJk1DW8YelLCciGg818rOrn7F
         i5dgH4rUmkOfAt8GosnMwQBVXr8MOIktUoxZ6FazDu7ZtyjtJYt2vY9gROaJu6l2f2Dn
         3pTyvYYPACO23wJKHADO6Lesl/nNQm+QnL/SlK6+FPG+xXtZdMfE/1RSM1E3JQkt2VAE
         HkxKhp2BwiWHTE8zdHTYsZd03PPlLZOHmm2UCDEKnGzXxaD08eLeksUlazUKGsi9/Qly
         Lfuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=6v0wxpPTPp0R286C30z5tNTXun4nGle/dNZE4GN8MfY=;
        b=Fc5Whh5eF4bV+qxxfbsyeIX4vMxcmsXgcplpLD3UBOYcm+IcIIe/a6hW1YKJLsR8zi
         1km7bceoBsRksQtlrVRor6CQBs8aedHeHQVxoSUxuD6YlR5snflUOuKB729liIryFHI6
         VMtpLdhDi70ETGJ9wLz6gQvoHqyh4ZklnGeGfH8aFSRXxIUFpmZ1rkmp05gxmEBZYqqt
         56jGxW2XRs8ySIXuaJs8gOtX5l88T/oNJlJ3Gvhv33EEuF7CdJCuAZ73LncThpuwXOLM
         Ii/KRrme61YEBU0HnK223q9tK3DOHuvuSDN0gc4K/26oV38O3MW14S7nXc+CrhXC80FI
         hr/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiTEYI1t;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id w11si120996pfk.4.2017.09.16.02.00.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 02:00:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiTEYI1t;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so2307849pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 02:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6v0wxpPTPp0R286C30z5tNTXun4nGle/dNZE4GN8MfY=;
        b=RiTEYI1t4dWS2TinHANLbmAtLbp5kaF5354eAkdVoIWlziLwIN63pLOERc3U3NvHRO
         g/zu/CIkCr+7/XuJGdNSHsB+BdFwEmaGgWTP5MDxDnj67lZcZlGuUTGkYmzbGEAQBiik
         x9CM9HS98Y5SLWNw/y8TR3XvMkIPhJ3jbHjG6N0N5FwqhqvMeN5KPMZcfZyTVXobFiPP
         MdxfIEenkDx354JJqdhB004O8chDSMolGob1nfpNu59XXXp5Rv4ntHiX/i8KIDT6xWfl
         uXACSNMF9HAovjOnTkLQJZRz/9hJl+4pY0SZMW9QlLX/ssQT1ZnzaiuQ6ebWgzDJnCsA
         5Rmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6v0wxpPTPp0R286C30z5tNTXun4nGle/dNZE4GN8MfY=;
        b=FzzDDG0D43szKVeXIpNlQLLecbGbiRKMIyL2gIxN20W+1GxuneeviesQXfpx5/YoZg
         J3VnRviso2/8pGzcMezL4jDALBKLBLrC/VJma5mTb7YCv6PAamc1YjRn+aPiCCpJNsHG
         9QL1pae9UWkxuG4BlygqatfJyAxEF2LksRIPzER0sbTWlVrrf87h0k1Q34CnYVbVV9xk
         UZmxjbnE56dphjp5JvpqFbz5A6s0l9qY7PwGOrsxN/9S/ocCaLyTHH8EmCVtZbD+NPZc
         5slUjMh/5smxe0JqvP8fqVlp7o1D3SOnVOqlK83YKY+FyWeAGZO6zBEUOKIJtIiAhuj+
         XSHQ==
X-Gm-Message-State: AHPjjUhqoWbQ3LnCyZJZjsHvdCnFOwp6/hO1Sill5r1wkEVTmfNWkoBx
	eMDhP1Ig+++Ehg==
X-Google-Smtp-Source: AOwi7QBmujYb2VAq/wO5tp2RnZrRAwgXApU7FMK0vqkqRg+akechoF4bKUzHIOg+x0oiAcvGV3htAw==
X-Received: by 10.84.246.197 with SMTP id j5mr9551165plt.164.1505552452021;
        Sat, 16 Sep 2017 02:00:52 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id r11sm5974396pfg.180.2017.09.16.02.00.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 02:00:51 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: add spaces around '|'
Date: Sat, 16 Sep 2017 14:30:45 +0530
Message-Id: <1505552445-26494-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixes 'use spaces around '|' ' as reported by checkpatch.pl

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 5a78c1e..aa9cdc9 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -202,9 +202,9 @@ enum NETWORK_TYPE {
 #define IsSupportedTxCCK(NetType)				\
 	((NetType) & (WIRELESS_11B) ? true : false)
 #define IsSupportedTxOFDM(NetType)				\
-	((NetType) & (WIRELESS_11G|WIRELESS_11A) ? true : false)
+	((NetType) & (WIRELESS_11G | WIRELESS_11A) ? true : false)
 #define IsSupportedTxMCS(NetType)				\
-	((NetType) & (WIRELESS_11_24N|WIRELESS_11_5N) ? true : false)
+	((NetType) & (WIRELESS_11_24N | WIRELESS_11_5N) ? true : false)
 
 
 struct ieee_param {
@@ -542,7 +542,7 @@ static inline int is_broadcast_mac_addr(const u8 *addr)
 #define IEEE_A	    BIT(0)
 #define IEEE_B	    BIT(1)
 #define IEEE_G	    BIT(2)
-#define IEEE_MODE_MASK    (IEEE_A|IEEE_B|IEEE_G)
+#define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
 
 /* Action category code */
 enum rtw_ieee80211_category {
-- 
2.7.4


