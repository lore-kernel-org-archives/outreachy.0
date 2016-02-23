X-GM-THRID: 6254602088817360896
X-Received: by 10.129.108.3 with SMTP id h3mr34661436ywc.31.1456263030425;
        Tue, 23 Feb 2016 13:30:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.4 with SMTP id c4ls2466235qgc.26.gmail; Tue, 23 Feb
 2016 13:30:29 -0800 (PST)
X-Received: by 10.129.72.199 with SMTP id v190mr34376215ywa.44.1456263029942;
        Tue, 23 Feb 2016 13:30:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id ui7si4209015pab.0.2016.02.23.13.30.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:30:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fl4so116758789pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pzAaPdFUckSdTmCtPI5g7WZVaIFVeg2Jaaj2sspa20Q=;
        b=NcBfM5hlCLD2KMfem7ak33HK4ah8JOw6vyIy6tetwUDLzr3dkEnvpexH9K4ua85ShK
         Xhu1WGpiSqEtw7m109IsQzWSip21It8Ih519sT0pR9OIXpwfwR2rV7XhXeuhvzVR30Uv
         5xRcqPZtgveCLm3X25qcZH9t1tWNbZ3qDuJswRnYYQ3Zow/isc6UFOkz1NfXOS5NlVtp
         srctn/g4iFg5Ei2+lC/YMag1uXO6+32uaNG61deCWk9lU1dgDNc3uAP2JSK4FUofkfd7
         0lj/C+LEVTDC3CvYO2vZfTER2Mz7baMUjsrHxZY9feAtEBuDuBuM00tajXH/t/HllezI
         d71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=pzAaPdFUckSdTmCtPI5g7WZVaIFVeg2Jaaj2sspa20Q=;
        b=N+TSF2bc1c1QCC0r6I9xUpdlc8d763TAhRzy03/4JIO7WXCsjt+H0FJkslQ1DA8xZp
         OW8d0pXZ9OfzyqXuHI1RrkYuMX3A5F3VhJPuZAg2iMx++ii0nF/H9cE2tv33MSmVpV1/
         uMlQyxSuDIm7rfNswNF4Q5Xx4d8d/3D/muNW3/BmHvLCuCleViWSKMQJ6Ww520oGgTHK
         C7QcxOT3SbsT52C77AlRrIv1Xa5n1GGlSXOhs/fVbqZBNtGpmPDQIOglbdO3Elz3GfrZ
         9RasSkqEfft++YFUA0FixPLPtRT2QWd5iJklA6lfJAq1UfmC3ZE3NEseovryu33xFnK+
         +tmA==
X-Gm-Message-State: AG10YOQggqL4ov5i/n7hUY/xKqUV0Y6uRTSGpiRIcUdFD2o6ONCBc1diwTCz0UaL3PJxVQ==
X-Received: by 10.66.65.109 with SMTP id w13mr49244257pas.142.1456263029768;
        Tue, 23 Feb 2016 13:30:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 85sm46284204pfl.18.2016.02.23.13.30.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:30:29 -0800 (PST)
Date: Wed, 24 Feb 2016 03:01:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: llite: Remove multiple assignments
Message-ID: <20160223213103.GA24489@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes multiple assignments by factorizing them.
This was done with Coccinelle.
@@
identifier i1,i2;
constant c;
@@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/llite/namei.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index 7e62198..4f91a9f 100644
--- a/drivers/staging/lustre/lustre/llite/namei.c
+++ b/drivers/staging/lustre/lustre/llite/namei.c
@@ -313,7 +313,8 @@ static struct dentry *ll_find_alias(struct inode *inode, struct dentry *dentry)
 	if (hlist_empty(&inode->i_dentry))
 		return NULL;

-	discon_alias = invalid_alias = NULL;
+	discon_alias = NULL;
+	invalid_alias = NULL;

 	ll_lock_dcache(inode);
 	hlist_for_each_entry(alias, &inode->i_dentry, d_u.d_alias) {
--
2.1.4


