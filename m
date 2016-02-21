X-GM-THRID: 6253702006622388224
X-Received: by 10.50.70.1 with SMTP id i1mr6256855igu.2.1456053463896;
        Sun, 21 Feb 2016 03:17:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.164 with SMTP id 33ls1286151qgb.61.gmail; Sun, 21 Feb
 2016 03:17:42 -0800 (PST)
X-Received: by 10.129.159.131 with SMTP id w125mr21357986ywg.26.1456053462864;
        Sun, 21 Feb 2016 03:17:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id u66si2847376pfa.2.2016.02.21.03.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 03:17:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id c10so79124315pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 03:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KlgoLSX8JtamE9p9sMMzEQD9ImYQPvFGgthANOlfaG8=;
        b=yPQZrFiZH/n/ZQRLPjZsaSomDKzTO4XI+FYoyFvAUJaqZKLu4694fakWCA262gMcgR
         e+48YvF9vTVk46F3BoL3jOM2xtTAcprTwxyhnWFVqWhDi7Zl/QY0adz2qBH5oiVYBCFb
         5WbDT+N5mIuvDVJtEJNO7x+ZhKoKjieGt13DWUDJBw9Sk665RL1PMw8UaIyETITms3mR
         Tze9o0Sk/VCcMD+izpf5uwqldmOrHSWjhnXvTWTGNAtRCV3LUscVqXeVdWzkFY8FUhao
         olcgISOY+/x90hWFReSOsIKPw2PLNr+SDjDkbP7mk8TOxlFzm6vYBIwST8A+1RXGLdbL
         h/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=KlgoLSX8JtamE9p9sMMzEQD9ImYQPvFGgthANOlfaG8=;
        b=JBfhRmoGFrm/Y/cZU8azgfaY+N4NrbojZs/2d7b4bkDUNZfctolGF8Cu2gpL/9NdO5
         foMS6Ybbx3RTAc/vU12CqFaLGHHh0XoBzHoAIPBtxi4MOMAOWzj4Mv8NiwJA8lACz+t/
         gJukNFlmrkpuvModBNSdz3KQNW/PJUKUeQGnOaAqeW9RhlNMvKjE/gGlZDL5JWXW1hEx
         5UAcq4yg4bkbZGLqqBpU7PhxTMKtq1cgreXOgvUYD5tOt3MNwnqgej1SaMMKzodhaq41
         H9MUYotycv0E75667oey8DOGN95/cMttF6KeoaykJdPMnyELvz6T3su2YIO3pf6SNc9s
         xNhA==
X-Gm-Message-State: AG10YOS2CACSmczHPvtCT24Jg80KD7Z6Pzs+zWrNdYrXZWhr6DgSinVnb6ail7aolw0E9g==
X-Received: by 10.98.16.150 with SMTP id 22mr30643817pfq.128.1456053462709;
        Sun, 21 Feb 2016 03:17:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z67sm29444521pfa.71.2016.02.21.03.17.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 03:17:42 -0800 (PST)
Date: Sun, 21 Feb 2016 16:48:15 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: libcfs: Prefer kmalloc_array over kmalloc
Message-ID: <20160221111815.GA27645@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.
This was done using Coccinelle:

@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(sizeof(e1)*e2, C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(e1), C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(t), C)
+ kmalloc_array(e2, sizeof(t), C)
|
- kmalloc(sizeof(t)*e2, C)
+ kmalloc_array(e2, sizeof(t), C)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
index 91c2ae8..dda7e3a 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
@@ -61,8 +61,9 @@ int cfs_tracefile_init_arch(void)
 	memset(cfs_trace_data, 0, sizeof(cfs_trace_data));
 	for (i = 0; i < CFS_TCD_TYPE_MAX; i++) {
 		cfs_trace_data[i] =
-			kmalloc(sizeof(union cfs_trace_data_union) *
-				num_possible_cpus(), GFP_KERNEL);
+			kmalloc_array(num_possible_cpus(),
+				      sizeof(union cfs_trace_data_union),
+				      GFP_KERNEL);
 		if (!cfs_trace_data[i])
 			goto out;
 	}
--
2.1.4


