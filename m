X-GM-THRID: 6332118732310052864
X-Received: by 10.157.37.93 with SMTP id j29mr132267otd.15.1474311280339;
        Mon, 19 Sep 2016 11:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.155 with SMTP id d27ls3795327ioj.21.gmail; Mon, 19 Sep
 2016 11:54:39 -0700 (PDT)
X-Received: by 10.107.190.71 with SMTP id o68mr4937752iof.58.1474311279878;
        Mon, 19 Sep 2016 11:54:39 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si6872584pfe.0.2016.09.19.11.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so7336400pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MjzFRbcArdRKXFZblKZEn9XhKE0J3Kt+nHv2yLHJoAo=;
        b=G03Bj7gnXqNrG2/2ZHl0/xjcjGZsny6VTY4wIuOj932mFH/nOBWaO2Ks4t7heNWp0z
         tRsqdpRNC3ABwLJD9+zniN76QxPo/nCx4FS7Kbaaqt/AhtQNuF/v07eXrvXjLAfX3ema
         mTLv4DjJR2UHwTbc50DfzDvtqEuvOhp5n3JHri3jQEOEB5izY2x1vjzgC71qDI6iC4tW
         ITlbZIA2hT0lQG3HZLes55RyywxPmZ5bgrf9Eus84bgqLI+cEkeSR18XdBKs+p/eTRHp
         pI6n3uqVHBadrQDsdrxyOTv/ysHzPu9o+GxZDIzUB0wDqUSV/CK6JV572G5LsaygvCIo
         NhBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MjzFRbcArdRKXFZblKZEn9XhKE0J3Kt+nHv2yLHJoAo=;
        b=X7CBiu0iYtEIUuphmGVLr+qRtgQ2d7JM0gVjoWj8b8M9eVOKWMHgzZ8veJbxV1NaSg
         rdMlgyKgeHRX+6Gqr9A0LSLZyI5sJKkOnIrRjat86QX4WjT0m2Q8MvV4yumuUDvP8iJB
         nJg3BgJlpOi6VRU+WkQHhyz5rjM4r6mvUs9ux1IpulTG3lEh8ge1CkSs0JKzz3nJV/EV
         V75ZFwlinBcnR0ArXsP5Lckr59+7wS5weDg7s47brqqLbI5rgvcLse2BqctXzLyKtdh6
         YP3Syg9Xa4tmrgOraCwKLzykWnnFBRjl3mPt5l9QkSz767I3Ql8ifE6nJTC5cgurSOA6
         sKug==
X-Gm-Message-State: AE9vXwNyAgOdqsO3tz6yJl/DU0D81w52jckU3kqWjOCtAKwXrm9mO7DKElQrp79OvixYYA==
X-Received: by 10.66.245.177 with SMTP id xp17mr49478508pac.118.1474311279443;
        Mon, 19 Sep 2016 11:54:39 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h123sm73315270pfe.69.2016.09.19.11.54.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:54:38 -0700 (PDT)
Date: Tue, 20 Sep 2016 00:24:29 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: wlan-ng: Remove unnecessary return capture
Message-ID: <20160919185429.GA19997@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value of a function call into a variable and
then returning it, we can club the two into a single return statement. This
change was made using the following semantic patch by Coccinelle:

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


