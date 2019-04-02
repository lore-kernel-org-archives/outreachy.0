X-GM-THRID: 6675288558686699520
X-Received: by 2002:a25:d156:: with SMTP id i83mr6421944ybg.101.1554211736993;
        Tue, 02 Apr 2019 06:28:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3185:: with SMTP id x127ls925265ybx.15.gmail; Tue, 02
 Apr 2019 06:28:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNWz8JohPbrEmEgdvLtWcIzgFzkw3zVbxdaA80AtJRi3Y/945ZgzsHk4YrSLM/iUVOS9i2
X-Received: by 2002:a25:e642:: with SMTP id d63mr8862174ybh.53.1554211736144;
        Tue, 02 Apr 2019 06:28:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554211736; cv=none;
        d=google.com; s=arc-20160816;
        b=rGnKfg2lqZ9uA6D/uPJ8zpkN/iIOKlJfEFzR+Vl1J+4+qz6foBDvQcjBYtgGkoCkEY
         IDiM6CQyLSAG+QuVR/Ynpw54OQXKqWUt3ZPL8miuqssV0QLra2m62aCNowLoYuMXSWrG
         D0F7AjbsxBaH3zfGMhFeXWcAk+jttmk3rfubk9BauhVoBs+HjTjTyBBI79+OR+J1dMkQ
         A/yixIaUFdFcJDvQt8tab0sq7NjXO8B48ylwETRWhREIPwBVPGjpIYT2l03emugt2eKF
         eBun5q7NLlcfkaXPDcGDQqv4CqNaZ0s8pHmosQrTWeL6lkQ9yO0bXlEA1SYWHEyfX7ET
         BmAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=wmVrPbFUW1mOQu9X5+yvMgXJrHGtGMz5m8NKVPCQAJM=;
        b=ecBnmUHcwnYbbpD1GHc8UROndLLFTyC56Rb8TbU/S29luGzCIyUQ3RESabsyfj6WCF
         2Qga4D6TLpA9V7KM/ETe7pln02uu8DX1fqrpIrJLoqKPcI4CTFTvHlUhmiobIpMm8DnX
         nvP+eB7PWBJG9pX56AFXQ/uxaPAqzeohauu6KFbUtqxcJcJNzrgs+pc7O/HTLd1h3BYJ
         xH6IbY+oH0waWunBA2yssu5Z/TkNvj33cptrUu9dWrz51y+HGm5COvcH46qcxWoviruL
         BS723mfDDtHazgZ5cYnG9gNlyj1RNyGhh26E7Jm4x1yg2b/IztGgq4xxwo4GG1JDCMy1
         AmNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GUieuN4c;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id l65si744599ywl.1.2019.04.02.06.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GUieuN4c;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id b3so3303606plr.7
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wmVrPbFUW1mOQu9X5+yvMgXJrHGtGMz5m8NKVPCQAJM=;
        b=GUieuN4cKZgcReNr4ug2smwi2dzLa3g4V0ecH9sdFL+x0yuZni8/uOoohia4nPYiRB
         vJH8eLTtUbHYPFwAWp9J9KTLrwmpVhvlHCmDh8mz52M3uVqgSeB+KcrorUbeLBaMEPpH
         dsGeg+u9ZeQRxSQcFyIBjeZsXgk0LoEWzYHFDk0crLP6USU5ai5Na0LAfjHgXNYMz2gm
         16lOTdtuRhp3Ik44cL1Gbdr9GfY12gi532MydKqbjWc97quJkSSvHTVZC4dqi2l6m7e6
         gZ3GEoIpZwtxa3aMpMYgOwvYiLM6FyU/Vs4INfGBOr3qTkxK6qpKCQfqnDK9eYPs7cal
         cUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=wmVrPbFUW1mOQu9X5+yvMgXJrHGtGMz5m8NKVPCQAJM=;
        b=QlFA+M73InIe7vF0vziNAtROKqFe5fFmHf9IxZ1lTBP+gUK38FbXeqBjLyXKAIKH3J
         rbF37VO0BUWTC1IJd19liBSXSWaTlzbHJThgn45JOJAbVhcTVSA/67aYkFe3trW0mjz7
         1Orka6AvgSHNkycm1dNzNpzORZtEKOP9opUwx3cT0G9QNUalzfdPGM+N4Z7b3EHR/jvT
         SOaTlXREKwg72b7x13FdYR9sNjmSh1zWr7vvM2emDvPTOZqdy8Fx/7ljiXiWwoju6Ee8
         er9zVrZmxp5cuvvIu+hocyyOQ057iQrNGsopdPgf73AgTbWxwAsvYVEGB+BjjaQ7oKBI
         6jiw==
X-Gm-Message-State: APjAAAVPnCb/6WvklgEwL6tH0psSmjGPYl/iks88UGwtuuUVDurzksBI
	rgXPkdNIipaVWacmVfyDI7z6iQT5
X-Received: by 2002:a17:902:d70c:: with SMTP id w12mr9944117ply.198.1554211735064;
        Tue, 02 Apr 2019 06:28:55 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id v20sm18768706pfn.116.2019.04.02.06.28.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:28:54 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/3] staging: rtl8192u: ieee80211: ieee80211_rx.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:58:32 +0530
Message-Id: <6c6b7d7504079e6ffc9e3de63d11e6add4c27fa3.1554211049.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 5147f7c..4aca149 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -2405,22 +2405,22 @@ static inline void ieee80211_process_probe_response(
 		"'%s' (%pM): %c%c%c%c %c%c%c%c-%c%c%c%c %c%c%c%c\n",
 		escape_essid(info_element->data, info_element->len),
 		beacon->header.addr3,
-		(capability & (1 << 0xf)) ? '1' : '0',
-		(capability & (1 << 0xe)) ? '1' : '0',
-		(capability & (1 << 0xd)) ? '1' : '0',
-		(capability & (1 << 0xc)) ? '1' : '0',
-		(capability & (1 << 0xb)) ? '1' : '0',
-		(capability & (1 << 0xa)) ? '1' : '0',
-		(capability & (1 << 0x9)) ? '1' : '0',
-		(capability & (1 << 0x8)) ? '1' : '0',
-		(capability & (1 << 0x7)) ? '1' : '0',
-		(capability & (1 << 0x6)) ? '1' : '0',
-		(capability & (1 << 0x5)) ? '1' : '0',
-		(capability & (1 << 0x4)) ? '1' : '0',
-		(capability & (1 << 0x3)) ? '1' : '0',
-		(capability & (1 << 0x2)) ? '1' : '0',
-		(capability & (1 << 0x1)) ? '1' : '0',
-		(capability & (1 << 0x0)) ? '1' : '0');
+		(capability & BIT(0xf)) ? '1' : '0',
+		(capability & BIT(0xe)) ? '1' : '0',
+		(capability & BIT(0xd)) ? '1' : '0',
+		(capability & BIT(0xc)) ? '1' : '0',
+		(capability & BIT(0xb)) ? '1' : '0',
+		(capability & BIT(0xa)) ? '1' : '0',
+		(capability & BIT(0x9)) ? '1' : '0',
+		(capability & BIT(0x8)) ? '1' : '0',
+		(capability & BIT(0x7)) ? '1' : '0',
+		(capability & BIT(0x6)) ? '1' : '0',
+		(capability & BIT(0x5)) ? '1' : '0',
+		(capability & BIT(0x4)) ? '1' : '0',
+		(capability & BIT(0x3)) ? '1' : '0',
+		(capability & BIT(0x2)) ? '1' : '0',
+		(capability & BIT(0x1)) ? '1' : '0',
+		(capability & BIT(0x0)) ? '1' : '0');
 
 	if (ieee80211_network_init(ieee, beacon, network, stats)) {
 		IEEE80211_DEBUG_SCAN("Dropped '%s' (%pM) via %s.\n",
-- 
2.7.4


