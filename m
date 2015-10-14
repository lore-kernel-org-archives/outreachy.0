X-GM-THRID: 6205449459620380672
X-Received: by 10.129.70.6 with SMTP id t6mr2070494ywa.5.1444818791903;
        Wed, 14 Oct 2015 03:33:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.125.71 with SMTP id mo7ls37105obb.19.gmail; Wed, 14 Oct
 2015 03:33:11 -0700 (PDT)
X-Received: by 10.182.98.196 with SMTP id ek4mr1880502obb.17.1444818791446;
        Wed, 14 Oct 2015 03:33:11 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si791820pab.1.2015.10.14.03.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:33:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so51067323pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 03:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=l9fwXdNqFLO6Hmp3NW8mAgWfv1G561QA34S/4qDzdvc=;
        b=HQ658yj67FtDKun+vupPtunEoxuFesUpxJ9y8Prbdd/oTQv6B3WgNJAiXdHSUnqr2s
         vAHlwGtkvqaZZ6vBJFifLM3hASpj4yEWSxxoBIjOv9xmP9SIp9bgUVJxbaLev7SiPfSI
         ynDdJmrApCMOZ+s+udfziM1wZoaO0vd+t4vmA4Szf8WYrTxfTSHA9RHH7jYaYPkugNlR
         WQJszwgGJ7I3Hg3htFGCBh7m1OPGjJTQ3ZUaTedYmcJR72br5DqfAoiXjYz81OoZBe2d
         06TuWpq36RO+lMK0uOk+eVHfXOngI9QiUaGIS6z6dPaylNJvmOQzmEE0Z/DTGPeDgJ0e
         5fCA==
X-Received: by 10.66.193.162 with SMTP id hp2mr2966865pac.108.1444818791315;
        Wed, 14 Oct 2015 03:33:11 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id si10sm8892875pab.15.2015.10.14.03.33.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:33:10 -0700 (PDT)
Date: Wed, 14 Oct 2015 16:02:56 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8723au: rtw_xmit: Remove unnecessary tests
Message-ID: <20151014103256.GA4491@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variables which are preceded by NULL tests on them should not be
checked again.
Semantic patch used:
@@ expression E;
statement S1, S2, S3; @@
if(E==NULL) {... return ...;}
else S1
- if(E==NULL)
  S2
- else S3

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Correct the semantic patch and make commit message better.

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


