X-GM-THRID: 6615419425157808128
X-Received: by 2002:aa7:828e:: with SMTP id s14-v6mr21374874pfm.15.1540323133519;
        Tue, 23 Oct 2018 12:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8a54:: with SMTP id y81-v6ls1942409pfd.11.gmail; Tue, 23
 Oct 2018 12:32:12 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62aTJanwdWrMLw+W+q0vQPqfeMujW9I5JRZokn4e+3i4jsCqDlW5RSQtb4a3FFdDNpzFkob
X-Received: by 2002:a62:44c3:: with SMTP id m64-v6mr26521431pfi.48.1540323132698;
        Tue, 23 Oct 2018 12:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540323132; cv=none;
        d=google.com; s=arc-20160816;
        b=drGxdSuiaLfD/bZfywLwvpL9llyv2rBfeY6oID2isrWzonagC8bCF1caDm3SEFHZGS
         lYg4cNOoid/dU2PkbfMY5Vc3hKin3a8teFyQ0yI3Tub22bEND0LPYhdgcyhjujqA0yUS
         kF2SOtjWQl67ADl3wAGEtwAIA5jDXIBrQVZxUy23S5m+kunAK3FmR3jmHpofWK60ysIt
         pP0q/QZ4wMidG/CBbEliCVSt/8g9nwLJWmOoKZwYn3C62wPkiyktSnNXck/S0MtQc31b
         C80yAKMPtom7iPAxpLFRU69fqI/Ux2EFZK8o/iHuo2w4QgWZTmuZqw86GayXX07C38R+
         8gzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=k7wRywZal5tZkfp4iNr5/9ES1DWPJg2BFOqZjtdFYkY=;
        b=wpRkli2DnqiQ9EZXOnWdU8oMb5ntqEo/J+L54hiGHshDq7r7JOFDKjEzC11d2xq5qh
         Yv6xUVvtOYg6UVF+bTDqMW5v7BE7AqawYrp35H6ChHljP/aC9llj3ERa6nF9XHJEQPMo
         AKqbdmqxZlRa82+ni/cqwWzRFDjuvKsDS3bmHwpFOKvdX9l9WbnnMR7lxQfzitGoUOu8
         UXKY+ECP9NBu6TqyJSink7Xw4rDz6hDh8yBrY1VUc8D6Q/e3nGKXvuWaIDhi0FRkAan7
         jmhZScJyrOzKhieroKGtAK5P6DZZzqYlueHl71jSgQEiTnKVFXsRQ+6l10drn5LBKTpy
         CWgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EksXl7Vk;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <turnerzdp@gmail.com>
Received: from mail-it1-x131.google.com (mail-it1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id r130-v6si122906pgr.2.2018.10.23.12.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 12:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EksXl7Vk;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x131.google.com with SMTP id e81-v6so2384455itc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 12:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k7wRywZal5tZkfp4iNr5/9ES1DWPJg2BFOqZjtdFYkY=;
        b=EksXl7VktoqLe83GG+idPhPLYt7Doi2V6LqdwBroAhB6E48NZxEGN6LdvpvB6SzncY
         0lIeWxroVyO/qTWWYk3ad+QjAhC+wm6ZWUZLW0/IlhW0bGHOcQGJh+F8+R4Ml1ufC9HW
         iBvL1hfevSRIa6K4/slMhwBqKCPhR3z/4nDUInPf1jK9r0yqzmju6a9EZFVa4tcrDgXZ
         JwMzTkyFCRNFCW3BPrtuSfBZ8UUfV0iZnchb8aOpMQHa+x2ttLiQWjn+iErLcXAB8K/5
         NJUYo5O0uxgYEgLCM7cszG4jKptY8rUEN5ruRhZLINCFX9rIINt5uSc6dYn1QkmvB9DM
         s5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k7wRywZal5tZkfp4iNr5/9ES1DWPJg2BFOqZjtdFYkY=;
        b=IrnSDTAEYJkLZob5kqhjSq/1YXA07fuT2eyGh9aniSomm0E0avjXlC/Zc+Y1kWbclT
         LPPu59MYIVQwrR8eOzfyer+74Hxtzsm5D/UIGw7kFMJ7UFPbbgilWMkFwdn9ZwJZXmbO
         t2+4Su+12AXfxkZhqh1dLs8E6gBQpFlFWfSIS2/1W1L1nrrxFOp4ZAfj2Jmo5IdOhRIY
         M42lZJUUlKNo1Dramj4i61RXl5K5RomH6hK8OgGYXkAZhnmfO0LV/IcxMb+ZBjVQIN/8
         V//DqZ7TPIUjhADW3SkRYiOKYDyxXxv/0S82zUdblRcsJXIBomAe4jPR0SL5PFHri69F
         t87w==
X-Gm-Message-State: ABuFfoi1e6tOk4yTcPPMY/NiaEPyEfrme2dKmk4eLbJ+vylSghfYZR2F
	TM+S9mEtOBqz+0ERl9jn1/ZBQm8KCkQ=
X-Received: by 2002:a02:5f5a:: with SMTP id r87-v6mr39233523jab.22.1540323132166;
        Tue, 23 Oct 2018 12:32:12 -0700 (PDT)
Return-Path: <turnerzdp@gmail.com>
Received: from venus ([2601:285:300:e6d0:b8aa:85e3:42c7:79a7])
        by smtp.gmail.com with ESMTPSA id 10-v6sm2136696itl.32.2018.10.23.12.32.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 12:32:11 -0700 (PDT)
Date: Tue, 23 Oct 2018 13:32:10 -0600
From: Zach Turner <turnerzdp@gmail.com>
To: gregkh@linuxfoundation.org, hwentland@gmail.com,
	manasi.d.navare@intel.com, daniel.vetter@ffwll.ch,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Add SPDX-License-Identifier - Style
Message-ID: <20181023193210.GA32104@venus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add SPDX-Licens-Identifier tag to the start of the file. This is
a coding style change which should not impact the runtime code execution.

Signed-off-by: Zach Turner <turnerzdp@gmail.com>
---
Changes in v2:
 - Remove the boilerplate license text
 - Fix SPDX identifier to be GPL-2.0

 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index bc45cf098b04..07980c0b8a14 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -1,12 +1,7 @@
-/*
- * Host AP crypt: host-based CCMP encryption implementation for Host AP driver
+// SPDX-License-Identifier: GPL-2.0
+/* Host AP crypt: host-based CCMP encryption implementation for Host AP driver
  *
  * Copyright (c) 2003-2004, Jouni Malinen <jkmaline@cc.hut.fi>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation. See README and COPYING for
- * more details.
  */
 
 #include <linux/module.h>
-- 
2.17.1


