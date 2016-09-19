X-GM-THRID: 6332129400973164544
X-Received: by 10.107.131.204 with SMTP id n73mr4631278ioi.45.1474313764277;
        Mon, 19 Sep 2016 12:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls2933058itd.22.gmail; Mon, 19 Sep
 2016 12:36:03 -0700 (PDT)
X-Received: by 10.66.126.144 with SMTP id my16mr5126765pab.111.1474313763502;
        Mon, 19 Sep 2016 12:36:03 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si5814956pab.1.2016.09.19.12.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 12:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hi10so1481066pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 12:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fPN+pcZrjODeoWDbDfDkWdPpdxTpmr0AAc6lV59Gn40=;
        b=BkqYeV4Q0nxRU+uFL58rBfgpguPWG7niECUc9D171cGDJzOdaJwj4JNDGXvv/+6ti2
         /3NLSTdvn5vVSDp/YM47wmg4TCzsUP8jJbxKAhyprFAXUJCJ1ioNKlxIDxiar1RMLESz
         08pus00LZxzmVoyvZWNuHt9WwhNOEWFKdA4XUJ50t+KoX7n4F2fWlhF9oc+wGf0cWPDK
         jExUfzzsXXms7K9E47/htjtE8RGTQF723xx9jonGCG8aXtNP7Ae4F+kwN3f4444aIwoH
         sE1Bwj63KH+d3DajHUV/aX1HGb5F21VyKkx7s5E2Ma+WNDywC5jEQ8CYYgYiYiFIZmj7
         4qhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fPN+pcZrjODeoWDbDfDkWdPpdxTpmr0AAc6lV59Gn40=;
        b=ZuzplsYf80Klgal8KIXPisK8pLfeeH2oX8PSUkyCGOVewKk7mOz8HtsmSnSDdJPCrN
         ZV1i4A35mg7givg2WtkR9MmRi2mk1dNHwWI9OnT99V+sCf6aHSew2WNGTbv7BGiMScrm
         iKUe31eVVNqcf0FmPz2qVmSce3l4uTGvOxw3fNexTIzi8wg3YK/8ppRy/LvNSom/sPmg
         eTcRr4Lz3E2xzrnUkhIItjXiREfhY7TfBwqIvvNqItfB0qvOJwTAYPb8xAREwy5BLFeY
         luNnnWoVzzFw00hIggeoybqzP9HXHHFzbZiQaSNVXqe2c7YV5rHJ2rrQheT4FYgGEgRV
         FK3g==
X-Gm-Message-State: AE9vXwPsLPV4uA0S6vofiM15VIA4MjDhIRkBPni5/4p+mbyXB7tKWicNWj4duhSkVCiLqQ==
X-Received: by 10.66.245.204 with SMTP id xq12mr25330404pac.37.1474313763313;
        Mon, 19 Sep 2016 12:36:03 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id bx9sm33449749pab.17.2016.09.19.12.36.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 12:36:02 -0700 (PDT)
Date: Tue, 20 Sep 2016 01:05:54 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: wlan-ng: Remove unnecessary variable usage
Message-ID: <20160919193554.GA22135@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value into a variable and then returning it, we
can club the two into a single return statement. This change was made using
the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Correct the commit message. The return value is not the result of a function
call but a constant.

 drivers/staging/wlan-ng/prism2mgmt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 73ea127..b380c7d 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -685,9 +685,7 @@ failed:
 	msg->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
 
 done:
-	result = 0;
-
-	return result;
+	return 0;
 }
 
 /*----------------------------------------------------------------
-- 
2.7.4


