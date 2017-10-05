X-GM-THRID: 6473412482924806144
X-Received: by 10.84.133.164 with SMTP id f33mr1679196plf.33.1507208802826;
        Thu, 05 Oct 2017 06:06:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.56.12 with SMTP id f12ls494837pga.11.gmail; Thu, 05 Oct
 2017 06:06:42 -0700 (PDT)
X-Received: by 10.101.90.11 with SMTP id y11mr2224897pgs.82.1507208802014;
        Thu, 05 Oct 2017 06:06:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208802; cv=none;
        d=google.com; s=arc-20160816;
        b=APsNziX0QZ9Vj4BJq1pYh87VYxRzlwJ3j8NbflssjL4QoBrFGNtQgAx65g40Yeu0jE
         GzWWemdH0AQqwLbVyOEjPjYfA65k3Hs0Sh3tk93dmZi4sa2LFpLHB/yFuM15NCCdZP8a
         312yl2SGu0k935T3KTMgDRFfqkuHbNB8C1j6Wx9Z9Ljc4A7mmgNBPzT/oqA+KksTQeIe
         wQCNAoSYbO4cyVxxPfVTqEDbrbzeROz0xTA4Vq3FIy0kGUlNi08L9k+m1VyNIpcoHR5E
         UiWauZlOgVI7nqFjIDAiqy/4FI0aIHf6V0iWw24fy1SEnQA9DGU+mBULqC9mG2Ogkwye
         gazg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=JCsgZrEWpChc8/XFGYhrd15/JBtjdhHkiVh86zjhiss=;
        b=gHeGwKWCpYIRSSCfnMw2QctHhnoBaVa7d4qgyGwF/xPzceTWA5pGqqiMrQV3ubcavV
         qmws7+f5HGURis6VAS14SVkiKZJdMG3ZlrHBqYAQbsahqVArxx/a1DdKZRTVMT0xz5hR
         qyAFTqChDnKtsk8It13dPG/aArc3C6jSESVzN/DPPculZqsocXWGwC7UTknywmqCa7O+
         zSSKeD7YjbbQuCwBcMuIl+1LDE7OrZvEdnoes/7eWoE8qAatVOnImvvDgLmysUHC6/Un
         Y8BnYX0kyuNUC7axzlmQBkMvy+kwuFy0XV82LkAkzhyxiY2b5x8K7ZNS4VnnbAAudMd8
         /AGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsCzEE5F;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id x124si1124373pfx.20.2017.10.05.06.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsCzEE5F;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id a7so14596787pfj.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JCsgZrEWpChc8/XFGYhrd15/JBtjdhHkiVh86zjhiss=;
        b=fsCzEE5FRR3vbabqxqOiT5vIjak6svyalPhq/d8pM2MkIvxngwcj3pM1F2uNUYRcdb
         Bo7AZ90PzKT2GkzeQ+ZBq4mbmOTKgaHIMhJ0U0/eJKxkkuYFSayO3VOBePYZl14+XoZv
         FFXp12tt0A0w53Wnykwj/o3kZW5Bs2LQFUmCp4M+1Ob4L2wIrktg6xAQQCrFJgvKYTed
         XQ5uokbphk9Sd9peTgIwDyfS2lDlyPzwrlitNwHG5CYsuEV6h2a5imN4mGGRv8eJKI8I
         0k4lYQm8bOdEzwYQ1Y2iPv+cn+DZkWT/lrhckXKgRWMBO03HhVQg4g/ZNbI9OIgThnMD
         k3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=JCsgZrEWpChc8/XFGYhrd15/JBtjdhHkiVh86zjhiss=;
        b=nJe2ulg/ZHNO8X4GrrEAC1Y4owouuvQZuGQSuJowPQr2bzXCxVCrXFsBklhuVrvcar
         w4Q8k79xC7I9fIdDKYG5m/O/1q2cTgrtkYzx+pvigTbN4jhBWGnX/+CK3n1AAZOWFsBj
         PH8gMXcPqlSzMYmmO2hVqqwFDSgU/cxy935Kl0ENHxww3rYHxNIo4AqAhJ9OMPCw2NNV
         JUCbdBrwpSVcUMwjMl2vfYvQ6qGU8fkbxxZQpUJ315ExP0olRyukgQJB3mxehmngw5t1
         F9StHNnMUCrg66s8G84k6zX3ES9eCBtEvxhT13lY/aOWPmKWjlARPbGChipChd18hBdN
         mzFA==
X-Gm-Message-State: AHPjjUgo6l6BzopOBNN1k9mcufH9QixUiBwy4J5ieKm6DLArkXCNwKI0
	a5T6XgJUd+1Dbop4OYTAGBw=
X-Google-Smtp-Source: AOwi7QBnWPJ2xIXB5SEtCx6Wubco6lrQ3tQ9AEX6KJSQeB5aBVu/M9GreiYxPW73qk/fVMz+mGMGhw==
X-Received: by 10.84.196.164 with SMTP id l33mr22744794pld.331.1507208801783;
        Thu, 05 Oct 2017 06:06:41 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id v14sm13510141pgc.78.2017.10.05.06.06.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:06:41 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 2/7] staging: rtl8188eu: fix space between function name and '('
Date: Thu,  5 Oct 2017 18:36:22 +0530
Message-Id: <1507208787-18008-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: space prohibited between function name and open parenthesis '('

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/osdep_intf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_intf.h b/drivers/staging/rtl8188eu/include/osdep_intf.h
index 97d3d85..f1fb3d5 100644
--- a/drivers/staging/rtl8188eu/include/osdep_intf.h
+++ b/drivers/staging/rtl8188eu/include/osdep_intf.h
@@ -26,7 +26,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter);
 u8 rtw_free_drv_sw(struct adapter *padapter);
 u8 rtw_reset_drv_sw(struct adapter *padapter);
 
-void rtw_stop_drv_threads (struct adapter *padapter);
+void rtw_stop_drv_threads(struct adapter *padapter);
 void rtw_cancel_all_timer(struct adapter *padapter);
 
 int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
-- 
2.7.4


