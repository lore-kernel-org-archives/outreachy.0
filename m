X-GM-THRID: 6205292199606747136
X-Received: by 10.13.214.200 with SMTP id y191mr257536ywd.10.1444782176674;
        Tue, 13 Oct 2015 17:22:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.85.167 with SMTP id i7ls1611078obz.1.gmail; Tue, 13 Oct
 2015 17:22:56 -0700 (PDT)
X-Received: by 10.182.213.73 with SMTP id nq9mr220416obc.33.1444782176280;
        Tue, 13 Oct 2015 17:22:56 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si585650pbc.1.2015.10.13.17.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 17:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ex6so35718005pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 17:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/nxreoVz3AKzhC/cA5Mxuni+mDjVUDyh+8HklXvgqKg=;
        b=mutU9/ApxmL7Cuc3bRDo0sAyRdd/RAZ8MiiZZn4cJqloW9OfbZwV6hFyXbG/TPq60U
         6khhaGRJqp8ovZagkIlr60cwetXhPm8V609Ck05EDxj4RSmPTLzxpK9RSdTNPzTe6P3v
         2dY5wao3WRsSqWxaulzXtiFggimFnOHtrjkB+QevptyptITyrgJVrB+T3DVFA5s3Or5F
         W9iQu8qZ0s6ttk2YHOM12/nk8ZFilgoi3TobN/zhZqUp9WOJC5FwsYQgap1RwEaU1C1r
         fTVcKXzYGRnIl7KDozuNKe727BuoWaPWZIO9IefSfrCru/3LYyO9X/sM8PnQemDBDrnq
         0bYw==
X-Received: by 10.68.131.6 with SMTP id oi6mr315759pbb.3.1444782176164;
        Tue, 13 Oct 2015 17:22:56 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id pk2sm5991566pbb.21.2015.10.13.17.22.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 17:22:55 -0700 (PDT)
Date: Wed, 14 Oct 2015 05:52:45 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723au: rtw_mlme_ext: Remove extra test
 expression
Message-ID: <20151014002245.GA21441@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Logical and-ing of a struct and its member should be replaced by the
member only.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
index fca22ba..d28f29a 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
@@ -1715,7 +1715,7 @@ OnAssocReq23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
 	/*  now the station is qualified to join our BSS... */
-	if (pstat && pstat->state & WIFI_FW_ASSOC_SUCCESS &&
+	if (pstat->state & WIFI_FW_ASSOC_SUCCESS &&
 	    status == WLAN_STATUS_SUCCESS) {
 		/* 1 bss_cap_update & sta_info_update23a */
 		bss_cap_update_on_sta_join23a(padapter, pstat);
-- 
2.1.0


