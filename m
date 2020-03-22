X-GM-THRID: 6807130356444037120
X-Received: by 2002:ab0:4913:: with SMTP id z19mr11766623uac.132.1584908542216;
        Sun, 22 Mar 2020 13:22:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls1506254vse.7.gmail; Sun, 22 Mar
 2020 13:22:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIiuiZPzLt5goX2xbkJqQKuBEveHOgfBuKqfyiY2gepiBXuX75KUPuwpHRDLg5SlG0cp0J
X-Received: by 2002:a67:1447:: with SMTP id 68mr3065099vsu.163.1584908540977;
        Sun, 22 Mar 2020 13:22:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584908540; cv=none;
        d=google.com; s=arc-20160816;
        b=Hn4RhyV1BToEd7y5KWpW6zacB0w8EynpPG/Cv/hYAJY+xy+ZFQm3iJnhYeMBWLQM92
         B+JQL7dp/6qJyU1JG9q0ljJrxqcZQPW3pHQVBfneeuDUKdp7uwfXrsIgaCNQr1lt1dwW
         QuwbmhRCACNftC3fz4+A9tF1+fKyzZlp7YhptVQ2Hf3OSPSFSb7cDDYaJhAWgR0HC31v
         VvuYNSjNeVKfiWOkQdhiK/6dz/+qI+tXXQJ+2I3r0qVLAQM8p6qabPakAOPCX9QUY5sV
         bWdP0o3ha+BQKmV+mraU4yNgr22brOR+V7zSMq+BBp3DC0TvRWHvFXbf7G4TvmVNElMs
         c0GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=s5N8HPshUSv1/rbRJhRfTwnB6R7SlJsQhsweyy2/B3o=;
        b=Sjyu0ZZ2fG9pBC4r9wdHI0Ne2pUjeK7JO8soYRxzWHs4REoxXLeEZomrxslwAhW36N
         GBil0hvZU8eRxoKGw9YLx+EivpGk/ZaJEcHgqxiJ+zKFepQEhE0YMY4K0ksT/8wo0AK6
         D7lcd2UXiEh8qfwgYPCD48p9zpszV5DMQULdyWftSi+W3X8W3y6bUgS5fQXYlNsT7o5b
         dwbOP/EWW5ja8rboid9zpF++EmqQ0s7+ZSjGFpWuAybxFSecTvKSu+Az1azX4UFBXfvq
         KIYGoO1MGin9WYxFEddUUODAR6pbhdqw6Y+02mL0Nvrpup7bj+gkuP0PGxviNUsQlkiN
         7wNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="l0H7tsH/";
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id i13si897021vkk.5.2020.03.22.13.22.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 13:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="l0H7tsH/";
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id nu11so5060619pjb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 13:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s5N8HPshUSv1/rbRJhRfTwnB6R7SlJsQhsweyy2/B3o=;
        b=l0H7tsH/Vn+KiDgJxXaPPCb/uVoShPRec3BWMEDB1rDNTTCwFZKaCS+OTHgC2DN6PJ
         ExRL03gZITpol+BiIYVLcUcRngJxX2ovHYVvW3fhvA5Tcr8O6ALLXuQyHQUlpiidgNoP
         jmWCsUwWkAvDNM/znLFtofWZvT8DWtjvhueZJ6n33r3BuqYNGx6hx+r/mMqUOhbNOtD7
         uXevKM003q0/I65/0UEIRixtwBjfRwZ7k/rt15Dnv/eOxF7b4/MsEb0lRAUBS1vOxk3U
         HAgDnRSizkNXgS5T82IubjMhkijLq7NqTwJmE1lpo73Brt8kb88cWUjSmjvPu6NUfTku
         Z1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s5N8HPshUSv1/rbRJhRfTwnB6R7SlJsQhsweyy2/B3o=;
        b=PxZTqaLS3/FY7gL+FZPwyb6MgUncuBIQFqjn6x1q37UwzOIj4j7LrhpJkntupqfkj8
         R1eZKS5xOVwWcxGQJ2xtCd/7czhMkPHv4YmaHqUYkja6O/VXMSKeJTO6kOkgZngggj1c
         HNO3o5yiX/SHgS2lhy9HiWg8m87PEiDpXD4QzCdmwLzly7rjCA7bUoR2yALTq6KlxVYT
         HkjQ997XcGFYyXzwMhNo3XZHul5geNz+w8BMG2bALkQMTKYi8SWPBp1u3TOMmaAoPO03
         0exVB5TkoQ8Ha4eD0isbPcULKh5tk1D0trpeUARU44/W1lUvz/YKjQd4EqG8jIUo+shM
         LJrg==
X-Gm-Message-State: ANhLgQ2fpXoazADSqmJbhhofZCFKBPoIr1r5/46c6mE6pR4bmVEpRgLX
	q7g8c5kYxHOllImrXa8886qtxDpWGu4=
X-Received: by 2002:a17:90a:9310:: with SMTP id p16mr20966563pjo.24.1584908539286;
        Sun, 22 Mar 2020 13:22:19 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z63sm11246027pfb.20.2020.03.22.13.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 13:22:18 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:52:14 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20200322202214.GA9750@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove comparisons to NULL in conditionals in
drivers/staging/rtl8723bs/core/rtw_ap.c
Issues reported by checkpatch.pl as:
CHECK: Comparison to NULL could be written

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index a76e81330756..82b977c07205 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -79,7 +79,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			&tim_ielen,
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
 		);
-		if (p != NULL && tim_ielen > 0) {
+		if (p && tim_ielen > 0) {
 			tim_ielen += 2;
 
 			premainder_ie = p + tim_ielen;
@@ -103,7 +103,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				&tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
-			if (p != NULL)
+			if (p)
 				offset += tmp_len + 2;
 
 			/*  get supported rates len */
@@ -112,7 +112,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				_SUPPORTEDRATES_IE_, &tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
-			if (p !=  NULL)
+			if (p)
 				offset += tmp_len + 2;
 
 			/* DS Parameter Set IE, len =3 */
@@ -1036,7 +1036,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
-	if (p !=  NULL) {
+	if (p) {
 		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 	}
@@ -1048,7 +1048,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		&ie_len,
 		pbss_network->IELength - _BEACON_IE_OFFSET_
 	);
-	if (p !=  NULL) {
+	if (p) {
 		memcpy(supportRate + supportRateNum, p + 2, ie_len);
 		supportRateNum += ie_len;
 	}
@@ -1136,8 +1136,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			break;
 		}
 
-		if ((p == NULL) || (ie_len == 0))
-				break;
+		if (!p || ie_len == 0)
+			break;
 	}
 
 	/* wmm */
@@ -1165,7 +1165,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 				break;
 			}
 
-			if ((p == NULL) || (ie_len == 0))
+			if (!p || ie_len == 0)
 				break;
 		}
 	}
@@ -1296,7 +1296,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psta = rtw_get_stainfo(&padapter->stapriv, pbss_network->MacAddress);
 	if (!psta) {
 		psta = rtw_alloc_stainfo(&padapter->stapriv, pbss_network->MacAddress);
-		if (psta == NULL)
+		if (!psta)
 			return _FAIL;
 	}
 
@@ -1453,7 +1453,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
-	if (psetstakey_para == NULL) {
+	if (!psetstakey_para) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1491,12 +1491,12 @@ static int rtw_ap_set_key(
 	/* DBG_871X("%s\n", __func__); */
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
 	}
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
@@ -1668,11 +1668,11 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 		&wps_ielen
 	);
 
-	if (pwps_ie == NULL || wps_ielen == 0)
+	if (!pwps_ie || wps_ielen == 0)
 		return;
 
 	pwps_ie_src = pmlmepriv->wps_beacon_ie;
-	if (pwps_ie_src == NULL)
+	if (!pwps_ie_src)
 		return;
 
 	wps_offset = (uint)(pwps_ie - ie);
@@ -2322,7 +2322,7 @@ void rtw_ap_restore_network(struct adapter *padapter)
 	for (i = 0; i < chk_alive_num; i++) {
 		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
 
-		if (psta == NULL) {
+		if (!psta) {
 			DBG_871X(FUNC_ADPT_FMT" sta_info is null\n", FUNC_ADPT_ARG(padapter));
 		} else if (psta->state & _FW_LINKED) {
 			rtw_sta_media_status_rpt(padapter, psta, 1);
-- 
2.17.1


