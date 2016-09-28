X-GM-THRID: 6335831660956745728
X-Received: by 10.28.206.2 with SMTP id e2mr63488wmg.0.1475175763863;
        Thu, 29 Sep 2016 12:02:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.22.77 with SMTP id 74ls39760wmw.15.canary; Thu, 29 Sep 2016
 12:02:43 -0700 (PDT)
X-Received: by 10.28.203.10 with SMTP id b10mr14446wmg.17.1475175763425;
        Thu, 29 Sep 2016 12:02:43 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c13si5447wme.3.2016.09.29.12.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b4so181638wmb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 12:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=528HImrCiKN+iGNEjDxoFJyI70uhswdVrPsCEMCQUig=;
        b=hvBLFn2EXXD2ELczANIRIKnwo+GTq0IhOrd8AR61iVu7SdTXZbtDgllv2i5IqUxinq
         GDuW5m301rWQ3PJxsuC5K36bgXaor/RLJblM2OBGfrUGnUSxBDF9KM9uG2ySTmm8Iq7q
         3kA/yXdIbWWAuAuT90PEQscFZEMuDH4HkpXKV86hSnlMn38IIua/5NiMjMUfVIw/sRS1
         aO6AYIuh/GMud7wlw2DvxojaF4zaa8K1siF56u7GmEfkBT3CTnm7HDLR5qDeWyrfroaP
         P3EnJDnRcFxhc011Gbx/ua51AgCFr4FDG+/GRk0B4PYpQGYrftsR5EpaI/3t/AripKJ0
         YAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=528HImrCiKN+iGNEjDxoFJyI70uhswdVrPsCEMCQUig=;
        b=IGglO1yrD4pvd/FUWbTuEk7ALEjzuCneOR6aw+QqcmKTvb6iaXNiXOUM+tLLzS2piY
         oDZR49m+SeEln1UIv+2rQQ5LOEOWjXFJygrduKXIL3bgTLIpLF6kjlpxV9yvH1zrr03t
         muaXGTzgh4KI5lYscaDUAeVN6cWIVFNZ+7A2QB5u+5cPSxsByIiXV54UdatndG0KansI
         +s+Xljp7C49XXWX4PjaA/bwA/SyUie0o9wn24770cwJpoSLsaJTzu7YFBEe5vWaBJvmt
         5Jl2R+F6Al5BGjJq+a7GJDQE9hA4mZxJt+NcGO6cUrckFZQO1GCJfeZRF2boOfUqb1Q/
         LizA==
X-Gm-Message-State: AA6/9Rmuet+i7dlUMS7mvAZw9I+HGowHhu/scfMwExR85nxXGy09cgPNkggRbzewG2E2Pw==
X-Received: by 10.194.103.3 with SMTP id fs3mr2790839wjb.115.1475175763188;
        Thu, 29 Sep 2016 12:02:43 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (71.red-83-32-143.dynamicip.rima-tde.net. [83.32.143.71])
        by smtp.gmail.com with ESMTPSA id gg10sm15669501wjd.4.2016.09.29.12.02.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:02:42 -0700 (PDT)
Date: Wed, 28 Sep 2016 15:27:57 +0200
From: Keila Novo <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Add a paragraph that describes the config simbol
Message-ID: <20160928132757.GA28908@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This Linux Kernel configuration item is a part of the a
 collection of configuration options which are organized in a tree structure.
 This item like the others has its own dependecies and depends on others too.
 In the description I add an explanation of which are the three dependencies
 that STAGING_BOARD depends on and they have to be visible/avaible to
 STAGING_BOARD dependency be avaible/visible too.
Reply-To: 

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/board/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
index 8951531..006b134 100644
--- a/drivers/staging/board/Kconfig
+++ b/drivers/staging/board/Kconfig
@@ -1,7 +1,7 @@
-#These a Linux kernel configuration item.The items we can configure are:
-#OF_IRQ is an interrupt requests item
-#OF_ADDRESS is an device address item
-#CLKDEV_LOOKUP is clock lookup from devices tree configuration item
+#These is a Linux kernel configuration item. STAGING_BOARD directly depends on
+#OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP.
+#It will only be visible, if OF_ADDRESS, OF_IRQ and CLKDEV_LOOKUP are different
+#from 'n'.
 config STAGING_BOARD
 	bool "Staging Board Support"
 	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
-- 
2.7.4


