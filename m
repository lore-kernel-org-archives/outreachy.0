X-GM-THRID: 6255230789033656320
X-Received: by 10.129.80.3 with SMTP id e3mr40735488ywb.23.1456409410968;
        Thu, 25 Feb 2016 06:10:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.130 with SMTP id e124ls394668ioe.17.gmail; Thu, 25 Feb
 2016 06:10:10 -0800 (PST)
X-Received: by 10.107.18.216 with SMTP id 85mr2607437ios.16.1456409410706;
        Thu, 25 Feb 2016 06:10:10 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x231.google.com (mail-io0-x231.google.com. [2607:f8b0:4001:c06::231])
        by gmr-mx.google.com with ESMTPS id iq8si241728igb.0.2016.02.25.06.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:10:10 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::231 as permitted sender) client-ip=2607:f8b0:4001:c06::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x231.google.com with SMTP id 9so83610577iom.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=igwE0O1XYXytuv5+8dzCXr1Bbgs6UQii274TWjWXKS8=;
        b=k7rB7VaBAN2ORNVX/68bKVO5a38eBtKYNqyOGmOkTzqlOjdtpF71hmyd6adzt3upZV
         8GYFbxuCiZaABEVqRiUg7KmH+jDH8frle+ZT/djVlQjAR3tDyZ4R5q9MkZpD6HwGf6CP
         xIh0rNpM0/Cp1th67K0eVSXrEdBlwwCRsEeyGt7TEm98m8dvk6WoUtB8z2lzbRXeEW5a
         WO2ld3dkFr+vUcMGQp3y/YHW0loZNGr/dnu1GeXxoDmyZT2Qiadhn1we4ZtEIFuAHvXV
         aU0rGbLGoo4VALvijojuv6/Rp35lURMYACtXYYJSxUTWs7Tloh6Jofodbm+L2G1+8ADf
         6RIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=igwE0O1XYXytuv5+8dzCXr1Bbgs6UQii274TWjWXKS8=;
        b=WT33uYeL/KcvFxspsvaalkwyTBTQnTu8dOVeAW0PyHc4cx6/NdbinLyMuvc5F+SevI
         jO8jNT3P1LrFbysGhe82gFFiBmft9jcvnfgB/tVixFlvqEp8QZfGQ3jAECEqsBccizaJ
         Mr2bjKq1RcHV1BGUKpULxJyBn0o/F6idfuMq9frupH3aomMoyrPuNMYK9DD3HsfTScd8
         NeHKFxwhCjYB+btPXtEN9DsnzMm17WEGCfHRidW6DH3b8VYdcrdJtwygN5EtRpqyqj/T
         r/ZkyR+8G0aGyMpXzrd3jZxuOECd4xHcAnDaiC5IPviNwJRT7zfF3q1WaIfW1heIoMBG
         w9ZA==
X-Gm-Message-State: AG10YOSO6EzdhlNBgApOER5QY8tG+g6Jn0je2562E1lGtgpSLzUwIgoaG/CW8RMmfbsOYA==
X-Received: by 10.107.36.80 with SMTP id k77mr3099970iok.121.1456409410553;
        Thu, 25 Feb 2016 06:10:10 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id c79sm3294266iod.5.2016.02.25.06.10.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:10:10 -0800 (PST)
Date: Thu, 25 Feb 2016 14:09:22 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Drop unneeded void pointer cast
Message-ID: <20160225190922.GA6795@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
| 
  ((T *)x)->f
| 
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 0015847..ec5b8e0 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -130,7 +130,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 	struct xlr_net_priv *priv;
 	u32 port, length;
 	unsigned char *addr;
-	struct xlr_adapter *adapter = (struct xlr_adapter *)arg;
+	struct xlr_adapter *adapter = arg;
 
 	length = (msg->msg0 >> 40) & 0x3fff;
 	if (length == 0) {
-- 
2.5.0


