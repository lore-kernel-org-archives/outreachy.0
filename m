X-GM-THRID: 6250414640766910464
X-Received: by 10.129.71.85 with SMTP id u82mr1784020ywa.9.1455288063715;
        Fri, 12 Feb 2016 06:41:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls1758325qgl.47.gmail; Fri, 12 Feb
 2016 06:41:03 -0800 (PST)
X-Received: by 10.13.248.4 with SMTP id i4mr1660378ywf.20.1455288063283;
        Fri, 12 Feb 2016 06:41:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si1782283pab.0.2016.02.12.06.41.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:41:03 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so4071909pfc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OTPf6yDKBQSZMQPneWYaK86yjKK+CP8nwnFGgUCei4k=;
        b=JsTKqVnDuptx78/LHbHNnUB4JhAKuf8XLMEXwZwLcJedgZFDyynAi9Gvvs01eK9qv3
         5z8p59RPNUmbiZHR6WMpIWyMl6GkgKokxhEXnbr9ghe/5osA2C2EAvrneJYqklZL/24f
         /QcP88Ovzjwt7C4I0zY5ZlgEUsradpCxJxPQsWH8mlCaJ/M7X97NpVC3G5GWlyeCIP14
         3XZLpyMhKlmlOWkjoIwM0ocCPFcbxAYibk44Lv8r+L5VUqtIBBxIFBpAdVFFlz66Soer
         NKkIHZZ2E1t1VVv9ZpIGxyzyIwOTQewdLkN4OHRG1tO4BJipcjCBmgC3GBNO0Oyc+431
         UX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=OTPf6yDKBQSZMQPneWYaK86yjKK+CP8nwnFGgUCei4k=;
        b=JDTZwxAO/0XDiOi3QTKwiv2LeRetDfEoUXmBx7TcWI1GItcMATirdhP0B7xdyp7lG0
         +o6oNNU0k4MtgwOlzLDGxJejKa/2NAEzakqrthklZ3eEDATQmvgbgAGnx/e/nWtA32qM
         LDh7fUDZkTan/smjzDIQ0tifw0rrDjDkWUYiE16pCcmjTEUYRYzr7juLxnCo/ZhklnFD
         gxg+wl9gdBhgoU6Vy+9QehhFuGV5++AOfN2GbGOaay7lAOu8LzStBJ2JKArBSucEo9XC
         +V9HTwO7+5dbFKiqwlVIvqlj4Cqjg2NpQkKcKDJOxbUa+V357WWDxiRR72hoJQySB0b5
         9UJA==
X-Gm-Message-State: AG10YOSA33AsIGknSVq9xWt6WkknIjuTxCbWVlH5VJpdotY8qHnawh8sm1XeYzvPx3WazA==
X-Received: by 10.98.0.84 with SMTP id 81mr2632122pfa.67.1455288063128;
        Fri, 12 Feb 2016 06:41:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id q8sm19987713pfa.70.2016.02.12.06.41.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:41:02 -0800 (PST)
Date: Fri, 12 Feb 2016 20:10:54 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8192u: ieee80211: Remove MSECS macro
Message-ID: <20160212144054.GA1345@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove driver specific macro MSECS since all instances of this macro
have been replaced by direct call to msecs_to_jiffies().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 967ef9a..c0a0897 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -329,7 +329,6 @@ typedef struct ieee_param {
 
 
 // linux under 2.6.9 release may not support it, so modify it for common use
-#define MSECS(t) msecs_to_jiffies(t)
 #define msleep_interruptible_rsl  msleep_interruptible
 
 #define IEEE80211_DATA_LEN		2304
-- 
1.9.1


