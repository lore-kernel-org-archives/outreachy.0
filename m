X-GM-THRID: 6254605326031519744
X-Received: by 10.107.3.24 with SMTP id 24mr34612264iod.12.1456263855075;
        Tue, 23 Feb 2016 13:44:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.13.103 with SMTP id g7ls972675igc.29.gmail; Tue, 23 Feb
 2016 13:44:14 -0800 (PST)
X-Received: by 10.50.150.98 with SMTP id uh2mr18311622igb.2.1456263854807;
        Tue, 23 Feb 2016 13:44:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id 79si4073214pft.0.2016.02.23.13.44.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:44:14 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ho8so120066677pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=rTSGYvqjeiOfoNMVXr8o6JXirC6RZpcmUOPToHxhXtA=;
        b=m/TgIoThZyIODkNcQQKdTHM1XDAena7rnIpihRjtcOMwAoVthvZt+S/XwY7YKPj5tk
         suEWLyDyGW/Zls3b1cipuyMlaFDyZAi+ewq49wuDWvOkOIZJNmrux7sEQCBHbHMDiStf
         9cDLN8psP7snEAj34/iKx9RXjp3m+Pp4tGtGO9E8zqQD/57+Mh3RCVXDUELSMskaZq4d
         2htrV4zTodqex4lBmpdD3yjcrnrMb/w+G552+1xbAPNBZL16FzT7FEWE19kdSmFpom3e
         1IkPHG749E5cm36inSBBPuw9sqvfE0i9A4IK2nb/abY/3hKtISwJuormyRC76IbHvHHF
         kPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=rTSGYvqjeiOfoNMVXr8o6JXirC6RZpcmUOPToHxhXtA=;
        b=aRmCZ6AYEwQRtUqu6+wdOBKMMdDs/ArQNIGNi37bvRj62e9TFzkKFFweTdvj5AB/ri
         AaHRjZg3BbkYnx10nPKbSN+Wwevf7xWhFBi5ydHftPAMxGnSeoPgj2DdYk73ra/OecG7
         sMC1YDOudlalSaMBz0dXdDWGubO8PkdOSbMT7zS/r2vpFZ5eMqzC5UDR6gMKLgQ8XztY
         Zs8PBiWAgqP7G6vUPwGeDccqET81rS6Cb6lVa7U6F58okq9wc3N0V3S5YHLFHv6sF50d
         q6IP1OKWkH7CeauBFWqLYSWGMippoV3zU2qa6TdTI6Y5MKYrkTyGqUteUVfP3s0zqLpE
         +SjA==
X-Gm-Message-State: AG10YORaSVJ6eFM91YAEbWdcTX6E6P9tSFUQxJmDoY2aspJWVb7Q/KalBzvz3HvDpAlB6g==
X-Received: by 10.66.219.71 with SMTP id pm7mr49475973pac.137.1456263854624;
        Tue, 23 Feb 2016 13:44:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id fk10sm3589307pab.33.2016.02.23.13.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:44:14 -0800 (PST)
Date: Wed, 24 Feb 2016 03:13:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] staging: lustre: libcfs: Remove unnecessary braces
Message-ID: <5d293a234149cbb1f0aadad5fcb4b0b3583d8342.1456263289.git.amitoj1606@gmail.com>
References: <cover.1456263289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456263289.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed unncessary braces from the if-else block to remove the
following checkpatch.pl warning:
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -None
Changes in v2:
        -Divided one patch into a series

 drivers/staging/lustre/lustre/libcfs/hash.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index 8e6f9ac..fa0d23c 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -800,12 +800,10 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
 	}
 
 	rc = cfs_hash_bd_compare(bd1, bd2);
-	if (rc == 0) {
+	if (rc == 0)
 		bd2->bd_bucket = NULL;
-
-	} else if (rc > 0) {
+	else if (rc > 0)
 		swap(*bd1, *bd2); /* swap bd1 and bd2 */
-	}
 }
 
 void
-- 
1.9.1


