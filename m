X-GM-THRID: 6205570001447944192
X-Received: by 10.129.154.137 with SMTP id r131mr3849892ywg.0.1444846857840;
        Wed, 14 Oct 2015 11:20:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.4.5 with SMTP id g5ls1900210igg.6.canary; Wed, 14 Oct 2015
 11:20:57 -0700 (PDT)
X-Received: by 10.68.138.132 with SMTP id qq4mr3796527pbb.11.1444846857585;
        Wed, 14 Oct 2015 11:20:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si1009022pab.1.2015.10.14.11.20.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:20:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ur7so12071654pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NzouIX1SZLlvloSqalPLudmtDaHD83t0DMTkJ5qu540=;
        b=rOr9zjWk/RC35S56CB5+Awb5CBScHd4jjYMUQ7lacKNG68CHw9nKO/nTVPnW3SXvmB
         JoiCoCQa2CUhH7PuHAqCMfXXYk2+3V9XWOEX1k44et8o4luceKhmumaAe1E/af5yf2lc
         XOBMynoNzt1+7zkz1Nc70Xx7VjUbTp/qims5MDk4QmMEOIWeJswPD4Cn8g0vclRXwGK0
         iKokC67fQ0aOUsNc8Vw+cROx4W9jVeddsRNtAPs9A71scBOtMTWx3zt42w6mvKqTAwu7
         ImvK5TWhTfCtvG4/6ZXHeZbRgHun77olec0tUy025k2GTnQLHyGM+VJOqRmoNYxSrbeC
         6CwA==
X-Received: by 10.68.239.33 with SMTP id vp1mr5030339pbc.167.1444846857476;
        Wed, 14 Oct 2015 11:20:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id l16sm10916376pbq.22.2015.10.14.11.20.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:20:56 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:50:46 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: rtllib_softmac: Remove unnecessary NULL
 test
Message-ID: <20151014182046.GA24803@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL test on the variable ssidbroad as it is already tested for that.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index d0fedb0..89da282 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1693,11 +1693,9 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
 			}
 			memcpy(&ieee->current_network, net,
 			       sizeof(struct rtllib_network));
-			if (!ssidbroad) {
-				strncpy(ieee->current_network.ssid, tmp_ssid,
+			strncpy(ieee->current_network.ssid, tmp_ssid,
 					IW_ESSID_MAX_SIZE);
-				ieee->current_network.ssid_len = tmp_ssid_len;
-			}
+			ieee->current_network.ssid_len = tmp_ssid_len;
 			netdev_info(ieee->dev,
 				    "Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d, mode:%x cur_net.flags:0x%x\n",
 				    ieee->current_network.ssid,
-- 
2.1.0


