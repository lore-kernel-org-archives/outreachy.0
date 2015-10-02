X-GM-THRID: 6201108859850850304
X-Received: by 10.182.92.135 with SMTP id cm7mr13209778obb.8.1443808182140;
        Fri, 02 Oct 2015 10:49:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.226 with SMTP id e89ls1788290qga.40.gmail; Fri, 02 Oct
 2015 10:49:41 -0700 (PDT)
X-Received: by 10.31.162.16 with SMTP id l16mr13817029vke.5.1443808181662;
        Fri, 02 Oct 2015 10:49:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si1700319pac.2.2015.10.02.10.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:49:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so114524898pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=slbLiVdHThtb8xKqg3FHA00PmXHkPQS9RIACJY6jUEg=;
        b=gY2lpXwL6DKoGuWzLMyUvLEoRmAIyg9tKO2rx3QQGgrFX5R4krakbsxJ1WHPkpc9Xq
         nw9Uviak/kB5JBUA4v+zX0/z9/L9wrC4EDmRdUiznvUSg4DGJxvGRbjs2fv+ypky68QE
         Cr5s06CGrT4/TorxsSW72jVRMFZpfLUmjp7uOcpbyfmitc4s4uz6ysye+zXq2J5CLc62
         4Tn5sHKvaSbJpQmS+4lguE6oFiKPFZly2ATcZg5GCm9KUv/UrlObAXUzuBSTcgikMPEj
         hjq4JjqHiaJxF3/7ylXljFCx1CExFRjJySJDzixjLFhvJzuPKhRLKfM78hq4FdARjTiX
         7Fbw==
X-Received: by 10.67.15.100 with SMTP id fn4mr22009372pad.120.1443808181495;
        Fri, 02 Oct 2015 10:49:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pq1sm13027912pbb.91.2015.10.02.10.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:49:41 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/5] Staging: lustre: obdclass: class_obd: Declare as static
Date: Fri,  2 Oct 2015 23:19:14 +0530
Message-Id: <1443808154-13944-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560EC3B4.0047,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare class_resolve_dev_name as static it is not used anywhere
apart from this particular file.Also remove the declaration
from header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/class_obd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/class_obd.c b/drivers/staging/lustre/lustre/obdclass/class_obd.c
index 058b859d..d16f85b 100644
--- a/drivers/staging/lustre/lustre/obdclass/class_obd.c
+++ b/drivers/staging/lustre/lustre/obdclass/class_obd.c
@@ -133,7 +133,7 @@ static inline void obd_conn2data(struct obd_ioctl_data *data,
 	data->ioc_cookie = conn->cookie;
 }
 
-int class_resolve_dev_name(__u32 len, const char *name)
+static int class_resolve_dev_name(__u32 len, const char *name)
 {
 	int rc;
 	int dev;
-- 
2.1.4


