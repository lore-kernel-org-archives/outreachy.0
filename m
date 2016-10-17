X-GM-THRID: 6342252544957349888
X-Received: by 10.157.39.233 with SMTP id c96mr6167032otb.118.1476670742936;
        Sun, 16 Oct 2016 19:19:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.45.65 with SMTP id v59ls793994ota.35.gmail; Sun, 16 Oct
 2016 19:19:02 -0700 (PDT)
X-Received: by 10.31.33.79 with SMTP id h76mr6193988vkh.27.1476670742630;
        Sun, 16 Oct 2016 19:19:02 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id r142si210158vkf.2.2016.10.16.19.19.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:19:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 2so7215628vkb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 19:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JmmwhB48MfeGQxUxQJ8i/kSovCkrtjMKedTlRjbCu7k=;
        b=HULkwGzSifUY8OPJPwwYQ2MUrrhBcIKj5I3+Qiv8v3E1WgejgJOBL4fKHfyg4ptcRg
         dYIu1WlBJAYXFRNMJpeo92Hp7lvT7y04o4tkTpRc/Z+/zcdhcznwgsSudyVBSc4EOwLY
         iJAZQhJH4z6vFFAAezdlk2/VFJEZanaFOfp+L6zJ4qrYzvEBRHDzfHBKjJ5OKuJ4SY/S
         FGNKFYdctvIRTLHccKQV3SAeuPRPfLuUKeOhXhdetKdDcFo5X5UI7cPhKtNY/R+Sq6k0
         wGgloWiFuhJ3AzpBAOKWKoYq4B+nYyHkZ7RArto1t2g402vfL9iELvJPS3mfof10T6eY
         Wajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JmmwhB48MfeGQxUxQJ8i/kSovCkrtjMKedTlRjbCu7k=;
        b=TVCcKKEPk8sbyhZtmW5WSCUqxFJv50lfNJdOEDGVDYQUA7zKVZq6lAqy1q9XgopFR1
         dQnEWp1KZs/TXmk8SukQ2leA0Dun35hYOa4bGsjq9nSpfge/SOSbcUs2iU9jPvxDaBU9
         0WrxIWW71NqTC9Yg2GAjDLhokshU6IaP/SV/uw9m92Soia9H9yTdk6LIq1k8jffzW4Sh
         ssToici3sZ5oJp+EYiRmbQOorps27qRcTM9+ae5z8I11wc0BD52HUCndFynTBG/s85ID
         UydiCG3i7wJRxuht+xRnBmrrK9Nk3ACO/Yo+6xqtTLSP7uFzWOSlQ7p4PPqNutmQJIgz
         OVeA==
X-Gm-Message-State: AA6/9RkMY1IpG7L0e6lQ9qZWKaXj66cyb0uJ1RnS2unxxgsZPoLXrkH0vMx2tRXAqEsP5w==
X-Received: by 10.31.84.130 with SMTP id i124mr4060637vkb.66.1476670742481;
        Sun, 16 Oct 2016 19:19:02 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p129sm10862809vkd.4.2016.10.16.19.19.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:19:02 -0700 (PDT)
Date: Mon, 17 Oct 2016 00:18:58 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: vt6656: Compress return logic into one line.
Message-ID: <20161017021858.GA7637@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Compress the return logic into one line avoids unnecessary variable
declarations. In this case it also makes it easier to understand the
function.

Coccinelle was used to find this return statement. However, additional
compressions were done to make the function clearer.

Semantic patch:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/vt6656/card.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 807d3f7..0e5a993 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -501,16 +501,7 @@ u8 vnt_get_pkt_type(struct vnt_private *priv)
  */
 u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
 {
-	u64 tsf_offset = 0;
-	u16 rx_bcn_offset;
-
-	rx_bcn_offset = cw_rxbcntsf_off[rx_rate % MAX_RATE];
-
-	tsf2 += (u64)rx_bcn_offset;
-
-	tsf_offset = tsf1 - tsf2;
-
-	return tsf_offset;
+	return tsf1 - tsf2 - (u64)cw_rxbcntsf_off[rx_rate % MAX_RATE];
 }
 
 /*
-- 
2.7.4


