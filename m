X-GM-THRID: 6205445895815692288
X-Received: by 10.107.132.77 with SMTP id g74mr1348647iod.10.1444817962587;
        Wed, 14 Oct 2015 03:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.176.99 with SMTP id ch3ls31197obc.16.gmail; Wed, 14 Oct
 2015 03:19:22 -0700 (PDT)
X-Received: by 10.182.102.194 with SMTP id fq2mr1864704obb.43.1444817962193;
        Wed, 14 Oct 2015 03:19:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id vy6si767541pbc.1.2015.10.14.03.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cn9so19672203pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 03:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GjTS82BwRwHqXVk9Z1W7AGjoAaOthyBHv/9bBvU4na4=;
        b=lDhUiC8r0gHebK+8Chlr3bjjqTCgn1B9eiTVVK3Gdctxpzb8qnWrln+wV8SQG2xmNu
         C//6zaCbHMXnIRCkpRERGBu+tkOSPa/Qzy9VCFFYNlMsyO5CkhA32bFdt5ER5QLqvzf4
         L7dsZRzWQ7f0j4vCz43Xjhbjqs2LsS8qh3udsxUr+T3UKSbmFkFfgyUTTmXReSAu4JNb
         Mtk18SKh+4AuJ1TPKX6Vdw60FPAsqu8tZiebtqC4qDEWSlmPYG82F+lHSM/V9lT6tb0T
         wTqMbX0l2gA8M5iRd/eQRAevOD5FOnfcKPy6i387eJ6L6e4sLdz861cQUrOW58k4m4py
         vRhg==
X-Received: by 10.66.66.196 with SMTP id h4mr2027664pat.77.1444817962038;
        Wed, 14 Oct 2015 03:19:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yz3sm8758898pbb.37.2015.10.14.03.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:19:21 -0700 (PDT)
Date: Wed, 14 Oct 2015 15:49:06 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rtl8723au: rtw_mlme_ext: Remove unnecessary test
 expression
Message-ID: <20151014101906.GA3935@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Logical and-ing of a struct and its member should be replaced by the
member only as the struct has already been NULL tested before.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v3:
	-Make commit message better.

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


