X-GM-THRID: 6205299530591633408
X-Received: by 10.50.62.148 with SMTP id y20mr836705igr.0.1444783883146;
        Tue, 13 Oct 2015 17:51:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.93 with SMTP id 90ls33508iod.21.gmail; Tue, 13 Oct 2015
 17:51:22 -0700 (PDT)
X-Received: by 10.50.134.199 with SMTP id pm7mr3382378igb.0.1444783882825;
        Tue, 13 Oct 2015 17:51:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id vy6si592983pbc.1.2015.10.13.17.51.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 17:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id rc13so36547832pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 17:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XKY/rulqWSC/3uay5BfY/iOgHN51AvcZGMbtAm5YJHU=;
        b=dXb5Z7natiF3tOUjFpxmviY/ZE/4WmHzcaj/huovezL2MPJbyCgc6lZti57BMvxjlH
         l2unzGSlJ0gj2i1q4ZblZk9mR9lvvEfyc6/ZbI56rt7SvQKjJj1X2NprUUF1khIS6uFf
         996ZaWFjV4zhzto2DLhORuIix8sbcH2ddq1lFdeRNp4debbl/ZnA7u+kt9M6vx4NcYyq
         MwbAnE20z/iwKDNFh4DZHvE6sROtGCzTomLNLQc3WruptqHtetlT8g8ztL4QxARkWckG
         BIHHdHRU1yzUlDPUKWMqEGMImtZYxZkNzGY7i7pgN558aMs8aroPDH1P5v8/lIpQpyW5
         KR9w==
X-Received: by 10.66.147.38 with SMTP id th6mr465000pab.94.1444783882704;
        Tue, 13 Oct 2015 17:51:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ze3sm6096912pac.5.2015.10.13.17.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 17:51:21 -0700 (PDT)
Date: Wed, 14 Oct 2015 06:21:12 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723au: rtw_xmit: Remove extra NULL tests
Message-ID: <20151014005112.GA26569@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Variables already tested for NULL value are checked again so, the extra
NULL tests should be removed.
Semantic patch used:

@@ expression E; @@
if(E==NULL) {... return...;}
- if(E)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index a4b6bb6..0ea521b 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
 
 	if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
 		/* encode mic code */
-		if (stainfo) {
 			u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
 					 0x0, 0x0, 0x0, 0x0,
 					 0x0, 0x0, 0x0, 0x0,
@@ -792,10 +791,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
 					 *(payload + curfragnum + 6),
 					 *(payload + curfragnum + 7));
 			}
-		} else {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-				 "xmitframe_addmic: rtw_get_stainfo23a ==NULL!!!\n");
-		}
 	}
 
 	return _SUCCESS;
@@ -934,7 +929,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
 		/* TODO: fill HT Control Field */
 
 		/* Update Seq Num will be handled by f/w */
-		if (psta) {
 			psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
 			psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
 			pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
@@ -970,7 +964,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
 					pattrib->ampdu_en = true;/* AGG EN */
 				}
 			}
-		}
 	}
 exit:
 	return res;
@@ -1132,7 +1125,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
 
 		/* adding icv, if necessary... */
 		if (pattrib->iv_len) {
-			if (psta) {
 				switch (pattrib->encrypt) {
 				case WLAN_CIPHER_SUITE_WEP40:
 				case WLAN_CIPHER_SUITE_WEP104:
@@ -1158,7 +1150,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
 						       psta->dot11txpn, 0);
 					break;
 				}
-			}
 
 			memcpy(pframe, pattrib->iv, pattrib->iv_len);
 
-- 
2.1.0


