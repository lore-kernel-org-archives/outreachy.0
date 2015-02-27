X-GM-THRID: 4279059349504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,83014de4c5b83dfe,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.168 with SMTP id r8mr87320wiy.6.1424999221447;
        Thu, 26 Feb 2015 17:07:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls113396lae.7.gmail; Thu, 26 Feb 2015
 17:07:01 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr1701945lbb.20.1424999220998;
        Thu, 26 Feb 2015 17:07:00 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id i7si25380wif.0.2015.02.26.17.07.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 17:07:00 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id w55so16167218wes.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 17:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8J2tiEqZr/x0m8MgxXFriN7Vjv9dELNYWjB6/lzG480=;
        b=gP4GCxeePwY9AgjwZrgETYD/TfxgUmXXGgTBFd/MN1dJmo8SPZkkS05E9ncQGWNmhH
         9j4u4DHwdSef91RLcF/eUDXxQxXduF8SZXd4tei4tAX+XQ49JxCLFDGwsu8r8C0o3kaf
         2Y7LsXItivkED1NwwsncFTwwDys4NcZNP0DyzuneCNpyVQ70pa2/KsQ7GsXMPp/dAZA5
         KvwNXtnAKiy7WRtcb++1sAx7Nt8oJ3VxiLOIRnl1Az3XEoo4xHFSjpkW/yXHRJBmwdta
         /IOnXcWyEImv1bIxhWaAPBz2TM5b2U+2+aAiCo4AosJt3D7LBVLp7pbZUWLGQlMGgQJw
         pZaA==
X-Received: by 10.180.208.4 with SMTP id ma4mr1461212wic.36.1424999220916;
        Thu, 26 Feb 2015 17:07:00 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.5])
        by mx.google.com with ESMTPSA id b4sm596578wic.2.2015.02.26.17.06.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 17:07:00 -0800 (PST)
Date: Fri, 27 Feb 2015 03:06:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vt6656: replace memcpy by ether_addr_copy
Message-ID: <20150227010653.GA11049@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl warning:

Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
__aligned(2)

The changes were applied using the following coccinelle
rule:
@@ expression e1, e2; @@
- memcpy(e1, e2, ETH_ALEN);
+ ether_addr_copy(e1, e2);

All variables defined in vnt_mac_set_key start at even offsets
making the variables aligned to the u16 datatype.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: adding a missing header

 drivers/staging/vt6656/mac.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index bb37e33..5dfac05 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -30,6 +30,8 @@
  * Revision History:
  */
 
+#include <linux/etherdevice.h>
+
 #include "desc.h"
 #include "mac.h"
 #include "usbpipe.h"
@@ -126,7 +128,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
 
 	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
-	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
+	ether_addr_copy(set_key.u.write.addr, addr);
 
 	/* swap over swap[0] and swap[1] to get correct write order */
 	swap(set_key.u.swap[0], set_key.u.swap[1]);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

