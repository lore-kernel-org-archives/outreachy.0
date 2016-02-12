X-GM-THRID: 6250414331697037312
X-Received: by 10.66.193.131 with SMTP id ho3mr1670754pac.42.1455287991482;
        Fri, 12 Feb 2016 06:39:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.32.34 with SMTP id f2ls792990obi.25.gmail; Fri, 12 Feb
 2016 06:39:50 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr1678052obc.29.1455287990041;
        Fri, 12 Feb 2016 06:39:50 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si1542435pac.1.2016.02.12.06.39.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:39:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so698037paa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=sJW9nFL9yQdVGyvq+BhQI6XTWuksdKM+gSaYX/DOJr0=;
        b=yUS27CwQ1RRmh3M2eldzCkdIb1+KLjfkPRfT9huIek/AllUB8L/t330xodbYxDurXo
         OohfIzPh803GMwMSMrLZ3EE2u+wX8mA+46I0PNLd0u+CvdJMMxv6FQeaS8k+FqobJHEM
         c8sRfP+nyJykoa8w37pXWxHAeMvgizMRyxQUYBRk4mkwg5zs6gGOp14vEDg2P9nkPvrN
         jPpjdp899Zs+eDLwOS9GyeEsbtLCQ8mnV8NX1upyEatjF0TUSkpwe5tIIoS97w6Av9IK
         8AoKzcDsRHV6YpxZbJDHTJKJqUGU6DD3RbLKZ2aJF2JuWeYhZow3e4FauANxTkd4S1Af
         wujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=sJW9nFL9yQdVGyvq+BhQI6XTWuksdKM+gSaYX/DOJr0=;
        b=Tqle5NYl1LF3ZJ646OjT6SExEHV3S58BWGgWZBxgQYy6S/LOSwDCRFZ9o0+KZVpymz
         NwT9rr6gygxDxcmExr0mvJyBPV4x020YfjUBQp2u/Bce1jJZjgYkgFQ0m1ksN76hgNza
         anR87nNDm2vf0fZ9R/7hWU4fgqbQxO078Xbbrpm0jQwwnhQcMzd2sj785IDqC5JFPSR3
         9xfz4BsfeMHDAOOY7aHgz3ap+YwmplShsQKti15YqjG8SWO1m99whb6TTjCrNpi222Lq
         GmzLyopu4UPpDcPKLhUR/wOO1f/KcVblO8x7PJ3wTgOSRCuvX231xq7yFrOOpjRnZMGd
         hiDA==
X-Gm-Message-State: AG10YOSOncgcPSFEmpoDD7PYWa+WiNv4nsa1Ssm3ZjsR6kLvs5vUo2a8ZKq6sLBrghFYeQ==
X-Received: by 10.66.244.194 with SMTP id xi2mr2493759pac.139.1455287989844;
        Fri, 12 Feb 2016 06:39:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id 9sm19986150pfc.69.2016.02.12.06.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:39:49 -0800 (PST)
Date: Fri, 12 Feb 2016 20:09:45 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: rtl8192u: Remove MSECS macro and its instances
Message-ID: <20160212143945.GA1381@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes MSECS macro from rtl8192u driver and all the
instances by replacing MSECS with direct call to msecs_to_jiffies()

The Coccinelle semantic patch used to make this change is as follows:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>
 
Amitoj Kaur Chawla (6):
  staging: rtl8192u: ieee80211: rtl819x_TSProc: Replace MSECS with
    msecs_to_jiffies
  staging: rtl8192u: ieee80211: rtl819x_BAProc: Replace MSECS with
    msecs_to_jiffies
  staging: rtl8192u: ieee80211: ieee80211_softmac: Replace MSECS with
    msecs_to_jiffies
  staging: rtl8192u: ieee80211: ieee80211_rx: Replace MSECS with
    msecs_to_jiffies
  staging: rtl8192u: r8192U_dm: Replace MSECS with msecs_to_jiffies
  staging: rtl8192u: ieee80211: Remove MSECS macro

 drivers/staging/rtl8192u/ieee80211/ieee80211.h         | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 3 ++-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 9 ++++++---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 3 ++-
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c    | 9 ++++++---
 drivers/staging/rtl8192u/r8192U_dm.c                   | 9 ++++++---
 6 files changed, 22 insertions(+), 12 deletions(-)

-- 
1.9.1


