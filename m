X-GM-THRID: 6467884154880
X-Received: by 10.194.95.67 with SMTP id di3mr369718wjb.0.1425449906465;
        Tue, 03 Mar 2015 22:18:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.99 with SMTP id lf3ls142142lac.4.gmail; Tue, 03 Mar
 2015 22:18:25 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr344467lbb.17.1425449905874;
        Tue, 03 Mar 2015 22:18:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id i7si1031218wif.0.2015.03.03.22.18.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:18:25 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id k14so579689wgh.7
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Mg1c0vVL1l1Pee5sPVNZ7aJBZFv13Z51wnajyBtYgLE=;
        b=z8XXo3LZgDeEBPXXItDC6UYQFx5yK1AWWNU6bDW1bSGp/q+1n+yNwwvjbJ6O4hpQJU
         MDSPw4Ux5WI2QF3SdKos95CpwBO1MNib9JzmphQuQHQ0Nn6wKj1YACOIU4y1T5VB47+Y
         EECdaLT0AAfU5FmQ8nLq8vSOTBRk4bG7ifk8CjEHcQpTI/PrKitkQVc5gUe5HPBWm4Eg
         0FpWsiylnFFlyRTS01A7oMAFtxJNeI0zDD34mduN8Ucge/+3fEb5/wogfYz1B6CGfioe
         hv7W8f1r6ahcrchixaxl+qs/fIHiZxOL3rWFcorqC3V+S4adPHQmv9yeyF2fSisICJr6
         HWFQ==
X-Received: by 10.194.110.38 with SMTP id hx6mr4477027wjb.128.1425449905703;
        Tue, 03 Mar 2015 22:18:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id vh8sm4412447wjc.12.2015.03.03.22.18.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:18:25 -0800 (PST)
Date: Wed, 4 Mar 2015 08:18:19 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: lustre: remove extra parentheses around left
 bit shift operations
Message-ID: <f019fdd8c94a26566253c7dd79e9993c0216f31b.1425449681.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise left shift operations.
The cases handled here are when resultant values are assigned to
variables. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
<<
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
<<
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
<<
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
index 66d78c9..86b88db 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
@@ -72,7 +72,7 @@ static int typed_conns = 1;
 module_param(typed_conns, int, 0444);
 MODULE_PARM_DESC(typed_conns, "use different sockets for bulk");
 
-static int min_bulk = (1<<10);
+static int min_bulk = 1<<10;
 module_param(min_bulk, int, 0644);
 MODULE_PARM_DESC(min_bulk, "smallest 'large' message");
 
@@ -122,7 +122,7 @@ static int nonblk_zcack = 1;
 module_param(nonblk_zcack, int, 0644);
 MODULE_PARM_DESC(nonblk_zcack, "always send ZC-ACK on non-blocking connection");
 
-static unsigned int zc_min_payload = (16 << 10);
+static unsigned int zc_min_payload = 16 << 10;
 module_param(zc_min_payload, int, 0644);
 MODULE_PARM_DESC(zc_min_payload, "minimum payload size to zero copy");
 
@@ -182,7 +182,7 @@ int ksocknal_tunables_init(void)
 #endif
 
 	if (*ksocknal_tunables.ksnd_zc_min_payload < (2 << 10))
-		*ksocknal_tunables.ksnd_zc_min_payload = (2 << 10);
+		*ksocknal_tunables.ksnd_zc_min_payload = 2 << 10;
 
 	return 0;
 };
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

