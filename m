X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr3536806wic.3.1424943840199;
        Thu, 26 Feb 2015 01:44:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls11428lal.74.gmail; Thu, 26 Feb
 2015 01:43:59 -0800 (PST)
X-Received: by 10.152.29.97 with SMTP id j1mr1135782lah.3.1424943839833;
        Thu, 26 Feb 2015 01:43:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id ew5si83289wid.1.2015.02.26.01.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id a1so8842547wgh.12
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=irHl3kotweGjf0kddTzKDIoC8QzC6cXXHsg0+EL+2zo=;
        b=NI4+ovmnsMEWq4bP5x7USdVQgHyJU5DnzzuzPtUICe8jo1Nk6fhTw+F4HCbxOyIyQn
         /DkqHLocNu5KKuQNcwxj/uqeLay6snSNPFNTsrmPIZ8mWQ0D2vb5jr6MbHMcvvsDFPNB
         RXJLNQEbyVqFyDTSuv1QBEosUF0RInF1WVsSxJiN249bDBJ8hH64dXD+2yYnm+0+h3I0
         6vL4ry8hmj28AkeBGUAQxiZuhrDm7y71L5AKy76sqMGwOj/Cq5HfSBI47P79o8Im4/FY
         bVtvCYx8NVY2e5PAS3CIzmi+OUvKLbhbgBOwuoUPUQkd9V4WxIDUfRQphrgxy6WqWxbH
         xApg==
X-Received: by 10.180.211.235 with SMTP id nf11mr15075962wic.52.1424943839670;
        Thu, 26 Feb 2015 01:43:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id m4sm1950479wik.20.2015.02.26.01.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:43:59 -0800 (PST)
Date: Thu, 26 Feb 2015 11:43:54 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 18/24] staging: media: davinci_vpfe: rewrite the right hand
 side of an assignment
Message-ID: <6e2387dc087a7c1f62aedb3280cea5bd608b5792.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 87d42e1..878abdd 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -212,7 +212,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		pr_err("ipipeif: links setup required");
 		return -EINVAL;
 	}
-	val = val << ONESHOT_SHIFT;
+	val <<= ONESHOT_SHIFT;
 
 	ipipeif_source = ipipeif_get_source(ipipeif);
 	val |= ipipeif_source << INPSRC_SHIFT;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

