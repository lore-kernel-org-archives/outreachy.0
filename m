X-GM-THRID: 7423401132032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,66aeee52302e9056
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.233.37 with SMTP id tt5mr16173936pac.3.1425990405547;
        Tue, 10 Mar 2015 05:26:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.17 with SMTP id u17ls84527ioi.6.gmail; Tue, 10 Mar 2015
 05:26:45 -0700 (PDT)
X-Received: by 10.66.123.74 with SMTP id ly10mr3080513pab.16.1425990405356;
        Tue, 10 Mar 2015 05:26:45 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id ri9si80548pdb.1.2015.03.10.05.26.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:26:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id y10so1361029pdj.8
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KItUjqricqRSRtNSLXHWKViBjd1Lyk8BLsC+YiNTv6Y=;
        b=hmK0t43gcLoi+TUpYMA0BljVlke9bUFWa1nJcbkX7RUUN29asVAltGBwEiQJqf0s3x
         KJUN9bR2fWkTSI1fYsRNTTLWDoDfSEkziw39RmNFoYGUk7P5EMgSqsUiE7FSOm3S2/vr
         yBBiIBgrp3SIdwsOxfzE56DVXTQ0hCQCYK7FuzgzP99sQ7QEnrpGfyY6n9BOQ2eaxqjY
         WmUZ2xhbaIq55fHGh12SbyV9rCysxdP8AZLP0EjO7yfotvCAI/3qf5VZY8WNn/N+Fsfl
         /Kq6MdasP4yJ4xUmMyVHZbKcCDw0KFWusKJef2FMyHaqEKVOVGOkOVDQDGTpacvvn7WG
         hAjA==
X-Received: by 10.66.227.169 with SMTP id sb9mr27050173pac.11.1425990405264;
        Tue, 10 Mar 2015 05:26:45 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id dq4sm693894pdb.96.2015.03.10.05.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:26:44 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:58:07 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8192e: Use kzalloc instead of kmalloc.
Message-ID: <e3f79e837febdfdb98275e07a00086d93b828a8e.1425989875.git.navyasri.tech@gmail.com>
References: <cover.1425989875.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425989875.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kzalloc instead of kmalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/rtl8192e/rtllib_softmac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index d992a75..82deb4d79 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -3421,12 +3421,11 @@ static int rtllib_wpa_set_encryption(struct rtllib_device *ieee,
 
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
-		new_crypt = kmalloc(sizeof(*new_crypt), GFP_KERNEL);
+		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
 		if (new_crypt == NULL) {
 			ret = -ENOMEM;
 			goto done;
 		}
-		memset(new_crypt, 0, sizeof(struct lib80211_crypt_data));
 		new_crypt->ops = ops;
 		if (new_crypt->ops)
 			new_crypt->priv =
-- 
1.9.1


