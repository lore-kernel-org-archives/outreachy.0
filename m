X-GM-THRID: 6805854420924891136
X-Received: by 2002:a2e:9852:: with SMTP id e18mr1584581ljj.249.1584611465570;
        Thu, 19 Mar 2020 02:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8189:: with SMTP id e9ls177752ljg.4.gmail; Thu, 19 Mar
 2020 02:51:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsD7ovYw3Q9/lBqkYNLz1XTMdPp58zpjbmyVgxPTH7J0FA1jVi+q6xO96geBVo0+e2l3YEt
X-Received: by 2002:a2e:b801:: with SMTP id u1mr853524ljo.84.1584611464309;
        Thu, 19 Mar 2020 02:51:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584611464; cv=none;
        d=google.com; s=arc-20160816;
        b=zUi08f3caPTVeMDYNGA8hdAnyzcPQzjhkNuJeYL+fEdBaOsQhg+yHHWdQuMT9dMcKO
         fSBvfCaAsnONWg3aitGAt+v09Fi5S/HtJQhTUNFfDaTLUtYGiFJzg/jApiKbm0yTdIQj
         83amfOfajvxHcNbwRWi/374XRaadsIOxjbfYdFTTbLrguMFccoihzjANO9hEiH6RWcO6
         aXiZMKgq9u86Q+dDI3PyHO/QuzmkgVkMxFyNgZB86+YDk1azwly2RX6weZG1XyLnxrcE
         n1RPdg1M4/lHunVO+KSAIY6Rz9BK1UWVeMaSHY9qGXJFAwj5XYRo9Oygh4SeEim983tf
         3daw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=xGTQdl/hIslRsmaHvn6oxcZLaKuid6Sv8ckL1bYVdOM=;
        b=Alm4HSSw59yxqXQab1Kdw+w9OCIsKHBDkagArS+NpkPHo76Wxw11uGiyMwmqLvkeSB
         GA4PRxWDJb5p3l/HEHqIqXsVFkSvxJKUFzo3dNwsMenba7p5BSDo0ZhvbC7gynFjiixk
         RNCKXsX+HeVrdeEXIx6OKvJFDsM/ok/0LlS1KTOdtyu62egMmT/UkBeA8EiTYWp8USys
         7Fy9W6XdeuCfTh8DMScBD5N6kH2nng69NrHV+TmBCXYQWl5+D/LnFyPG9kvFG6I1QaLg
         N4CwxQj2YShMq2R8fR0HBbotqUM+qxNQVVdHxS45keBMJAE3UUe9EDe+hF0njQdUCgoh
         JSRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id w6si67322lfa.1.2020.03.19.02.51.04
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26679 invoked from network); 19 Mar 2020 09:51:01 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:51:01 -0000
Date: Thu, 19 Mar 2020 15:20:52 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5] staging: sm750fb: Fix of long line in makefile variable
Message-ID: <20200319095024.GA2970@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

A simple fix of long line in makefile variable assignment.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v5:
 - By error sent the previous revision without changes
 - Really changed the subject line
Changes in v4:
 - Correct subject line to be precise
Changes in v3:
 - change make variable definition using a clean style
Changes in v2:
 - Make the subject line imperative one
---
 drivers/staging/sm750fb/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
index 1cf3849cef23..b89aa4c12e9d 100644
--- a/drivers/staging/sm750fb/Makefile
+++ b/drivers/staging/sm750fb/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_FB_SM750)	+= sm750fb.o
 
-sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
-sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
+sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o \
+			   ddk750_chip.o ddk750_power.o ddk750_mode.o \
+			   ddk750_display.o ddk750_swi2c.o ddk750_sii164.o \
+			   ddk750_dvi.o ddk750_hwi2c.o
-- 
2.20.1


