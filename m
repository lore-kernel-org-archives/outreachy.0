X-GM-THRID: 6391533776278650880
X-Received: by 10.46.21.91 with SMTP id 27mr1439132ljv.0.1488144923152;
        Sun, 26 Feb 2017 13:35:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.209 with SMTP id v200ls710560lfa.52.gmail; Sun, 26 Feb
 2017 13:35:21 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr1469912ljb.20.1488144921856;
        Sun, 26 Feb 2017 13:35:21 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id i76si643072wmh.1.2017.02.26.13.35.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id m70so10758815wma.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 13:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0Cx0ze9VVxgU1lVUh2TDPp80CrFpYvBztzDQfjz8DQA=;
        b=vUte99rVkw2aF6LdgPDT4IIy3rEcrmkbZZ89IQMSY/crMyemYEMRwla6jnUTybjbAF
         Ac2AFFf45Ae0b5McA4uwNHuC5SOQVBO9mVaS8kIl75GcpJ2c4gnz6+hZgVYDdZxyRYHg
         5KUr93OSkw3SpdigAnYMd8MdXVibi0TMFMdi+EOjSlnDx6dKeFuJvdHhEWaPAKW1C6C4
         MFa21kwFr+uwV43g0xtk7n89sYLAuVd2youDzCImjxVCq8eg2nYqy4jS0/OMh3V9M+Sf
         4BoHh2qgUuK7dpkVs2qo8Vy1vxTyS8v+cHkxqhMoE35mKZg54xxwiqm2K7GfAgoSQaDa
         cozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0Cx0ze9VVxgU1lVUh2TDPp80CrFpYvBztzDQfjz8DQA=;
        b=W8dbrSnnj0yz/HDprdnjv0Vntt5PjpvrCyeb5UtAOeI54AWfYbd2A43mBnQcGsFPrH
         FT9aSJZjVm61NzIwjKbr3dk+uKnv+8zubAAkgrFLqiE9gDi/GQMIst3rJHdB3GmRzLAR
         1PXk0GTBewL17G3FFpHXElf/xM2N7hz0Mbnc21clp4Vccf5SY0/gVnRAkvq4C6MEDn7a
         dMvAzAtKN3jlV/sZOzgxMD0kbi8DgjhQW5PwtHPhAEgnmwXbfA42U82eQa/9QrD+1rGe
         u+r0pwSIrxVOnr4xnVzCCwlmpZTkBH80WF4kRlCLFeKE1SQ2XvAExApYce22P52l0F8G
         tzLQ==
X-Gm-Message-State: AMke39mWQNvrJ3edkvGE+WvkONnuoQw8bmbC3op2OYv2cVHuIaVxUKoEohEfKzewSg7u0Q==
X-Received: by 10.28.6.78 with SMTP id 75mr11704863wmg.81.1488144921666;
        Sun, 26 Feb 2017 13:35:21 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id v72sm9083240wmd.0.2017.02.26.13.35.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 13:35:20 -0800 (PST)
Date: Sun, 26 Feb 2017 23:35:19 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging:rtl8188eu Add spaces around binary operator
Message-ID: <20170226213519.GA5074@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Spaces around binary operator '&' are needed in order to
increase the readability of the code.

Issue found with checkpatch.pl.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
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


