X-GM-THRID: 6331576127729958912
X-Received: by 10.200.42.204 with SMTP id c12mr2362012qta.39.1474184945537;
        Sun, 18 Sep 2016 00:49:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.182 with SMTP id p51ls8392080otb.29.gmail; Sun, 18 Sep
 2016 00:49:05 -0700 (PDT)
X-Received: by 10.157.34.197 with SMTP id y63mr2387785ota.126.1474184945253;
        Sun, 18 Sep 2016 00:49:05 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si5507469pfe.0.2016.09.18.00.49.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 00:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so5428017pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 00:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=c1C+lJdECa2K/qHStJjQtUTWdukG2TNeL69SNVpQpHw=;
        b=N4qDTrwltWEGi9YvL3zcn5QAQtDY7jmIo83Yyrh2umauKU+XC2uDTH/R7cfHNTQ3gZ
         GqwYwLd+DsC0cnDFNfy7pzjYfK0XxzhbHukz1+4yKCib0KDpdg89HcFzvRZAkMV0fb7V
         EXj7DOdbYecpxm82T8FN33k66Tflxbnpu7ba1DPfQvzoOEPFiR6W2ZS9xGFWp1+3QEmM
         46VetiFNUbOg5H7s39kaxc/u0QUjGBnI9JLSLrk//P67JlhYd15l8lErAF3LqzNfSIly
         0JV+JVasFNToVAsyLvlPCGRYynhAs4Z71xbb6w671frf2oqOxmgQ6qiOezLkKlJfREam
         z/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=c1C+lJdECa2K/qHStJjQtUTWdukG2TNeL69SNVpQpHw=;
        b=NyZefpgYaVmuhItdMSMpfM1+V08fSttLO3T4+XpyToFnjR2w6LiMbrChGCaYwlbw/p
         cb+Trx0Yu0T1C5WoTSVgfpb/2V7fG4MygfLrM1OAsRtcXLa1VCgJAhLDBUGMyCPXPB5y
         PbapRx8L7lgDaHnDTXcfrd+MPtcAYWyuKT0dbf/dxy4YujTzblbOq4S2MuN17sW9Yqe0
         uasWIRG8QR1eLaMMb5VPdfxKL9ZUFB4tXrknuLmGohJ4czecrSheZiU44Jw+kwQsUyyh
         10n+EJdXH0nz1OQ3EnFxvquCTz+wWTwE5jZYvWZZzXtT7kZh7PECjsxNSMwEeWXUdRF/
         MByA==
X-Gm-Message-State: AE9vXwMRFH/vduUCofuwOLlLQpH9Ew9SA+htV6pW6jOULyO+0DfOkXjtIyreyhwthgu5qQ==
X-Received: by 10.66.217.170 with SMTP id oz10mr37160843pac.61.1474184945051;
        Sun, 18 Sep 2016 00:49:05 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id b7sm62963053pfg.87.2016.09.18.00.49.03
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 00:49:04 -0700 (PDT)
Date: Sun, 18 Sep 2016 13:18:56 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, amitoj1606@gmail.com
Subject: [PATCH 2/3] staging: rtl8188eu: core: Fix comparison to NULL
Message-ID: <20160918074848.GA4756@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Convert pointer comparisons to NULL to NULL pointer 'p'

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index dfd5055..f5bd0db 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -78,7 +78,7 @@ static void update_BCNTIM(struct adapter *padapter)
 	/* update TIM IE */
 	p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen,
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
-	if (p != NULL && tim_ielen > 0) {
+	if (p && tim_ielen > 0) {
 		tim_ielen += 2;
 		premainder_ie = p+tim_ielen;
 		tim_ie_offset = (int)(p - pie);
@@ -98,7 +98,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				_SUPPORTEDRATES_IE_, &tmp_len,
 				(pnetwork_mlmeext->IELength -
 					_BEACON_IE_OFFSET_));
-		if (p !=  NULL)
+		if (p)
 			offset += tmp_len+2;
 
 		/* DS Parameter Set IE, len = 3 */
@@ -183,7 +183,7 @@ void rtw_add_bcn_ie(struct adapter *padapter, struct wlan_bssid_ex *pnetwork,
 		i += (pIE->Length + 2);
 	}
 
-	if (p != NULL && ielen > 0) {
+	if (p && ielen > 0) {
 		ielen += 2;
 
 		premainder_ie = p+ielen;
@@ -232,7 +232,7 @@ void rtw_remove_bcn_ie(struct adapter *padapter, struct wlan_bssid_ex *pnetwork,
 
 	p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, index, &ielen,
 		       pnetwork->IELength - _FIXED_IE_LENGTH_);
-	if (p != NULL && ielen > 0) {
+	if (p && ielen > 0) {
 		ielen += 2;
 
 		premainder_ie = p+ielen;
@@ -934,14 +934,14 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->IELength - _BEACON_IE_OFFSET_));
-	if (p !=  NULL) {
+	if (p) {
 		memcpy(supportRate, p+2, ie_len);
 		supportRateNum = ie_len;
 	}
 
 	/* get ext_supported rates */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ie_len, pbss_network->IELength - _BEACON_IE_OFFSET_);
-	if (p !=  NULL) {
+	if (p) {
 		memcpy(supportRate+supportRateNum, p+2, ie_len);
 		supportRateNum += ie_len;
 	}
-- 
1.9.1


