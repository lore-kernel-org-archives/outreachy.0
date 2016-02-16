X-GM-THRID: 6251868693669609472
X-Received: by 10.182.250.201 with SMTP id ze9mr6289751obc.0.1455626611198;
        Tue, 16 Feb 2016 04:43:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls3845247qge.89.gmail; Tue, 16 Feb
 2016 04:43:30 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr21112967qhi.10.1455626610659;
        Tue, 16 Feb 2016 04:43:30 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id 79si3991876pft.0.2016.02.16.04.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 04:43:30 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id yy13so102908037pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 04:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nFIuqEcBYZdTCgJ5Ojjem7KkLVFSqbWbolCC6bQ+sCc=;
        b=ZX62YELyjcishECXhGI2Xu+OCFW4g31e78UhCLl/bsB0RHPCpBeOPoX6SZ7wf5v67V
         JmukR5jovFas6tBZ/1Iq1YD8Css01cNks3mEoop1QvAW0xdbPtk0hw8iEt0sTDC/sHF8
         NmGoksr8SMeGFoX24QYDmxoKh6aaCMe7YzTGzx5kVwCvtI73b9Yc9WHyuQPC8XGAGPbb
         P7mDIbYOlJHFracjnYFHfGY3SYtuYPH509HMxEYrICwrmtIK8mROdqDtfKnthRs+LsUF
         pgQMLsNdsm7a6an0ySO4kmOhnRDf+eMZDRtyYVe0JKG0SWxNoQYe9fIJHBFmsUt0Hqe3
         aFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=nFIuqEcBYZdTCgJ5Ojjem7KkLVFSqbWbolCC6bQ+sCc=;
        b=IY2URtT9rp54E+oNTNYYtE9YykmcoxU0S4yMXb3ONr1CwpJLQ0FBSKPjRGvLD80s7c
         tgH2EO76PgwwhKDUpRKcL/2N9STwIO/ph9RcSrfjEtRYDNhYGVzFwvTH6iLdGrDOdw8w
         egLq5mPhXo3P3CzFwkgne8JWl7BOd+gXohY4XhTGTYlyQJJ0zat4uVg6XrGp1Ap08cI1
         EgoGiSwlruaA9ZdCjd7WHVjGHSryFhquGW/xTHsxmuIEFOb5kI9CGMZz9I1wIY/uAFTR
         DOOif97xxaLgiZzZdsugW3hJpCvyglHil9omLRqB/v0cflioKvj1hsbq+pHx/dJuC3Oz
         ebWA==
X-Gm-Message-State: AG10YOS389Etj5k9nFYO9yINiZatmDr6LVGk3LJDxbpvy0Ey8nPdvvyJ8EmB1H70KTHFag==
X-Received: by 10.66.251.65 with SMTP id zi1mr30570939pac.133.1455626610479;
        Tue, 16 Feb 2016 04:43:30 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id tv6sm45788143pab.4.2016.02.16.04.43.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 04:43:30 -0800 (PST)
Date: Tue, 16 Feb 2016 18:13:26 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: osc: osc_request: Fix sparse warnings
Message-ID: <20160216124326.GA1802@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Declare osc_cleanup() function and osc_obd_ops structure as static
since they are defined and called only in this file.

This fixes the following sparse warnings:
drivers/staging/lustre/lustre/osc/osc_request.c:3210:5: warning:
symbol 'osc_cleanup' was not declared. Should it be static?
drivers/staging/lustre/lustre/osc/osc_request.c:3259:16: warning:
symbol 'osc_obd_ops' was not declared. Should it be static?

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 3ae00fc..47b4e8d 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -3207,7 +3207,7 @@ static int osc_precleanup(struct obd_device *obd, enum obd_cleanup_stage stage)
 	return 0;
 }
 
-int osc_cleanup(struct obd_device *obd)
+static int osc_cleanup(struct obd_device *obd)
 {
 	struct client_obd *cli = &obd->u.cli;
 	int rc;
@@ -3256,7 +3256,7 @@ static int osc_process_config(struct obd_device *obd, u32 len, void *buf)
 	return osc_process_config_base(obd, buf);
 }
 
-struct obd_ops osc_obd_ops = {
+static struct obd_ops osc_obd_ops = {
 	.owner          = THIS_MODULE,
 	.setup          = osc_setup,
 	.precleanup     = osc_precleanup,
-- 
1.9.1


