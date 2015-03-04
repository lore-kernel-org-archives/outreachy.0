X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.16.227 with SMTP id j3mr4627820obd.12.1425475466067;
        Wed, 04 Mar 2015 05:24:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.163 with SMTP id f32ls613856qgd.84.gmail; Wed, 04 Mar
 2015 05:24:25 -0800 (PST)
X-Received: by 10.236.2.35 with SMTP id 23mr4467126yhe.22.1425475465895;
        Wed, 04 Mar 2015 05:24:25 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id xj4si484840pbc.2.2015.03.04.05.24.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 05:24:25 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id li10so33466835pab.13
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 05:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4e2R8F6wIz1xn4ZkHKsQ6c2QJgNLzdzA3s/LsRxJTvs=;
        b=IMYN9XY5W63Pl5SuhpGBX8dmIOqbti7BA0/fZAPPQA7MeC5K64GheFbVvjqLAk0xi9
         34f8n0aa9pnteJ5VKT08rhPrbq8NeSlkhqAZR4qtAiciB7SUS37FpCBuhYPZdoz+hnNm
         mjoMbTCdXmeS27QFSBW6tX6sdHN47fpDdBV0jiU66Wgern2lHtjEX/Bco9J+s9xhn34W
         Rkd44MwMTnOqob2a5RpXk/byNBJLDnmBkYqheB6ovjQK/BmNS2d+uemNqi2ilDoPzrky
         Fa9TgcV4j0RDTyz34QJ1cQcBr3NVVxdLe2qZoDmjuCFJQ+izXrZqm7fWxCleqjM0cya3
         1thw==
X-Received: by 10.68.183.67 with SMTP id ek3mr6524888pbc.145.1425475465775;
        Wed, 04 Mar 2015 05:24:25 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.168])
        by mx.google.com with ESMTPSA id n5sm4105227pdh.27.2015.03.04.05.24.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 05:24:25 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 2/5] Staging: rtl8188eu: Add blank line after declaration
Date: Wed,  4 Mar 2015 18:53:02 +0530
Message-Id: <1425475385-2360-3-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
References: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>

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


