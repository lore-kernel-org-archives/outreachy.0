X-GM-THRID: 6254491809814151168
X-Received: by 10.140.228.7 with SMTP id y7mr4813054qhb.27.1456237353027;
        Tue, 23 Feb 2016 06:22:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.234 with SMTP id 97ls2350473qgl.23.gmail; Tue, 23 Feb
 2016 06:22:32 -0800 (PST)
X-Received: by 10.140.252.131 with SMTP id x125mr4913744qhc.12.1456237352540;
        Tue, 23 Feb 2016 06:22:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id 12si3820416pfb.1.2016.02.23.06.22.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 06:22:32 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id x65so113079375pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 06:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yowgKHXavUn+LC+ELxZ1m//sx888RULV9yptAB51gQU=;
        b=c0MSsnSH8DcC8qBf49DaXKug5LylBa55j1ZJTZJP9gdDhNgU/mcE47lXjm924Nuk/P
         9WxcAsHRsClfK0XO8v5/XBmKtIDEjRBaR1H641jHpvt9m8evyPt178aWO04m2LMiky5m
         LoAazcjNK5Hwdj+srBMbK1Kt2ex0Qu+auvu1tzz3XoGsiWiLko12QRJDLgAyKYq9PBKW
         FzONKTLiwZBfPbaUE7NaMyf6tZpz44f5DZAxKTz9tMAwbIpPxO5F1Y3i2zN0PJLhijwV
         2notK02dmQtMWG0mBvvBSa5Uwni5MvJSdVAd53svLKBJIRd+IwQVmigWE4HGR6E3D6P5
         YBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=yowgKHXavUn+LC+ELxZ1m//sx888RULV9yptAB51gQU=;
        b=Cleu3vAswpiKh9sdUSuNJAVHK6WyuSHWRVXGF96m6lsBeaOftJlTroJRsDB3X5GBVc
         KucMD4+ltAeFDO1C4obuwUYmGPvgn52vIo0lJlCoOTiCTlqFkLjT9klr/9haGw9Frgui
         SyXkk/SuRHGbbEvaTDp0U28cAM4Q97C4mLn/bqGc+dBgPlazPL7fqlelmigvLT9Z5L7o
         q78jR07hQJIOmpXFA22IMKcq6uzNj4otDi5gVHyO5Yt4AkT7WANhvVoewmcc/+Of6uSu
         3o0S0A7GhST0O/lEsTmM3IXwQSE2P+EJswHNus1ypoz4PwguUdCZj/Jj6hZriWAgCJyH
         Yq1g==
X-Gm-Message-State: AG10YORgwy8OuSK1m4qfocBIXDpj85y1Gpp7+8jDtEjS84j3Assrp0nLrEX98DIS1Yri8w==
X-Received: by 10.98.64.202 with SMTP id f71mr46478797pfd.113.1456237352361;
        Tue, 23 Feb 2016 06:22:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id yl1sm44859994pac.35.2016.02.23.06.22.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 06:22:31 -0800 (PST)
Date: Tue, 23 Feb 2016 19:52:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: lustre: libcfs: Remove unnecessary braces
Message-ID: <5f663d76fed48e495ffdfddf2038546e86642657.1456236436.git.amitoj1606@gmail.com>
References: <cover.1456236436.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456236436.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed unncessary braces from the if-else block to remove the
following checkpatch.pl warning:
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Divide one patch into a series.

 drivers/staging/lustre/lustre/libcfs/hash.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index c8d8bc8..b9bdb67 100644
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
 		swap(*bd1, *bd2); /* swab bd1 and bd2 */
-	}
 }
 
 void
-- 
1.9.1


