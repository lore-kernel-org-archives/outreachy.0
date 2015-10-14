X-GM-THRID: 6205438272605257728
X-Received: by 10.66.124.131 with SMTP id mi3mr1867799pab.32.1444816187761;
        Wed, 14 Oct 2015 02:49:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.13 with SMTP id 13ls123171ioh.91.gmail; Wed, 14 Oct 2015
 02:49:47 -0700 (PDT)
X-Received: by 10.50.61.234 with SMTP id t10mr2319538igr.4.1444816187463;
        Wed, 14 Oct 2015 02:49:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si808708pbb.0.2015.10.14.02.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id p3so1927629pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 02:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=u6mkM1HHpSsTAFLJjR/AoWeWEREX7gpqESW7I9xXfv0=;
        b=dClIZfUJBlsva11IsI/Kmdc/TboBGCe0nATj36bILOLcd/5CYSSlvCIb9XZDsrJzRN
         92hJ4C8DMH7Mi2eJsx8VXo6bYwrTfUEdcfDWfb5/4oxLn/sm848h3j/6yw4SKDScdT5x
         pM0dT49gf5eMt3izp7Ow8EsUVULM35WbJleeoFBtqZKCLgfyRplBirYBRxJovSCYBE5P
         Blv29djcNVvS4HQd7OUkzUzL9B87e+hnmR2Tzcm0qpstFIdKAkad8j+ivQ7H1xLpab9T
         0PsqSpg8ge1keR+bgyMz/33/yvSaiYeEcSdrNJLBaFSe3+Xcdh1zQ6oCUFhxykuZbz+l
         mXCQ==
X-Received: by 10.68.92.164 with SMTP id cn4mr2734291pbb.156.1444816187345;
        Wed, 14 Oct 2015 02:49:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ln10sm8625237pab.29.2015.10.14.02.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:49:46 -0700 (PDT)
Date: Wed, 14 Oct 2015 15:19:29 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8723au: rtw_mlme_ext: Remove irrelevant test
 expression
Message-ID: <20151014094929.GA3545@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Logical and-ing of a struct and its member should be replaced by the
member only as the struct has already been tested before for true value.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Fix mistakes in commit message.

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


