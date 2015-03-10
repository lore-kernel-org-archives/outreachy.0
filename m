X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.29.66 with SMTP id ju2mr8043932wid.1.1426007155963;
        Tue, 10 Mar 2015 10:05:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.101 with SMTP id nb5ls773565wic.17.canary; Tue, 10 Mar
 2015 10:05:55 -0700 (PDT)
X-Received: by 10.180.11.34 with SMTP id n2mr5345783wib.2.1426007155662;
        Tue, 10 Mar 2015 10:05:55 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id l8si1112107wia.0.2015.03.10.10.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id k14so3291430wgh.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kHmoHAGer7ZMz7W7gP/k3iavpS5/0ULNj2Npr8d+ezY=;
        b=aNbyPU5SHD+pl3LZgKThGYZnYWu2QPXEvYgrs6zRKpMO3xjQzj2GJv1iGj19+I0Fet
         yjx0/MLnK8D/CpXRORV5Y8QnBxq/eWEEXCbA6MUnF5JWr4dYcbqJYyi8biEMNjGMwL35
         T6NEuHQ4mEOZtmC2K6amersiULjou7F79PnxGCN+Iuc5l+cp/lSDPvZNrQiwKgk+9twV
         PC7ZhlYZsU/56d8w2a0CMzDmPCh+oFHrMiGTlqE0JAWnmcnBmNQ+eQPDnhON7LPqfnKO
         R86rgcYX6VFVTndu7ojAH1xuiYE0TRuMVfav017v2vwoVn4p/jUzQrnYDZxuZH+mzsIl
         7KQg==
X-Received: by 10.194.189.138 with SMTP id gi10mr71696697wjc.86.1426007155569;
        Tue, 10 Mar 2015 10:05:55 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id y14sm1680560wjr.39.2015.03.10.10.05.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:05:54 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:05:52 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 14/20] staging: fbtft: fb_hx8353d.c: remove extra parentheses
 around function arguments
Message-ID: <be33b419b0c63cc8e67b63e4ec723678d7687933.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_hx8353d.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_hx8353d.c b/drivers/staging/fbtft/fb_hx8353d.c
index c9512dc..ca52465 100644
--- a/drivers/staging/fbtft/fb_hx8353d.c
+++ b/drivers/staging/fbtft/fb_hx8353d.c
@@ -112,7 +112,7 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x36, my | mv | (par->bgr << 3));
 		break;
 	case 180:
-		write_reg(par, 0x36, (par->bgr << 3));
+		write_reg(par, 0x36, par->bgr << 3);
 		break;
 	case 90:
 		write_reg(par, 0x36, mx | mv | (par->bgr << 3));
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

