X-GM-THRID: 6332110016814776320
X-Received: by 10.200.55.55 with SMTP id o52mr4547427qtb.66.1474309397571;
        Mon, 19 Sep 2016 11:23:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls225221oty.10.gmail; Mon, 19 Sep 2016
 11:23:17 -0700 (PDT)
X-Received: by 10.157.29.38 with SMTP id m35mr89480otm.7.1474309397196;
        Mon, 19 Sep 2016 11:23:17 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si5091001pab.2.2016.09.19.11.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so7290928pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HC0FK47FGZ0Sc+Lp0hTXaUPDQNSt+bgyVb3hOygC2BM=;
        b=gcBlScC+kaHudHx16HIunzSffQGFGf4SXRtD3h7Q7S2tSTay0WbresZRDjT1057ROg
         xsH8V9PIGotnaXq+APdp1alWEuJQwJbuF4kiLv7l0fMmFX3ksT99MWfAnIadtAUGZygg
         0pyHA6pimbhslOLF1oYbo7pz44Nyqo5mCZwGq7Enj9t9zPtULtHsqxcIw71TJ604Ai43
         717Wam1nqtdtG0ckNey7DkeB2X7AsMSkC+sxeGABOUxiG7UamXsR1iGPr7dHogHE4IBR
         NYgnxwDS+91Hs9w9F4J2gmnfVrJs1DP0Us+YvoSCAzxEahGy+3pDY2RO6AUdo0b9GRLV
         /pjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HC0FK47FGZ0Sc+Lp0hTXaUPDQNSt+bgyVb3hOygC2BM=;
        b=LMrMnPLKusO1nvv/PjHpqGPHg3u4Dx3Z2ITdvXGATvOAjKm5aKKunLsx7bWWnq52At
         utEMwYNgLbx3HZpMXpiQt4eottGiSSXMmOMtZT7F6fuVSaRkFtD2c7fiZcTmlHQJfFA8
         AWSEk3AiNYmP9yf+4t3qRSoDacp/SLcgTPfPKjjPI1QepgXliftJdTufy2cgXDbZRB7m
         nzTYmKPUPFhjvfmm5J0K/XikNDGZH7hufsEH9esKNz+ipv7WQpO/YnbyNmkzRXMdvsWk
         4boqq/L9zAzIqSsxrXb4RNAHNaWIeV6pvTjX44zxiTNyLBEZi75LMWNvOwNG7dPIqYNX
         shEQ==
X-Gm-Message-State: AE9vXwPouLz8O8nzDhPRWzOgrjnbXLqlCpLHQV3Fg9lkau9DFf6S6sEiMuc8NcXH+ns41w==
X-Received: by 10.66.132.38 with SMTP id or6mr48987277pab.84.1474309396801;
        Mon, 19 Sep 2016 11:23:16 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id y1sm2369142pfd.90.2016.09.19.11.23.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:23:16 -0700 (PDT)
Date: Mon, 19 Sep 2016 23:52:57 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: i4l: act2000: Add a blank line after
 declarations
Message-ID: <d7ff48a90da0a4f23e67e257849f4b7545263fec.1474308584.git.karniksayli1995@gmail.com>
References: <cover.1474308584.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474308584.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch.pl warning:
WARNING: Missing a blank line after declarations

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index bd45d18..4114e17 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -258,6 +258,7 @@ act2000_isa_receive(act2000_card *card)
 					       "act2000_isa_receive: Invalid CAPI msg\n");
 					{
 						int i; __u8 *p; __u8 *t; __u8 tmp[30];
+
 						for (i = 0, p = (__u8 *)&card->idat.isa.rcvhdr, t = tmp; i < 8; i++)
 							t += sprintf(t, "%02x ", *(p++));
 						netdev_warn(dev, "act2000_isa_receive: %s\n", tmp);
-- 
2.7.4


