X-GM-THRID: 6255862679722786816
X-Received: by 10.140.95.38 with SMTP id h35mr21041462qge.3.1456556534812;
        Fri, 26 Feb 2016 23:02:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.149 with SMTP id 21ls1496185qgd.55.gmail; Fri, 26 Feb
 2016 23:02:13 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr4483830ywb.57.1456556533225;
        Fri, 26 Feb 2016 23:02:13 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si2421656pab.0.2016.02.26.23.02.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 23:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so5586217pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 23:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yQ3gwzPTIkfqYyCMKj8CpjhnYg9NroBu6GmU23pRshU=;
        b=ZCyruVrhTuzJMeGDMH9x5GvW5J0yto0ce0M/NJz9MaKvzk81FdFoBPKXkj/LIMgEhz
         I6fhymdVhaJr/8PuzOekJgaXU4RVm+dh4gI5+Eg7hynixalulsuN0KzaS3P3iMgw1UZu
         5YZq5S9zFUyTO/f+F0VBCRU+O2Nd80hrvwPZVJxXWV2a9fjYWPNn6chJjpFDUnCaAEDx
         zlddYk3z63KTNdkP/pqdpQaawpPK6n8nXw+sZjlYPKesaOw+XaQ9///xUQpO4WdhJzxu
         WedviIl/HecFhL4dEdIfUT/zTsjA/4HAhP0BHB00ZaQMYOGUt9wLD1C9OHHHwrUeMeen
         YiOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yQ3gwzPTIkfqYyCMKj8CpjhnYg9NroBu6GmU23pRshU=;
        b=cJMmYovPhDhWeMQDVMELS2VmhGXZCVrdqVWEr+5SEAE98WyNIWZ18dkWWnULFHSg06
         mbsu0jqusxyPywZUrW46pWWEGz4RMqAYV10sxAOtZHfywrIb6Jv/vVdIWJfQi4H5rKe0
         9pLxY5oWJKVge1uem5DG3Y3ZR0EVV7PJzfkgM9mcVq7aTpnXFXmL9YTImsHDU7MGFVax
         tCzejDdpfZO+THfYClEgIWCt6cPK22vcOmCf85m1oxab/8GKVq++LsOZ2v+bsaTiKPpV
         G3ROExr+HV0jIlKw/iOTnbSUycJoyMUth4NQ3tWSynV1lWpCUgfOizJ5AipXhaWGOlmR
         fGfg==
X-Gm-Message-State: AD7BkJJjNeg04Q3V2Mp9/d7EeEsciR78nVGaI5at/zsl8gIrWv0SDkSXPhfbNycHL3QZ/A==
X-Received: by 10.66.118.198 with SMTP id ko6mr7673537pab.11.1456556533010;
        Fri, 26 Feb 2016 23:02:13 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ti6sm23687896pab.4.2016.02.26.23.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 23:02:12 -0800 (PST)
Date: Sat, 27 Feb 2016 12:31:50 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Clean up tests on the results of
 functions that return NULL on failure.
Message-ID: <20160227070150.GA18032@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Functions returning NULL as a return value on failure can be tested for
as !x, NULL == x or x == NULL. As !x is commonly used, all the tests
need to be modified to use !x for a consistent coding style. In this
patch, the function kzalloc is considered.

Coccinelle is used to achieve this, the semantic patch being:

@@
expression E;
statement S;
@@

E = kzalloc(...);

if (
(
+	!
	E
-	== NULL
|
+	!
-	NULL ==
	E
)
 ) S

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 84e6272..8060410 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -373,7 +373,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		/* take WEP into use */
 		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
 				    GFP_KERNEL);
-		if (new_crypt == NULL)
+		if (!new_crypt)
 			return -ENOMEM;
 		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
 		if (!new_crypt->ops) {
@@ -618,7 +618,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
-- 
2.1.4


