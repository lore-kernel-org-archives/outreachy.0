X-GM-THRID: 6259411533129842688
X-Received: by 10.182.246.73 with SMTP id xu9mr9968230obc.4.1457382816600;
        Mon, 07 Mar 2016 12:33:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls9084igr.4.gmail; Mon, 07 Mar 2016
 12:33:36 -0800 (PST)
X-Received: by 10.50.112.232 with SMTP id it8mr11561697igb.9.1457382816064;
        Mon, 07 Mar 2016 12:33:36 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id y20si3347283pfa.2.2016.03.07.12.33.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 12:33:36 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so8292442pad.2
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 12:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Yw9B1zjUbN9+4z0VogsuB0HxiScBTtnynsjcGrsPeHk=;
        b=wewi1kUJoRZ+4d3gWd9Z9sgQyQ2JKE6erwKtlnLLmY3QFrcXSfrSHSmO4SWngVBVx3
         TOOcMr7QNLJcGM+tJBWyee6S5cOp+qO3WkMszznO86GOI7/K/qIe5ISK9Cw21cvqB0Zb
         DJdkQ6tAC/J9QljUGET5/XS10PCECPItnpBic9gjFQ5agEDWRsLsAQi1T57qj5belotK
         WKDSNRFOU9oVk18EFwGB0oEvyfdRczK1J4G2Yau+mAEnEG7wk//EiANDY8SsuxO36FRq
         BS0vPin7RjacR3vKXsyGuUYU6QL9CZo1BjgvzYmYcx9roa38fqrBDnZLJXpDGTi1qjqi
         bZpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Yw9B1zjUbN9+4z0VogsuB0HxiScBTtnynsjcGrsPeHk=;
        b=hSN7YUpZdZH7CXufvEaTPYNHq7PZj0EFaNf4xEyy+lMn2X6ddHPpYQETiOSPGUwhd1
         iQDIQ2gjA7poz4iSvLn1EWMh00a12uzbT4H0imB45el6EBvfQ+5Coc5/sBnxLGAs4ZdO
         EutqFhSpqbTQjCdMrBDH4/AwgR1FhesY9J3TBFCtvwJCJgQKJ2AQ7OlONc02a+hV9mgz
         obmtwiMJrxPuqigVjgxfsn0D+uZsWjvAv7KVqyim/jqepVrNms1KAj1ewjd+7rZRbBlo
         9e6xV3Rvi0IcJc9MAvSHzoh35S96tqwnKqgotwZVQUQdNbqekjxf2UsEJxYm9rvH/8kv
         Ka2g==
X-Gm-Message-State: AD7BkJKQT0uNZF+7WVF/whdy32xtMV58XDoXLARsHq9qgbx07QOpV6e8s1N3eVE0oCgzvw==
X-Received: by 10.66.218.225 with SMTP id pj1mr35766482pac.83.1457382815878;
        Mon, 07 Mar 2016 12:33:35 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.136])
        by smtp.gmail.com with ESMTPSA id x64sm25966739pfa.72.2016.03.07.12.33.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 12:33:35 -0800 (PST)
Date: Mon, 7 Mar 2016 18:03:58 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Use !x instead of x==NULL.
Message-ID: <20160307123358.GA7644@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x==NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index cca42e5..19f11d0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -108,7 +108,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 		return;
 
 	eFuseWord = (u16 **)rtw_malloc2d(EFUSE_MAX_SECTION_88E, EFUSE_MAX_WORD_UNIT, sizeof(u16));
-	if (eFuseWord == NULL) {
+	if (!eFuseWord) {
 		DBG_88E("%s: alloc eFuseWord fail!\n", __func__);
 		goto eFuseWord_failed;
 	}
@@ -493,7 +493,7 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 
 	EFUSE_GetEfuseDefinition(pAdapter, EFUSE_WIFI, TYPE_EFUSE_MAX_SECTION, (void *)&max_section);
 
-	if (data == NULL)
+	if (!data)
 		return false;
 	if (offset > max_section)
 		return false;
-- 
1.8.3.4


