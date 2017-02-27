X-GM-THRID: 6391533776278650880
X-Received: by 10.25.72.216 with SMTP id v207mr2027169lfa.7.1488230991778;
        Mon, 27 Feb 2017 13:29:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.4 with SMTP id w4ls515772ljd.22.gmail; Mon, 27 Feb 2017
 13:29:51 -0800 (PST)
X-Received: by 10.25.215.37 with SMTP id o37mr114281lfg.20.1488230990899;
        Mon, 27 Feb 2017 13:29:50 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id y19si930083wmd.0.2017.02.27.13.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 13:29:50 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id v77so15379386wmv.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 13:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5dTimzbbMN5bD5Edd0fdHj5HO1oUWpo7tfFYWab9MgY=;
        b=bBvAlJPBLHBhmvdnMa6IIvAMHwegCRetcGllxmKnclmbqulZ29rPdyblf3U/b70AkI
         hjejpPu14ijTBBPSa4CGBeIIlw/smhCHpIBw3xKVG4mfHBtU1O5Bld+HR6ho8p1f6cKA
         fn5xRIAtmKO/sbWn6RWx4A0WbgtMNgmBBgiAyuk2lv9g2D1Up/PlcfjjKHJMKKESC6R4
         hpuQn2fjim16AhME9H2tPEitVNhiL2awjdDQfQ0PJZqXEEwjFBiJfm+j9f+myI7NuEVA
         FN0bjjrFDvlNoCT5aOuOZWMTPkJsdMwiA+V3fuMofZKR0nNGbfz9USKLRaSQFVlEkv/h
         T1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5dTimzbbMN5bD5Edd0fdHj5HO1oUWpo7tfFYWab9MgY=;
        b=M+t7R7NssobU3Ulq0s4Oo50m4kldlY1LSm2nkZjLIlPsaGxICDdZhOnfr41rS+Y1Is
         2cj50XIDe4rDErYm6JkZBFijp/cpK6EwD53kUcwcLqgeSdkZWchkpAL+x43lLxyjGZm/
         tbIjUTCn6vBeVoBzkJfQAntgJwyuQFRbE69VT3UxqFW1Wx0DrFnSuBcxgmt2Ltd4U6+s
         KSFk32e9SwFnGY12TkvpJH4E0JZ0nt6XDkV1vmQXdOtUVbpASxkKc0Gcvd7bQABiDV6E
         6l82h0BLUIkLQcgq8A9e3JI5pIXupsRfu/yNVRN4xT8CdKM+N221TNOd0x7M3+5Bb/vw
         EquA==
X-Gm-Message-State: AMke39nwbHCuiXB9jXWytxt+CafAxakc8BJzBMTJvDN+JLDk88nrVDLUpLnsgpsRnCN38Q==
X-Received: by 10.28.103.69 with SMTP id b66mr15096911wmc.73.1488230990693;
        Mon, 27 Feb 2017 13:29:50 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id v130sm6140218wmv.2.2017.02.27.13.29.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 13:29:49 -0800 (PST)
Date: Mon, 27 Feb 2017 23:29:48 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging:rtl8188eu Add spaces around binary operator
Message-ID: <20170227212948.GA5171@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add spaces around binary operator '&' in order to
increase the readability of the code. 

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
 - rephrase the commit message to avoid passive voice

 drivers/staging/rtl8188eu/core/rtw_xmit.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 630fdc3..1dcb4eb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1763,20 +1763,20 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
 			switch (pattrib->priority) {
 			case 1:
 			case 2:
-				wmmps_ac = psta->uapsd_bk&BIT(0);
+				wmmps_ac = psta->uapsd_bk & BIT(0);
 				break;
 			case 4:
 			case 5:
-				wmmps_ac = psta->uapsd_vi&BIT(0);
+				wmmps_ac = psta->uapsd_vi & BIT(0);
 				break;
 			case 6:
 			case 7:
-				wmmps_ac = psta->uapsd_vo&BIT(0);
+				wmmps_ac = psta->uapsd_vo & BIT(0);
 				break;
 			case 0:
 			case 3:
 			default:
-				wmmps_ac = psta->uapsd_be&BIT(0);
+				wmmps_ac = psta->uapsd_be & BIT(0);
 				break;
 			}
 
@@ -1890,20 +1890,20 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		switch (pxmitframe->attrib.priority) {
 		case 1:
 		case 2:
-			wmmps_ac = psta->uapsd_bk&BIT(1);
+			wmmps_ac = psta->uapsd_bk & BIT(1);
 			break;
 		case 4:
 		case 5:
-			wmmps_ac = psta->uapsd_vi&BIT(1);
+			wmmps_ac = psta->uapsd_vi & BIT(1);
 			break;
 		case 6:
 		case 7:
-			wmmps_ac = psta->uapsd_vo&BIT(1);
+			wmmps_ac = psta->uapsd_vo & BIT(1);
 			break;
 		case 0:
 		case 3:
 		default:
-			wmmps_ac = psta->uapsd_be&BIT(1);
+			wmmps_ac = psta->uapsd_be & BIT(1);
 			break;
 		}
 
@@ -2016,20 +2016,20 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 		switch (pxmitframe->attrib.priority) {
 		case 1:
 		case 2:
-			wmmps_ac = psta->uapsd_bk&BIT(1);
+			wmmps_ac = psta->uapsd_bk & BIT(1);
 			break;
 		case 4:
 		case 5:
-			wmmps_ac = psta->uapsd_vi&BIT(1);
+			wmmps_ac = psta->uapsd_vi & BIT(1);
 			break;
 		case 6:
 		case 7:
-			wmmps_ac = psta->uapsd_vo&BIT(1);
+			wmmps_ac = psta->uapsd_vo & BIT(1);
 			break;
 		case 0:
 		case 3:
 		default:
-			wmmps_ac = psta->uapsd_be&BIT(1);
+			wmmps_ac = psta->uapsd_be & BIT(1);
 			break;
 		}
 
-- 
2.7.4


