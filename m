X-GM-THRID: 6339031714709372928
X-Received: by 10.157.10.80 with SMTP id 74mr6055323otg.125.1475920834143;
        Sat, 08 Oct 2016 03:00:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.73 with SMTP id t70ls1942989ita.5.canary; Sat, 08 Oct
 2016 03:00:31 -0700 (PDT)
X-Received: by 10.98.37.2 with SMTP id l2mr1172383pfl.29.1475920831748;
        Sat, 08 Oct 2016 03:00:31 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ua1si6568886pac.1.2016.10.08.03.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 03:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so2627988pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 03:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vYwQp3NW1XrH0DErzkc6sn0wFK1bsjEwReURFeIAF8o=;
        b=MwQQAkGZSg/C9W0RVL9tSYsaKVXmy9GNGkh1nQpAEJfuu2GZXPlVN5zIU+f6e9KeQ1
         Y3KprsqDdezYh8x7sxOcpu+5YqhZLTiqTqgTJHnc4pGa0XUvnTqyA9aKlB3KS9ObI/iE
         /pJzh8jP+qQgKP5XoFmeMDCGZMMjyMYf4z3E8sAW+XY7isOi9fTnLWjjwYGWNSWhwphe
         p47kfI9bo0cQ14iXrn2bSUCa15bgRu2Tup/SeZVjf9Mq6NSNWdNHbXuVF2p+AsJoy8ik
         vJUyy63AlDhVtDwsGlLZIEbZVnygfAQqlJO8d0ThYzO3uBL1GttvrWwbbe1oYds6gU7v
         /mlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vYwQp3NW1XrH0DErzkc6sn0wFK1bsjEwReURFeIAF8o=;
        b=jJpmHr3RPHlCJC1F98qNHGEY7X2Vi3Y+FPg1EebVZMIlclH6YvUx/e3lxZ0DPsA1oj
         oMC9QlTue2sRwAbME1c7yQ1S5TpgseUL/SP1Qn+FV9JqNNMy9cWYZEgI9gAxAoAixX57
         1VI3CGLxGxudKGHoUUvY0Mtep2Dg3S+rCChe9C+1W9G3KosFqnMXp0oqFYKe8y/rLwfv
         zs2UqyMXll5EqHG/et1vzv2JmRvuBgD4KQfgD5F6ZAxCTq5sPwVowStbIrCj5P4tpmld
         KvmEHdqAxVWRsh0kRVe2F1NuA2qLrjZPQu6q139L8lij/uYBc3HVIDlpPWD629XzqOJe
         Xd4Q==
X-Gm-Message-State: AA6/9RkoVcYV3yAgnbOK4IjZIPnIXSFLfqvm/FS4MX2my02O0/Ehcgag1xDRxIcDT/KBKA==
X-Received: by 10.98.1.138 with SMTP id 132mr35619505pfb.69.1475920831578;
        Sat, 08 Oct 2016 03:00:31 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.135.221])
        by smtp.gmail.com with ESMTPSA id ao5sm37131875pad.1.2016.10.08.03.00.05
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 03:00:29 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 15:29:55 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Remove useless type conversion
Date: Sat,  8 Oct 2016 15:29:54 +0530
Message-Id: <1475920794-18514-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p;
t a;
@@
(
- (t)(a)
+ a
|
- (t *)(p)
+ p
|
- (t *)(&a)
+ &a
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 1040f6e2..6391220 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -460,7 +460,7 @@ static void _nbu2ss_ep_in_end(
 		if (length)
 			_nbu2ss_writel(&preg->EP_REGS[num].EP_WRITE, data32);
 
-		data = ((((u32)length) << 5) & EPn_DW) | EPn_DEND;
+		data = (((length) << 5) & EPn_DW) | EPn_DEND;
 		_nbu2ss_bitset(&preg->EP_REGS[num].EP_CONTROL, data);
 
 		_nbu2ss_bitset(&preg->EP_REGS[num].EP_CONTROL, EPn_AUTO);
@@ -1851,7 +1851,7 @@ static inline void _nbu2ss_ep0_int(struct nbu2ss_udc *udc)
 
 	status = _nbu2ss_readl(&udc->p_regs->EP0_STATUS);
 	intr = status & EP0_STATUS_RW_BIT;
-	_nbu2ss_writel(&udc->p_regs->EP0_STATUS, ~(u32)intr);
+	_nbu2ss_writel(&udc->p_regs->EP0_STATUS, ~intr);
 
 	status &= (SETUP_INT | EP0_IN_INT | EP0_OUT_INT
 			| STG_END_INT | EP0_OUT_NULL_INT);
@@ -2124,7 +2124,7 @@ static inline void _nbu2ss_epn_int(struct nbu2ss_udc *udc, u32 epnum)
 	status = _nbu2ss_readl(&udc->p_regs->EP_REGS[num].EP_STATUS);
 
 	/* Interrupt Clear */
-	_nbu2ss_writel(&udc->p_regs->EP_REGS[num].EP_STATUS, ~(u32)status);
+	_nbu2ss_writel(&udc->p_regs->EP_REGS[num].EP_STATUS, ~status);
 
 	req = list_first_entry_or_null(&ep->queue, struct nbu2ss_req, queue);
 	if (!req) {
-- 
1.9.1


