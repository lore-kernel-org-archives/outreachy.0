X-GM-THRID: 2891853070336
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b1bf655331298113,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.168 with SMTP id r8mr1007124wiy.6.1424712762751;
        Mon, 23 Feb 2015 09:32:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.167 with SMTP id b7ls610369wiy.41.canary; Mon, 23 Feb
 2015 09:32:42 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1480616wid.1.1424712762396;
        Mon, 23 Feb 2015 09:32:42 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id el6si739677wib.2.2015.02.23.09.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 09:32:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id w55so20165126wes.5
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 09:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2exVNxm43KY/Fbt85qym2XfmXv686dwnTH/s0IhYmC0=;
        b=XusfVCFFXNccbCKQy0NF5+uXN5R9ccmwPxaHjYjzzQwAYb8PLCE4XLkijhrxM9ntB4
         KaRSrFTAWNDcuQuAIwK/MO4B9vW2+5lVXoaerQ/I4ekbJmgTL75XC3DTXb+130/+IpK3
         VpSSkNRDLmOa7a+uyJxjNH0urPQoMQ4tMBwFFVNwCblywHdaG50b8aqMTLECbXg9GqyD
         kNJa92WX2MZFhDGjK0vFK/iqhpTWZmFDCwgtD2xTuDm3TP7rbm+eUtQcmCGie+qKthEK
         d6UeeZB9qunUTm7SxJ81+e/0LDihV0GtaqnVGMTGYP6gwezklnqGncwVGdvnYTPw+7Hc
         IW5w==
X-Received: by 10.180.102.73 with SMTP id fm9mr23257503wib.12.1424712762292;
        Mon, 23 Feb 2015 09:32:42 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id s5sm21231284wia.1.2015.02.23.09.32.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 09:32:41 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: octeon-usb: Remove unnecessary braces
Date: Mon, 23 Feb 2015 18:32:32 +0100
Message-Id: <1424712752-3728-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes unnecessary braces. Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: remove braces instead of space.

 drivers/staging/octeon-usb/octeon-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 1daeb31..400a630 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -412,7 +412,7 @@ struct octeon_hcd {
 		type c;							    \
 		while (1) {						    \
 			c.u32 = __cvmx_usb_read_csr32(usb, address);	    \
-			if (c.s.field op (value)) {			    \
+			if (c.s.field op value) {			    \
 				result = 0;				    \
 				break;					    \
 			} else if (cvmx_get_cycle() > done) {		    \
-- 
1.9.1


