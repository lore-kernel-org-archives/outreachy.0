X-GM-THRID: 6947727064751407104
X-Received: by 2002:adf:f4c2:: with SMTP id h2mr29858151wrp.347.1617643766949;
        Mon, 05 Apr 2021 10:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls8614577wrd.0.gmail; Mon, 05 Apr
 2021 10:29:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJvx38Qh/59QEFQkIdt+YnEs0hJJgiNTxdLGBqIFWE4LAi/LMDAwejlAND12b5AoyyWdzK
X-Received: by 2002:adf:f88f:: with SMTP id u15mr30138993wrp.402.1617643765573;
        Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617643765; cv=none;
        d=google.com; s=arc-20160816;
        b=AxSC867n952mapnw/U9P4NYftCG1ZNX+BgDDD+yqRic6EVeETOQeQujz/6sNQNpNg9
         D+rC9ulMjhVEPtNMmL8dWHDpBrOEb8OzCaw29P6Cg+R44BIEQcZno4hE58GsGE+YY35Q
         5u0VUE2rt6Le2XLQQYnqsVrjA6NDrEO2CWWLo69RJwFOBaONU+JVF8plaOvF2hVuG1zk
         8kZvW5K5CIPZqO6ozWcy1Mx7HXiv38TzbeEPCVyD4ACFvHnrGRrO3mfT+F6ljp+t4ts0
         etsmPxzzNNoK7eFX1YdJPRFf+pzbqLP5sy1zJlj5qczN2qOngyuD8UdJF9NQ6fE9mm+Z
         cLTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=YfIIHnV0A9du9ORGwoOsInV843q39HnrSsHUhvGVWnc=;
        b=zQ4jIGQMXRLbhNubUohpBXlzZReSjcPoZTbbGwJaqB71skNBrPIlOo9+hKbpQOwIbK
         jc38rdtSsBr2EHPpejBscZMOHGO87Ud55kvHqO4MIJ7gKba3URxmhqDnjd6OJV8ABmDr
         CVDawWlillud1nHmBytND0b2b0e6iOZYDqVycOrsytkhclm1vt/Va/PzEbHl/fHbZ/CF
         L+SvQlO11WTu9fNzIGY4jkdWzEFWYVq5J2h2Kc1/LkKaFVX+5pTEd6U+bO4/l20u1Han
         auGG1KZZ8D66rAndx3Dk7ZchDkk4QjXHDs7mHdAmveY6JigUtCoeS3O3Kot/1xoLCCJK
         WKEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LKLZaJMd;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id t124si22714wmb.3.2021.04.05.10.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LKLZaJMd;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id q26so5851294wrz.9
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=YfIIHnV0A9du9ORGwoOsInV843q39HnrSsHUhvGVWnc=;
        b=LKLZaJMdbTLWBZcTbbPQK4lBcGeN6boliJnrSn+vv0siO3oWjizfBhcsBHe3/UD0kS
         s/cvopt2lCV35yVYbPvfv6daJE/PtEsAlG/OOrdEfXZAXYVFhcm70feIhmAjfsEJmTm0
         3C9alVqtEqcOf3eWkYxL3FvHy/5WtbaeloNKo69Cwwf2lxim6WbdSef0hxcMC6tV/ISV
         5XHJdyS+dcdg8/zSsZEA+3oISNcRuk9MD24+4tLHi2hoTQ4ip31oLKMqAmfMqAq0SEx/
         XMXV33B+ivxgiI9CcvcEMpD4e0Bj0AACcNdbrnIVAAOAv/pEhBNeBTFwl19ePO3TMnem
         4nPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YfIIHnV0A9du9ORGwoOsInV843q39HnrSsHUhvGVWnc=;
        b=savU4TT0XA51saIPgmIvd7bYxzbMg+ecqG/ZI1zwtczvIIqbLGSEOEk4+ited2ckcI
         Q0abiHqvJT9HitLTSh2xczBE+sQZzSHzouixvIStDsk+EraXzyYLHfpsMIUgK2pjMYDK
         FqXZT3etAvPzNGSWM2TQaWrzie9pEZyc4fy4n2kL7kCSNvAcbGollZoHIxwpAIDsf1Dy
         hJL8rPAWfsU67vATchy/gavfdmom81vDBc6Bf4RUmDoFE5EaXwBWfwZG9EjRq6pKGK/X
         xGLlJ8Dfd43a/9MgD9LHjCm/PGfw63bBWyb4s/SA1u1EfKW5hg4bjKFwRaG91VE7LK4J
         Q72g==
X-Gm-Message-State: AOAM533sZaaOYGbd40+0PCEo3xNW8NjueG8562oMJ0U5pqrNXxi3K4bX
	i0OUDAgmbMoKUXgtV4Y1H9M=
X-Received: by 2002:a5d:64af:: with SMTP id m15mr29754671wrp.231.1617643765186;
        Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id x1sm17858699wro.66.2021.04.05.10.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8723bs: core: reorganize characters so the lines are under 100 ch
Date: Mon,  5 Apr 2021 18:29:19 +0100
Message-Id: <6ce5f20399f2bea9f08bb37150fc67fe3c2b2a55.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up warnings of "line over 100 characters" but avoinding
more than 90 characters in file rtw_ap.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 4dab4d741675..ca6fec52d213 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -278,11 +278,13 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			if (psta->state & WIFI_SLEEP_STATE) {
 				if (!(psta->state & WIFI_STA_ALIVE_CHK_STATE)) {
-					/* to check if alive by another methods if station is at ps mode. */
+					/* to check if alive by another methods */
+					/* if station is at ps mode. */
 					psta->expire_to = pstapriv->expire_to;
 					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
 
-					/* DBG_871X("alive chk, sta:%pM is at ps mode!\n", MAC_ARG(psta->hwaddr)); */
+					/* DBG_871X("alive chk, sta:%pM is at ps */
+					/* mode!\n", MAC_ARG(psta->hwaddr)); */
 
 					/* to update bcn with tim_bitmap for this station */
 					pstapriv->tim_bitmap |= BIT(psta->aid);
@@ -309,7 +311,8 @@ void expire_timeout_chk(struct adapter *padapter)
 			);
 			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
 		} else {
-			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
+			/* TODO: Aging mechanism to digest frames in sleep_q to */
+			/* avoid running out of xmitframe */
 			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt)
 				&& padapter->xmitpriv.free_xmitframe_cnt < ((
 					NR_XMITFRAME / pstapriv->asoc_list_cnt
@@ -375,7 +378,8 @@ void expire_timeout_chk(struct adapter *padapter)
 			if (list_empty(&psta->asoc_list) == false) {
 				list_del_init(&psta->asoc_list);
 				pstapriv->asoc_list_cnt--;
-				updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
+				updated = ap_free_sta(padapter, psta, false,
+						      WLAN_REASON_DEAUTH_LEAVING);
 			}
 			spin_unlock_bh(&pstapriv->asoc_list_lock);
 		}
@@ -469,7 +473,8 @@ void update_bmc_sta(struct adapter *padapter)
 
 		memset((void *)&psta->sta_stats, 0, sizeof(struct stainfo_stats));
 
-		/* psta->dot118021XPrivacy = _NO_PRIVACY_;//!!! remove it, because it has been set before this. */
+		/* psta->dot118021XPrivacy = _NO_PRIVACY_;//!!! remove it, */
+		/* because it has been set before this. */
 
 		/* prepare for add_RATid */
 		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
@@ -748,8 +753,8 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
 	/* check if there is wps ie, */
-	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
-	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
+	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating */
+	/* hostapd, and at first time the security ie (RSN/WPA IE) will not include in beacon. */
 	if (!rtw_get_wps_ie(pnetwork->IEs + _FIXED_IE_LENGTH_,
 			    pnetwork->IELength - _FIXED_IE_LENGTH_, NULL, NULL))
 		pmlmeext->bstart_bss = true;
@@ -1117,7 +1122,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 				*(p + 8) |= BIT(7);/* QoS Info, support U-APSD */
 
-				/* disable all ACM bits since the WMM admission control is not supported */
+				/* disable all ACM bits since the WMM admission */
+				/* control is not supported */
 				*(p + 10) &= ~BIT(4); /* BE */
 				*(p + 14) &= ~BIT(4); /* BK */
 				*(p + 18) &= ~BIT(4); /* VI */
-- 
2.25.1


