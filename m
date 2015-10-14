X-GM-THRID: 6205472646715408384
X-Received: by 10.107.149.4 with SMTP id x4mr76891iod.20.1444824190521;
        Wed, 14 Oct 2015 05:03:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.84 with SMTP id g20ls159301igq.36.gmail; Wed, 14 Oct
 2015 05:03:09 -0700 (PDT)
X-Received: by 10.68.184.35 with SMTP id er3mr2264869pbc.2.1444824189941;
        Wed, 14 Oct 2015 05:03:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si824552pab.1.2015.10.14.05.03.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:03:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cn9so21924923pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 05:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2nLUqwNa/tuci2O8OaFfZ+/ftjIDUaiBAJYiEB8UU4o=;
        b=rz5Tr7DqA4k97i2SukvfDpVJlWMd0xmbxIjxRIuFPYuQ9eHmeU08q+QSsIXm9xtbXY
         gEfK6hdJyI45ky8Lxvv5q5IfDHjA49oJ8vC3EhnKMQ8DQPO2BGKnkLenE64gZlKxe72R
         EZxQyrEJX37DDxCfu9f5qlnPRjgKuBqXIlSIqctWc+Jdnc5ZObOz+BJwBYLrV/dyETqT
         Np4oo/TlEz3VF+XX/s5i8BDBb70BoB2iD2SxrOCsJdijLw45ywW+jCwiAYjwPZSzgCBn
         9jTR/HngDcIi/GEyOQoOgL1dRIdGM96HZ3ijy5cUt1HusjazSxArH0Ee69l/GTkyRne/
         43gw==
X-Received: by 10.68.68.167 with SMTP id x7mr3393093pbt.140.1444824189820;
        Wed, 14 Oct 2015 05:03:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id dy8sm9410194pab.38.2015.10.14.05.03.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:03:08 -0700 (PDT)
Date: Wed, 14 Oct 2015 17:32:58 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: os_intfs: Remove unnecessary cast
Message-ID: <20151014120258.GA9142@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit type conversions are not required and so, they should be
removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index f34a963..6805f79 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -333,7 +333,7 @@ u8 r8712_init_drv_sw(struct _adapter *padapter)
 
 u8 r8712_free_drv_sw(struct _adapter *padapter)
 {
-	struct net_device *pnetdev = (struct net_device *)padapter->pnetdev;
+	struct net_device *pnetdev = padapter->pnetdev;
 
 	r8712_free_cmd_priv(&padapter->cmdpriv);
 	r8712_free_evt_priv(&padapter->evtpriv);
-- 
2.1.0


