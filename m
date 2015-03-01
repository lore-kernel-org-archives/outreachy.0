X-GM-THRID: 5490263195648
X-Received: by 10.236.63.230 with SMTP id a66mr23820829yhd.51.1425232685634;
        Sun, 01 Mar 2015 09:58:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.134 with SMTP id c6ls1411420qgd.21.gmail; Sun, 01 Mar
 2015 09:58:05 -0800 (PST)
X-Received: by 10.236.19.8 with SMTP id m8mr23352622yhm.53.1425232685490;
        Sun, 01 Mar 2015 09:58:05 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id m1si1245141pdc.0.2015.03.01.09.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 09:58:05 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so33572407pdj.13
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 09:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=u8ECqZ+lId0y/XsBSv7/PfMNrHi3Cb/H8LoRt18n6Ro=;
        b=HF13JPY6WLWqcAqMMgAxvT1g4rvQe1QXH7dRGYD/AS7Ji81M8BVA1TiW+yQaTxDnD5
         rixLZ/5erYDVqZi+WrQDiQ+8CH90D9pABsJ44LV7CZf1I6mnaVAZkNAZGD2lHcJ9Ssfp
         RssKdELYsbXx38XxkmkLz6EGXhBEWAg/ygIgcOCsZjFahOWxPYr3/OrIRl++GMTDYyxo
         LmZlvPJMIu5MDlNihroOC7jd0vFXlwLmu7NkEIuAgoD65J8DSJPVezinTuPB6dWQs3qi
         bDDu4H23A0yZj4kF1VeCp2cmlEifSvg4vYwgO7OAWiGMHsTJ+9ONMDXu/62ZLmPIW3vz
         9JrQ==
X-Received: by 10.70.51.197 with SMTP id m5mr41150031pdo.90.1425232685338;
        Sun, 01 Mar 2015 09:58:05 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id oe5sm9664082pbc.33.2015.03.01.09.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 09:58:04 -0800 (PST)
Date: Sun, 1 Mar 2015 23:29:19 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Remove redundant memset.
Message-ID: <cover.1425232491.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The memory area set by the call to memset is immediately 
overwritten by the subsequent call to memcpy. Hence, remove the
redundant memset.This patchset removes that memset in all staging 
drivers using the following sematic patch:

@@
expression e1,e2,e3,e4;
@@
- memset(e1,e2,e3);
memcpy(e1,e4,e3);

Navya Sri Nizamkari (3):
  staging: rtl8188eu: Remove memset.
  staging: rtl8188eu: Remove memset.
  staging: media: Remove redundant memset.

 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 1 -
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 1 -
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c      | 1 -
 3 files changed, 3 deletions(-)

-- 
1.9.1


