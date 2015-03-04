X-GM-THRID: 6557663232000
X-Received: by 10.66.157.129 with SMTP id wm1mr4163797pab.15.1425469533988;
        Wed, 04 Mar 2015 03:45:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.132 with SMTP id d4ls436849ioj.68.gmail; Wed, 04 Mar
 2015 03:45:33 -0800 (PST)
X-Received: by 10.66.65.165 with SMTP id y5mr4006289pas.43.1425469533733;
        Wed, 04 Mar 2015 03:45:33 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id xj4si457912pbc.2.2015.03.04.03.45.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:45:33 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so5820877pdj.11
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4e2R8F6wIz1xn4ZkHKsQ6c2QJgNLzdzA3s/LsRxJTvs=;
        b=pJVuteNBeALO+le/qgc8+lfP9royFOvdDpXxuP+MZU8ue68k7KZjwR0kesciFNiHSo
         cMpD23duPdcV3nXTCMIAwPvOrD7LZcLXDQ4VmsH3VXZVoAQbgzPRG2o84hSM2ejTHdcm
         jLNbh7SYcoihjek+/p2Ju7hzD/Q5gggV+m0kiFdBTIfi9ynZvq+pLW/gXYAI6I7UtidF
         fH0IBmlN6kwxJuPupTnbN923/CTyjb6xlLfVVWCzElqXSQnb3GCXv05XP4NGElmbDpl8
         I2wUrmfx/a2EVtSJjwcP9KMpOdj/j4YSmj2KIO1W8CQT1UTNI6q1xoi4jk/aPE4vhhR3
         dzvQ==
X-Received: by 10.66.184.106 with SMTP id et10mr6316353pac.138.1425469533616;
        Wed, 04 Mar 2015 03:45:33 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.45.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:45:32 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8188eu: Add blank line after declaration
Date: Wed,  4 Mar 2015 17:13:58 +0530
Message-Id: <1425469442-32412-3-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>

This patch fixes checkpatch.pl warning by adding a blank line after
declaration for better readability.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 6917abf..dac4246 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -101,7 +101,7 @@ unsigned char networktype_to_raid(unsigned char network_type)
 		return RATR_INX_WIRELESS_N;
 	case WIRELESS_11A_5N:
 	case WIRELESS_11G_24N:
-		return  RATR_INX_WIRELESS_NG;
+		return RATR_INX_WIRELESS_NG;
 	case WIRELESS_11BG_24N:
 		return RATR_INX_WIRELESS_NGB;
 	default:
@@ -398,6 +398,7 @@ int get_bsstype(unsigned short capability)
 u16 get_beacon_interval(struct wlan_bssid_ex *bss)
 {
 	__le16 val;
+
 	memcpy((unsigned char *)&val, rtw_get_beacon_interval_from_ie(bss->IEs), 2);
 
 	return le16_to_cpu(val);
@@ -1212,6 +1213,7 @@ unsigned int is_ap_in_wep(struct adapter *padapter)
 static int wifirate2_ratetbl_inx(unsigned char rate)
 {
 	int	inx = 0;
+
 	rate = rate & 0x7f;
 
 	switch (rate) {
@@ -1344,6 +1346,7 @@ void set_sta_rate(struct adapter *padapter, struct sta_info *psta)
 void update_tx_basic_rate(struct adapter *padapter, u8 wirelessmode)
 {
 	unsigned char supported_rates[NDIS_802_11_LENGTH_RATES_EX];
+
 	memset(supported_rates, 0, NDIS_802_11_LENGTH_RATES_EX);
 
 	if ((wirelessmode & WIRELESS_11B) && (wirelessmode == WIRELESS_11B))
@@ -1368,6 +1371,7 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 	struct ndis_802_11_var_ie *pIE;
 	u8	epigram_vendor_flag;
 	u8	ralink_vendor_flag;
+
 	epigram_vendor_flag = 0;
 	ralink_vendor_flag = 0;
 
-- 
1.9.1


