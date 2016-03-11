X-GM-THRID: 6260686017839235072
X-Received: by 10.182.233.170 with SMTP id tx10mr6056080obc.18.1457679555980;
        Thu, 10 Mar 2016 22:59:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.146 with SMTP id c140ls1087836ioe.76.gmail; Thu, 10
 Mar 2016 22:59:15 -0800 (PST)
X-Received: by 10.50.112.232 with SMTP id it8mr690031igb.9.1457679555545;
        Thu, 10 Mar 2016 22:59:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tu5si880080pab.2.2016.03.10.22.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 22:59:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id q6so7356739pav.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 22:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rlffOJUFHMYUKyIeOblD8QKUx0WYVLIeBjv3uniMdic=;
        b=RRjBrUqQNvHN2s8A6NzWJ9+uVm7/nJI6GwilVW97s6/5L26hQl+Xt/ry40CtekNwO6
         MAAlGfsRu7Z1oxdLBmQq2lyiZi3NkZ0VlttNmZYLgz4OWEmf2VKyeqLCfDoF/RaJgKmg
         XpfZiVgSkMEJS7QGIrLbtbkK1KrIbMBKvv3Gj4IHXpUAQL/Nu7KIWvMZylqylRh+Bil9
         z/99FORJ2oj1Fm7pJsoTW5SsJNELVkGsNIRggSnY4ZRVuQwfWCJ19BmQy+JjydTDbADS
         XPf1d3HlXbEEM7lD/GXuVWCaJTfrlK7RnCixeRiVgXiTwXeK+2D1gRyzbDLjY8F0ZzGw
         hpKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rlffOJUFHMYUKyIeOblD8QKUx0WYVLIeBjv3uniMdic=;
        b=TaxmKqlZlXB1rWzCR7C122eCtlindMRSItQC8tZ+rCpXjQ01v4y3HsywSiXidewWHH
         NfQ0ZLafGlD7qebbLSARt2ocdfyJaX/+XVMQWH+yZ5OLMOxCcRjR8HlIR8GJ0bq/2LeA
         ek3fUZw3QfibpGcE6Yhm+EvLbYs54stzxUMQaloZgI4xvJXdBsXICI8s+E2HuwJSHcoB
         nnoy3CWuKTGIj39J0flSRZLyIDCGEEHPgWsDaBYXppwDBcBQ1S6HBT6/yWAwU+P1lba/
         dxN5cGCeJxTD7YiBo0WgTPmVRpKz479bgu6Q1eCAjKUhVfIGw3uTzZG5toFadKpZJdqw
         gyRw==
X-Gm-Message-State: AD7BkJJWG9gziJ87IS47JQDz2Hmp7tSVfVlddLGwVWVAYyTHWHaSUmtTU/r9dnnVO4ilHQ==
X-Received: by 10.66.141.42 with SMTP id rl10mr12010633pab.48.1457679555342;
        Thu, 10 Mar 2016 22:59:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.187.211])
        by smtp.gmail.com with ESMTPSA id tn5sm10115343pac.32.2016.03.10.22.59.08
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 22:59:14 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 12:29:04 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/3] Staging: Remove unused functions and prototypes
Date: Fri, 11 Mar 2016 12:28:48 +0530
Message-Id: <cover.1457679000.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset removes some functions as they are not used anywhere 
in the kernel. Also, remove their function prototypes.

Bhumika Goyal (3):
  Staging: sm750fb: Remove unused functions
  Staging: rtl8723au: Remove unused functions and prototype
  taging: rtl8723au: Remove empty function odm_Init_RSSIForDM23a

 drivers/staging/rtl8723au/core/rtw_ap.c          | 115 -----------------------
 drivers/staging/rtl8723au/hal/odm_HWConfig.c     |   4 -
 drivers/staging/rtl8723au/include/odm_HWConfig.h |   2 -
 drivers/staging/rtl8723au/include/rtw_ap.h       |   3 -
 drivers/staging/sm750fb/ddk750_dvi.c             |  38 --------
 drivers/staging/sm750fb/ddk750_dvi.h             |   3 -
 6 files changed, 165 deletions(-)

-- 
1.9.1


