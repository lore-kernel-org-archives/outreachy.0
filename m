X-GM-THRID: 6250764782783168512
X-Received: by 10.140.242.214 with SMTP id n205mr6569781qhc.14.1455369610372;
        Sat, 13 Feb 2016 05:20:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.202 with SMTP id s71ls1080519ioi.85.gmail; Sat, 13 Feb
 2016 05:20:10 -0800 (PST)
X-Received: by 10.50.7.6 with SMTP id f6mr2923943iga.2.1455369610091;
        Sat, 13 Feb 2016 05:20:10 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si2015683pac.1.2016.02.13.05.20.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 05:20:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id zv9so735908pab.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 05:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=lQhT5d+AjPE4GtSC4kYrmiavWZQjaYoTkvyB7DX172E=;
        b=x+XBtZ8rUndGv7bJ1tIbVW68FD2gEqQhc8g2bzngxEKrZOTnbrowmVcyygYm9g0JLU
         i1wjHhcLstPFN47DhdGnCz5D7G08uhzDGkWpKkJFEC6ATXCn9xqaMxTT4ShJFxKQFl1L
         kxjQK5e/BHjxmGKzStiWr9fbPX+w1mae+mwXpQrxWx+l4RGz9LDhaHS+Zk/RIurkm0MR
         1Jbes5QprDEiz1cuIJs6XZBy+Eyhc+DAnbGdJ30fQyk+DJHOs+kz4h6lUzJrkJL8NAGQ
         Ry4NzyINWZRHDZZjmFIANJW7fLCqDXvGV+fURlF8s0vaSHdasyftD5IGQgb4n2h0x6Oj
         gNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=lQhT5d+AjPE4GtSC4kYrmiavWZQjaYoTkvyB7DX172E=;
        b=EACOYcYDCsna9znDkkXVy9E7sUKNRHXnk4++snWZmhZ0iapcScrGzIet/kjsK94Nzw
         XyEDzWxwM7GdHuM3mNzpQmU9rzT1jnJlpgbgSlUwlu5cP4XqRzI3UlxtqYWpNiK8eCS5
         ycdNqDYKNqBUZ8Qf+BxFX3eubW3Hvqdi1f2J1pu4DTEAvDBqg2HklbLxILMjCFoVimSX
         7XWd2Toz55AOMoCDNxFnY5E5yh90mLjTJoy9FTzVyU+AIKv0DaHvNx5U3me46M0bdbu2
         tcGnTMPUzK6hk4eRHWznb9ONAYvEfQMVa3kMHf7JYtiUem0BQP+bTGdV1FKu5Oc43dfQ
         znMg==
X-Gm-Message-State: AG10YOR1iouKPJ1PvqgvZRaq6UbTwLyp2AH45jUx5ylOJLkutPokKfRLkh54TZSDprK/Ug==
X-Received: by 10.66.225.177 with SMTP id rl17mr9744309pac.46.1455369609982;
        Sat, 13 Feb 2016 05:20:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.191.38])
        by smtp.gmail.com with ESMTPSA id z5sm26356405pas.29.2016.02.13.05.20.06
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 05:20:09 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 18:50:01 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: wlan-ng: Remove function prototype
Date: Sat, 13 Feb 2016 18:49:35 +0530
Message-Id: <68f67ba92ecb794dcb81bf523537b98df30e5d91.1455368638.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455368638.git.bhumirks@gmail.com>
References: <cover.1455368638.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455368638.git.bhumirks@gmail.com>
References: <cover.1455368638.git.bhumirks@gmail.com>

This patch removes the function prototype for prism2mgmt_pstr2bytearea as
it is no longer needed.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/prism2mgmt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.h b/drivers/staging/wlan-ng/prism2mgmt.h
index 7a9f424..e647203 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.h
+++ b/drivers/staging/wlan-ng/prism2mgmt.h
@@ -87,7 +87,6 @@ int prism2mgmt_autojoin(wlandevice_t *wlandev, void *msgp);
 * Prism2 data types
 ---------------------------------------------------------------*/
 /* byte area conversion functions*/
-void prism2mgmt_pstr2bytearea(u8 *bytearea, p80211pstrd_t *pstr);
 void prism2mgmt_bytearea2pstr(u8 *bytearea, p80211pstrd_t *pstr, int len);
 
 /* byte string conversion functions*/
-- 
1.9.1


