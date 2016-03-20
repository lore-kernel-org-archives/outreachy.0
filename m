X-GM-THRID: 6263088426063495168
X-Received: by 10.182.103.138 with SMTP id fw10mr20779592obb.47.1458497985254;
        Sun, 20 Mar 2016 11:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.100 with SMTP id l97ls1130138iod.85.gmail; Sun, 20 Mar
 2016 11:19:44 -0700 (PDT)
X-Received: by 10.107.135.101 with SMTP id j98mr20280063iod.2.1458497984950;
        Sun, 20 Mar 2016 11:19:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tu5si2728400pab.2.2016.03.20.11.19.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 11:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so26722874pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 11:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=i+o2fB/o42LTNg0JUchSvdZUGLLS01o5axL9niB9pvI=;
        b=r3XXfMwnNFTHEEaYxMnYH1a1eLhxJ5XXnSs57AznaLfd8lKycBpGnPKDSMR6GCPXu7
         iHXMdsoGFvPTVzrtOkjdVPW4RVgZ1WGpdRWBgubelKoi2ScdYZ8+S6dcNjrU8ZL96SRe
         fGJ4dQSP4WRxY3+XziIoa9gm9RWSTUqTqVQbpn1JT9XxUsMCVu+KEOItanb1HfdwZ5uh
         ThQdKUinC06120CtZOdAVejsciHR1kv1sY7DwiDJ7v6mu4WGVtNa6zf+FAVp+j+EVr3t
         eNWwsOtxObix17nn0RbsZaWaNebanwF9prXJl1bAeOkcMsnoyny3MNqWmIMmfe5XKb9w
         1zgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=i+o2fB/o42LTNg0JUchSvdZUGLLS01o5axL9niB9pvI=;
        b=Cjn5BgwqJVldiL6dnJBPS4iiNDHK9eOkdd9oGZi3JTIV5iJxAvOMGn0kJNLEDZmbSE
         BXX6gzf+mflYlExi6a8/hvjxppc9drtQkiAMRq2G2Rmht4jQeVf+dtoaN6etfWVhiJA2
         hV4pZgx3Dmw9sn8SOVdgsni2dPAHUbapITwi1HXUNW736ZYKHlIB9xueyi7Hl+wsX+qz
         pWourrGVNTRvvqzC2Ndojwndo0AFFW4g1QOb6jVMQvMJlBEcswCJ4qhZXX9/p73nhJX9
         ulMSCpT/lIo0SAkiR8bZ9y0aptK1esXTCbTF8u7BDM3IEEAb3GgDsVrtosC7IQzK3Hm4
         IDbA==
X-Gm-Message-State: AD7BkJLpu4P1p72yA2qUcaNFHyZd2nW8Z/NuM0KeNS2Lx9X/o3zQxdHDLwK/5DU9vvc31Q==
X-Received: by 10.66.190.40 with SMTP id gn8mr39246356pac.64.1458497984806;
        Sun, 20 Mar 2016 11:19:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id z68sm34884653pfi.19.2016.03.20.11.19.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 11:19:44 -0700 (PDT)
Date: Sun, 20 Mar 2016 16:50:49 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] Staging: i4l: pcbit: drv: Do not initialise statics
 to 0.
Message-ID: <193b9c6fde9f74f1534d6cf80001052db010be5f.1458471224.git.bankarsandhya512@gmail.com>
References: <cover.1458471223.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458471223.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not initialise statics to 0.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/pcbit/drv.c b/drivers/staging/i4l/pcbit/drv.c
index 2087a52..c1b6f88 100644
--- a/drivers/staging/i4l/pcbit/drv.c
+++ b/drivers/staging/i4l/pcbit/drv.c
@@ -699,8 +699,8 @@ void pcbit_l3_receive(struct pcbit_dev *dev, ulong msg,
  */
 
 static char statbuf[STATBUF_LEN];
-static int stat_st = 0;
-static int stat_end = 0;
+static int stat_st;
+static int stat_end;
 
 static int pcbit_stat(u_char __user *buf, int len, int driver, int channel)
 {
-- 
1.8.3.4


