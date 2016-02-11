X-GM-THRID: 6249603310238564352
X-Received: by 10.129.80.3 with SMTP id e3mr42634520ywb.23.1455201551135;
        Thu, 11 Feb 2016 06:39:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.73 with SMTP id j67ls833203qga.13.gmail; Thu, 11 Feb
 2016 06:39:09 -0800 (PST)
X-Received: by 10.129.134.135 with SMTP id w129mr42934875ywf.24.1455201549446;
        Thu, 11 Feb 2016 06:39:09 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id 79si1135641pft.0.2016.02.11.06.39.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 06:39:09 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id jp17so874469pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 06:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=E0F1AkXa46H+K0PLHjvfj+NxDL3OiyAJdi4s/W+MU0o=;
        b=Kd7F5Mt+A6n0nUMo24i0m77YHIgwOKc/266fHSl8nWqxVIB80HDfU1kxcMqAuNGwsQ
         8JpUr4w1LZfF+La+RH86uhMlsIXvHhCwo2nOuQV2etTa2PARktYG6xGdmxg6/aTfbF7R
         tosE3AfJzX5PeEjwLZHbNF1Nlk83K5zrVK/mgwyiGEqIv3zmmyBP+RKmOHjdr8ZLfqBr
         wcwjmZvTBHJjvx14SoBOnWJkedfkU2cx5GN20Y1nXsm6CrC0mCx1BrxicvqEmWJHSXnl
         XWOdQICldVWDRPfqbnBpbHkwT8mUbqQXenwfqU4ZJ5GH1W8Z3ncEsxGjc/BQsrgnbKUX
         HkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=E0F1AkXa46H+K0PLHjvfj+NxDL3OiyAJdi4s/W+MU0o=;
        b=Hc4cmDjRCwqVvS31y4kEZPhHqNBF9CTSW6COj43Jb+sSm9BnP9APYbsgxk0OwxQG8I
         ZinLUN7+oemPS6R8oCO1cMA9YWEiDjyIdHWAbCjEOq/mbq7W5CkLLub9RNK9TGjYChc7
         Twp/O4na1nbGwu6hhvtozdND59MLaaf6NeegrtmEi58SS7pAKBn6AopmLdmHocl1JADK
         0rBO8GWnvAVv7TOs/LfVoGt9JxBsO8eloaykQ3Lm6WUEbqkCmGLVeuaVRJ/HbrjRhbd8
         e+z0X39PvDMruKyNyIzG2rdh852wJSaYsFIZuydzDYByJoieRrktY4OYV+AQGEw2EC/w
         wc0g==
X-Gm-Message-State: AG10YORq/IF0L5X65HMete2wc91vykriaN7Z81Y0mEuo0d8YN5Ck5h560PbOaoe6Q4tzlg==
X-Received: by 10.66.187.237 with SMTP id fv13mr33868660pac.42.1455201549284;
        Thu, 11 Feb 2016 06:39:09 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id e20sm12912269pfd.4.2016.02.11.06.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 06:39:08 -0800 (PST)
Date: Thu, 11 Feb 2016 20:09:05 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/5] staging: comedi: drivers: comedi_8254: Merge if
 conditions
Message-ID: <20160211143905.GA32660@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -Removed extraneous parentheses.
Changes in v2:
        -Merged if conditions instead of dropping them.

 drivers/staging/comedi/drivers/comedi_8254.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/comedi_8254.c b/drivers/staging/comedi/drivers/comedi_8254.c
index 0d5d56b..c5b643e 100644
--- a/drivers/staging/comedi/drivers/comedi_8254.c
+++ b/drivers/staging/comedi/drivers/comedi_8254.c
@@ -241,9 +241,7 @@ void comedi_8254_write(struct comedi_8254 *i8254,
 {
 	unsigned int byte;
 
-	if (counter > 2)
-		return;
-	if (val > 0xffff)
+	if (counter > 2 || val > 0xffff)
 		return;
 
 	/* load LSB then MSB */
-- 
1.9.1


