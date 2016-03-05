X-GM-THRID: 6258684423306215424
X-Received: by 10.67.30.161 with SMTP id kf1mr11086284pad.21.1457213522877;
        Sat, 05 Mar 2016 13:32:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.208 with SMTP id h16ls606116igt.36.canary; Sat, 05 Mar
 2016 13:32:02 -0800 (PST)
X-Received: by 10.66.171.167 with SMTP id av7mr10822499pac.17.1457213522113;
        Sat, 05 Mar 2016 13:32:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ff2si2265878pad.2.2016.03.05.13.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 13:32:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fl4so55011096pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 13:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Oz/PhhosSwh26MjApt6UED/pHpQl6a6aaj7JMdG0veQ=;
        b=ZvWNIkXvAhwZPhJ5I4opD5ArpMoEWR+OBLiEjBXIZcj9BCHnNI5keFd+doqjJxc0fx
         6a3CgU3MxPQDpvEmTHsRkL3/FAdkwKO7Ql+cs9/JatEWoFEKFmR8sPIirh82LWG4Sdds
         wuoUbgEsAjWN/rPfrKrJlVxMlS/ZF3PNaaW/RDmettA4kCIZcny0sAcFcXhG7DtuzrgM
         7iTqKeZ8743uCPlZTMxb1wtf2ZJPHZjyc3kuXZerZu6orpvYt7MrcZ7+9A1nHP1o7Rhy
         xv3cSryeGfdlivqf3E5Ulc1va/B6FJT0kvtmADs+scRIRQI/AIJK4TXR+EZje7usXRoG
         CjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Oz/PhhosSwh26MjApt6UED/pHpQl6a6aaj7JMdG0veQ=;
        b=R/vvQb8i2Y1A4au2lV4RxWlq1XKxxhiYhglBI//PhOE0Nevi1GeDSLtckUOfbjQ55R
         Crf15G55rHL51HmUxPZebYY5oiXY1sIEblDGbXyvmTkyG9H7BCzXcablBDdDuWoa+RUt
         jiku58n1/xFpUpeXnCoWRlyF3ZXPiTvNGlGB3ZlKHkQmG0MRn9HSnV/4bBQsX0dx8g7r
         mvO0mtX0/Z4xmcODw4TvNhoNdt3OGwlRVdyfIb/lJwKpmkreHbbyMO0kXj/b2mqMwrUJ
         rxng32OiisMSEVOuM9sdgOVzV0bh3PH4L6awq1ry4loJAf70HqVST7rIHQNiK9YETSpb
         9Xxw==
X-Gm-Message-State: AD7BkJICkfoRgsuduj1mhiI1iKrgJitQl2kPQp2wy4+JLMuskTGIGhL/5CvT8+SydOj5Vg==
X-Received: by 10.66.147.74 with SMTP id ti10mr22762730pab.128.1457213521994;
        Sat, 05 Mar 2016 13:32:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o66sm14365863pfi.14.2016.03.05.13.32.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 13:32:01 -0800 (PST)
Date: Sun, 6 Mar 2016 02:49:46 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: rtw_security: Change form of NULL
 comparisons
Message-ID: <20160305211946.GA25879@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change null comparisons of the form x == NULL to !x.
This was done using Coccinelle.

@@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_security.c b/drivers/staging/rtl8723au/core/rtw_security.c
index 038b57b..f2c9a9a 100644
--- a/drivers/staging/rtl8723au/core/rtw_security.c
+++ b/drivers/staging/rtl8723au/core/rtw_security.c
@@ -634,7 +634,7 @@ int rtw_tkip_encrypt23a(struct rtw_adapter *padapter,
 					     &pattrib->ra[0]);
 	}

-	if (stainfo == NULL) {
+	if (!stainfo) {
 		RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
 			 "%s: stainfo == NULL!!!\n", __func__);
 		DBG_8723A("%s, psta == NUL\n", __func__);
@@ -731,7 +731,7 @@ int rtw_tkip_decrypt23a(struct rtw_adapter *padapter,

 	stainfo = rtw_get_stainfo23a(&padapter->stapriv,
 				     &prxattrib->ta[0]);
-	if (stainfo == NULL) {
+	if (!stainfo) {
 		RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
 			 "%s: stainfo == NULL!!!\n", __func__);
 		return _FAIL;
--
2.1.4


