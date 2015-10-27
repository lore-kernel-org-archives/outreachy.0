X-GM-THRID: 6210381585761435648
X-Received: by 10.50.78.226 with SMTP id e2mr18997030igx.3.1445967471439;
        Tue, 27 Oct 2015 10:37:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.99 with SMTP id j90ls4439674qga.4.gmail; Tue, 27 Oct
 2015 10:37:51 -0700 (PDT)
X-Received: by 10.31.108.23 with SMTP id h23mr35571181vkc.4.1445967471009;
        Tue, 27 Oct 2015 10:37:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id zg1si4412922pbb.2.2015.10.27.10.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:37:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id la5so35527664pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 10:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=C0iaLmTVz1BVsy3kHydNyJ/zdY4GHAsxucMGY9UFy1A=;
        b=mhPwSdKbZCvQwMar0cnAAGslZk1xaV0iQVIzj+viVtBsB5ccLnzEz1fUBCwtyQUs/T
         qen5ATWGK2r6HVAhpAbZ8ckz3E6sXA6dMi2ZmU5a/CPNOvG/Un2yXTyq05qiDMP4WZC0
         8w/a+etL4z4rRWa7dZdSnib1c2XzTV4G6WxjWYPpanBaRMw5WzN4bLR93HgnBM5T3am3
         D7Q08mx/tbXhgC9HM2FyQZ3bVaB/zUmIs8YMdeYjGBKvV0dz+dqkmCM0ud/p7BC5L31u
         Q4Nkir9CBrmdMHbSUOWg4yv7rDHPMvI8K5AsjdLJjba+t7h90I49+9HpUxp8cFJSmBqh
         3CSQ==
X-Received: by 10.68.231.7 with SMTP id tc7mr29538272pbc.44.1445967470790;
        Tue, 27 Oct 2015 10:37:50 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.134.91])
        by smtp.gmail.com with ESMTPSA id u10sm40763881pbs.63.2015.10.27.10.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 10:37:50 -0700 (PDT)
Date: Tue, 27 Oct 2015 23:07:46 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8188eu: core: Remove wrapper function
Message-ID: <fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606@gmail.com>
References: <cover.1445966850.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445966850.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 0270755..fec9ce1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -701,12 +701,6 @@ exit:
 	return ret;
 }
 
-static inline void issue_probereq(struct adapter *padapter,
-				  struct ndis_802_11_ssid *pssid, u8 *da)
-{
-	_issue_probereq(padapter, pssid, da, false);
-}
-
 static int issue_probereq_ex(struct adapter *padapter,
 			     struct ndis_802_11_ssid *pssid, u8 *da,
 			     int try_cnt, int wait_ms)
@@ -2029,24 +2023,24 @@ static void site_survey(struct adapter *padapter)
 			for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
 				if (pmlmeext->sitesurvey_res.ssid[i].SsidLength) {
 					/* todo: to issue two probe req??? */
-					issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL);
+					_issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL, false);
 					/* msleep(SURVEY_TO>>1); */
-					issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL);
+					_issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL, false);
 				}
 			}
 
 			if (pmlmeext->sitesurvey_res.scan_mode == SCAN_ACTIVE) {
 				/* todo: to issue two probe req??? */
-				issue_probereq(padapter, NULL, NULL);
+				_issue_probereq(padapter, NULL, NULL, false);
 				/* msleep(SURVEY_TO>>1); */
-				issue_probereq(padapter, NULL, NULL);
+				_issue_probereq(padapter, NULL, NULL, false);
 			}
 
 			if (pmlmeext->sitesurvey_res.scan_mode == SCAN_ACTIVE) {
 				/* todo: to issue two probe req??? */
-				issue_probereq(padapter, NULL, NULL);
+				_issue_probereq(padapter, NULL, NULL, false);
 				/* msleep(SURVEY_TO>>1); */
-				issue_probereq(padapter, NULL, NULL);
+				_issue_probereq(padapter, NULL, NULL, false);
 			}
 		}
 
@@ -4820,9 +4814,9 @@ void linked_status_chk(struct adapter *padapter)
 			} else {
 				if (rx_chk != _SUCCESS) {
 					if (pmlmeext->retry == 0) {
-						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
-						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
-						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
+						_issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress, false);
+						_issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress, false);
+						_issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress, false);
 					}
 				}
 
-- 
1.9.1


