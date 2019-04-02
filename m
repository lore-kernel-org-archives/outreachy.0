X-GM-THRID: 6675288558686699520
X-Received: by 2002:aca:c6c8:: with SMTP id w191mr8335186oif.24.1554211745543;
        Tue, 02 Apr 2019 06:29:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:138d:: with SMTP id d13ls158597otq.16.gmail; Tue,
 02 Apr 2019 06:29:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGL5BkS+OuZASi72adzPAB0LtU0Zf/UYf8qVvev5mZb1tzgQiJlAD/qg+xUMeNKhMkpfbk
X-Received: by 2002:a9d:1285:: with SMTP id g5mr7149374otg.13.1554211744985;
        Tue, 02 Apr 2019 06:29:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554211744; cv=none;
        d=google.com; s=arc-20160816;
        b=sg9e1pnQjYtotnn6DOqhY42vRrExTCWRpaVNBeVNnGY6/Wd9rN2feaD4sy8LqmzWEJ
         w0VaxxWy43mYrObcdey0y3lnZP8Spjm8B5NC3Bj+B/UPaQlnO1cXoU4OfH/CXkfgMWDB
         hkUi66mYmKZLPgnUoI4vjNiAE+KY2coaKPlewlvhSOPTzaZMn2o/7Y9Qaa7hWTsnHxox
         YnbxEZb4vMC3Q9q1s/o+ZmPO4G7C1Iop35h+ggYgA0U3nuFeDx8SlRVepGHBbCrPvGpK
         ce11Zjy53rsjE6uKm8PKB1KHLU7gc+m0LmGJkyYH0+iMZUlwlOilZvtPvz1J0Imtl5so
         UZDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+TLD522gy/e5iCk30KrGPlZygSLT6fQ1CEtze9XH2NM=;
        b=EhYQ03/kWbayplUa/vv6LquJjaXJiec5bxls3fhIF33mYHcAJbGl5ArBku14/Hc/YU
         dSjdCsYunAa4GR6fB7lBTVcsbCjsbOwmwRtTWLPI2AUdvBGtK0/1di3v579dVuBEiVd2
         eQoeP9Xqz6Hq7KV72KAzw5efuAhbuE7gfHp1McceD/Mc4ZZaQBZqSmlWAXAHzn/gb98C
         3tfs4bG+IUSMtVld1XxajP0nYnosS9UUkwr9dNzSfoGZSVq3jO9KiQ6zp41n5SGn04Wl
         dmCnjmp4XTPISgxMP6NKBFUzcdhnmiFf+8jfEx+YNXX62BIiz7h6HDxX1TEIkyiSq2Bg
         B/sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="P/fbLFq2";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c13si559739oto.3.2019.04.02.06.29.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:29:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="P/fbLFq2";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id t21so6401055pfe.2
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+TLD522gy/e5iCk30KrGPlZygSLT6fQ1CEtze9XH2NM=;
        b=P/fbLFq2j9degUtZg0jp0fiLejYGFTP3deqfeVl/JgTncle1HCzQ7LBlVqJ30oRGRr
         eW2Gu6cBc9Z1xqNldgDH+sy+13QH4I8rJaAdE4JuZtiZ9+iKbjw6RFDYCgC+qlP+oe/7
         oW01rTiwrDZuJdzSpgi5E8Qb6OLa5ENcKfAl6IvxqaJkRxFid73GUBhv8Z8XHP3CpITx
         Y6ipPxYAw9oDm3c8PIPY4Zjupi+KeFaFTSUxqwSYK5fNdhOAP0XvJuUXIXXHdMSo+eKg
         oJmYx+cehVC/8w3/9VjCSz/+qQJ3jmjBelc18BvIxgKUrfMIsviYH2MhJv1TF9J8yosN
         smsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+TLD522gy/e5iCk30KrGPlZygSLT6fQ1CEtze9XH2NM=;
        b=T0K1yOBNvfx9BvMvkpwr7tpPA10IabGnXBqrIoX198KYt+ZRthY9SZQZ+4v9RClbsx
         e+/xDT1XluAml1GaPvqlI8B1QbzA9k7Ymul06keAQPCYwxXRF26oNJCvVBDbesvFRHGO
         x+0Nib5nUbldZJ4VcG+aTziM/y6aqRP6roJS+KAXEISqa4ZsKEgbzHLZzcFOv4P0REVi
         5uYZAAUfGRus6csQbmUZS07prk5UyPcKMDLnV483+wcLG8Hdeyw/+emaaySPb2hoDf+U
         e/TUBFQ4qpzH11BsgKuXdTgX5Fr5AAJYFHhSmLCigXofX/0V0bewVby5hYVqQDGAGI8M
         Cs2Q==
X-Gm-Message-State: APjAAAVI1q2ZvzntN7DHsr0A7D7YgXc0Om12xBAYggPo0CFyAPWTM/PS
	xI5FtkaFmtQ2XVaIJnlFtfje6vAM
X-Received: by 2002:a65:6150:: with SMTP id o16mr36761159pgv.285.1554211743979;
        Tue, 02 Apr 2019 06:29:03 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id v20sm18768706pfn.116.2019.04.02.06.29.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:29:03 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/3] staging: rtl8192u: ieee80211: ieee80211_crypt_tkip.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:58:34 +0530
Message-Id: <997a7a2304446c8c70cfdc47c2d9d5522c189272.1554211049.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 829fa4b..320c179 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -331,7 +331,7 @@ static int ieee80211_tkip_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		*pos++ = rc4key[2];
 	}
 
-	*pos++ = (tkey->key_idx << 6) | (1 << 5) /* Ext IV included */;
+	*pos++ = (tkey->key_idx << 6) | BIT(5) /* Ext IV included */;
 	*pos++ = tkey->tx_iv32 & 0xff;
 	*pos++ = (tkey->tx_iv32 >> 8) & 0xff;
 	*pos++ = (tkey->tx_iv32 >> 16) & 0xff;
@@ -390,7 +390,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
 	pos = skb->data + hdr_len;
 	keyidx = pos[3];
-	if (!(keyidx & (1 << 5))) {
+	if (!(keyidx & BIT(5))) {
 		if (net_ratelimit()) {
 			printk(KERN_DEBUG "TKIP: received packet without ExtIV"
 			       " flag from %pM\n", hdr->addr2);
-- 
2.7.4


