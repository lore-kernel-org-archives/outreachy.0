X-GM-THRID: 6259688133176066048
X-Received: by 10.140.87.55 with SMTP id q52mr8605000qgd.11.1457726499214;
        Fri, 11 Mar 2016 12:01:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.232 with SMTP id l95ls2757536qgd.43.gmail; Fri, 11 Mar
 2016 12:01:38 -0800 (PST)
X-Received: by 10.140.174.65 with SMTP id u62mr8591213qhu.15.1457726498439;
        Fri, 11 Mar 2016 12:01:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h69si485649pfj.0.2016.03.11.12.01.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:01:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 129so5510107pfw.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z7OPIuQBRaBFUgl3MJMf1QosiqhHaq8QL7auxm/IvhY=;
        b=XY1mLVv6Zbd79RcVKgPDyD/K+BDnGw9lE8fIXhdGvI7pKEBTOGBde0xO7qqA6JuOJ+
         3iPY2aBhGARwop5b0neb1ORRnctb723p1E7bVFuugYak/6ukch7FAjknm7AXa1B8mXxn
         bvl301AYTUXEzB283mW/jxbwdsxRvw16fQjUeCvh2IsRyaz8AscGJ4AMe0i0ekz0Jz1A
         IX0M3L9IfgX89w5Qql5Z+zSdcxezAFmL+K5TKgEHxWzcKkAWKKuUWMDAlXhgcgy+9VGk
         U49TDBeMplA5cmWEe8TVr9wXCtevA6FB2zWVrpbQjVMDwQJ+4qr0FC3ZEGN+FBpp6bFg
         ipMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z7OPIuQBRaBFUgl3MJMf1QosiqhHaq8QL7auxm/IvhY=;
        b=KJwze1syiBrZOszA07oac1+hQAAKMRhx24XrEUz7icAN1k0569L0QftrFa246ttn59
         zGLVZSNIJKHmoQEc1ipYIsXTkguJCUx2Y+lI8brp1Jcb47YbrnaPQ7yX9op3iUhBAOze
         gukIa68FqXdla/8O847HHDx7fEJKe/h1x7rPKdUgaBngxDACLtuKW6mZUvjGya1yqiHO
         MMUh5XroH79X7bJKuyQv+/gxE23kPxqLmvvZAc/VWiEvUBCPaCGT2/7VzKWLCwVmPz9B
         LvfbGTG3T1rvT5PR3GJ7q4eKBlbZ4bOHAQLwxXafjzMGluBDOrw89BIDP32WldcOMUxl
         ccWQ==
X-Gm-Message-State: AD7BkJLkjd1D50oBPTaHU46AX/ayyy5eQI9AFXG/Catlj5ZODX9vx5Z4oTvu6acWB3r63w==
X-Received: by 10.98.80.22 with SMTP id e22mr10581561pfb.15.1457726498258;
        Fri, 11 Mar 2016 12:01:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e87sm14820187pfb.76.2016.03.11.12.01.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:01:37 -0800 (PST)
Date: Sat, 12 Mar 2016 01:31:20 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 03/13] staging: lustre: lnet: conrpc: Use
 list_for_each_entry_safe
Message-ID: <20160311200120.GA2926@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
        -Combined all "Use list_for_each_entry" lustre patches into a
	patch-set

 drivers/staging/lustre/lnet/selftest/conrpc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index 32970ef..5604fce 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -1335,6 +1335,7 @@ lstcon_rpc_cleanup_wait(void)
 {
 	lstcon_rpc_trans_t *trans;
 	lstcon_rpc_t *crpc;
+	lstcon_rpc_t *temp;
 	struct list_head *pacer;
 	struct list_head zlist;

@@ -1374,9 +1375,7 @@ lstcon_rpc_cleanup_wait(void)

 	spin_unlock(&console_session.ses_rpc_lock);

-	while (!list_empty(&zlist)) {
-		crpc = list_entry(zlist.next, lstcon_rpc_t, crp_link);
-
+	list_for_each_entry_safe(crpc, temp, &zlist, crp_link) {
 		list_del(&crpc->crp_link);
 		LIBCFS_FREE(crpc, sizeof(lstcon_rpc_t));
 	}
--
2.1.4


