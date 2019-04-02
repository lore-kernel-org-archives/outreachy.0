X-GM-THRID: 6675288558686699520
X-Received: by 2002:aca:3d5:: with SMTP id 204mr6106961oid.0.1554211740746;
        Tue, 02 Apr 2019 06:29:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:408a:: with SMTP id n132ls148486oia.10.gmail; Tue, 02
 Apr 2019 06:29:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwquo0T+2MNGggliM9y+GZ2hBMFENkxciDaYSLd//XQyNLbTQOd9t0jf1VXcfAnZeCQWPMh
X-Received: by 2002:aca:ec46:: with SMTP id k67mr7122280oih.38.1554211740109;
        Tue, 02 Apr 2019 06:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554211740; cv=none;
        d=google.com; s=arc-20160816;
        b=XRsJHIKy15BHVk4xNJKiVHl+5guz655agwafMregTcV1wBI1OGo3OCZYzeRDyX7rjg
         +Hgk65Cpb3z0leCuaZbKJ2EXf6WUCJV1CNMfq6fILyrsQOMAY8OX+DVQ7sss+OOJfUjT
         rjdKxlJHWcOvm4WK/5BUOnVXFnVujJ2W9JNy26FldwfU98Pf321qduFotJYxOLy+dxRV
         5qJ52ewYG0GSXyZJVCR8koyqVKJ3/SeZY8Yx3zxOcHPmbI3agfuHjBcYPThajrOlb/mp
         nvoah6yDtehP3V3rw/724vwKj9ApdOKGCX6bn0ZKGUrd4ZqtDGBpWNhkOXwW4JBkceNB
         OA9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Ga6rJpcMYbWOcCql8i58woakx4Y929q4Hw4+/dOhEBE=;
        b=eRFEvJNSCm4RoJzGTFPW0eE+/vddhnWAxbCg8vn7ZHl5ArvqyQJ9JuuY6FsftQ2Mjm
         aJScBQ3wkb08x+QkQXyHy5MHxAEk4WmuiGknGH9bKQWXIbHCuXwlVdMHGk+1Wz9ieMSA
         LgRI1GxdHjWVSFH538JxN7t91/+/5gWWl83jf1m3C6+RT43jbucVxWRxCWI2ouFWbsUX
         IMN0cptRLApGC4qp0B6KRwQOaISkRFEyDqVJfw1EUppXNoekXMfn5MfUARziZZwE7yAH
         YwPf08Yc6f98aLICfNnucDx3SaYdw9AOR5g1j4/U7Erc6xDnkz5Rk8mSbwbaqdgVfBVT
         fqvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOUYOQul;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c13si559714oto.3.2019.04.02.06.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOUYOQul;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c8so6384488pfd.10
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ga6rJpcMYbWOcCql8i58woakx4Y929q4Hw4+/dOhEBE=;
        b=cOUYOQulAj9uzzM+N2jyIYC3zgpWesjnpToRhKIiKlW55BkFri/ttTeSdggPKpBk/Z
         4t0yZiACeWaaWNpfTabQacaRP0fAlxU3+7rv0jpv9DVZBf0opZQ/h3RTcD7U7Ajchf4E
         BQFB6f0+53/oiqRTFaJa949a91CISQ7S1Oz29tZ6v/N2vf6cxWG6nKbkw9O+F1KqK+WX
         VvXq68qjgyVnVBKmKR3WIWgs5UZ+9tgqwrng4ZaQh5/vB/YaxaBOOiiWhwRzg7zm3HBw
         wp6sNj10QpulnFFbcJsAOgPQyyLZtGzUySwjFCaM1aq85/lxgQf+njrYp0GjsY1y/d/1
         pkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ga6rJpcMYbWOcCql8i58woakx4Y929q4Hw4+/dOhEBE=;
        b=nnUA3UlX4MaHI7UWcFQnTP3nwqtqIi38eWN9cpk6Npxen0M/ovP7ZzZviCc8G/PlmG
         ZZP+i4kN3PwV7oc6L5LDwCah5W/kQsaWkwjQPyTonindPYltrky0uv79JXHehgunFYx0
         K2nyZoKvUDEsP3cRyghtJtkuOt+ZSLiXxL2S9C8Tfb0b6W3doTyZ3LP3LMkkIBHtf+Hi
         gvjTn8QbzJ6Iydk1jpUn0E8C/PVlO7sCHf0eAksqIGML+a0mdsPf8vsN0u0uJ6rO8KpM
         2Yrm8V+54LNZcogSMfR7ZycyQMbd6nkEaNtdjA5hXlFY3owg5xnlqq0c7qDBrFw1D0up
         2l2g==
X-Gm-Message-State: APjAAAUGmcWkgq26qEnzd6lW8VQ/zeyXJeX/Xq2hjabHh/UwKuAF5Dnd
	Ekath1anZCqcTyD6tqDZkmgqYpxm
X-Received: by 2002:a63:ef09:: with SMTP id u9mr3471208pgh.126.1554211739523;
        Tue, 02 Apr 2019 06:28:59 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id v20sm18768706pfn.116.2019.04.02.06.28.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:28:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/3] staging: rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:58:33 +0530
Message-Id: <aed1f5378f9631fb4c52ef20cf41693c18dccc0e.1554211049.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 3534ddb..e154df8 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -216,7 +216,7 @@ static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	*pos++ = key->tx_pn[5];
 	*pos++ = key->tx_pn[4];
 	*pos++ = 0;
-	*pos++ = (key->key_idx << 6) | (1 << 5) /* Ext IV included */;
+	*pos++ = (key->key_idx << 6) | BIT(5) /* Ext IV included */;
 	*pos++ = key->tx_pn[3];
 	*pos++ = key->tx_pn[2];
 	*pos++ = key->tx_pn[1];
@@ -274,7 +274,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	pos = skb->data + hdr_len;
 	keyidx = pos[3];
-	if (!(keyidx & (1 << 5))) {
+	if (!(keyidx & BIT(5))) {
 		if (net_ratelimit()) {
 			netdev_dbg(skb->dev, "CCMP: received packet without ExtIV flag from %pM\n",
 				   hdr->addr2);
-- 
2.7.4


