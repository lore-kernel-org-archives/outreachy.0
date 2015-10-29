X-GM-THRID: 6210381585761435648
X-Received: by 10.107.18.17 with SMTP id a17mr1213387ioj.24.1446099759605;
        Wed, 28 Oct 2015 23:22:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.81 with SMTP id m78ls162668iom.33.gmail; Wed, 28 Oct
 2015 23:22:39 -0700 (PDT)
X-Received: by 10.50.164.167 with SMTP id yr7mr1185735igb.13.1446099759320;
        Wed, 28 Oct 2015 23:22:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1393pac.2.2015.10.28.23.22.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy1so24823564pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LEWTiZtXoYltnBKd1obqtISL2MKFAd8tKChFlF68E2k=;
        b=Umky7wjkl31W6XxqcSlyD6Nu4j2N2/xdqzY5SLDtT9TvWCRwQelSoZwS/QgP/OdRtL
         wvv8VJs8YzEnbPQoqgfQGph+Qm5JKW+GjAtjrqcWp3AgDmeNd7cjq0XXghATBrBSgoC1
         dT6/xxn2R2z9qZHfPp47uibZF8AuZhMd2xz7eAzHUHt7/2AU6NmSegphagTJck0oZkrD
         ljr0XjLELbp8+S9SkNJt3Cfm9wIpo8JzD07pjkHBz8IK7eW2kc/e3JbAmpScA2RMVA4Z
         pC5EAHCka3SMRBKMqHa4w4tqpW5bCq79sUm/XIIfpDvJQ4HT84rFgW5EBrI/nbF22UY+
         27OQ==
X-Received: by 10.66.151.138 with SMTP id uq10mr59854pab.22.1446099759019;
        Wed, 28 Oct 2015 23:22:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.198.148])
        by smtp.gmail.com with ESMTPSA id tp6sm18880pbc.81.2015.10.28.23.22.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 23:22:38 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:52:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8188eu: core: Remove wrapper function
Message-ID: <9efda1f2e9d8126a6d0468e442ff68aa27031e25.1446098996.git.amitoj1606@gmail.com>
References: <cover.1446098996.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446098996.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function issue_probereq() that can be replaced by a
single line of code and rename _issue_probereq() to issue_probereq().

This patch also fixes line over 80 characters checkpatch.pl warning.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Renamed _issue_probereq() to issue_probereq()

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 41 ++++++++++++++++-----------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 0270755..d3b92c5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -608,7 +608,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 	return;
 }
 
-static int _issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)
+static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame		*pmgntframe;
@@ -701,12 +701,6 @@ exit:
 	return ret;
 }
 
-static inline void issue_probereq(struct adapter *padapter,
-				  struct ndis_802_11_ssid *pssid, u8 *da)
-{
-	_issue_probereq(padapter, pssid, da, false);
-}
-
 static int issue_probereq_ex(struct adapter *padapter,
 			     struct ndis_802_11_ssid *pssid, u8 *da,
 			     int try_cnt, int wait_ms)
@@ -716,7 +710,7 @@ static int issue_probereq_ex(struct adapter *padapter,
 	u32 start = jiffies;
 
 	do {
-		ret = _issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
+		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
 
 		i++;
 
@@ -2029,24 +2023,28 @@ static void site_survey(struct adapter *padapter)
 			for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
 				if (pmlmeext->sitesurvey_res.ssid[i].SsidLength) {
 					/* todo: to issue two probe req??? */
-					issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL);
+					issue_probereq(padapter,
+					&(pmlmeext->sitesurvey_res.ssid[i]),
+								NULL, false);
 					/* msleep(SURVEY_TO>>1); */
-					issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL);
+					issue_probereq(padapter,
+					&(pmlmeext->sitesurvey_res.ssid[i]),
+								NULL, false);
 				}
 			}
 
 			if (pmlmeext->sitesurvey_res.scan_mode == SCAN_ACTIVE) {
 				/* todo: to issue two probe req??? */
-				issue_probereq(padapter, NULL, NULL);
+				issue_probereq(padapter, NULL, NULL, false);
 				/* msleep(SURVEY_TO>>1); */
-				issue_probereq(padapter, NULL, NULL);
+				issue_probereq(padapter, NULL, NULL, false);
 			}
 
 			if (pmlmeext->sitesurvey_res.scan_mode == SCAN_ACTIVE) {
 				/* todo: to issue two probe req??? */
-				issue_probereq(padapter, NULL, NULL);
+				issue_probereq(padapter, NULL, NULL, false);
 				/* msleep(SURVEY_TO>>1); */
-				issue_probereq(padapter, NULL, NULL);
+				issue_probereq(padapter, NULL, NULL, false);
 			}
 		}
 
@@ -4820,9 +4818,18 @@ void linked_status_chk(struct adapter *padapter)
 			} else {
 				if (rx_chk != _SUCCESS) {
 					if (pmlmeext->retry == 0) {
-						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
-						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
-						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
+						issue_probereq(padapter,
+						&pmlmeinfo->network.Ssid,
+						pmlmeinfo->network.MacAddress,
+									false);
+						issue_probereq(padapter,
+						&pmlmeinfo->network.Ssid,
+						pmlmeinfo->network.MacAddress,
+									false);
+						issue_probereq(padapter,
+						&pmlmeinfo->network.Ssid,
+						pmlmeinfo->network.MacAddress,
+									false);
 					}
 				}
 
-- 
1.9.1


