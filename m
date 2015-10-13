X-GM-THRID: 6205238315000528896
X-Received: by 10.67.4.38 with SMTP id cb6mr18478671pad.44.1444769630934;
        Tue, 13 Oct 2015 13:53:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.36 with SMTP id q33ls574534qgd.62.gmail; Tue, 13 Oct
 2015 13:53:50 -0700 (PDT)
X-Received: by 10.13.228.133 with SMTP id n127mr30148121ywe.37.1444769630538;
        Tue, 13 Oct 2015 13:53:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si521152pbb.2.2015.10.13.13.53.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so31609456pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 13:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AUfU7XqdKEX+kLb352011kBGUJJPkXZ0Gw+RhA+Db4c=;
        b=X9jznFxMs3zAabrlFMBJwz/lbTn60mMaknHMnihRHgCXhB/BKpyS5JmQqzkGU/BhQd
         iQCVaNFkpNw3Kz9JETdnwSrjkTFSNaB3AiXLB6OLy/CF68+XvU4vzrvMFZ5r1IlzH3EY
         Za1bmw8lGiBJ9rZWWCKRIFXoPJqR7EqpwneCz8SlP+cvnwwJlvyCiPcT/9mGkHUJeWv5
         tZBbD5KPDHgyPqK4DgyfGb9eEiy8lIdOey+ehKABokyBDcg5gqNpPud8MIJpdFIdXaeg
         d3JElmAwrlrkfS5QF3agiwYgW8B2HC8n4C4yRwsa6WGUnlocH7eSPucaBqCwAI+Q4It4
         6iqw==
X-Received: by 10.68.164.98 with SMTP id yp2mr42495558pbb.125.1444769630403;
        Tue, 13 Oct 2015 13:53:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id bs3sm5496781pbd.89.2015.10.13.13.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:53:49 -0700 (PDT)
Date: Wed, 14 Oct 2015 02:23:40 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: wilc_wlan_cfg: Remove unnecessary cast
Message-ID: <20151013205340.GA10223@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove a cast which is not required.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index d148d6e..a34a81c 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -364,7 +364,7 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 
 static int wilc_wlan_parse_info_frame(u8 *info, int size)
 {
-	wilc_mac_cfg_t *pd = (wilc_mac_cfg_t *)&g_mac;
+	wilc_mac_cfg_t *pd = &g_mac;
 	u32 wid, len;
 	int type = WILC_CFG_RSP_STATUS;
 
-- 
2.1.0


