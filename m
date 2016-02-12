X-GM-THRID: 6250332404581400576
X-Received: by 10.129.156.66 with SMTP id t63mr396394ywg.38.1455268916783;
        Fri, 12 Feb 2016 01:21:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.215 with SMTP id 84ls706244ior.97.gmail; Fri, 12 Feb
 2016 01:21:56 -0800 (PST)
X-Received: by 10.66.142.135 with SMTP id rw7mr408585pab.20.1455268916395;
        Fri, 12 Feb 2016 01:21:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id tn7si1425364pac.1.2016.02.12.01.21.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 01:21:56 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fl4so32165180pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 01:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LGINdMgAw6MrGkT8KyOlCCt+EW4volDXWhKTcFxwesQ=;
        b=oq75Q9VUGk/+btLN5la2EOUs02mQrf5uDJfHgF7a55BMuSi2y8eGlCyE2eh426M8HU
         5E55nve8wrG/rgkk0qO5SyMI6x4h8snjXjp3qT9S7EqpLj3mo74ewAhpaPDgAGzYEUQu
         hSqqsDkP3v3+IF7yN7hjDNwiYPBnjAHZ1j1tmI5MIxdQKj66ZG8wO4ooPOoxQGNWhU+o
         9MTKoySc0198t+h6NshzNbev/16mra81+xDsGDQ9hE4ahXMvaoN2KoEyqFgCDixu2Uwp
         XDiH10trTJmjXs6qY9WORXl7Zb5N7atQLvG9wKev7dc2C3kI/cC1WZrJjmrqN7X1/nw9
         3TNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=LGINdMgAw6MrGkT8KyOlCCt+EW4volDXWhKTcFxwesQ=;
        b=dFKm64kEtgSzi6W6LN5bAFuvVwFx1ewVQIMi+tL1g1fKC1SvtfjmaeK4q/dcrj5Fxd
         q46yaxrFfIfPpIdE+uMwO9eF92D3WwiBk6ATd9lNg/EweuhEkPw8qztqVpDp7UwM5ZqU
         z/4XZNWq7msCvCTj4FStp3Lcu3PZKDDk+3rfhPKy1RJYQ/r9/fvB+P0bHpeW4bA2n78X
         7t6xs4q7XaMWDAPt5SPXgypWipycyVpgR0yVzVzjfK3VVP89GneW8sO2ATJ3FHvFQdvl
         /DIS5FtP7NFVTWCoHA720IURdTypZN7ZQF53zG6q/J5us3k6lBtPsSO5JehRN7CLVhOk
         oqGg==
X-Gm-Message-State: AG10YOQhKr/V9DUJuELatCYOS2N1bjh5OSRMRuGirfhUDxa7o2nwHyhB541zo63JIq05Pw==
X-Received: by 10.66.55.73 with SMTP id q9mr665867pap.50.1455268916202;
        Fri, 12 Feb 2016 01:21:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id e79sm17833676pfb.76.2016.02.12.01.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 01:21:55 -0800 (PST)
Date: Fri, 12 Feb 2016 14:51:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Replace MSEC macro with
 msecs_to_jiffies
Message-ID: <20160212092152.GA26927@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies(). 

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index f33c743..3badd44 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -212,7 +212,8 @@ static void AdmitTS(struct ieee80211_device *ieee,
 	del_timer_sync(&pTsCommonInfo->InactTimer);
 
 	if(InactTime!=0)
-		mod_timer(&pTsCommonInfo->InactTimer, jiffies + MSECS(InactTime));
+		mod_timer(&pTsCommonInfo->InactTimer,
+			  jiffies + msecs_to_jiffies(InactTime));
 }
 
 
-- 
1.9.1


