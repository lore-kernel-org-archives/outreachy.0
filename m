X-GM-THRID: 195205005312
X-Received: by 10.181.13.236 with SMTP id fb12mr3710329wid.1.1424203260438;
        Tue, 17 Feb 2015 12:01:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls768011wib.37.canary; Tue, 17 Feb
 2015 12:01:00 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr3833064wjc.3.1424203260126;
        Tue, 17 Feb 2015 12:01:00 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com. [74.125.82.179])
        by gmr-mx.google.com with ESMTPS id l8si6013878wia.0.2015.02.17.12.01.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 12:01:00 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.179 as permitted sender) client-ip=74.125.82.179;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.179 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f179.google.com with SMTP id w62so579201wes.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 12:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CRNcBRUcjQ5OELDtZVev6mHip/p2DD8e7eJMlIW3ysI=;
        b=bsDDCn7E7oJEhhyBjJPdaruC3N13GO8ZwgXFzwZ2+HV5eGTdEfbCM8I1LUE87l/Y7p
         l6ahjU+RlP0M6Avy6F33UTHMd4dYqUxtzLZMXtAkQY6JWeZEX2N4mU+8UmmK4pFumdZb
         HuW9v7tENYGqjVibxuhsDOmI3+yi+kGWITxIiQEYtX344dbWE6YhGpbqhiH7u5IZ4Tl4
         xeJkyzHvfl3PiAfWVjiYzpc7y6+2+0dgzqHDPKDfMLDbfZCeluwc7d5ulCIKDJ6HxJPV
         IWTwKuIVNncYkkVupREw0ndBeVVh42Bzny+iI+zYcnySIydACt8aeAs6XqSZrLug6E9k
         Pisg==
X-Received: by 10.180.35.33 with SMTP id e1mr59271094wij.49.1424203259942;
        Tue, 17 Feb 2015 12:00:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.235.9])
        by mx.google.com with ESMTPSA id hi6sm28840910wjc.34.2015.02.17.12.00.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 12:00:59 -0800 (PST)
Date: Tue, 17 Feb 2015 22:00:55 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: replace memcpy by ether_addr_copy
Message-ID: <20150217200055.GA11277@localhost.localdomain>
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
 drivers/staging/vt6656/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index bb37e33..5958ecf 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
 
 	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
-	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
+	ether_addr_copy(set_key.u.write.addr, addr);
 
 	/* swap over swap[0] and swap[1] to get correct write order */
 	swap(set_key.u.swap[0], set_key.u.swap[1]);
-- 
1.9.3


