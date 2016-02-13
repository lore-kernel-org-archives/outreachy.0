X-GM-THRID: 6250668020589395968
X-Received: by 10.66.62.162 with SMTP id z2mr5512524par.11.1455347058680;
        Fri, 12 Feb 2016 23:04:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls2129534qgl.47.gmail; Fri, 12 Feb
 2016 23:04:18 -0800 (PST)
X-Received: by 10.129.25.212 with SMTP id 203mr5310478ywz.35.1455347058070;
        Fri, 12 Feb 2016 23:04:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 79si2230919pft.0.2016.02.12.23.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 23:04:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 71so4937576pfv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 23:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=M1w4RMn3Ll1Vt7WWe5/oM8FXAZJZv8abDPn+FRuLzvE=;
        b=Op/kLyy3EyB4eR4xymzoxUqnninU4GbmdOeajTtRkghDfzUUuuHlXWUBrXyudJORKP
         nJ9lLrmw6MV5LLlPokY4fqB3ua1jRjPTB0mAxE5C+B/rp3evxH2e5fMoZIOn31/KAobQ
         iMokuwVvGpaqH0LAEUbgRbZajRkvaKXewGcYgNWTXCkqM/uwNt2W2hTH0cGkTwYny6cw
         D7MEbUiuTayvdFr+BED7MepvV5S5n+yA4kUQMIU+GSt/LKl0gLnOcztS0qBblvBlsbEj
         9dDmbp9D3gioO8+PuwizcaNOYQRdZROONqXZAGKaevdpvthIlX4Ob2WdjrAERZKcxB3m
         e2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=M1w4RMn3Ll1Vt7WWe5/oM8FXAZJZv8abDPn+FRuLzvE=;
        b=ReMt6N9nnnLEotthXlWSCnaWFlsyGnfh44YPoJjSJnC3637Zba6nf193eqS6+Ovj8l
         ZcuSUau6bmmoKtZ+Msg4EYzKWlbYb+s3VtgIU4kZbdSZQEux38mi82GihXo8tXaDSmfV
         HhRD86ci1tn+E+a8pdngQxbPvdH9wFaqXZHLmVpUXv04Nmt5g8M+N68G8S7hmbyOtnd9
         mg4vTgKdwbNy7o3nxaTJP3QX35lcOeiKnLLpOkkbYqo2RELC0rIaRnYN+HYxAgqYUOXV
         GldGXNgSHL1ED/A+XTCdKTaTJk7dJ/9UrwZYaU5TsHLWEnWf5PRq4QLFsMp99qno8paw
         iUsA==
X-Gm-Message-State: AG10YOQ9dMoBp5KZfcoVi6kgGGAFwKZo1C7RWkoD3GgAYkWmJRUp3NB78tJYm6ZNcO8enA==
X-Received: by 10.98.66.157 with SMTP id h29mr7977730pfd.91.1455347057878;
        Fri, 12 Feb 2016 23:04:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id to9sm23866783pab.3.2016.02.12.23.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 23:04:17 -0800 (PST)
Date: Sat, 13 Feb 2016 12:34:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8192u: ieee80211: Remove
 msleep_interruptible_rsl Macro
Message-ID: <20160213070414.GA21071@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove driver specific macro msleep_interruptible_rsl as it has been
replaced by a direct call to msleep_interruptible in the single
instance referencing it.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index c0a0897..ae1c104 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -329,8 +329,6 @@ typedef struct ieee_param {
 
 
 // linux under 2.6.9 release may not support it, so modify it for common use
-#define msleep_interruptible_rsl  msleep_interruptible
-
 #define IEEE80211_DATA_LEN		2304
 /* Maximum size for the MA-UNITDATA primitive, 802.11 standard section
    6.2.1.1.2.
-- 
1.9.1


