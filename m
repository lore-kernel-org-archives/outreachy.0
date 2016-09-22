X-GM-THRID: 6332991195333001216
X-Received: by 10.200.54.118 with SMTP id n51mr18496705qtb.29.1474514416435;
        Wed, 21 Sep 2016 20:20:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.247 with SMTP id t52ls6021258otf.28.gmail; Wed, 21 Sep
 2016 20:20:16 -0700 (PDT)
X-Received: by 10.157.13.112 with SMTP id 103mr3745845oti.51.1474514416144;
        Wed, 21 Sep 2016 20:20:16 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si404401pfw.1.2016.09.21.20.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 20:20:16 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x242.google.com with SMTP id n24so3151271pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 20:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=abkVt44gKw775rAoJA3jLTZViWVt6g/fwK1QqP2nNpE=;
        b=Wpmi2bYEy03bm9qnWJBcBnm1btTKVf5LbwMPspEh80u2d/coFgMhqp/H5Td9/ZuBA2
         TWuJrqjP/iSf3KBgXMefiqhELyFK0Mb/8sg12BlKMbDZ/tEZ46EF2UrjYMZirSqwZRqv
         DOtecHlkyxxFHEtEvHH9s++CB2XaZXUacZHtu2AF9KVl0onsYXOdakzylnclu6oPKZ8E
         OMpP/snFsozxz7sxcdGvgKZadNHaWkiCuk7szQvjVNXiH2bdqse76eLmhEY/u6rmJKZZ
         p47FYdKr0MpcHtOPctOyBMGnLns89mItPwy1ttf6kHnnwC91A1sLFRfqaKEUGnb93QU2
         SGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=abkVt44gKw775rAoJA3jLTZViWVt6g/fwK1QqP2nNpE=;
        b=D0ybuAK9i8jjZNKksZTIUEBEX4+/4QUtPPPxelLO3lBdPPiUV8bP4sE2dnldGOcAnn
         KgbWx2rHH2x8MiGy84+/GMIwBx7Dl3amed5E+WENExxketwGVdJmvvO00j1Ahi50SoQ8
         2rKKcIK47N2JAKFUM47BorxIJruEvrAaVsrsgElP3DSHVaBpGG+rqiv/SNSn9PYg2X6z
         Sb5Sja7QofEfKYtGWBDonMz/hfDwFdfNSFYD3iz72LXwEXo5vOxE4tzoJ3jV8YQc5Yb3
         Dy9SzO6CKVeRoWPD7ItCM/uaCFMF50ANDg7UXThNoD4MVQJGe9Lg4aSTzF7KR/xU25O0
         j3fg==
X-Gm-Message-State: AE9vXwP9XfE0zxhE8p2EFVgyU6KPCbtRs0gbsoYkiAxPqtag8s5ERmbqTw+5DUf3jFFkK+by
X-Received: by 10.98.62.4 with SMTP id l4mr42848836pfa.13.1474514415721;
        Wed, 21 Sep 2016 20:20:15 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id xv9sm49571988pab.36.2016.09.21.20.20.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 20:20:15 -0700 (PDT)
Date: Wed, 21 Sep 2016 20:20:14 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Edit struct member type for endianness
 verification
Message-ID: <20160922032014.GA31033@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes warnings found using sparse on
drivers/staging/wlan-ng/p80211conv.c:
warning: cast to restricted __le16
warning: cast to restricted __be16

Updates the corresponding type in
drivers/staging/wlan-ng/p80211conv.h

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/wlan-ng/p80211conv.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.h b/drivers/staging/wlan-ng/p80211conv.h
index 8c10357..d8fda07 100644
--- a/drivers/staging/wlan-ng/p80211conv.h
+++ b/drivers/staging/wlan-ng/p80211conv.h
@@ -130,7 +130,7 @@ struct p80211_metawep {
 struct wlan_ethhdr {
 	u8 daddr[ETH_ALEN];
 	u8 saddr[ETH_ALEN];
-	u16 type;
+	__be16 type;
 } __packed;
 
 /* local llc header type */
@@ -143,7 +143,7 @@ struct wlan_llc {
 /* local snap header type */
 struct wlan_snap {
 	u8 oui[WLAN_IEEE_OUI_LEN];
-	u16 type;
+	__le16 type;
 } __packed;
 
 /* Circular include trick */
-- 
2.7.4


