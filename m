X-GM-THRID: 6395900241087823872
X-Received: by 10.25.196.68 with SMTP id u65mr4572134lff.0.1490136805648;
        Tue, 21 Mar 2017 15:53:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.1 with SMTP id 1ls52013ljh.31.gmail; Tue, 21 Mar 2017
 15:53:25 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr4482003lfg.19.1490136805089;
        Tue, 21 Mar 2017 15:53:25 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id n128si1175708wmf.2.2017.03.21.15.53.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 15:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so5734402wma.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 15:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pvp9hflaeVMullxUwDHxsLbPP6zzohAbCSsVGTQymzY=;
        b=QexYbWuZ3IwWn/5TOmYKr2CIES9nKRPjSVCJh4mKvyCtTFDN6tdAh6GeictueQiXeg
         HXUQ38WjXbbz3WmTv4ayItq+bmVtHxhYEOP0AbOYHT8N4a6bAm/RuqISepypm1byX0l0
         UgCYoHXCiLVwWn4n3tkXjdVwf6cPAuNuPASaUEbtX/Ua1VRkXYmk2gqpUK5KrBxWJ5JD
         qrCtEMoYSv6zkhycwUIKp7dTInH0p2hAf+cVtgezbDBGlRtpFhJE3GdSm8Rkoqh4E/un
         pvZ8Nu0nG8yPmdMex586Yxof9A7JMlgycU6+Ecg6AqOOI2PeCzA2IowIB8GMOeIrzKwv
         u9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pvp9hflaeVMullxUwDHxsLbPP6zzohAbCSsVGTQymzY=;
        b=sItmI07Je64SdgkkSYPpBwd3H+V6HhsNgIm1ZEFHXkb41DbeoKz+WqBf305OBEDCYY
         IUC92cG8HQOF9Fidtte0VHx0gFgPYXb8PDGJpfbY0N40YEA4qqgv7tUTomBQZHE8tRCx
         p48lM2211V22ck70vXA2CeUdr7XpathSZQNKFXF8DbsDi9jAQ8lTXBnB56TgrhlRJS5+
         i7R728sVcTb8xsB1xXGIheUuQOZX2HfDdIhlGEAxzxtfdzCqh4mwW9Uo3+24NEY3oYFx
         qqIocvO5SOvNTWQL68sJsY5awlHjPgfw1VhHI8VP7Y+ChQH+OX7qObOcM63j5jsSA6fN
         ss3g==
X-Gm-Message-State: AFeK/H1D1scsNSKl1ymEZzk94ZccIvt2XCakodIOLxH6bVXxTW43JYpumGj9dmBcrkD4Gg==
X-Received: by 10.28.148.143 with SMTP id w137mr4799508wmd.72.1490136804821;
        Tue, 21 Mar 2017 15:53:24 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id u66sm19369573wmd.24.2017.03.21.15.53.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 15:53:24 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 3/4] staging: rtl8712: Restructure code for clarity
Date: Wed, 22 Mar 2017 00:53:16 +0200
Message-Id: <586ec9083d18ffa252406430e1322e4b7b989b10.1490136448.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490136448.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1490136448.git.narcisaanamaria12@gmail.com>

Invert if statements to be able to return immediately in case of error,
and to avoid additional else branch.

Improve layout of function since there is more horizontal space now.

This was found using the following Coccinelle script:

@disable neg_if@
expression e,E;
statement S;
@@

*if (e)
    S
    else { return -E; }

    @disable neg_if@
    expression e,E;
    statement S;
    identifier l;
    @@

    *if
(e)
    S
    else
{ rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 69 +++++++++++++--------------
 1 file changed, 33 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 38c1703..3d6e818 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1406,44 +1406,41 @@ static int r8711_wx_get_rate(struct net_device *dev,
 	u16 mcs_rate = 0;
 
 	i = 0;
-	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
-		p = r8712_get_ie(&pcur_bss->IEs[12],
-				 _HT_CAPABILITY_IE_, &ht_ielen,
-		    pcur_bss->IELength - 12);
-		if (p && ht_ielen > 0) {
-			ht_cap = true;
-			pht_capie = (struct ieee80211_ht_cap *)(p + 2);
-			memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
-			bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
-				    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
-			short_GI = (le16_to_cpu(pht_capie->cap_info) &
-				    (IEEE80211_HT_CAP_SGI_20 |
-				    IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
-		}
-		while ((pcur_bss->rates[i] != 0) &&
-			(pcur_bss->rates[i] != 0xFF)) {
-			rate = pcur_bss->rates[i] & 0x7F;
-			if (rate > max_rate)
-				max_rate = rate;
-			wrqu->bitrate.fixed = 0;	/* no auto select */
-			wrqu->bitrate.value = rate * 500000;
-			i++;
-		}
-		if (ht_cap) {
-			if (mcs_rate & 0x8000 /* MCS15 */
-				&&
-				rf_type == RTL8712_RF_2T2R)
-				max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
-					    270) : ((short_GI) ? 144 : 130);
-			else /* default MCS7 */
-				max_rate = (bw_40MHz) ? ((short_GI) ? 150 :
-					    135) : ((short_GI) ? 72 : 65);
-			max_rate *= 2; /* Mbps/2 */
-		}
-		wrqu->bitrate.value = max_rate * 500000;
-	} else {
+	if (!check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE))
 		return -ENOLINK;
+	p = r8712_get_ie(&pcur_bss->IEs[12], _HT_CAPABILITY_IE_, &ht_ielen,
+			 pcur_bss->IELength - 12);
+	if (p && ht_ielen > 0) {
+		ht_cap = true;
+		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
+		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
+		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
+			    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
+		short_GI = (le16_to_cpu(pht_capie->cap_info) &
+			    (IEEE80211_HT_CAP_SGI_20 |
+			    IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
+	}
+	while ((pcur_bss->rates[i] != 0) &&
+	       (pcur_bss->rates[i] != 0xFF)) {
+		rate = pcur_bss->rates[i] & 0x7F;
+		if (rate > max_rate)
+			max_rate = rate;
+		wrqu->bitrate.fixed = 0;	/* no auto select */
+		wrqu->bitrate.value = rate * 500000;
+		i++;
+	}
+	if (ht_cap) {
+		if (mcs_rate & 0x8000 /* MCS15 */
+		    &&
+		    rf_type == RTL8712_RF_2T2R)
+			max_rate = (bw_40MHz) ? ((short_GI) ? 300 : 270) :
+			((short_GI) ? 144 : 130);
+		else /* default MCS7 */
+			max_rate = (bw_40MHz) ? ((short_GI) ? 150 : 135) :
+			((short_GI) ? 72 : 65);
+		max_rate *= 2; /* Mbps/2 */
 	}
+	wrqu->bitrate.value = max_rate * 500000;
 	return 0;
 }
 
-- 
1.9.1


