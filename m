X-GM-THRID: 9088756875264
X-Received: by 10.43.135.194 with SMTP id ih2mr71744183icc.7.1426751836826;
        Thu, 19 Mar 2015 00:57:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.77 with SMTP id b74ls723047ioj.35.gmail; Thu, 19 Mar
 2015 00:57:16 -0700 (PDT)
X-Received: by 10.50.87.97 with SMTP id w1mr1538436igz.1.1426751836647;
        Thu, 19 Mar 2015 00:57:16 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id pc4si128478pac.0.2015.03.19.00.57.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 00:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id ni2so68753827pdb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 00:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HM1+gEHzGS872bOi6gFPXoxSsjSkp9UbIjiNnu5lIo0=;
        b=FosfGHl2CB8gLpGAJgKb2o3b6tPuTRLF0sLY1CGaLB3rGOTV1blG49ZXaY9VwEc1GD
         Ro9H5CijGZy1xA8RGhznQANQzi8QjBdm1v8AKH507cRv0gpi2iGOiaZmpAkD6+7jChi9
         uG7/shBkbKw7/swBIyDtbOIcd+msWZOVik/GgYzaN0y5qt+V4elvnx5EAUn22VyU4dfO
         kSabr7vwErymr+5g6D2HvyZHyu0lTDUYIqpwQDL3z3YNtZN04HR0oTfW31zoQ727o5pl
         JHUqYrMnYdtpJhw7//qm/bxa1yrD2Gdg43FazbApgX3aJHXBz8sbNio9rooVkkdzhgpd
         mSeA==
X-Received: by 10.70.26.100 with SMTP id k4mr171629444pdg.125.1426751836472;
        Thu, 19 Mar 2015 00:57:16 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id qd6sm1356288pdb.89.2015.03.19.00.57.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 00:57:15 -0700 (PDT)
Date: Thu, 19 Mar 2015 13:25:20 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: rtl8188eu: Remove extern as it is defined but
 never used
Message-ID: <66f5108f89ad90099b236392e61a92cca9f16d97.1426751449.git.vatikaharlalka@gmail.com>
References: <cover.1426751449.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426751449.git.vatikaharlalka@gmail.com>
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


