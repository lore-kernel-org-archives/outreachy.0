X-GM-THRID: 6250732177491755008
X-Received: by 10.129.4.201 with SMTP id 192mr6003192ywe.15.1455361996491;
        Sat, 13 Feb 2016 03:13:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.213 with SMTP id a204ls653020ioe.99.gmail; Sat, 13 Feb
 2016 03:13:16 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr6249006pas.4.1455361996075;
        Sat, 13 Feb 2016 03:13:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id 79si2316673pft.0.2016.02.13.03.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 03:13:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id e127so61183659pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 03:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J21K7iKwFFAnmwdMU3N22XxcFGmh1fDKUyvJh1Szv7k=;
        b=vLQfx2IJyeCh3EUF20xZId3YIsvxy3p5rY6/OgXhO0gxXHBSTFTf74y9GOdMNVRLCb
         jTKFwKkZghVhxCX8cOrIzvPhrE8uQNXLZwRyYCXGSmHxil5a8WLQbP+Ip1msQ0GnrT7G
         w4pdWYBIPbfhEtrEHz2+a6ZNhSNIezOoQOGZWD2MAAG2/7iLgRpxWmH+OAeNvUW9it+G
         JENduTFqUjQXJuVcYZTv8klFDqzGT7yLibc6Mn0gd/3W79n1SzhUf6KHjZCoB6FStA0j
         NARXVvRws4HrzOawKajsy1cO7l921jLu3+rqLOdVY6Q1oXmb5blvm0tCYi7E9z1hyIY7
         jdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J21K7iKwFFAnmwdMU3N22XxcFGmh1fDKUyvJh1Szv7k=;
        b=jZVAMrH6+cBiQdYt9MFYgMX5zO8MTgyM/oeEWYNpvDR5Xg3XD9b3bTnARtAvi0sBT2
         +iikC4jFOXySC37/ds41ZbgfAYDchyxr3Hi1SeTIb6rWycMkBlYxfq/EItsTlS8xpFm+
         MfywtirntV/spqf83Exbd6q90sxDEPjh0hOZDlLQeu+HYXKm5+rgL85NGuUbaaPD4Uh+
         Z9YJWKazWOck7Nn/+gwtPW8A4C4g/K5P3UKlYDIsl8voTw7O3keMloSEd3q1g9BQV+K/
         4zx2waUqbLHch7T8km5WnQj1gWqiUnIq6fQCGMZSEDFp9fu6epoAPLAuROq76GLs1ejV
         BJaA==
X-Gm-Message-State: AG10YOQWZM/VdLqjUv433JBUPFYib3LkpskZMUopbhe888SnM/IVfEC67ZoXRuLyf4pgog==
X-Received: by 10.98.42.20 with SMTP id q20mr9262585pfq.146.1455361995971;
        Sat, 13 Feb 2016 03:13:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.145.71])
        by smtp.gmail.com with ESMTPSA id o90sm25554267pfi.17.2016.02.13.03.13.11
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 03:13:15 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 16:43:05 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl819u: ieee80211: Remove function ieee80211_wep_null
Date: Sat, 13 Feb 2016 16:42:32 +0530
Message-Id: <1455361952-19190-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove function ieee80211_wep_null from the file as is it blank and
remove its declaration from the header file.
Also remove its function call as it is of no use calling this function.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h           | 3 ---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 3 ---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c    | 1 -
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 967ef9a..8689b23 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -238,8 +238,6 @@ typedef struct cb_desc {
 
 #define ieee80211_tkip_null		ieee80211_tkip_null_rsl
 
-#define ieee80211_wep_null		ieee80211_wep_null_rsl
-
 #define free_ieee80211			free_ieee80211_rsl
 #define alloc_ieee80211			alloc_ieee80211_rsl
 
@@ -2260,7 +2258,6 @@ void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee);
 
 /* ieee80211_crypt_ccmp&tkip&wep.c */
 void ieee80211_tkip_null(void);
-void ieee80211_wep_null(void);
 void ieee80211_ccmp_null(void);
 
 int ieee80211_crypto_init(void);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 681611d..cde8e2b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -274,6 +274,3 @@ void __exit ieee80211_crypto_wep_exit(void)
 	ieee80211_unregister_crypto_ops(&ieee80211_crypt_wep);
 }
 
-void ieee80211_wep_null(void)
-{
-}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index 425b2dd..30fff6c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -177,7 +177,6 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 
 /* These function were added to load crypte module autoly */
 	ieee80211_tkip_null();
-	ieee80211_wep_null();
 	ieee80211_ccmp_null();
 
 	return dev;
-- 
1.9.1


