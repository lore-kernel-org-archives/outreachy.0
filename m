X-GM-THRID: 6391114226199429120
X-Received: by 10.237.32.45 with SMTP id 42mr5067104qta.59.1488190096967;
        Mon, 27 Feb 2017 02:08:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.90 with SMTP id z87ls1089439ioi.40.gmail; Mon, 27 Feb
 2017 02:08:16 -0800 (PST)
X-Received: by 10.99.136.194 with SMTP id l185mr2450975pgd.82.1488190096302;
        Mon, 27 Feb 2017 02:08:16 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f7si3041769pfk.5.2017.02.27.02.08.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:08:16 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so482183pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/6GSsXf2pERNlC9Ctbr9qr4pl5C/aJHjF4QIfKY2+mI=;
        b=fKSistqBwaUl6qhvTMf38zE4zdbeV+c58xTnPFfGPN6ESBI8h3h3HihhLcMR5/BmIE
         qoLwY+m+I1vjAnc2hYOYW1dijSgLOA01cfFWWcdGKmtLCBZRhslGWu7HOKovzNKOZf5b
         yW6jrP2R0MVZhlH1KWf77xiQXiW++Sm16TiN0GPeWDRZy7KzIhBLZmundFIXlmGO8JMh
         yxVpCNDNnVu9dqGvLGgz3vpBJyltXaY324+1gK79p3Kc0kedD//fpuEU+faWbH+bVgJs
         wHHlkTtzlwVzu0UICp1nLCayN4d8w0zR0edBWIfPgonphURQN6S0Qve2s/G1d1SUutaz
         tniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/6GSsXf2pERNlC9Ctbr9qr4pl5C/aJHjF4QIfKY2+mI=;
        b=b6OkyNajgjx2X18Kd0F4wQ7PJmQ5QhTOaCzAVVbrbl8JXJ04MLHuO3GDMno7Anahhh
         HA/Dwaydo6XkHFvkXcavHGn7gCpi9S2syOCyXesxOOgKOwGTCHIU88+0d3bM+ykaTeIr
         GFA4x61DV397GI8HNJSHC2EbBo2bzTuxiVy/JgtoKvcjTv+/2YU2C8SBjbHQoFQKryj5
         byQLxYWY8KfZLNxqSjISjfJZrwxe1dRWnb9YjqjCuxw35SI7bvT2SpWUu7aVSqygkLWK
         BYB3ALYW7Z3POyQpIw3Gb6goERH+9pUor3OH6GPOwc93mHLUhoB5YZxv0Md/0J5c3bFs
         sv6Q==
X-Gm-Message-State: AMke39kzlpHyhg1+WDABnyVsXBxwwL9zxmzqfUp0nEFryq3MGWvdn6tMYC3sLN0MvM5nYg==
X-Received: by 10.84.209.204 with SMTP id y70mr23032403plh.69.1488190096127;
        Mon, 27 Feb 2017 02:08:16 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.171])
        by smtp.gmail.com with ESMTPSA id p17sm29575520pfi.97.2017.02.27.02.08.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:08:15 -0800 (PST)
Message-ID: <58b3fa8f.9147620a.f73ce.ec4b@mx.google.com>
X-Google-Original-Message-ID: <20170227100807.GA2797@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:38:07 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 3/7] staging: sm750fb: Add identifier to function
 definition argument.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added pinit_param as the identifier to function definition argument
struct initchip_param and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index fbeb615..2c7a9b9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -98,6 +98,6 @@ void sm750_set_chip_type(unsigned short devId, u8 revId);
 unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
 unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
 unsigned int ddk750_get_vm_size(void);
-int ddk750_init_hw(struct initchip_param *);
+int ddk750_init_hw(struct initchip_param *pinit_param);
 
 #endif
-- 
2.9.3


