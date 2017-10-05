X-GM-THRID: 6473412482924806144
X-Received: by 10.99.123.81 with SMTP id k17mr1337196pgn.57.1507208818404;
        Thu, 05 Oct 2017 06:06:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls6584197plk.15.gmail; Thu, 05 Oct
 2017 06:06:57 -0700 (PDT)
X-Received: by 10.84.177.67 with SMTP id w61mr1655651plb.12.1507208817560;
        Thu, 05 Oct 2017 06:06:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208817; cv=none;
        d=google.com; s=arc-20160816;
        b=fr+OMv9nmXJ9Brb9zhq2b3XBEWAO/nX8agJdrCo17gNTFXq99gnA1RuVUUFQHcFvHM
         igkouz6jNagChr5cSPQ8eFWNbDbrkYOeP3xns3HzQFSYnE9Vgw/zCfQOnPn0FwNHQYwa
         2+783YoHOH9ij9aq7zAFYTMwNf+AP6AeyeBaD9rY64eputsnya+OscqDofHrdkianX0A
         mPR+8/rJXYB5Aa5Ci4FxKGSWb5Ztg/D0iv1CNdZj1pCvCXjQCa19JP0mnGdII3EXaPRd
         bGwYdc8r0pg1JXt0hriAWgT4/6/6dVyEM5TyGtnhItUTjFqBJSPM9L3dpVYVQI223TMM
         0Eng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=kqkqH+vvG1iWAQSiVlYNmjAZkH8Bw6RfQeA1R58YAM4=;
        b=WgEL9pYPOhm7NS/W4ijjE5U0Sc6DCBKv0B/q1zvoSAsgACDjPVNejklRRv6ODulOHW
         kIV24GjqLC7tLXVRjtFajdeuAREp+c42O/9BI6ZKKX+MUbadqJn30CUEAzH7yBHeV/+b
         1/uEMNWr5x0yh2qsq3EsKwbNJqTBcczRwzFxIe9i2p6ZpUwrDCnWJdHFIpT65dFO94Hb
         cpWx45+U4bF8KHGMQI5WOp6y4Fgest/UWfWeO24TMf4/VNYdaKpHgLRQpa6gDU1fXVMA
         +cgN75CSY4mF9wsy7PBAb46Cd8qceY60PAVMtjpoNNTcEvEpKHa0dZzgtxtyqyekmJdz
         AHVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xckv+FsJ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y6si34456pfd.28.2017.10.05.06.06.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:06:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xckv+FsJ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so14584651pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kqkqH+vvG1iWAQSiVlYNmjAZkH8Bw6RfQeA1R58YAM4=;
        b=Xckv+FsJhQdqhVFDlUyB3MYmMwbUmIislmJqwA08SvmgI7rhPQihzuAVTFeT/Ns858
         BBT2ZaRmxjbYTh3vV63Fu4i9ID2ZSjVZAgZz612ZMMAexW3ix/U2IYr4e+B+egveiBLf
         sUqslXQkDCm7xpVGkKE9XNh+qPQ8ikb7yCwdoTY6w8jsdeJtl1BCGz8VOhdgODAxENdR
         weVWoSRPLRh1FRWQP2Q6b+Fvh0G7gcen0pjqTHlXh83mPKoPtP54JtwSZiXDKIR175RP
         3Vk8j41ktro1vAGMXDw80gvvHs1lDGgJw4dM26S/+BLuajW8XnpaypEBg0ZIX5VJQIFM
         H0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kqkqH+vvG1iWAQSiVlYNmjAZkH8Bw6RfQeA1R58YAM4=;
        b=NeDG8WWPHzAkhfIZpae17aOQ0YhAnM110U0JkIzBm0g5uimaS07Q59h4TjrsEWBydZ
         fXCAdT+adfg9tH6DCL1j1XDVpZvsY4dtymUPFEWC3n4bGVLzXKgX5tADu08gcmdmqo+l
         Ly0vh1lwdArLvv7YtvKEZLKmOoY4Fw2EbfCeSPNmfVans5B7HrSlxcn1A0UphQUbNlh/
         g7FYq+Ur+sz0NGXDS5Glae1Z6iZfdQTM4JV/91t94di/Nt/Qy/9dp1WfSVq/JXn1i51g
         omsrCm2wO1x7Wes1w6VgvRWk8yWWz0yUVsdH2LaNSvMPrZPsOTG6jzqfd7yuDCQ95RFU
         4vfw==
X-Gm-Message-State: AMCzsaXrgpGZT+uJurlwfgYOnEF5/FcZsU61se69DIU1A+p/lxVkIMvB
	lxzdACG+9vecMAzxFKaPZImp6ngI
X-Google-Smtp-Source: AOwi7QDW+w5ciSFmJ2gh9pbsp9Y1werjorS9QsjRfUT1ZDVI8b1qh2H0gu6Q4ZTqfD/na+FqHdmh4Q==
X-Received: by 10.98.64.14 with SMTP id n14mr12602238pfa.342.1507208817201;
        Thu, 05 Oct 2017 06:06:57 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id f12sm7642699pga.7.2017.10.05.06.06.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:06:56 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 6/7] staging: rtl8188eu: prefer using BIT macro
Date: Thu,  5 Oct 2017 18:36:26 +0530
Message-Id: <1507208787-18008-7-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>

Fixes checkpatch.pl:
	Use BIT(x) instead of using (1<<x)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 78 +++++++++++++--------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 5075cb4..5a78c1e 100644
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
+#define IEEE80211_CCK_RATE_11MB_MASK		BIT(0)
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


