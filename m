X-GM-THRID: 9078407430144
X-Received: by 10.42.209.135 with SMTP id gg7mr75403518icb.9.1426744206812;
        Wed, 18 Mar 2015 22:50:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.162 with SMTP id o34ls732919ioi.64.gmail; Wed, 18 Mar
 2015 22:50:05 -0700 (PDT)
X-Received: by 10.50.43.229 with SMTP id z5mr8922059igl.3.1426744205809;
        Wed, 18 Mar 2015 22:50:05 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id gb13si46234pac.2.2015.03.18.22.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 22:50:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id cz9so65673119pdb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 22:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HM1+gEHzGS872bOi6gFPXoxSsjSkp9UbIjiNnu5lIo0=;
        b=oIOqEPKkJU+TEmFiYvQOkih4oLmIdpWwLyTL1D3bcuAZOcAdSagKlaefKyXgSQYiYX
         E6b0tisevVgOHCJQiBy2R3ui5GFHc2wYU89tidk1v/LNZIdbp2Gv+XiwO3trHa2u4p2Q
         X0WEERGV0LdjDkBq549UTHT6vyve6Iyn8LmlFqAVFs035QO3il/I/4K2J0IN0rEZUMFe
         OSZ5FAHV6KXfnqd+qkyM1J/tWAAKftm/EFUCtvW7tUEjRrlvvHr77oEboOI/9bAXn5Dn
         5ftS+fbBmAkUIjDRjj311Cdwbl/KghWL3wcfJEQq6TNEuGYuSKVs2i1y1so5Q4EhE0g1
         QpCg==
X-Received: by 10.66.66.196 with SMTP id h4mr169039240pat.127.1426744205708;
        Wed, 18 Mar 2015 22:50:05 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id mk1sm685201pdb.71.2015.03.18.22.50.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 22:50:04 -0700 (PDT)
Date: Thu, 19 Mar 2015 11:18:05 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove extern as it is defined but never
 used.
Message-ID: <20150319054805.GA8536@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

RTW_WPA_VERSION is removed as is declared and defined but
never used in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 1 -
 drivers/staging/rtl8188eu/include/ieee80211.h  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index f2c3ca7..767e23b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -27,7 +27,6 @@
 #include <wlan_bssdef.h>
 
 u8 RTW_WPA_OUI_TYPE[] = { 0x00, 0x50, 0xf2, 1 };
-u16 RTW_WPA_VERSION = 1;
 u8 WPA_AUTH_KEY_MGMT_NONE[] = { 0x00, 0x50, 0xf2, 0 };
 u8 WPA_AUTH_KEY_MGMT_UNSPEC_802_1X[] = { 0x00, 0x50, 0xf2, 1 };
 u8 WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X[] = { 0x00, 0x50, 0xf2, 2 };
diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 3299571..8fd35dc 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -122,7 +122,6 @@ enum {
 
 #define WPA_SELECTOR_LEN 4
 extern u8 RTW_WPA_OUI_TYPE[];
-extern u16 RTW_WPA_VERSION;
 extern u8 WPA_AUTH_KEY_MGMT_NONE[];
 extern u8 WPA_AUTH_KEY_MGMT_UNSPEC_802_1X[];
 extern u8 WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X[];
-- 
1.9.1


