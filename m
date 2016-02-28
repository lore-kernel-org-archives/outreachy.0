X-GM-THRID: 6256395525540544512
X-Received: by 10.50.65.69 with SMTP id v5mr6852612igs.13.1456680597701;
        Sun, 28 Feb 2016 09:29:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.32.104 with SMTP id h8ls323924igi.28.canary; Sun, 28 Feb
 2016 09:29:57 -0800 (PST)
X-Received: by 10.66.231.4 with SMTP id tc4mr9880982pac.14.1456680597449;
        Sun, 28 Feb 2016 09:29:57 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id im4si309481igb.2.2016.02.28.09.29.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:29:57 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22a.google.com with SMTP id z135so166502624iof.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r87aBFPENG7B4jfvLg8mRY61yrnIewJIscHDKzUyYFY=;
        b=KJvQX+/2vXYPQDBtaAl2MU9cbsKYq6wm+w3f49YJvnOkSm7aSKD2z7ARi0VV27OXe8
         jqEV7fh+dzXaTT/5wDlf2xIBZRm+C6Tey2wAGx5vd/Mvdp8OTHrZtDuky5jo/XPmLtnr
         k1KzeME5GrV/tArQvnlrx/2zcmATqEk1pJwHH5C+9SjQ+4M5gIYMmUU60vy/yeCGfA+3
         0WKjem1FAIv8Jl6JYqJbu+D1c437L7AgvNZLSsg3rieoRpaDyN+/+0A8aSih6VkMKAA3
         sbpgI1RLusnAG42vzpjG3z7Eriet4C3xNOUv5E46ptysIEA9uZ00Bce35KlD+sU2dLLl
         eUNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r87aBFPENG7B4jfvLg8mRY61yrnIewJIscHDKzUyYFY=;
        b=IparRhjfwQ/gJNICCaLqe9ap9V61il0ggNL8HfShSsdQoWjw/vAp2a3DtuYxTQBwoT
         HWM6o13e7+0OuwK6tSYYlLYd5b5CUNaV4KvQdCiuQwqKQHtrsOxrGC5QTKmxGEvq2gFb
         9r8tuQeVpbfSgCbzkd7iuHjLH8sEf0dUChRTNSgJKZCN4Re5rPm9drp5fXZYg9PSzWNi
         K91xwGseGE153mLIxx5t4+r7YndC6WnhPv8oVAtTeCPs2ib6i3VF63Eq+Lr1RPp89Kg/
         bgtZP5UiiKYW6YeaWc314rmmEjpLaNuU0w5eB5OtE0T45YmbYW85Co1qiiZB5M9ImLHw
         hz5Q==
X-Gm-Message-State: AG10YOTCRReZyRapYYpohc3axtPXLE9iKsRZCB6PbzFR/1Pm04fW1y84IsvJ4HNIryKFqg==
X-Received: by 10.107.36.80 with SMTP id k77mr16094437iok.121.1456680597265;
        Sun, 28 Feb 2016 09:29:57 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id dl1sm5347994igc.22.2016.02.28.09.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:29:56 -0800 (PST)
Date: Sun, 28 Feb 2016 17:29:07 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Use list_for_each_entry()
Message-ID: <20160228222906.GA8781@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry(). Also, remove variable pacer which becomes
useless as a result of the transformation.
Semantic patch used:

@a@
expression pos,  head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each;
@@

- list_for_each(pos, head)
+ list_for_each_entry(var, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conrpc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index b02a140..7e607f8 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -1332,7 +1332,6 @@ lstcon_rpc_cleanup_wait(void)
 {
 	lstcon_rpc_trans_t *trans;
 	lstcon_rpc_t *crpc;
-	struct list_head *pacer;
 	struct list_head zlist;
 
 	/* Called with hold of global mutex */
@@ -1340,10 +1339,8 @@ lstcon_rpc_cleanup_wait(void)
 	LASSERT(console_session.ses_shutdown);
 
 	while (!list_empty(&console_session.ses_trans_list)) {
-		list_for_each(pacer, &console_session.ses_trans_list) {
-			trans = list_entry(pacer, lstcon_rpc_trans_t,
-					   tas_link);
-
+		list_for_each_entry(trans, &console_session.ses_trans_list,
+				    tas_link) {
 			CDEBUG(D_NET, "Session closed, wakeup transaction %s\n",
 			       lstcon_rpc_trans_name(trans->tas_opc));
 
-- 
2.5.0


