X-GM-THRID: 6478323397894864896
X-Received: by 10.157.11.203 with SMTP id 69mr9367707oth.22.1508352209858;
        Wed, 18 Oct 2017 11:43:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.53.196 with SMTP id c187ls1384439oia.13.gmail; Wed, 18 Oct
 2017 11:43:28 -0700 (PDT)
X-Received: by 10.202.56.69 with SMTP id f66mr8598652oia.49.1508352208908;
        Wed, 18 Oct 2017 11:43:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352208; cv=none;
        d=google.com; s=arc-20160816;
        b=daKen+2ZHAeDNzNEsGENLaRX6zFNGBiVxb0qTyQVdFJo/suYCQ4nTt9X1W0/giFT/E
         TzoOvV0JjPXYOl4G4p0JTL1x5NPtlRmRQzYmiRSuT74DHfFCNy6j+t4gbo6sPt6c887j
         9dwtES3cYcA3nyxRmOshhThG4MOuWf80Z3JVPvwEiD9QW4PDvcQ5ywRV6aTkW4zwRapL
         U5PzztE48not7M2wJe0KwC1vr5pIpf/RxkKAAszKxzfI4Uwx6nX4nY5X2FP8vo89NWBF
         61m5iRE9H9wOvai9jZoeh6NfGMj5p+JhMxZC00xJe1Xs1nJBGJVmlFKs1orRIpvRcpIG
         k2Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Wd0ju4L7FhYwrxHzJdy6BrRMten0SL38ldawh0ufFD4=;
        b=xMXc98AKAYrnYHZNOvmH6SOkip0YddXgBOfwBzb6n7qgSEiDhuUuhXx6JRhmLsrdHP
         7Wqgp2VursLyFuXxOwY5TwdBxuyOrOB4dMAUegNmo7J8DI4r0ssFwaaIp0pBThZsg8b9
         caY70ORr9XcJtJb3NfE4YfB5XxzmCg4MO7sDrAGP+o9qtZC4Ivhyhwe7QQsOgtKjdHQk
         3JJ9+XM7cV7xsgafA87XS13qN0WvWVV+IfHri/fyzbdoqIE1HxTKwXfSo1GPPbT/wte5
         by9JNhaVzaxLxjFOdphCXxC325xYUjUdKsf0Wr4C22U5/nfNSXFny35Mv2oKfK3YrH2F
         0Dlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZxsBo8T7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id f22si772252oth.2.2017.10.18.11.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:43:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZxsBo8T7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id g6so4980018pgn.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Wd0ju4L7FhYwrxHzJdy6BrRMten0SL38ldawh0ufFD4=;
        b=ZxsBo8T7S7oJy4CpNkpwJr6oiwaMXE4ZHt74Lxb7uX92lTc2iWuvn3cA2wLCsVHN9f
         p4eFZ4gfWnw9J7dcz2q9/DuoT0rHMhNF8/C129UY2VNwjHLMylHC/VmmN/VADQmpXhDV
         iH10a1nLSnuixzljyNvsh0QgQi1kT4KSzYIs8CQl/7lLmUj0uB7nuaqpZSC+urqgu5lg
         GRzTkpm8AMxABrUQFYCNRqiFY8TVo/LnhNQONSuxvAfC/Cc59jxMfLi63RN8DCZxTRpQ
         pmlAt+lSPH8+MevLnLMqKFXHmA85gW3F5riEBF3uJ74siYK7PCw0q0nReKWnEq7Ad62v
         DCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Wd0ju4L7FhYwrxHzJdy6BrRMten0SL38ldawh0ufFD4=;
        b=Sub7no+wcc3PME9Uyz8lZdMfBJjL5UM3Y4bdrV0uNtUR+gAyLpzsdbEEs5qg5cWc4B
         ByKn+EgQBfmRbc5KpzaDbKmRI80/WejAr4mnFfWSIzuDl7o8IL61Yi6qqRlQHNWbB88R
         glj5uGSwFxDOi/84ykqm9FNnLJ0bs2yAcaBurmPVuA8/KxnNcoUUiFNzQ3CgUXDYDq7u
         wKqwgyUizvht/WtcQPUgFhWbSBCN+iJcrmL+03XF8TrihtiARaihkR7SeXfHqjIzpXep
         tHuK3ymqdlwY/w3ESOcZVv3uTVod+KCV4VECrE70nDg9KGPDT2WrlT5Es8LgJgkYOlMD
         YCuw==
X-Gm-Message-State: AMCzsaXygrT2thUdCY7qEkxuvkz8Tqhs05yM2MRArCzg/4ImIk4OAut+
	ItjEfJsmN3s+/SFqt/63hVA=
X-Google-Smtp-Source: ABhQp+TH4AT+tPkOfnNKGUhf3itKYcHoo9oQLQ9AcrWLdRsFT4JbOJjrjd0UuBb1ULFIO5bLIcmCMQ==
X-Received: by 10.98.252.3 with SMTP id e3mr7622247pfh.136.1508352208553;
        Wed, 18 Oct 2017 11:43:28 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id u7sm18036929pfh.142.2017.10.18.11.43.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:43:27 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 1/3] staging: rtl8188eu: prefer using BIT macro
Date: Thu, 19 Oct 2017 00:12:56 +0530
Message-Id: <1508352178-24942-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>

Fixes checkpatch.pl:
        Use BIT(x) instead of using (1<<x)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 78 +++++++++++++--------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 5075cb4..374c1f5 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -359,11 +359,11 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_DATA_HDR3_LEN 24
 #define IEEE80211_DATA_HDR4_LEN 30
 
-#define IEEE80211_CCK_MODULATION    (1<<0)
-#define IEEE80211_OFDM_MODULATION   (1<<1)
+#define IEEE80211_CCK_MODULATION	BIT(0)
+#define IEEE80211_OFDM_MODULATION	BIT(1)
 
-#define IEEE80211_24GHZ_BAND     (1<<0)
-#define IEEE80211_52GHZ_BAND     (1<<1)
+#define IEEE80211_24GHZ_BAND	BIT(0)
+#define IEEE80211_52GHZ_BAND	BIT(1)
 
 #define IEEE80211_CCK_RATE_LEN			4
 #define IEEE80211_NUM_OFDM_RATESLEN	8
@@ -384,18 +384,18 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_OFDM_RATE_54MB		0x6C
 #define IEEE80211_BASIC_RATE_MASK		0x80
 
-#define IEEE80211_CCK_RATE_1MB_MASK		(1<<0)
-#define IEEE80211_CCK_RATE_2MB_MASK		(1<<1)
-#define IEEE80211_CCK_RATE_5MB_MASK		(1<<2)
-#define IEEE80211_CCK_RATE_11MB_MASK		(1<<3)
-#define IEEE80211_OFDM_RATE_6MB_MASK		(1<<4)
-#define IEEE80211_OFDM_RATE_9MB_MASK		(1<<5)
-#define IEEE80211_OFDM_RATE_12MB_MASK		(1<<6)
-#define IEEE80211_OFDM_RATE_18MB_MASK		(1<<7)
-#define IEEE80211_OFDM_RATE_24MB_MASK		(1<<8)
-#define IEEE80211_OFDM_RATE_36MB_MASK		(1<<9)
-#define IEEE80211_OFDM_RATE_48MB_MASK		(1<<10)
-#define IEEE80211_OFDM_RATE_54MB_MASK		(1<<11)
+#define IEEE80211_CCK_RATE_1MB_MASK		BIT(0)
+#define IEEE80211_CCK_RATE_2MB_MASK		BIT(1)
+#define IEEE80211_CCK_RATE_5MB_MASK		BIT(2)
+#define IEEE80211_CCK_RATE_11MB_MASK		BIT(3)
+#define IEEE80211_OFDM_RATE_6MB_MASK		BIT(4)
+#define IEEE80211_OFDM_RATE_9MB_MASK		BIT(5)
+#define IEEE80211_OFDM_RATE_12MB_MASK		BIT(6)
+#define IEEE80211_OFDM_RATE_18MB_MASK		BIT(7)
+#define IEEE80211_OFDM_RATE_24MB_MASK		BIT(8)
+#define IEEE80211_OFDM_RATE_36MB_MASK		BIT(9)
+#define IEEE80211_OFDM_RATE_48MB_MASK		BIT(10)
+#define IEEE80211_OFDM_RATE_54MB_MASK		BIT(11)
 
 #define IEEE80211_CCK_RATES_MASK		0x0000000F
 #define IEEE80211_CCK_BASIC_RATES_MASK	(IEEE80211_CCK_RATE_1MB_MASK | \
@@ -428,15 +428,15 @@ struct ieee80211_snap_hdr {
  */
 #define IEEE80211_FRAG_CACHE_LEN 4
 
-#define SEC_KEY_1	(1<<0)
-#define SEC_KEY_2	(1<<1)
-#define SEC_KEY_3	(1<<2)
-#define SEC_KEY_4	(1<<3)
-#define SEC_ACTIVE_KEY  (1<<4)
-#define SEC_AUTH_MODE   (1<<5)
-#define SEC_UNICAST_GROUP (1<<6)
-#define SEC_LEVEL	(1<<7)
-#define SEC_ENABLED     (1<<8)
+#define SEC_KEY_1	BIT(0)
+#define SEC_KEY_2	BIT(1)
+#define SEC_KEY_3	BIT(2)
+#define SEC_KEY_4	BIT(3)
+#define SEC_ACTIVE_KEY  BIT(4)
+#define SEC_AUTH_MODE   BIT(5)
+#define SEC_UNICAST_GROUP BIT(6)
+#define SEC_LEVEL	BIT(7)
+#define SEC_ENABLED     BIT(8)
 
 #define SEC_LEVEL_0      0 /* None */
 #define SEC_LEVEL_1      1 /* WEP 40 and 104 bit */
@@ -470,9 +470,9 @@ struct ieee80211_snap_hdr {
 #define MAX_P2P_IE_LEN (256)
 #define MAX_WFD_IE_LEN (128)
 
-#define NETWORK_EMPTY_ESSID (1<<0)
-#define NETWORK_HAS_OFDM    (1<<1)
-#define NETWORK_HAS_CCK     (1<<2)
+#define NETWORK_EMPTY_ESSID	BIT(0)
+#define NETWORK_HAS_OFDM	BIT(1)
+#define NETWORK_HAS_CCK		BIT(2)
 
 #define IW_ESSID_MAX_SIZE 32
 /*
@@ -534,14 +534,14 @@ static inline int is_broadcast_mac_addr(const u8 *addr)
 	       (addr[3] == 0xff) && (addr[4] == 0xff) && (addr[5] == 0xff);
 }
 
-#define CFG_IEEE80211_RESERVE_FCS (1<<0)
-#define CFG_IEEE80211_COMPUTE_FCS (1<<1)
+#define CFG_IEEE80211_RESERVE_FCS	BIT(0)
+#define CFG_IEEE80211_COMPUTE_FCS	BIT(1)
 
 #define MAXTID	16
 
-#define IEEE_A	    (1<<0)
-#define IEEE_B	    (1<<1)
-#define IEEE_G	    (1<<2)
+#define IEEE_A	    BIT(0)
+#define IEEE_B	    BIT(1)
+#define IEEE_G	    BIT(2)
 #define IEEE_MODE_MASK    (IEEE_A|IEEE_B|IEEE_G)
 
 /* Action category code */
@@ -659,12 +659,12 @@ enum rtw_ieee80211_back_parties {
  *      is not permitted.
  */
 enum rtw_ieee80211_channel_flags {
-	RTW_IEEE80211_CHAN_DISABLED	 = 1<<0,
-	RTW_IEEE80211_CHAN_PASSIVE_SCAN     = 1<<1,
-	RTW_IEEE80211_CHAN_NO_IBSS	  = 1<<2,
-	RTW_IEEE80211_CHAN_RADAR	    = 1<<3,
-	RTW_IEEE80211_CHAN_NO_HT40PLUS      = 1<<4,
-	RTW_IEEE80211_CHAN_NO_HT40MINUS     = 1<<5,
+	RTW_IEEE80211_CHAN_DISABLED	 = BIT(0),
+	RTW_IEEE80211_CHAN_PASSIVE_SCAN     = BIT(1),
+	RTW_IEEE80211_CHAN_NO_IBSS	  = BIT(2),
+	RTW_IEEE80211_CHAN_RADAR	    = BIT(3),
+	RTW_IEEE80211_CHAN_NO_HT40PLUS      = BIT(4),
+	RTW_IEEE80211_CHAN_NO_HT40MINUS     = BIT(5),
 };
 
 #define RTW_IEEE80211_CHAN_NO_HT40 \
-- 
2.7.4


