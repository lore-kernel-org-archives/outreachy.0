X-GM-THRID: 6250414640766910464
X-Received: by 10.50.66.146 with SMTP id f18mr1329724igt.8.1455338066741;
        Fri, 12 Feb 2016 20:34:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.5 with SMTP id 5ls2081765qgm.60.gmail; Fri, 12 Feb 2016
 20:34:26 -0800 (PST)
X-Received: by 10.129.51.2 with SMTP id z2mr4981047ywz.49.1455338066348;
        Fri, 12 Feb 2016 20:34:26 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si1879821pac.1.2016.02.12.20.34.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:34:26 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so4600549pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Zq+tE2X0KXYCRZ+O7y6rrrqBT6GzPl2Wn6DvVcj8g2A=;
        b=blnEea4F0epjB2kK0ZhEJjYfrom0xMMkomGXiUXNdyzJUWzNi6rXn2xOX4L9A+LmET
         q8bXc/IIi+mBCMdbMLnTjDFOb40MWwIGMLPHFqWgQwu6oyiK+P/VrWhG3f4me5IkzkWs
         nAImAyzd+t4JbmJeIajHRLU31XjtkKpsW78JbmlvHLVWhesawmweG8uMCNNsyOqix16V
         iRaNfqWu0FIMgOFqsWWa3tQIhmABBod4Sx+qsexEE9+yH+rIulPL6yAlU/DJpfwyJmqJ
         qmAnPXGJKyU2cisJ+VsQqKicQIYvvcPSP+SVICb/jKAjyd3qTT3ez3zjfUppjolaKSN9
         Xg9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Zq+tE2X0KXYCRZ+O7y6rrrqBT6GzPl2Wn6DvVcj8g2A=;
        b=JBv7Hj0u8ln/9xfsxwdzXPTCPHL5O6pKlq4XaSfjFhjfhMvybOUl//2GFC1CpKjAOs
         UR0BxepAVHzNnug6qvh82ksIsJe7n99qYDcvSe7W7Utk3hTifwZ5M8Cg/BI4viSYVlEF
         X9Di1Z+i4pTnwbC8VOQxpeq/Iki6PjDldpyTuEGHAMR5+LQJiiGM3zgR0GZjmxK+2ahi
         GO9INKrQdI/kng9HLKqIDj+dFT8BZEgUXT+Dks9GqPdUeKooiTvmFUUOi/N3gRrV5C6v
         32ZL2EK8P2DLpbLH7PKSgGVNBdgKG0qIxFBb7gIybbtk00rJirHJuTHWJ7SqGGqilW5I
         xcGA==
X-Gm-Message-State: AG10YORtphtJzjDvIJXJb06IFDh9VaGK+s/VZjmlIlPf+B3P4qPa4Hl/3WO1t9CQLA11OQ==
X-Received: by 10.66.191.104 with SMTP id gx8mr7244087pac.21.1455338066174;
        Fri, 12 Feb 2016 20:34:26 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id y11sm22754458pfa.85.2016.02.12.20.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:34:25 -0800 (PST)
Date: Sat, 13 Feb 2016 10:04:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/6] staging: rtl8192u: ieee80211: Remove MSECS macro
Message-ID: <20160213043423.GA6239@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove driver specific macro MSECS since all instances of this macro
have been replaced by direct calls to msecs_to_jiffies().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

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


