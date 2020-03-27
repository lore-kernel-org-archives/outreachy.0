X-GM-THRID: 6808898651661795328
X-Received: by 2002:a92:bbd8:: with SMTP id x85mr14492089ilk.40.1585320327214;
        Fri, 27 Mar 2020 07:45:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls1851871ioc.1.gmail; Fri, 27 Mar
 2020 07:45:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvYqGQT/6hCCCoRoLnxW1JzooQ+G5wqNeG13YLNjNucgaEjxhqbHZ+VyJWOT6O7osOvIXOe
X-Received: by 2002:a5e:df04:: with SMTP id f4mr12935308ioq.32.1585320326049;
        Fri, 27 Mar 2020 07:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585320326; cv=none;
        d=google.com; s=arc-20160816;
        b=xXzcDUHBHAFLpAUIfsfzmn2gpibuOop4T2cxY3G/TXbnskZv0yW04jAxTtKyiCDNFQ
         mNsKEBFC6WhiuFqzc8HWrt+iVB1p/nJkjZQQPKKCJWvCv7EAUtG7CMCLp3MSnX6XmcmJ
         OWt73QHr2RjztwPGtt0KEsHMruSMpWseicpk7F0MJ8aTpCyFZiGVpWouJig9OxJjltUC
         FE59Ze6ChERjr1W7OFRAeTQJVQIwhx3wRXTA2fzclM5uO3buYR+zX8Yf0po3yPM5kfY6
         sOELpyarBQD3dz3dJYA/pbIosIqnL8NNVI8DWUPZbnpqr27ITUfySaNUT/UGUveD3yo+
         Li5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jY5mQk/uRf3fBlD0rRsw184r1JdZcrGZuBqVaCvjPbg=;
        b=asu+1n6xW8AqswXee01tNtAc65zmK81QHCt7ckbXB8LrqEgrN5Lxt8OjhvizPzQJss
         Z7ykBaYw5EAPNDF2kjF5fNmDONs7H6HmL7FLB6sSF1NzvXXoqVYuPZEdIeZSdY7yqLPs
         sbLtO5FDkWkMiosu6+8yZKBBLXH07ExMjN6tfvHna1FL6AQf/X+TN+jehxTsa7K4s18a
         xO28ncYhdFyyq4+rmh3V9rhDa2qinftsAODrjqyL2BW++v+mi0Su8uJxaI2nnQ7HUzhW
         ZCd9uTGRXu6/hpZ/ROrbYHeo8qkN0CXXFurv0uCB585ImG925UrVgBFknDJLUlt1E+mf
         GZfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KK2kaOd/";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j25si343578ili.4.2020.03.27.07.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 07:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KK2kaOd/";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b72so4593115pfb.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 07:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jY5mQk/uRf3fBlD0rRsw184r1JdZcrGZuBqVaCvjPbg=;
        b=KK2kaOd/X82l5sR84ko45Sb74Kh6heR4DLKgFHJkUZ8mDsGpnormOZlyxBYfro/jtH
         SAXG99gURBkGejEMA+/NDjig0z8md/AnBCIxwT9S3ijbgsWFUaB2FZIF0QKN8E0T/XHD
         srUPke+nDmo31LOZU1sK3DxCzDZkc81kLDH7nuYUaUdvrT9CI8HVrC0zRKr2yNZOlxCW
         kaECw8kk7u+J/owWc0FWKVYbJOvB/6yNGvvOo9ycszv/hekBc0sgYeQ9Jt5ucJ6TCTY7
         QegsoTlQZMMbWeyaMkpzVqJqN9kmvYgbOzdDZQ8El1+3YQ8x6qRX9TaKgl/Jx9F/6gSD
         KGhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jY5mQk/uRf3fBlD0rRsw184r1JdZcrGZuBqVaCvjPbg=;
        b=S4dSCrEQQwaXRKUinomBh6XSGzCApIW94FiIqpTwnaIpci3k3x7QahdNYbbEZAps/K
         7+/HkAZXkdZRIUcjtrE2ZjWaxiFOxbrucXdzFioU5hNOzgkbEYYCKM2WKnja3bEN7IZK
         756Ez0ZOfEto2/+GMR6Fz6Z7Uop1SBX9Lt3G4QgIGhI0fqtGkQwnRP9P2RE9NIBLZ7nh
         +Wotr242IQ6baZytvqX/VbsSF5IMy73VVwNwFVHT235vvahVctKKIcutsGO3HzL40b5Z
         BjyhLpfh3f0nS6OgKrl3waWlOdoOZ3XtOslpHiW4icanUx7c6f45YIumraEVfqxB2jtL
         TCbQ==
X-Gm-Message-State: ANhLgQ04B7MY/l9T1440ykQp/YxiAhrt4mhJfj3KzXnPDh4ybK8TM+dG
	9h7P2MxwXQX5+jTs20bG8kErJrhZA9Z/Ug==
X-Received: by 2002:a63:ce42:: with SMTP id r2mr15087148pgi.106.1585320325017;
        Fri, 27 Mar 2020 07:45:25 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.233.220])
        by smtp.googlemail.com with ESMTPSA id g69sm3939333pje.34.2020.03.27.07.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 07:45:24 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy Kernel][PATCH 1/2] staging: wlang-ng: Properly align the lines of function call
Date: Fri, 27 Mar 2020 20:12:28 +0530
Message-Id: <20200327144229.19738-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327144229.19738-1-debsoumyajit100@gmail.com>
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>

Align the lines of function call to improve code readability and to
adhere to the uniform Linux Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index fac38c842ac5..3d17037f954e 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,
 		freq = ieee80211_channel_to_frequency(msg2.dschannel.data,
 						      NL80211_BAND_2GHZ);
 		bss = cfg80211_inform_bss(wiphy,
-			ieee80211_get_channel(wiphy, freq),
-			CFG80211_BSS_FTYPE_UNKNOWN,
-			(const u8 *)&msg2.bssid.data.data,
-			msg2.timestamp.data, msg2.capinfo.data,
-			msg2.beaconperiod.data,
-			ie_buf,
-			ie_len,
-			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
-			GFP_KERNEL
-		);
+					  ieee80211_get_channel(wiphy, freq),
+					  CFG80211_BSS_FTYPE_UNKNOWN,
+					  (const u8 *)&msg2.bssid.data.data,
+					  msg2.timestamp.data, msg2.capinfo.data,
+					  msg2.beaconperiod.data,
+					  ie_buf,
+					  ie_len,
+					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+					  GFP_KERNEL);
 
 		if (!bss) {
 			err = -ENOMEM;
@@ -473,8 +472,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 				return -EINVAL;
 
 			result = prism2_domibset_uint32(wlandev,
-				DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-				sme->key_idx);
+							DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+							sme->key_idx);
 			if (result)
 				goto exit;
 
@@ -586,8 +585,8 @@ static int prism2_set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 		data = MBM_TO_DBM(mbm);
 
 	result = prism2_domibset_uint32(wlandev,
-		DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
-		data);
+					DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
+					data);
 
 	if (result) {
 		err = -EFAULT;
-- 
2.17.1


