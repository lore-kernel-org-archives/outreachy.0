X-GM-THRID: 2862283227136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c03e4650c4d63c89,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.160.3 with SMTP id xg3mr1480657lbb.5.1424710979181;
        Mon, 23 Feb 2015 09:02:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls61967lae.7.gmail; Mon, 23 Feb 2015
 09:02:58 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr1504296laa.2.1424710978634;
        Mon, 23 Feb 2015 09:02:58 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ew5si736772wid.1.2015.02.23.09.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 09:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id k14so5049wgh.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 09:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0uaUXLUJLPq1RpaPEwaLLuwzRYKxzEXqtdzsBCy1k1A=;
        b=nWyreAnfYgkzUPoao42XF3UfOG7EefvroUkY+lyjS2kpTWeaSB7ebdEKxqMm6fPZwK
         2G5RbXxMJvikXnNkQDth0N4rkxUow0pW5zo5tR61F4BAUFcDG1+34MwgfUOrywfaYdzZ
         M6NdIddIdZksxGuYNJ+Wdu6hQwWkOoYdE1Vmyvby5A361m4TgIdtX9URxs1yfgnbH43w
         42CQUN6FscMvwMYpi2MoNJhyFG0geWu3gna9MO0LUFKcbscaOU7OywiKCYGTfL64BrIs
         Wkr6MhojbK+/NTzd7v0UsrT6hzqvRbCqrFndz+2M6OmdA866cvSWY6HOFeHF+OqDPgLA
         aVUA==
X-Received: by 10.194.192.167 with SMTP id hh7mr24355891wjc.151.1424710978506;
        Mon, 23 Feb 2015 09:02:58 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id d10sm56381432wjn.45.2015.02.23.09.02.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 09:02:57 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: octeon-usb: Remove space between function name and '('.
Date: Mon, 23 Feb 2015 18:02:50 +0100
Message-Id: <1424710970-3454-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes the space between function name and '('.
Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 1daeb31..0408a12 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -412,7 +412,7 @@ struct octeon_hcd {
 		type c;							    \
 		while (1) {						    \
 			c.u32 = __cvmx_usb_read_csr32(usb, address);	    \
-			if (c.s.field op (value)) {			    \
+			if (c.s.field op(value)) {			    \
 				result = 0;				    \
 				break;					    \
 			} else if (cvmx_get_cycle() > done) {		    \
-- 
1.9.1


