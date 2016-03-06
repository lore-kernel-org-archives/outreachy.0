X-GM-THRID: 6255862679722786816
X-Received: by 10.50.85.37 with SMTP id e5mr5836938igz.12.1457255942145;
        Sun, 06 Mar 2016 01:19:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.10 with SMTP id b10ls295540iod.101.gmail; Sun, 06 Mar
 2016 01:19:01 -0800 (PST)
X-Received: by 10.66.63.68 with SMTP id e4mr12127931pas.40.1457255941840;
        Sun, 06 Mar 2016 01:19:01 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2378174pab.0.2016.03.06.01.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:19:01 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x188so3909288pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X5M/SCDQYFeJbkBJVO9L8NaUUEP4D5sEnCvWcnAHUCU=;
        b=jMeVWihb1naCOiLK5DbC73yx0XC56cKDgJ8QfcQcK0J3Ci+yIsMaYPYnV+3vmQS5h7
         oJyAJVFYIVQ5SqGWDbBezkWSDuwcCezLIoQpQiC/VETYbYqOr7wgGt9bBdlriz8ca4Gy
         2GRJe+yHx3NmSGMLTziuLR4v+ZtsY9M6OoTTkRA+D2Yro+dwj1PXt6+p2kV7xCPMPLts
         5aoLVfkvenk1i/vbzxT2PLgZqYJnOvDG8dy2kXXcpxUiMRQqLTIfpk8Dckv4J/5yQlE9
         5oIBX8A/hjZdlUjRWwm5MAPVimQ3usNWOS5fC7i8RopWvmrS2Nfk27vCQt2oZK53Lifj
         GxtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X5M/SCDQYFeJbkBJVO9L8NaUUEP4D5sEnCvWcnAHUCU=;
        b=XeM6euIe8DbwQd+e4a8WUE8Fxy40aHpn1ckA8iIHduJJVwSqXDBQcAzQFvrFWw/q3x
         Bbt4++pxLiib3qZbuCjuJUux8b0Dc45wdbQjr6NuJse7bCK0td8QOY4zbDFPVxfYQ3Jj
         nfE+HOw0W2oIfkXwTvEbpVM7VCe0YD1PUUaWuVfNxpltYWGdUwDJvWEAK5VOFRR5HS/L
         DH2+Ip8fbyxsDUhr722I5V/hvdBYWksHBjrfhE8QyT3JNdfu5oFeGk9aR3YpdNo+v/T/
         zx9uVjonX1CEXYh1baQHC0rdgSQ730QAIvDVvLMSd0/PBJe+b2NDONsF50Qx6CbI1ZcT
         deVQ==
X-Gm-Message-State: AD7BkJIn7gD8GjcHXBtW0LRpdnmKe12jag2fZi7gn5dcUqms0cI1FGVSiFz7yOKVrmAKRA==
X-Received: by 10.98.18.195 with SMTP id 64mr14994616pfs.131.1457255941683;
        Sun, 06 Mar 2016 01:19:01 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id y27sm16753653pfi.82.2016.03.06.01.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:19:01 -0800 (PST)
Date: Sun, 6 Mar 2016 14:48:58 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Clean up tests on the results of
 functions that return NULL on failure.
Message-ID: <20160306091858.GA31543@localhost>
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

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
name.	    

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


