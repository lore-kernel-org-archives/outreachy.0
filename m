X-GM-THRID: 6395900241087823872
X-Received: by 10.46.8.90 with SMTP id g26mr3566257ljd.16.1489161613485;
        Fri, 10 Mar 2017 08:00:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.18 with SMTP id 18ls1055024ljj.4.gmail; Fri, 10 Mar 2017
 08:00:12 -0800 (PST)
X-Received: by 10.25.150.2 with SMTP id y2mr2724031lfd.21.1489161612827;
        Fri, 10 Mar 2017 08:00:12 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id l138si258615wmg.0.2017.03.10.08.00.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:00:12 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u48so12153381wrc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4pgS0RxkygPKVloLSrhNBLakSfL+coy5QWKLxEKSCTA=;
        b=BfxJA8Cgur9cc3swHgbnbvt3l71jcxPf09zpI745StGpeYCt/MVEDrYtgPKLtMxCO9
         RDPKtxRdcB0TXuhqgbwSenrtfQ54CA3nYFbbIB+MI4RiEAVmJZTFAbt/5gsKs9zAuwU6
         tuykIO/7nCjmdR1puePZgWt21ViW5NSgnkYsbCYccCU5Q4jXx4uKcV1oYG1ToiNLX/ST
         sBgdyvi+0zfkhxmf7XhwnbFOyy83m3jcW9+mpX9GP19HQYd6iutJ4ZaVLwY5MfuJGPTh
         AJOxuOoXCUdv++68/oIDFyr/45c+td7OlLmZ+0zi3EB2a5teWY31O04ezbck5yYMuEKL
         QNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4pgS0RxkygPKVloLSrhNBLakSfL+coy5QWKLxEKSCTA=;
        b=lqAkWSIn6/IgsbF6j7OFrff8mhZ1djZZhgIUTJ+AYyVGqdqgaYa+YYaNpwUITEH55i
         WQZBzUH1OFsHn3QvkUxhxaQwoMrZrLiGjNgvmAwqZhs4pQvk569/GLi93USE3O4f2yLQ
         xnPHMyWOxo7gntkdJagn6xWjrKXipFq6O48TW0jJxkTXdsuLIRGxS+HKH3q8iMaYHGV1
         USlVXlr5Yt6m9lhcINVMNMqIgdfFsFDLTZp4j5v3PwHZ0K7Aki+2h4uccPs+wEjzwE3V
         pS26dreCdbxHqCaXHQjmKvHZmEY2j0Y+IxItkIAkjdSq6yQsZv1qhtCYX0bVibrYaIC2
         O/+w==
X-Gm-Message-State: AMke39mF0QTW4uXyRI8dTFY2OG/5DzhpXyUi2iK+vUdrLBJRE4WQUPM7ijszj6menvjSog==
X-Received: by 10.223.162.212 with SMTP id t20mr15770022wra.122.1489161612513;
        Fri, 10 Mar 2017 08:00:12 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id m29sm13459287wrm.38.2017.03.10.08.00.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:00:11 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 3/4] staging: rtl8712: Refactor conditionals in r8711_wx_get_rate
Date: Fri, 10 Mar 2017 17:59:59 +0200
Message-Id: <97c61822ad55d9e65bc292b6082d2247d9174916.1489161001.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>

Reduce indentation level in r8711_wx_get_rate.
This was done using the following Coccinelle script:

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

*if (e)
S
else { rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 72 +++++++++++++--------------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index add46ff..7ba8cf6 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1409,44 +1409,44 @@ static int r8711_wx_get_rate(struct net_device *dev,
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
+
+	p = r8712_get_ie(&pcur_bss->IEs[12],
+			 _HT_CAPABILITY_IE_, &ht_ielen,
+	    pcur_bss->IELength - 12);
+	if (p && ht_ielen > 0) {
+		ht_cap = true;
+		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
+		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
+		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
+			    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
+		short_GI = (le16_to_cpu(pht_capie->cap_info) &
+			    (IEEE80211_HT_CAP_SGI_20 |
+			    IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
 	}
+	while ((pcur_bss->rates[i] != 0) &&
+		(pcur_bss->rates[i] != 0xFF)) {
+		rate = pcur_bss->rates[i] & 0x7F;
+		if (rate > max_rate)
+			max_rate = rate;
+		wrqu->bitrate.fixed = 0;	/* no auto select */
+		wrqu->bitrate.value = rate * 500000;
+		i++;
+	}
+	if (ht_cap) {
+		if (mcs_rate & 0x8000 /* MCS15 */
+			&&
+			rf_type == RTL8712_RF_2T2R)
+			max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
+				    270) : ((short_GI) ? 144 : 130);
+		else /* default MCS7 */
+			max_rate = (bw_40MHz) ? ((short_GI) ? 150 :
+				    135) : ((short_GI) ? 72 : 65);
+		max_rate *= 2; /* Mbps/2 */
+	}
+	wrqu->bitrate.value = max_rate * 500000;
+
 	return 0;
 }
 
-- 
1.9.1


