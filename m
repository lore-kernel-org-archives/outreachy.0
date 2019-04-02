X-GM-THRID: 6675215103828164608
X-Received: by 2002:a63:f201:: with SMTP id v1mr924852pgh.27.1554194629445;
        Tue, 02 Apr 2019 01:43:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5681:: with SMTP id h1ls29597pfj.11.gmail; Tue, 02 Apr
 2019 01:43:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyT772t2+NDyaDiyQLXAmGiB4V5zKXg2MkcGABdc+ovIe6QDsxR/CHlg8z+LHOO5VAg+eQD
X-Received: by 2002:a65:6652:: with SMTP id z18mr1104553pgv.75.1554194628814;
        Tue, 02 Apr 2019 01:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554194628; cv=none;
        d=google.com; s=arc-20160816;
        b=cRRL+MmCsrOujcCCdlG+gz/OQ9Prfco9wtFclKcpOgAOKTzU7Hi2Hk4NtKhZgQM6Jp
         XpwtxRtpDMGoMp0L9A5VaJEjAYQI3o3Ovv93pnwq3QcY7dskkoNXi2cLya5ly8udHdS9
         TWJACL1+n1RfPI1Nk45Tzu5tYEDhYY2H2sWAYdqxK3gDvfNzGtQ1jE/1HQ9PwcVMPVcA
         CWApwKThThs2XVKIAPYQndKRWteJcheztJujZ587OK2vbpEp6Olf/VahhCl4SZABGIuy
         aKzl19btaDBS0gea/Z07bt8tNHvXYGqsPJfxavEd16OxTD75SvTxF1UgfV6WvjuZuHI1
         SSIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y+qp7MyD8XUQ7kRVrdUI0ig+SDRBCT9CbFXCATVegx4=;
        b=fHUCcQsLgbgL0+r3sTT8p7Fa1rTolmw1361LDYSLcsll1PPoCcXHUIn1UreLsPBajU
         7lSy1RX7DxtktxwBDodNCsLx3APJoMjZh5BDnGI+ysNSUW4Dp7f/mCcPql65GzkAIwFi
         xFXLTf2pkCc0TFPDeTGs7JORxcWKgKMj+2U+72KIFM2dTNLfCDgyfnNfDIS3SWhbh8dW
         h7LPjL5vp0jS/Znqn3JPKeXEO8SqsC2H/5ZwHmuHECVYRukqvfQpJaA1hEyDEUxj5hCf
         8E2BizIW2dR3T+LqJwi7/5bGaDKMyw55/V2K+wpg2fNfP+/rt7vajzcPcU2aWcU2WeZh
         ImLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+G6osMO;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e124si741060pgc.3.2019.04.02.01.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+G6osMO;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id j26so6205057pgl.5
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 01:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y+qp7MyD8XUQ7kRVrdUI0ig+SDRBCT9CbFXCATVegx4=;
        b=j+G6osMOaakxSYm6VCvvWH3DhRO4I7UDpyQu4lNA76Z76hLHrUZARbbhsHWrH7FwFR
         fyEuH3J2ZjB9OIOORS3JLquHEe/75YHNP2Mvw4r8eX1vjUoLQnaRr0GpTreoIPWpebI7
         WffhmpOBZK3mbknDJWKKxgZedqQvFekEuB2uICp6368w5yx5k+nsK3lFY3Zg+SjjhHxS
         6joQZMkA+m9QjtmYN0EWF7HlkfiRlB5bnfVFkq0XGHuJ9sL/8uiJdXSENvv8YbObPo0x
         dIw5l526ggcA30Is/++iJCt+WbdaxGPxalzlZ2pCvfBd4isgjsTyYFuXT22rYOiPFQvP
         URsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y+qp7MyD8XUQ7kRVrdUI0ig+SDRBCT9CbFXCATVegx4=;
        b=WjwNZ+H2Ax3M1bD3rCIV9+LjIQplfubxOd30iIwCuM03rqudU+Yt79Xn65T0lijZtI
         srG1hqOQdX1mcR82fNvwnae3k8pMZi81BuHrtn68QM/H0I3TqOOqmSYJYsGdKJZMc0UK
         d3aE95m3IVfR6weJACZQt3nfTJv3+iBhLnHUdDd+0hnAFpkY4/yE339Cobu+P8R8SNYe
         oeSvfM/Ns7auiU80iQU3MU/GPIvwln76MUj+Ou2egEoOeQPozC0HxMvPQ1zek6LbYT0N
         KWBHgNgtLn1uZZA43Imf7H2SNnjj2cIuzKcG0AFVx9pBtZjqu82JtXkdKp88oS4yV/Xo
         mrtQ==
X-Gm-Message-State: APjAAAV1qQ2ElpUs0BK8H9qI5bMwDsvsfyVr7jquae9PlDYAK9JLy/KW
	Xgf30LuQKPpGIXzvaPASFyVDgFfnGKI=
X-Received: by 2002:a62:6842:: with SMTP id d63mr6167232pfc.9.1554194628445;
        Tue, 02 Apr 2019 01:43:48 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.14])
        by smtp.googlemail.com with ESMTPSA id o5sm43646613pfa.135.2019.04.02.01.43.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:43:47 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: include: Remove unnecessary typedef.
Date: Tue,  2 Apr 2019 14:13:38 +0530
Message-Id: <20190402084338.2817-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Typedef no longer affect the code.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Delete unnecessary typedef.
 drivers/staging/rtl8723bs/include/ieee80211.h | 54 -------------------
 1 file changed, 54 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 9efb4dcb9d3a..0f085b26c476 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -201,53 +201,6 @@ enum NETWORK_TYPE
 
 #define IsSupportedVHT(NetType) (((NetType) & (WIRELESS_11AC)) ? true : false)
 
-
-typedef struct ieee_param {
-	u32 cmd;
-	u8 sta_addr[ETH_ALEN];
-	union {
-		struct {
-			u8 name;
-			u32 value;
-		} wpa_param;
-		struct {
-			u32 len;
-			u8 reserved[32];
-			u8 data[0];
-		} wpa_ie;
-	        struct{
-			int command;
-			int reason_code;
-		} mlme;
-		struct {
-			u8 alg[IEEE_CRYPT_ALG_NAME_LEN];
-			u8 set_tx;
-			u32 err;
-			u8 idx;
-			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
-			u16 key_len;
-			u8 key[0];
-		} crypt;
-		struct {
-			u16 aid;
-			u16 capability;
-			int flags;
-			u8 tx_supp_rates[16];
-			struct rtw_ieee80211_ht_cap ht_cap;
-		} add_sta;
-		struct {
-			u8 reserved[2];/* for set max_num_sta */
-			u8 buf[0];
-		} bcn_ie;
-	} u;
-}ieee_param;
-
-typedef struct ieee_param_ex {
-	u32 cmd;
-	u8 sta_addr[ETH_ALEN];
-	u8 data[0];
-}ieee_param_ex;
-
 struct sta_data{
 	u16 aid;
 	u16 capability;
@@ -870,13 +823,6 @@ static inline int is_zero_mac_addr(const u8 *addr)
 #define CFG_IEEE80211_RESERVE_FCS (1<<0)
 #define CFG_IEEE80211_COMPUTE_FCS (1<<1)
 
-typedef struct tx_pending_t{
-	int frag;
-	struct ieee80211_txb *txb;
-}tx_pending_t;
-
-
-
 #define MAXTID	16
 
 #define IEEE_A            (1<<0)
-- 
2.17.1


