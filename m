X-GM-THRID: 7382846406656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae38b1b49eac9065
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.47.5 with SMTP id m5mr24384513icf.26.1425988685618;
        Tue, 10 Mar 2015 04:58:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.4.2 with SMTP id g2ls13374obg.44.gmail; Tue, 10 Mar 2015
 04:58:05 -0700 (PDT)
X-Received: by 10.182.251.231 with SMTP id zn7mr33830852obc.24.1425988685387;
        Tue, 10 Mar 2015 04:58:05 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id m1si76930pdc.0.2015.03.10.04.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 04:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id nh10so1239717pdb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 04:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1x+BSSgE8deOafn3iHWKZ9VBK3qO3fQ0aTGpOj9uDk8=;
        b=VIhpcpi0pBHFr00Y/aFAi0Yd8N3TLinbCsYbgkoM0XsrGjPhEacczn0Qq301katp8P
         AcAW99b30ThbcLW42Cal65G5Q3+vx1tzQG2krwMCGvYnbpwCAGa42b1mGmJ2mg14PgDB
         wRF0YcRzsKuu4Kggo2IPbhqE4J/1NCtjZpjWH4w9ixcV4P1kbqBQmnpOEChIURYcT/jM
         GyGxm5EGH7UKJLzJivdSf5KCKTiRcGq8/SKQObYy0df96t/9A738Opq2q/vwmCfy9riD
         3UV/UJ5FdI+Lqw4FxJfqryT/ZVTGuQavM++NluErbpkd3Qo7zFUrsMGLyt1dwlnxlGCk
         0xDQ==
X-Received: by 10.66.141.71 with SMTP id rm7mr64823370pab.114.1425988685170;
        Tue, 10 Mar 2015 04:58:05 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id z4sm692561pdn.46.2015.03.10.04.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 04:58:04 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:29:27 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/8] staging: rtl8188eu: Use kcalloc instead of kzalloc
Message-ID: <090f68162908b24cb43292a60ff5fb18fb77e59d.1425987910.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
index bc275b2..06d1e65 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
@@ -42,7 +42,7 @@ int	rtl8188eu_init_recv_priv(struct adapter *padapter)
 	_rtw_init_queue(&precvpriv->free_recv_buf_queue);
 
 	precvpriv->pallocated_recv_buf =
-		kzalloc(NR_RECVBUFF * sizeof(struct recv_buf), GFP_KERNEL);
+		kcalloc(NR_RECVBUFF, sizeof(struct recv_buf), GFP_KERNEL);
 	if (precvpriv->pallocated_recv_buf == NULL) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-- 
1.9.1


