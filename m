X-GM-THRID: 6391114226199429120
X-Received: by 10.98.83.134 with SMTP id h128mr2990076pfb.39.1488123969208;
        Sun, 26 Feb 2017 07:46:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.121 with SMTP id t54ls10978214ott.28.gmail; Sun, 26 Feb
 2017 07:46:08 -0800 (PST)
X-Received: by 10.157.40.36 with SMTP id m33mr473955otb.49.1488123968897;
        Sun, 26 Feb 2017 07:46:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si2813076pfd.3.2017.02.26.07.46.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:46:08 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so9788143pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sv8Ul12ChOgI+s+3bxK0R6YK1m1WWzpgQGde8EzqCus=;
        b=f6YAHsbptSP3daU39vX2HyTxGGoXTqNBitGjWB9pB/irbjaRS5t+Ic/lJLquDeWNJF
         ZRYZC3lEb/3HjuqSj5gxdi41kj04yxxnhip5HBNteOQXTsG0JB6sxBFvBuqTeSDskRUE
         ulzCdRiexkTcbiEfhGi291ewyzJpCYxZJlrBi28jVGo5vHhnU9B6ql1JgUtghwvQ1ffP
         2Z04T0a7+V9o3W/O1iIGk3AnkHFJ0DNInIqauZO71QVJwowMYchsxshP0ZrsXVkm9flo
         RtqeU1hCZ4edSn2bHbKL5psyCow6UEnq7F59cAIPp1D8A71ubVqLcFsNdNFSAPZ6zL2l
         nn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sv8Ul12ChOgI+s+3bxK0R6YK1m1WWzpgQGde8EzqCus=;
        b=GcvmoUnjnFpC7nbgTQTXiD8No9t/hXG+dpuR6MUTnmkgCoEdWXnbR4urZFv09HHhsy
         PR1v83bvQdElZP1gFLzgbUb2GgSBQ2JupJ1JbatjVxbdGpUHdH9e+g1DD9R0QnYiComm
         PoGZ2GTUfqi2h1bwP0zfcV8ltlcghJMXLlDFnCRLj7hn6XNurDUKZX2p+3VD0V+SvOmJ
         vepd5Ztst85Y+rG08PKb8c3txSXqwFXpP9qP8reIRYUZg/nTt6dQHPNuHOMIs33BqMaV
         tGnYC3k16uYzlEP8DEbI8zGhuFfEg2yx7tL4nIeGzxaw8YhSqpv+E0h4TX6zICGLi/uZ
         CD5w==
X-Gm-Message-State: AMke39lA9qy0c/9GYZ5IhCQjEOT/HbMZBke6sGqt2XbZFhoO9yqdX4cI7sFu9mGsTbCDcA==
X-Received: by 10.99.225.5 with SMTP id z5mr15511556pgh.145.1488123968691;
        Sun, 26 Feb 2017 07:46:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id h71sm6412718pfj.65.2017.02.26.07.46.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:46:08 -0800 (PST)
Message-ID: <58b2f840.ca56620a.17fc8.d28d@mx.google.com>
X-Google-Original-Message-ID: <20170226154604.GA28956@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:16:05 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 3/7] staging: sm750fb: Add identifier to function
 definition argument.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added pinit_param as the identifier to function definition argument
struct initchip_param and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4:
- Added proper version number to patch.

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


