X-GM-THRID: 6256411228025913344
X-Received: by 10.31.154.65 with SMTP id c62mr9843619vke.8.1456684253512;
        Sun, 28 Feb 2016 10:30:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.212 with SMTP id 203ls1053022ion.98.gmail; Sun, 28 Feb
 2016 10:30:52 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr9835850pfj.11.1456684252494;
        Sun, 28 Feb 2016 10:30:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id yd9si3122665pab.1.2016.02.28.10.30.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 10:30:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so78826548pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 10:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MBxhjVgcgKukIqThM6VpO4bryxrczrasS5v+DKlSlMQ=;
        b=s9oUMZ7GObYxpJzo3NgzFYtepU4D1t/WMLm6OXtZYm1wDW9/vtJFS8h32pLcyaNUoS
         0134VaJi6HWd5RUm+UqYBpmukuOqA+Yop4bZSaotjAsp/5oBHQXkjyCyp2SQFmEIFPbb
         US370kbfVEr1E32pXOkU/iOM9/wgl1c2FGIiYtG+DGZnY3F/kWsxtBVAK0N0kGSVjPmK
         qORdMYy3pwaV1HcftUF7jf2+4dLKPP9rI9Y8a7pj5enIgaYXcgrOkjVo0qXTFvOeCiPn
         F6rYH7VxCp7SadS5/dGmHdexG9oHP+EVCrDMfvtd/5joA+L73Jt6DzAixWR0fhGdLjWR
         QZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MBxhjVgcgKukIqThM6VpO4bryxrczrasS5v+DKlSlMQ=;
        b=GbID4+WME77MC83QD0ZTIKf0kZrgIIx3zMf1AiqLJeovOZ7z6uhmpGcRJjoAZzvH0K
         skfCX+2H4tqXbQB+wH2HepcxjaxLZHhjCJ+T82VERA5MgdmjN6cG2PSEHF5euzBKUm1G
         ODJLWJRaWP+0hWxLIbqfgBV7ymnKFFVBPNJUdMXEVyUiRRTdG4htH+7oi/l+2m83tTt7
         dxnUnFdcfws1qNuM62x+xpsyUals+husXnBR5QlbxGewNorAmvfq9yHNEIziLOolmRKA
         gB0Ma3n0tWPa8m/dTKZR9HfZnln8KPKNwkpBIHvamZ/hqFnBSG1yMxSzFgGv+azPpWVf
         w7wQ==
X-Gm-Message-State: AD7BkJJ/9z3t/u+7rK+6+HBpnbxM/rDEoVImXP1WMmbeW3Yx57cxmZMbnoL6b4EnkAwDCA==
X-Received: by 10.66.193.202 with SMTP id hq10mr16654389pac.6.1456684252301;
        Sun, 28 Feb 2016 10:30:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q2sm8985664pfq.88.2016.02.28.10.30.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 10:30:51 -0800 (PST)
Date: Sun, 28 Feb 2016 23:58:05 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fsl-mc: bus: Eliminate double function call
Message-ID: <20160228182805.GA30160@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

A call to irq_find_matching_host was already made and the result
has been stored in mc_msi_domain. mc_msi_domain is again reassigned
using the same function call which is redundant.

irq_find_matching_host returns/locates a domain for a given fwnode.
The domain is identified using device node and bus_token(if several
domains have same device node but different purposes they can be
distinguished using bus-specific token).
http://www.bricktou.com/include/linux/irqdomain_irq_find_matching_host_en.html

Also, of_property_read_bool finds and reads a boolean from a property
device node from which the property value is to be read. It doesn't
alter the device node.
http://lists.infradead.org/pipermail/linux-arm-kernel/2012-February/083698.html

Since, both  the function calls have the same device node and bus_token,
the return values shall be the same. Hence, the second call has been
removed.

This was done using Coccinelle:

@r@
idexpression *x;
identifier f;
position p1,p2;
@@

x@p1 = f(...)
... when != x
(
x@p2 = f(...)
)

@script:python@
p1 << r.p1;
p2 << r.p2;
@@

if (p1[0].line == p2[0].line):
  cocci.include_match(False)

@@
idexpression *x;
identifier f;
position r.p1,r.p2;
@@

*x@p1 = f(...)
...
*x@p2 = f(...)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/fsl-mc/bus/irq-gic-v3-its-fsl-mc-msi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/irq-gic-v3-its-fsl-mc-msi.c b/drivers/staging/fsl-mc/bus/irq-gic-v3-its-fsl-mc-msi.c
index 4e8e822..720e2b0 100644
--- a/drivers/staging/fsl-mc/bus/irq-gic-v3-its-fsl-mc-msi.c
+++ b/drivers/staging/fsl-mc/bus/irq-gic-v3-its-fsl-mc-msi.c
@@ -118,8 +118,6 @@ void its_fsl_mc_msi_cleanup(void)
 		if (!of_property_read_bool(np, "msi-controller"))
 			continue;

-		mc_msi_domain = irq_find_matching_host(np,
-						       DOMAIN_BUS_FSL_MC_MSI);
 		if (mc_msi_domain &&
 		    mc_msi_domain->host_data == &its_fsl_mc_msi_domain_info)
 			irq_domain_remove(mc_msi_domain);
--
2.1.4


