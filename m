X-GM-THRID: 6252763365254365184
X-Received: by 10.129.3.69 with SMTP id 66mr9242861ywd.41.1455834918217;
        Thu, 18 Feb 2016 14:35:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.229 with SMTP id oh5ls2720526obb.74.gmail; Thu, 18 Feb
 2016 14:35:17 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr9800886obc.9.1455834917788;
        Thu, 18 Feb 2016 14:35:17 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id g136si507565ywb.5.2016.02.18.14.35.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 14:35:17 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id y89so48707847qge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 14:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=SQUqGzzxy9CFA98pQ/WOtpqWBLP6WjB2pYspxf5RwR4=;
        b=ii3PXuIX03JZpw1LTmPGMGAQ1kyKoqcpdyjTr+KS65bc5syLhEJMQR3iPPjsxhLmxG
         LMYHu/rBB+Cuu/ZbUkhPe68uV5xlzUBEraxkMcAlAMvC7CNVzM21K5XB+ouOQhBeohMq
         bkwJMqyDGBP/hxsSdxOHpLxsxJXVZtFvBAQR/u9+pkj1vfhisMUjAgXYDVBvfa/kqZFC
         8I0hD3+oOB3E3UbbzSj2Kr0kE0nMrXSYrRS4Iqtf3dhNg6C0VkkhZsmG8UnAv9nN/fa3
         tydBbgR8Bn3LyBxuMWw3D/XX/r8x8f26nGAvlUUt8zdzlyPXTGJUah0PgnElm7R6Au9a
         bH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=SQUqGzzxy9CFA98pQ/WOtpqWBLP6WjB2pYspxf5RwR4=;
        b=dImwYpYwmzhugRTF+QI42I0RdnFYrWnvAX31Ts1yge3GEzTyiKzye5gVtkDuab9RH1
         CfkGd2HGYC/lNJxY1jZzVZZexzqgcunZzHtNBRTSDHz4mZhL67KX3pkplKU2Mtolh5Kb
         nzxkt72hnVlaxgG2pTYKz798psBd0nm9SvpcYpssrljqTSXYGwpjOw88cxzUA8dSV18J
         xio4lD16SiZLYLdWpTnID0orA0v6Hotx2R6kMHSlVvpLLCtlOuNiTGeCAnlAXNm8Wx1h
         fX3T9FAXVHPyIizJ5Is558tkGw8ArPXy3+W6CgBB1AZw0uDUgds83lziNTEu9y0M2tf0
         Y+Sg==
X-Gm-Message-State: AG10YOTRUGWWx3TKfR98omxdrhm8XU85pyS8xh30Y7oZYYmON+UyBZXFlqBdVJNhkpjuDA==
X-Received: by 10.140.43.180 with SMTP id e49mr12107439qga.66.1455834917662;
        Thu, 18 Feb 2016 14:35:17 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id w187sm3482010qhc.5.2016.02.18.14.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 14:35:17 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: davinci_vpfe: Compress return logic and remove unnecessary lines of function
Date: Thu, 18 Feb 2016 20:35:11 -0200
Message-Id: <cover.1455834014.git.thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

Simplify function by:
 - compressing return logic 
 - removing unnecessary case in switch 
 - removing ununsed variable


Thaissa Falbo (2):
  staging: media: davinci_vpfe: remove ret variable of function
  staging: media: davinci_vpfe: remove unnecessary case and enum

 drivers/staging/media/davinci_vpfe/dm365_isif.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

-- 
2.1.4


