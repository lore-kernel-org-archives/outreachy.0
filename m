X-GM-THRID: 6334649026563014656
X-Received: by 10.157.16.68 with SMTP id o4mr5545747oto.32.1474900410315;
        Mon, 26 Sep 2016 07:33:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls6747560otj.21.gmail; Mon, 26 Sep
 2016 07:33:29 -0700 (PDT)
X-Received: by 10.237.39.71 with SMTP id n65mr5630626qtd.53.1474900409937;
        Mon, 26 Sep 2016 07:33:29 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id f133si636830ita.1.2016.09.26.07.33.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 07:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id j3so859378paj.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 07:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QekTocR7xeWX0n80ZithjvmLDSLrVNZLe0XeOUVInlQ=;
        b=08Y5b2pQXzovMAPt84pc9EQVcZqtN1ph5TUrpaAKz1O4c9VZaJHd6alWJrr3LxpBln
         8Jl7aVpRmzE3KZJieLxX9ouWMtgLHph0A9KPksy6aHXNsqtutxDhac+ItRWPINgLCV5o
         2gdrROFbvfeRtTrSRST0GxCPlRvxngzhZJNXfxslMxqGHE4Wq4LFBJJN8jGLtZf1cKMb
         QUe7Bb56GUfZf3uMUih3mBE/Q3Kl0zEtoGwUpOZy4/WxxdqgMKCYktqjos54JPBNDUSj
         Z+9DEWTPdTVDtho0OqBxhcTzIMx/Qoom2GMsSQphBu+5aD7p8VXBCihKzfMOxvTClPG3
         eEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QekTocR7xeWX0n80ZithjvmLDSLrVNZLe0XeOUVInlQ=;
        b=G8P1UT0ANrPAh5UtWpGqhSyoEPYFJW5EJETp+oiCPYKvlhz+AhPdc/qki1lbdzT9SH
         qoJlpiEKKUNZvXDvZAt09G2vjyDBzsOsNJHPeXbdCHN6kZJ7fJm5L2Bht6luL3V9mBfC
         rjJ2BY/8oMR7RMgZNO2ZqV2X2UEaXVIsblEkXSKh5RiDieCS6kMl5D34EXsNVDGiPPSS
         DX8RrlojrFsR9JeZZ3coosfLCg2haZbBjr10qgj0/ZZoGYjOkuuGeC9RDDcG7NuB4Wg5
         85MF62c+Z+XQxG2G1/p/buh+Y3wMaVK1cI+0B/BpmN0b+xeskYk34sW+sawbq15xeBw9
         U8LA==
X-Gm-Message-State: AE9vXwNN4J4/2Tw6c2AWvgEJYL/OchRtRExrPDIpmRig8TN0eDoabnGR01Oc9gXwpT8jnw==
X-Received: by 10.66.227.4 with SMTP id rw4mr39203843pac.119.1474900409713;
        Mon, 26 Sep 2016 07:33:29 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.149.145])
        by smtp.gmail.com with ESMTPSA id y2sm31767714pan.31.2016.09.26.07.33.23
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 26 Sep 2016 07:33:28 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 26 Sep 2016 20:03:08 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: constify cfg80211_ops structures
Date: Mon, 26 Sep 2016 20:03:06 +0530
Message-Id: <1474900386-17042-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Check for cfg80211_ops structures that are only passed as the first
argument to the function wiphy_new. As this argument is constant, so
cfg80211_ops structures having this property can also be declared
constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct cfg80211_ops i@p = {...};

@ok1@
identifier r1.i;
position p;
expression e1;
@@
wiphy_new(&i@p,e1)

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct cfg80211_ops i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct cfg80211_ops i;

File size before:
   text	   data	    bss	    dec	    hex	filename
  17468	   2417	  14912	  34797	   87ed
drivers/staging/wilc1000/wilc_wfi_cfgoperations.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  18204	   1681	  14912	  34797	   87ed
drivers/staging/wilc1000/wilc_wfi_cfgoperations.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 3b26130..8df5524 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -2197,7 +2197,7 @@ static int get_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 	return ret;
 }
 
-static struct cfg80211_ops wilc_cfg80211_ops = {
+static const struct cfg80211_ops wilc_cfg80211_ops = {
 	.set_monitor_channel = set_channel,
 	.scan = scan,
 	.connect = connect,
-- 
1.9.1


