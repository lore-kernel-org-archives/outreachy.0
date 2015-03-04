X-GM-THRID: 6406607470592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f04d7bc1ed043b39
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr332799lam.9.1425447024919;
        Tue, 03 Mar 2015 21:30:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.203 with SMTP id w11ls40224wiv.50.canary; Tue, 03 Mar
 2015 21:30:24 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr3506631wib.5.1425447024621;
        Tue, 03 Mar 2015 21:30:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id i8si241594wif.1.2015.03.03.21.30.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:30:24 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghn12 with SMTP id n12so4088063wgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=m5SnBZc/LZrV/i8Hc+YsoecELG6NM+5g21ElzXhjv+I=;
        b=ruanOui75eFzHYcGMZsbXpMP6IkYqSNvQ9iA6af7meE5rGtBOqo+K4deO7+A3F31Ch
         +S0tiOxCrMqLiFjHX6jbM/fOTEhJCOu5z7Ut4wtXH3iGoxU2ofSyXcvWU67g7f0Xj0R7
         R3G9GC4iSZjpWbPPtPEG4E4qgAsGObQOX0gbAQbOyKqUXV7MHhp49csZdJOWTuS3VPjx
         JxL3cQArbgDbEIyi1TCv/u1t4kIL1hUtxRslduFHz4qdTnTzyEg7MpO3WHhMevdp9eq0
         L4ce9wiZgER2TL+mFJWZajY0ZHBdKRnvFVwC6Xvxxz+Vi0Ii78/8m3FqUhPiilCiaoVA
         6/mA==
X-Received: by 10.194.77.230 with SMTP id v6mr4219455wjw.25.1425447024184;
        Tue, 03 Mar 2015 21:30:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id k1sm4266884wjn.9.2015.03.03.21.30.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:30:23 -0800 (PST)
Date: Wed, 4 Mar 2015 07:30:18 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 03/13] staging: lustre: llite: remove extra parentheses
 around right bit shift operation
Message-ID: <f2d86185f51683e11bffcdbe34cc776236b1dd60.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The case handled here is when the resultant value is assigned to
a variable. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e = 
-(e1
+e1
>>
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
>>
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
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/llite/vvp_dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/vvp_dev.c b/drivers/staging/lustre/lustre/llite/vvp_dev.c
index 5a1078a..97d94fc 100644
--- a/drivers/staging/lustre/lustre/llite/vvp_dev.c
+++ b/drivers/staging/lustre/lustre/llite/vvp_dev.c
@@ -286,7 +286,7 @@ static void vvp_pgcache_id_unpack(loff_t pos, struct vvp_pgcache_id *id)
 
 	id->vpi_index  = pos & 0xffffffff;
 	id->vpi_depth  = (pos >> PGC_DEPTH_SHIFT) & 0xf;
-	id->vpi_bucket = ((unsigned long long)pos >> PGC_OBJ_SHIFT);
+	id->vpi_bucket = (unsigned long long)pos >> PGC_OBJ_SHIFT;
 }
 
 static loff_t vvp_pgcache_id_pack(struct vvp_pgcache_id *id)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

