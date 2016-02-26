X-GM-THRID: 6254956747855757312
X-Received: by 10.31.152.208 with SMTP id a199mr389749vke.4.1456479631248;
        Fri, 26 Feb 2016 01:40:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.42 with SMTP id ph10ls526126igb.1.canary; Fri, 26 Feb
 2016 01:40:30 -0800 (PST)
X-Received: by 10.66.139.162 with SMTP id qz2mr361461pab.1.1456479630859;
        Fri, 26 Feb 2016 01:40:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id u66si1943768pfa.2.2016.02.26.01.40.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:40:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so2912712pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mKkGMlI9jmFZFTs8cS6/qgB7dsA2DVYAO/bcrGsuuLE=;
        b=y1jrY6L/FF2X8YhU0sAn0qC/fGNEe9ItypQ2XdbBd8wYU3tejklc+ejpAc+QTgzKNR
         u/8TY1KCPbKCVDs6RfyiWDoVvFozesqgOpCtqqUNeog+lbewhWhVtYo3SV8on4Pt5kRp
         KA09x0gKnbeGzzquHis3obzkFG4ciEXWtmBpd+xL4zlH6hfnz/f4EtJXgg/TE4L7yR2+
         M7WfISOUenzHgA7pjCamgRB1ohujOg7hrICNgV9tafD2GQyFLrKf1WncZZ6SZX1AQK3Z
         zB9PODSl2h+IVEFw675zWdVBOco0BYZa8jepo1RdfoCX3GQDW1QVJBTe6FNkGVzc6hwT
         Ukrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mKkGMlI9jmFZFTs8cS6/qgB7dsA2DVYAO/bcrGsuuLE=;
        b=T6h/K3kB6be7zDEft4upm9kDu5BBd9P8nVTO1p3FcRh0La7Q+FIOORWCal20lexmy8
         a7ce11JmZfxiEEwqf9TLgd2+8Cn8r4cQIg0ZM8t0PoafbB4TcMHyvBpsMskZBUJVLZQk
         L6G0b12ZWu/u74YcEUG5tpY2Jc8tovvphhgpS2qf5IOqkno+snCg9dys73QemGzuLaw2
         k2J5YWp2EzIVwOeQEHcQSZwaiZMjaY9jLX3lA7dLBpcyeH+EHw9hSen4IEDauDTUSOrm
         xlWsQYGSrUf5uUqwpYQoJZ9tm8AaJtbfwB1gTjLYEtglnZ3pjMYIcdZzLY1jlmx259CP
         0I3w==
X-Gm-Message-State: AD7BkJLsHOYkwXeqz2AVkbUE97XoW4+q0ZyRjOm/djPWoMPiPjCruj7Ort+a5/4mvqbnRg==
X-Received: by 10.66.251.194 with SMTP id zm2mr659431pac.131.1456479630722;
        Fri, 26 Feb 2016 01:40:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id dg12sm17944127pac.47.2016.02.26.01.40.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:40:30 -0800 (PST)
Date: Fri, 26 Feb 2016 15:11:07 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 3/5] staging: rtl8188eu: core: Remove useless return
 variables
Message-ID: <20160226094107.GA10603@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:

@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v4:
	-No change

 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index ce655b6..d002f4a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -488,11 +488,9 @@ exit:

 struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
 {
-	struct sta_info		*psta;
 	struct sta_priv		*pstapriv = &padapter->stapriv;
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
-	 psta = rtw_get_stainfo(pstapriv, bc_addr);
-	return psta;
+	 return rtw_get_stainfo(pstapriv, bc_addr);
 }

 u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
--
2.1.4


