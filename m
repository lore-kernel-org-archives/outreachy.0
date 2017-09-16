X-GM-THRID: 6466298903964680192
X-Received: by 10.202.59.10 with SMTP id i10mr2547172oia.57.1505552535167;
        Sat, 16 Sep 2017 02:02:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.183.211 with SMTP id h202ls8111350iof.30.gmail; Sat, 16
 Sep 2017 02:02:14 -0700 (PDT)
X-Received: by 10.13.235.138 with SMTP id u132mr16756021ywe.167.1505552534518;
        Sat, 16 Sep 2017 02:02:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505552534; cv=none;
        d=google.com; s=arc-20160816;
        b=xwDG69qoT166zTuhezU1IYLRe0CFtBhoAu12/VGh5sbah9SXVxyYzkoM8/pDt/avAC
         hDUSTgX9AIVXvy+bXj5br0H+v/ljKxgTGNTRbbfXEHua6orkqbCm6u50RjFzEvkLegho
         Au2pODYpBx/xr//MJ9gxbFIJxMTXQtYHNOypw1z6FK0zKCiJg4r1ay1Y4z6BoLH7IqjK
         zHWgwNFpjhYUR+1YcCqV9WrIp3tcR+3uaTm1cMSWQqsk1jvViPj+HjUnjLQeLVjunHKW
         HlruJqVv/gKiT73rAV4N29yAjOfb0c+5aVdu6miNlFlmTcfmxmOw4rxzLwVHXsXFq4WT
         Bt8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=kqkqH+vvG1iWAQSiVlYNmjAZkH8Bw6RfQeA1R58YAM4=;
        b=uNYOquOIJfT6Tm4YhfZ2fM1ScQmNE/KAD4fHw7dP2A1vVtG76AdkfUzOefSQUTFMGO
         nRueJFuvskzHvLjiF4EwmJWj+pTdB1hV+MPUhGfD/gSNkjyXMzfwez0uPuS406iATc/d
         bEuF/ogDFgZTa0XGfcARrtyfI/us1IUZsRFoGT57mlPMxa88u2zW+5nfybWwImVAo1qN
         duGqTtlP6HYH7KTB7sfxRQGRqGWbRWhWHQepjb4qdrH3uhAjKCbL6IpSWBfYq3ggh0D1
         KbOol9DMHht37pEN9WdUIQxmLRPqJdVBcnVQXm7QIPQMCiSi1FlMC2cwdgr7qwekruez
         20XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l7mel7OB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r78si301939pfb.3.2017.09.16.02.02.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 02:02:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l7mel7OB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so2309219pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 02:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kqkqH+vvG1iWAQSiVlYNmjAZkH8Bw6RfQeA1R58YAM4=;
        b=l7mel7OBU6mMeef8b4VdYl21Bs663ua3DYLPLlTEsj6q8vBRaoCQRodEtPTDI0f5t5
         6o5WA63HbVUhyN/wEF/g33Uowv5WzoDLzl8JkZ+xo9I2JCXviOeroL6/i1BYvXhHP04e
         Cnmjq3l5+wD75cTF7TqxiDy7J8jwNY/e39CsbIMu2nMiWyXUY9EbA3+jWZkOf5FPotXE
         ybvIEcfg/KtH+VLfJgZJbknQwmOpyoX0ytnGJ3WHo6i56m4/brOmH/JmY3dYFys3EZtj
         gw+/w+MBc2J0Rs0NGig9Mpg57IlMd61D1A4CCE/YmAfVsLHsb3MW0eO0bEPaLGZAVyJ6
         jT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kqkqH+vvG1iWAQSiVlYNmjAZkH8Bw6RfQeA1R58YAM4=;
        b=ZWD4sMTKlW9dzW5a9469OJHW5N+RvqBQpG4GLCJ3ZwHQA1u1jVm2XBsCPHCzDC9XXt
         V9CX2j0gs/9whDH2ludj+Arwa+19++fOxaKHZ4u2QR95cNJuszyT/RvA9LOd6puh8kPx
         Uh0CbdALSwzCQ2BChH23DIn6c/nBXFQ5Nw9Z9KjBIvwvrB3RDHvH2nC7NmLvMPkH6Scs
         Z0r5ZRe2X5ptCpFcHt11SJZ/SVDv3y9CZgPTa5EJZsGA3elzaajfnDAynWHfUBZgDYUj
         fdq3x+UkLiFjg47yh7WUc/j+NpJ+L0WLQG9AEOve+TUHJsKZ6C2RK1KYVL11GnFSkZZ+
         Xagw==
X-Gm-Message-State: AHPjjUjZbFgVcaEs9yxxyMOLtssA5p96wDYgSlWMQeqW/jnJZT0/PC7e
	R0PSyETGf+u9Gw==
X-Google-Smtp-Source: ADKCNb6O0OYUFIowhUa9s7vR9rTt/7U99myilBwy5DP8e/jC31f2ysEWqsl1LQ3C/qVIaT0vKWL2gg==
X-Received: by 10.99.53.206 with SMTP id c197mr26625939pga.440.1505552534186;
        Sat, 16 Sep 2017 02:02:14 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id 70sm5431350pfh.63.2017.09.16.02.02.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 02:02:13 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: prefer using BIT macro
Date: Sat, 16 Sep 2017 14:32:09 +0530
Message-Id: <1505552529-30315-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

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


