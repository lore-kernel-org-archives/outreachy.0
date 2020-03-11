X-GM-THRID: 6803031575619436544
X-Received: by 2002:a50:f048:: with SMTP id u8mr4420881edl.83.1583954220266;
        Wed, 11 Mar 2020 12:17:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls1932710ejb.6.gmail; Wed, 11
 Mar 2020 12:16:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsQRqiKHesfKPE+lfnbGC3nP4OWu0ZqM3pl+X8SCFF7WJuKPI7A9V770Q3K33bfCkS1ZU+J
X-Received: by 2002:a17:906:3790:: with SMTP id n16mr3721345ejc.201.1583954218878;
        Wed, 11 Mar 2020 12:16:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583954218; cv=none;
        d=google.com; s=arc-20160816;
        b=BsLJx24mEH1pMCw6LPykDWPHxKYiIBuQB5imXl2+q9mZuOQNoLx7pqQ6WaWTJPg7Pn
         JUU8NPbuf8vObNT2z8ESZbnOXl91Ep+G4VJzK3KWnUUk5er6qzpMkGDV2Emy/TWySCeM
         Jmz1Dl94/7Wg+8tw2PqLY/NJVaQU6xdRM+uvL05lOA0KxL/R8jG+2kzejAm35YIFC+pM
         DaSrkVp7u7poGzwU9FyTodFiOcaC600bTMMyiMc/u2GKt974B5cI6lR4I/P7osONtHwh
         uF7KyXYDD3q6X0GB+8CtB5uj7hkhdFuh2vHZD+RYsp+79NoCYbiycZ/VVP1MpWarkbDr
         K8+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=IkelOTgpqN2sTF8dtjLsPtXn4QoJexLkG9tZl//+Syc=;
        b=cZJVO/B4/heeEzy+axqt4az0JfHm6Yaxr3wp/AxsluiV6Oy+ncFR/zuiGanaY/NS3r
         T7Hi6TYY913KOMWm5JFiCqTt3QomKlICf5R9L1jrXY2weVE0lMe+pipNDiijLXsJEX8F
         duz1mB7hdlX11EfMZXRGZWztGl12scxwV21vxAOQJDTgGm9ppKM+QFj4KtCKtbv7U08W
         aFNRAmzUmdLqZM/5FkRWVS+OwACdZb/WmYcqKK3k4dQkd0avq10b/X6CMCZ3FHwhDq/V
         8zSGZP7pA7zFmlFrF7tiMr7s/XZKRVyCsc+i7di/XrTDi8YlpdoagPLy/2qW7hMrPEP6
         RuyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="evHr/niw";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e19si10363edr.3.2020.03.11.12.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 12:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="evHr/niw";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id t11so4145888wrw.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 12:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=IkelOTgpqN2sTF8dtjLsPtXn4QoJexLkG9tZl//+Syc=;
        b=evHr/niw/qrBiW/EHn1g+Py2Uw2k820zO9x4NOXEGIGngsrBfiFzzhKOMJQk09MQy4
         eCMbKBzbbdmOvJFdNVLZGaMFwY9wjTC5CrvuSkfthxpHTJByKfcGt0Mfnbdy8eyXFP2V
         9MmG7YpH9mruNSlp21yesrg1nCT1MUxZkiJOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IkelOTgpqN2sTF8dtjLsPtXn4QoJexLkG9tZl//+Syc=;
        b=iFgikPTVdCtl+H+r7j9M5a2VEngXsHe9KLwCB8XmRvOjy3ZHZyUaYXSjgNc5sqihKx
         K79Sid5pSqGyO0OskjFzC7NFQvCf+YbAPT8/HOYav5dXLap/M/kvWYzGO6GwYS+UUSIq
         J4qsIj3yb1qRp7r9GNml8LZd72h6aRqyv9VpeOWu+ope0a0Sx8Y6W/RkODjIkcm9x9nN
         RphR0npqDlXnT2CZn9o4PoJdYd3qpXWHx9f9yeKMg8lh0xUYGnr9waC/TAcwsr83dpHb
         V3JtTTuqSL3Kse2kOkpCCV66ejpW5rFURTCPvcLBWlb+2QVx0N9ujdiWt67RQE8KFQ6R
         AgSQ==
X-Gm-Message-State: ANhLgQ0aDB9Be8y1euEKi47UgU1zfAXP4HnXaLyn+Yb+n6o/J1E+GsFz
	nIj/u7jKILRWg++DrsRq0p/FAiGxmM+o4A==
X-Received: by 2002:adf:fc81:: with SMTP id g1mr6246028wrr.410.1583954218391;
        Wed, 11 Mar 2020 12:16:58 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id f3sm9329854wml.24.2020.03.11.12.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 12:16:57 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH v3] staging: rtl8192u: r8192U_wx: use pr_warn() instead of printk()
Date: Wed, 11 Mar 2020 20:16:38 +0100
Message-Id: <20200311191638.27974-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use pr_warn() instead, which is a message printing
function for network devices, defined in include/linux/netdevice.h.
Issue found by checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v2:
- Correct the subject line from v1 and use the generic pr_warn() since
  netdev_warn() expect a pointer to a net device.

 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 0118edb0b9ab..09ab68865934 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				hwkey);                 /* KeyContent */
 
 		} else {
-			printk("wrong type in WEP, not WEP40 and WEP104\n");
+			pr_warn("wrong type in WEP, not WEP40 and WEP104\n");
 		}
 
 	}
-- 
2.17.1


