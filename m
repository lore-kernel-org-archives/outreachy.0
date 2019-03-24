X-GM-THRID: 6671816179609239552
X-Received: by 2002:a17:902:2989:: with SMTP id h9mr18322866plb.26.1553403255711;
        Sat, 23 Mar 2019 21:54:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls1865313pff.6.gmail; Sat, 23 Mar
 2019 21:54:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyyP3K6KL0xo3vYH0e2GbYHNMgLjuAgN3EYu2kR2hL8q8wZrPi5UHyAHFrkN9AZbwh872vg
X-Received: by 2002:a63:145a:: with SMTP id 26mr17281218pgu.433.1553403254878;
        Sat, 23 Mar 2019 21:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553403254; cv=none;
        d=google.com; s=arc-20160816;
        b=P9O8XrVX8fyNbutTRItBnOMqOyBHS+EndmTlBK3+0En3ocD6yrlDMddLtF9aGuEALd
         2HzSdcJVadcU8zh4xaR2NutVPRzzAZ2CBZUVt54G/2jhPXCNihsuEC+fuP05tehXH0I5
         vb2rWe8XgQ/gvkyQoHkNHV6CjAXlI7bjEIQXQ/0ts5S3+2s9fkKG5cljYJycHQk5NoV0
         Sw32w3Ame9d7+TfJ8gOvhAv1r2CQOB2FNOD7neQ3lji/51FIEZCeOzy0ZmyuprptsfkP
         9s2INuRMC8KydSkgDD295EAGFw2wlcv7Z2SF2/Jp6R/VI69Z3nwBUjx+Cjaf8L84H+0m
         ufAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SBSA3rNLAh16YzPuHBbyPjh33z/BMq42pLuqhx9yqUo=;
        b=q8syZjS5Rc9Kf+Nnp2eQBWLQvWAl7Pg6oEtQyQTsAmMFAH0D8/oENvWB8a1m2CFmYQ
         CzHU5J3k9cYFIcHUwZswunvHsxjeijDBBjzIGZY9qet0P97D6a7c5dN6SbEAFkLrJmmh
         YXUwJasqx9c6BMKOO4d89gBIDWYEefJjH57A/BCImZwE6fm9Uki+BL3mmRX1v5WLbTmu
         RlsU6UVPZjawokgeUXROINKX51f8pLRj3XFpXm4pqa+0vW2oqFpd9T8JTbw/vxVZlxk8
         HV/vaBmUMRs8B0Wr/9cqBlD5HCRCTXXdwJ+678ZZsmsGG4/sMyiFwKrC7tya4qAzcSlK
         KN0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X7sP+2is;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e71si705955pfc.1.2019.03.23.21.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 21:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X7sP+2is;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id e24so3275101pfi.12
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 21:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SBSA3rNLAh16YzPuHBbyPjh33z/BMq42pLuqhx9yqUo=;
        b=X7sP+2is0nsbTKIAKo6rOOxv/IhGhfIQuTiOgbyVClGBYUPn9cCLAqib6Qx+x5iLm7
         FaBVDd8U6NtVHivOXepj0qMf9kQTGscsT6TdzJ01oXMp5YjMkmxR/pFhT60UGjC0fNVW
         qDSAns9NzIyGbj66+GXyol3gg/JJpcIb2ioHgp+5e2IW6K9dleG/eIXyzUuz7cOu0QZ8
         qH33GfYRWAaEsM3UfwDSeyb32K6Siy6Y/cwY24CPPE1b5BnwOd5wt5AgIt7mw/p/DarU
         w1f8WQvkAU6HGEOKX7Xzfkx1yz3f/jf0qLGIi/eVNxGhk4vQIckyz3DrS4Vfy9IvHn40
         F8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SBSA3rNLAh16YzPuHBbyPjh33z/BMq42pLuqhx9yqUo=;
        b=Owe1K/svwemAVKl7U7BpERpufk+hAwQNdby1iwcQU/4aE0Lc/ZnxqpVWX7CSy0hJ5M
         MU0WbkEY+wjp+f/jUaxGOuvF82ejwvtpIJp7Hvj6NXbO7l/o47X7crO7inZbZk/rU0uw
         Boe7WBXXD+1jKAVAuiAzBMfOsObb3mf7MfSbX/gWaWt5Ku/w3duOFN9Q2QAIRrpDBt0O
         Ms6x7we94elgE4kHxQvMwokIcyYO3Z1diJyCzQayQWtWNniJDVRmbg0wNdC9MgGpVRg3
         7wlXGUOW+YKRY84ksEyJEcgCNzIC05QVGDtYpW1PrDup2BVmtUdzpAx0Bq98JS7oEovj
         4maQ==
X-Gm-Message-State: APjAAAWM8jgGSVid3mIeO4MrHdJENCXAdFoVow5MU1CMT4hw7lnJm5H8
	TAMeUeqKUp8ftW9CecEcPXJp+g26
X-Received: by 2002:a63:4346:: with SMTP id q67mr16766239pga.92.1553403254673;
        Sat, 23 Mar 2019 21:54:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id b15sm34275913pfj.167.2019.03.23.21.54.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 21:54:13 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: 
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: rtl8712: avoid camelcase variable name 'beaconPeriod'
Date: Sun, 24 Mar 2019 10:23:48 +0530
Message-Id: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 4cca739..3d77b1e 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -162,13 +162,13 @@ int r8712_generate_ie(struct registry_priv *pregistrypriv)
 	uint sz = 0;
 	struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
 	u8 *ie = pdev_network->IEs;
-	u16 beaconPeriod = (u16)pdev_network->Configuration.BeaconPeriod;
+	u16 beacon_period = (u16)pdev_network->Configuration.BeaconPeriod;
 
 	/*timestamp will be inserted by hardware*/
 	sz += 8;
 	ie += sz;
 	/*beacon interval : 2bytes*/
-	*(__le16 *)ie = cpu_to_le16(beaconPeriod);
+	*(__le16 *)ie = cpu_to_le16(beacon_period);
 	sz += 2;
 	ie += 2;
 	/*capability info*/
-- 
2.7.4


