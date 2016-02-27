X-GM-THRID: 6256035827033309184
X-Received: by 10.182.125.8 with SMTP id mm8mr5961822obb.26.1456596848721;
        Sat, 27 Feb 2016 10:14:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.161 with SMTP id m1ls159802igv.38.canary; Sat, 27 Feb
 2016 10:14:08 -0800 (PST)
X-Received: by 10.107.128.102 with SMTP id b99mr11814131iod.1.1456596848443;
        Sat, 27 Feb 2016 10:14:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r75si1105543pfr.0.2016.02.27.10.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 10:14:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t66so2186950pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 10:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=luqUZdd4U8aND1GlHgeP54qx1epZt2Fys5yRkGlQRcU=;
        b=H8nSeM4KsJE48wmAhbsbb+wTMuVwvU4CjX9h4bqQGIeaQrAZlH7a6pJ8Y9wOu9Sbgr
         GANYCgC6VQ58ilJ0zIOVTueqqYsadUhp0lr12p4GP7J5Je9xITkeELN8oQhALHsVUlzb
         Da0RitD5JirebjdJxnjy6sYX9pwMisBfE7yyn6QnsL092fcz0E5ZlwvYgploSIbRj86Q
         CDdG1dQ0v5a7bbccDfDnwzoDmDI9rd3uYcklDn2OzXSaieSKgS9yIgveS1XTnRBO6KcD
         bz+1PgAq7s1GZWa1UfZM9cCUuE0pYOxNbib6om3+tApA5vHj5+LBxuDrLmvdDXLP54rZ
         ySdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=luqUZdd4U8aND1GlHgeP54qx1epZt2Fys5yRkGlQRcU=;
        b=VSeVp7kqggXAb+UlH0NydjcTT8uhMBjTK5CyIvVXLT+5V/rDuHPuF1fvqKV/yGxp3p
         RPP3RgUJ3JCCE2zYMl3PGRhhycEWgnAv5O8z15RwrM+lY/VEP5WH1USrMOmf8IKIKtlI
         2c/qgOnM+F1kYuEQ5m0+MoMyul9+ohZ6ruOPQ7qDLxq8NtdBi2Sf5Alnj8hjRw79gmn2
         07vt8QleOBAJdCX9giob/lPZ9mZLoR4BWT68yYeClsA/U8Wpg+w3ybJLQJbYkGhqLKBL
         NsyVKApu9rQ+0RXCz1sYQXOQsiB9bIXNfNfFmfmUNhjAawgXASIAOnsTj15L90LXtD2c
         gEXw==
X-Gm-Message-State: AD7BkJL6IdpG74KZiCfeDybbRXzgnOWhfgkVJjbXqqMWukUJasdFsE2grnFncNPPEQhrGw==
X-Received: by 10.98.17.75 with SMTP id z72mr10911253pfi.16.1456596848287;
        Sat, 27 Feb 2016 10:14:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g10sm27467131pfd.92.2016.02.27.10.14.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 10:14:07 -0800 (PST)
Date: Sat, 27 Feb 2016 23:41:18 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: lnet: Replace typedef with struct
Message-ID: <20160227181118.GA28603@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

As per the Linux kernel coding style guidelines, using typedef for a structure
type is not recommended. Hence, occurences of typedefs have been
removed.

This was done with Coccinelle.

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
coccinelle.T2 = T;

@@
type r1.T;
identifier c1.T2;
@@
-typedef
 struct
 + T2
 { ... }
 -T
 ;
 @@ type r1.T;
 identifier c1.T2;
 @@
 -T
 + struct T2

The '_t' suffix has not been removed since there is a variable with the
same name.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed typo "lusture" to "lustre" in the subject

 drivers/staging/lustre/lnet/selftest/ping_test.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/ping_test.c b/drivers/staging/lustre/lnet/selftest/ping_test.c
index 9d27e39..617a641 100644
--- a/drivers/staging/lustre/lnet/selftest/ping_test.c
+++ b/drivers/staging/lustre/lnet/selftest/ping_test.c
@@ -48,12 +48,12 @@ static int ping_srv_workitems = SFW_TEST_WI_MAX;
 module_param(ping_srv_workitems, int, 0644);
 MODULE_PARM_DESC(ping_srv_workitems, "# PING server workitems");

-typedef struct {
+struct lst_ping_data_t {
 	spinlock_t	pnd_lock;	/* serialize */
 	int		pnd_counter;	/* sequence counter */
-} lst_ping_data_t;
+};

-static lst_ping_data_t  lst_ping_data;
+static struct lst_ping_data_t  lst_ping_data;

 static int
 ping_client_init(sfw_test_instance_t *tsi)
--
2.1.4


