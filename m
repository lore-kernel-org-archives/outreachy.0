X-GM-THRID: 6615237556487323648
X-Received: by 2002:a37:7382:: with SMTP id o124-v6mr14308915qkc.2.1540230132398;
        Mon, 22 Oct 2018 10:42:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3722:: with SMTP id i31-v6ls640722qtb.14.gmail; Mon, 22
 Oct 2018 10:42:11 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62594SWKMwaWJvBuvagfJBhDiRZJQBG9Wp2hGx6j1stbgkxvBDLNGZcVG1uwmYGWl7yI4Qw
X-Received: by 2002:aed:23ac:: with SMTP id j41-v6mr36088409qtc.5.1540230131887;
        Mon, 22 Oct 2018 10:42:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540230131; cv=none;
        d=google.com; s=arc-20160816;
        b=ff9s5g2YiBPQXWeWtGaSiMyu4BSE0SgKZcfBKkZbtCDDVn5qk5jUjWEbhfa6MUBtYP
         guWqFne6N2oTfw0OKcv0AATAdFdcH2seX5lFMZPxCi+NRWt6ywDYggz5F7whD/dFcLiN
         MEItbRqiAnUnEkQLPfXA1gTGGFQtbcTm6jNfwWt0ukqiuE4cPUlTWYVGzAKXjfof3f/2
         fLrc0ZleyhJ2JaP1OxvJlqgPDwttvV9725vfmkfAm1HBoKc+lzu1rekAykQ0H2nyWx/H
         YFhi8TIbGV+ORBP8lWNGiazMLEY1ncLYALlYqYwD4HRBSy/kT9QypVnWFqLfWtNtGmbG
         F+qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fVbDii/cR+hIZqoabie3eEVRjIVV9aOoFgcwdH+7BUQ=;
        b=pbc5y6R2VMSy04yR0jLIdtgbrKPejqreQkxyb0+tCbM/zxYaBqlncSr6BQS+ia6F1e
         NIO5KoMHTwx9Z0A71KY++WEmsz8uwWfwLYsrvfAICCUo0oLcYDg52xFDb3l7ht482pBk
         X7Vfw7CaUe+r4YKtM/OGupKzvzxXr+uPS4GEojDNPzU+afDwHpfHZdzAwrvIQCP+LCXf
         OZyQx6eXzOWi95t9/Qt7dK9SNf7GAbs68QzphNv2oRQMkLSnQi2WghVRdYXIT+mxzxWw
         kZDvtMqiY5GtM5+2U7L7xWBhi1RNC0cYq3kp1yc1Yp47pp1slKFgVhC5B+5LqkgiFhOt
         cfRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/HycOiS";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id r25-v6si1726885qtb.0.2018.10.22.10.42.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 10:42:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/HycOiS";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id a18so547205otl.6
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 10:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fVbDii/cR+hIZqoabie3eEVRjIVV9aOoFgcwdH+7BUQ=;
        b=i/HycOiSTcNIlAYL3PXotFedZtBymabuBAaT0pkcP0Mzrd6EYqnXgmW8khtOtJ1kon
         GdZZ4KvSBIxUC5bUzJXtMfQSsJaWnkTiT0Ajm1bcoX6lT5JfXTW5n9814CcpjJiejeg4
         LAt9Mw3fW0XaK5FCAhmckeOjac/wqfbP/IViuTfF/KuK5l2zQOhL3mhDsh0nj4CaVgqz
         E0UswTToFE2n7S1b4niZayXYP50o6V55WstlislAoY7nuhWchw1pwwKT5dgC51NibuV1
         lh1LqH46Jjs0m3+YAdKghwpLYVOtawINryFQBN9UvUCJ+q4dXuxBE1CBcLjh4QAWhGEE
         FpPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fVbDii/cR+hIZqoabie3eEVRjIVV9aOoFgcwdH+7BUQ=;
        b=joDLH04yKthuguHlwNyb1JWVdpOO/09rYPNa9+WsOjlDt/G+dsv5p6aOUUr6pT2Hbb
         5hqurBKSA9kzfcFf9D6l9FW3OZMCdr5oSTYClZnKuftMW93gD2jpIDpb6aRc+i43RnzX
         R/cisl3d+QNd5GLW2UqC4uYHcfRy9Zc5/bxaj0jKAEDohrGHjXXJtqX/N7kXY/rMQoNP
         S26AoljGDcSeRANlfjkOKk4euwkXm/0KVAZCpvQyA22psNuqtv7eCbWUnM3Ubtdn/ERO
         63i/fpd5w48bdUgxwvQWEWBmIYMbQSEK5c5axnLRoxIiRr0frPMaYe4wpoRxaWhv4YnP
         s+1A==
X-Gm-Message-State: ABuFfohNDqrb7fH///ZkSzJ63YoGZIlMNBtIFTA2zSu5Fu3YmfxeTdDi
	/RSYlucb2OENQJomffR4nvtkY9vl89w=
X-Received: by 2002:a9d:3205:: with SMTP id t5mr27861807otc.119.1540230131381;
        Mon, 22 Oct 2018 10:42:11 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id q39sm11692879otc.67.2018.10.22.10.42.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 10:42:10 -0700 (PDT)
Date: Mon, 22 Oct 2018 13:42:08 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] staging:rtl8192u: Fix misspelling in variable name -
 Style
Message-ID: <163d3a606f353cd202677af062babe541369560a.1540229302.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540229302.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix the spelling mistake in variable name 'txhipower_threshhold'.
'threshhold' should be 'threshold'. Issue found by checkpatch.

This is a coding style change which should have no impact on runtime
code execution.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 5fb5f583f703..6c9f9d82477d 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2983,7 +2983,7 @@ static void dm_init_dynamic_txpower(struct net_device *dev)
 static void dm_dynamic_txpower(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	unsigned int txhipower_threshhold = 0;
+	unsigned int txhipower_threshold = 0;
 	unsigned int txlowpower_threshold = 0;
 
 	if (priv->ieee80211->bdynamic_txpower_enable != true) {
@@ -2993,18 +2993,18 @@ static void dm_dynamic_txpower(struct net_device *dev)
 	}
 	/*printk("priv->ieee80211->current_network.unknown_cap_exist is %d , priv->ieee80211->current_network.broadcom_cap_exist is %d\n", priv->ieee80211->current_network.unknown_cap_exist, priv->ieee80211->current_network.broadcom_cap_exist);*/
 	if ((priv->ieee80211->current_network.atheros_cap_exist) && (priv->ieee80211->mode == IEEE_G)) {
-		txhipower_threshhold = TX_POWER_ATHEROAP_THRESH_HIGH;
+		txhipower_threshold = TX_POWER_ATHEROAP_THRESH_HIGH;
 		txlowpower_threshold = TX_POWER_ATHEROAP_THRESH_LOW;
 	} else {
-		txhipower_threshhold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
+		txhipower_threshold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
 		txlowpower_threshold = TX_POWER_NEAR_FIELD_THRESH_LOW;
 	}
 
-	/*printk("=======>%s(): txhipower_threshhold is %d, txlowpower_threshold is %d\n", __func__, txhipower_threshhold, txlowpower_threshold);*/
+	/*printk("=======>%s(): txhipower_threshold is %d, txlowpower_threshold is %d\n", __func__, txhipower_threshold, txlowpower_threshold);*/
 	RT_TRACE(COMP_TXAGC, "priv->undecorated_smoothed_pwdb = %ld\n", priv->undecorated_smoothed_pwdb);
 
 	if (priv->ieee80211->state == IEEE80211_LINKED) {
-		if (priv->undecorated_smoothed_pwdb >= txhipower_threshhold) {
+		if (priv->undecorated_smoothed_pwdb >= txhipower_threshold) {
 			priv->bDynamicTxHighPower = true;
 			priv->bDynamicTxLowPower = false;
 		} else {
-- 
2.17.1


