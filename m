X-GM-THRID: 6250414511846588416
X-Received: by 10.141.3.134 with SMTP id f128mr4979273qhd.7.1455338053526;
        Fri, 12 Feb 2016 20:34:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.133 with SMTP id b5ls330683igx.5.canary; Fri, 12 Feb
 2016 20:34:13 -0800 (PST)
X-Received: by 10.66.122.144 with SMTP id ls16mr4998594pab.2.1455338053268;
        Fri, 12 Feb 2016 20:34:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si1879821pac.1.2016.02.12.20.34.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:34:13 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so4600549pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eU7TrjtBbjAD7EQb3Syzebd8ARiJF7D7AZ3v6xwq0Cw=;
        b=yJWvom4Ib03AXc5H5MW6oxt7c6QyffWplcwlhOFwnupOH0oRkeKiMXjEVuUEidY7qs
         FpTXmP8gPahbhwffwmUjXFXOnPTEOycwjxZY5+07s81O3LyB12GMA79XSZ+3x/b8uqmk
         PNZ4BIzPXPMj0+rnuuf6rdnx/wxsxzetS4+PtOeYfRy4RHeh8alhQ81bkFRV3AhB7swD
         /1i7GlHoF13gNx2iv+ImB7FddDRcc75kQRZunZyZaz6r+Yc0SJ6cPb/BBk1sBodg/0a4
         uxs48OKC7190/a3kjAB0M8bYzzJjbORHDlcaByC7pZYqZwHo/0kbKMpCE9lLrUSBgzbh
         J1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=eU7TrjtBbjAD7EQb3Syzebd8ARiJF7D7AZ3v6xwq0Cw=;
        b=i2fyckFG9XDl0mzKRIV02VzU2IN/qAQD9Dq3z4AcbB8lOmHvnM7CVIMfZmspTZx3ar
         n6pI/T3nNrtOB7x1J9NooNn0afVXIk6MmJpi7fKqYNARCexkGGPh+kCfKwcWwYEom5Ry
         7EEiXEIrP0QPSnywRoIwTnBTHCnm8dhSkwywJ3C+xjweFuS7COLJkcJaqMAvyQa7ywtp
         2JIiK8clS74kwkmYJs2TfVG75rGXymxdxn3WDO2wxn8/LyU6p4JAXzoeriYkHGYd3S2y
         kefPm9cp1sEoT2EZ7esScQoKHpEAay+14gzd7oCWhnIruLjXqOyapSfoqft8uJbYPyLF
         hOrw==
X-Gm-Message-State: AG10YOTBlFpsi7szvO7OIqfOJag/VWnng1E5T25wxd9QxetyOL7aEmepjau8NdbeZKrLXw==
X-Received: by 10.66.62.226 with SMTP id b2mr7359334pas.94.1455338053124;
        Fri, 12 Feb 2016 20:34:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id v7sm323256pfi.56.2016.02.12.20.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:34:12 -0800 (PST)
Date: Sat, 13 Feb 2016 10:04:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/6] staging: rtl8192u: ieee80211: ieee80211_rx: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160213043410.GA6306@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies().

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 28ad63a..9dfde07 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -761,7 +761,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
 		if(timer_pending(&pTS->RxPktPendingTimer))
 			del_timer_sync(&pTS->RxPktPendingTimer);
-		pTS->RxPktPendingTimer.expires = jiffies + MSECS(pHTInfo->RxReorderPendingTime);
+		pTS->RxPktPendingTimer.expires = jiffies +
+				msecs_to_jiffies(pHTInfo->RxReorderPendingTime);
 		add_timer(&pTS->RxPktPendingTimer);
 	}
 
-- 
1.9.1


