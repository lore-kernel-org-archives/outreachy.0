X-GM-THRID: 6250414331697037312
X-Received: by 10.140.231.138 with SMTP id b132mr5009126qhc.0.1455338021960;
        Fri, 12 Feb 2016 20:33:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.36.41 with SMTP id n9ls191455igj.32.canary; Fri, 12 Feb
 2016 20:33:41 -0800 (PST)
X-Received: by 10.107.184.195 with SMTP id i186mr6005503iof.24.1455338021501;
        Fri, 12 Feb 2016 20:33:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si2167515pab.0.2016.02.12.20.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:33:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so4589509pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZDeY0eXErN4CvYogByAvf3/J1wyUhVQpntmiaKL457k=;
        b=BLUJmCJgiSrptgjWNcqBnv+RWWM7Q+lsbeKsImzPBy5Ujre76EvpegbFD5zOJLzHzl
         katrJ10AT7Fob0RdEZU0T8nE0YOxmCASC0tEzkMB862z0XT3AXi9U5UCMhWzqhyMeanv
         Y4sbmg4DFixRY9QIiKfyIjPveqG5VZTjNPAqg9MfiYWQmyIoFQimznKvVpP6e6muPYU9
         JMajILjDzQ6w5+Emur7G+M9+sG+AUnrl80v73EYLGrowVhlUeGeBHBBD9tzTogj31hla
         slkO3Rya/CGQWasIGTVEoreHEhSHLp8AXYqoYF16yFPHLfqIjmoF2FBckxmP3XeoOnkH
         yK4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ZDeY0eXErN4CvYogByAvf3/J1wyUhVQpntmiaKL457k=;
        b=lWw36JiXPCjrz73gTG76adBdP+zTfFEN3hF17J9vWxfhb084jFd/b1vZNnAJUONBkU
         d3TA8cL4zrwTJ15j6gNqhXcU+rTG3cVLTJjDMfbxwzm3Syvp9CjDUE1CMFGYnerELxkZ
         1QN3GdDz/Q5nP4HUTuF5HKy4MaDhHNLa+XS4wHf4gn+KPeFMyPl86gdD+P1IJwvzymAn
         AoOhtFWEkbATeoEeUzA6b+L6F5wFnQs3ReBuFp3jpU159xuF5ZjjBmunOpDCCqnifHfM
         nAb6tb/J33U+Q1Q7diabaZNC6pcetB4a4btVL4PEvnrcb7Ps03hnifMG0DcX08yIzhUw
         7hDQ==
X-Gm-Message-State: AG10YOQYcm/GwYAhsRRFTBy0fjD7cMrNHnvtfgQvctYaCJakWOgWeqrq6e/uUK5KHzRhvA==
X-Received: by 10.66.255.39 with SMTP id an7mr1878474pad.2.1455338021305;
        Fri, 12 Feb 2016 20:33:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id lq10sm22812879pab.36.2016.02.12.20.33.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:33:40 -0800 (PST)
Date: Sat, 13 Feb 2016 10:03:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/6] staging: rtl8192u: Remove MSECS macro and its
 instances
Message-ID: <20160213043337.GA6208@amitoj-Inspiron-3542>
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

Changes in v2:
        -In Patch 2/6 Remove extra line introduced in previous version.

 drivers/staging/rtl8192u/ieee80211/ieee80211.h         | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 3 ++-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 9 ++++++---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 2 +-
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c    | 9 ++++++---
 drivers/staging/rtl8192u/r8192U_dm.c                   | 9 ++++++---
 6 files changed, 21 insertions(+), 12 deletions(-)

-- 
1.9.1


