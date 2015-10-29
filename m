X-GM-THRID: 6210955194989019136
X-Received: by 10.13.235.207 with SMTP id u198mr40910ywe.3.1446100695590;
        Wed, 28 Oct 2015 23:38:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.24 with SMTP id i24ls150180ioo.68.gmail; Wed, 28 Oct
 2015 23:38:15 -0700 (PDT)
X-Received: by 10.107.9.196 with SMTP id 65mr1220306ioj.11.1446100695241;
        Wed, 28 Oct 2015 23:38:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si18172pbb.0.2015.10.28.23.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so31230642pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=etj8zpsiZMQ6bq/+rzPpsrRENfgunt9ajah1eP+SaE4=;
        b=ZZJwcqXZvnpjP5pNNUfFuwNsRXa4QZBrx1TVfrkJB0FAQ+G7uB9TKf3V6TSZOYXw8M
         fPQo15Iqv4RDCK8HOPSlvotLJ8Qql9TyAV7U0adA/FXqCU+LrXt8oDuQJ3wsrhTlLoaB
         sWzfG0AAoua0lOmX354SEBZfQKUBamN6X3jefYSBO5OH8dJzvjxtECps3W+Uo+6i8zNn
         8dtrakOvbVpD3AuTf5ays05+t/lPqYF6MpxI7F63a1zbpDtYHbAZAaTYxTdzrOL4q49K
         b9ymSdUCK2GMOSeRTRxwkGNq9tlJztmt6wnAoqs0GT+BitzXN6j+tbeXjbydE03hW+qP
         IlwA==
X-Received: by 10.66.242.138 with SMTP id wq10mr134559pac.2.1446100695114;
        Wed, 28 Oct 2015 23:38:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ub4sm128849pac.29.2015.10.28.23.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:38:14 -0700 (PDT)
Date: Thu, 29 Oct 2015 12:08:06 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: api-ni: Drop unneeded wrapper function
Message-ID: <20151029063806.GA39060@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function lnet_create_interface_cookie() and replace its call
with the function ktime_get_ns().

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/api-ni.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 3954126..284150f 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -356,15 +356,6 @@ lnet_counters_reset(void)
 }
 EXPORT_SYMBOL(lnet_counters_reset);
 
-static __u64
-lnet_create_interface_cookie(void)
-{
-	/* NB the interface cookie in wire handles guards against delayed
-	 * replies and ACKs appearing valid after reboot.
-	 */
-	return ktime_get_ns();
-}
-
 static char *
 lnet_res_type2str(int type)
 {
@@ -553,8 +544,11 @@ lnet_prepare(lnet_pid_t requested_pid)
 	rc = lnet_create_remote_nets_table();
 	if (rc != 0)
 		goto failed;
-
-	the_lnet.ln_interface_cookie = lnet_create_interface_cookie();
+	/*
+	 * NB the interface cookie in wire handles guards against delayed
+	 * replies and ACKs appearing valid after reboot.
+	 */
+	the_lnet.ln_interface_cookie = ktime_get_ns();
 
 	the_lnet.ln_counters = cfs_percpt_alloc(lnet_cpt_table(),
 						sizeof(lnet_counters_t));
-- 
2.1.0


