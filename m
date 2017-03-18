X-GM-THRID: 6395900241087823872
X-Received: by 10.46.83.75 with SMTP id t11mr350422ljd.26.1489862122930;
        Sat, 18 Mar 2017 11:35:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.133 with SMTP id 127ls1018183ljf.39.gmail; Sat, 18 Mar
 2017 11:35:22 -0700 (PDT)
X-Received: by 10.46.1.12 with SMTP id 12mr2940608ljb.30.1489862122395;
        Sat, 18 Mar 2017 11:35:22 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id i76si457286wmh.1.2017.03.18.11.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so8122225wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=O7Q/EIjF9SGmUjFH3aFFD58hkpI4IZoQOzh8B+FAN/Y=;
        b=ZEUvf3XQLZWEVhantWYpIKYsU9cAAhX3AAFAsAg9TyO96mTzPT6PvdfCViRWteAxMn
         OfrFLH8KcsO+pfCazXeNySpcL9sVO/IPE4+8VdA+nApOtZkUryy49KmsOkIllFNY4M3j
         Qq7XNffVocNAHL/Ce6Wd40rZErcueJt6rUsIO0dythV7akLdavTrdQGX9govKGw8/ISY
         IWIiyCtGLx3u+sgmyJvkmOPGO7YnsWbJqocMGVl1dwZCzF4/cnvJOmdJK/1I/+hbIkuB
         NPRRwfVnv1f5nTonusKw4a4NcXZU4fPzwPy3Fs5D91StEEN3HgzWlROCel648GZknpPr
         EMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=O7Q/EIjF9SGmUjFH3aFFD58hkpI4IZoQOzh8B+FAN/Y=;
        b=KJIvEY5Y7q4jgRd0T9JfrBm0nucTF979lZpD+qRNcPFMyVBgBR/WBq7rArqrk2Rj1X
         YHU+3pAKzoqLjrxXIP/A5YqKcNOc6xmss6SrTWhlV7sRwrn5ZrETRo3hM+vLFeZatLVQ
         EhTYRVsuW75zE0t0QGUQiDjLBZRhklxXBN4NFajxi2twfjG7GQELlNEg0fPpfT2jY97L
         k3kBu8MntpETfni6Q5P4p8G7/H3XZQDO1MPHMjvqvAFemzPcfELA4ZSrwWtYRxK9NMqB
         HoECIZAY55g/ooUbOoaQA5LHB3Y/GtHcgRGlzK17f8mRhOMWH2U0jt0OTS5DkKF4+aTi
         yliA==
X-Gm-Message-State: AFeK/H3jcKfNQkN6q3x1ZgHSosuum46BCwowzAbkwlp+tP31AtoHrcUP9xfYlgdyVI0SKw==
X-Received: by 10.28.193.197 with SMTP id r188mr3486160wmf.116.1489862122111;
        Sat, 18 Mar 2017 11:35:22 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id b17sm7083626wma.33.2017.03.18.11.35.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 11:35:21 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 3/4] staging: rtl8712: Invert if statements to reduce indentation level
Date: Sat, 18 Mar 2017 20:35:14 +0200
Message-Id: <e734f4eecf7cbfb020354998768a35ed5ec4b625.1489861352.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489861352.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1489861352.git.narcisaanamaria12@gmail.com>

Invert if statements to be able to return immediately in case of error,
and to avoid additional else branch, and then continue with the rest
of the function without excessive indentation.

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


