X-GM-THRID: 6261584556721176576
X-Received: by 10.66.136.71 with SMTP id py7mr15177512pab.7.1457890851318;
        Sun, 13 Mar 2016 10:40:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.76.3 with SMTP id g3ls1567711obw.60.gmail; Sun, 13 Mar
 2016 10:40:50 -0700 (PDT)
X-Received: by 10.182.28.41 with SMTP id y9mr15430427obg.14.1457890850905;
        Sun, 13 Mar 2016 10:40:50 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id i133si1018987ywe.7.2016.03.13.10.40.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id q184so5411931qkb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X9MxBRreI/F2rEbl/OGtL6gi29plcoMrPmvGLCRr4lc=;
        b=iDJUAA73MzS4A3LoWoGXV3jacWEznU1W0G0zRG83eU+CIyf6hWZu1IJ9dP/clP/Glw
         3cqXNNyMRP7DTSvmzqxGoPkTzdXqZvhKugzJC/eZy4bRya4G/5RLZQBTVXF6gRhPXnN9
         5z9MEBrm2Cv9Cdu6isUFW3viQWb6HMo5ZhcYNvXWB21AslV/CgK5xFJoCKBZv3ljJE1E
         AMaBzV4pIxn8s364Ybb8mL7gXD0Z52dcQ3/NK7xEuuDXnv1xIesSBTuEIjr0nndUotOj
         RvJrkr6dz4W9ggITip0hna4dUr6/OJ4AWmcYDBLBBmOVQ3FpDYk9OeA2UJSqMR5XA5tz
         CCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X9MxBRreI/F2rEbl/OGtL6gi29plcoMrPmvGLCRr4lc=;
        b=aAMNky2jIxa9t+BMM0OHidReyMAXEO/lgJSJ1zMtY7e+1R4t86daV+pZQyGFOqoIxR
         Urt5LAzKng+wvH+grccEOgEkiqXlVjyeeH9Id7J99eKl4/SFDzPFFP9qXbdb3yAfoCHL
         8uM+TdSYbpwKhq3oKVolawd9SaguZqbPrl7ICbK7ayNRFfiqs46lN62Xy64FTiFRzock
         OgspNnv/pg39jKyyvwabbmRvA8s6dXVbPP3hoWqN9e468tvkRsji1GwkNYPTEH0hOl42
         eGTtQLU2F/+qLOaXnkhpavsRvKVAtHslVTW9nTxMefEh0bZXgtPrDF99qLU1misfouNY
         cKLw==
X-Gm-Message-State: AD7BkJIZ0VG0VPBdn6hgpPdzIA7+KWd9ibxDP9P58gPv4za6sdUOKkxVNcirWBGYdZxl2Q==
X-Received: by 10.55.72.198 with SMTP id v189mr25360580qka.33.1457890850586;
        Sun, 13 Mar 2016 10:40:50 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id 139sm8488724qhh.33.2016.03.13.10.40.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:40:50 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:40:47 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/8] staging: dgnc: fixes multiple coding style issues
Message-ID: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch aims to fix multiple checkpatch.pl issues and 
warnings in dgnc driver, mostly on dgnc_driver.h and 
dgnc_tty.c files. 

Changes in v2:
  - Fixed typo 

Juliana Rodrigues (8):
  staging: dgnc: renamed SerialDriver to avoid camelcase
  staging: dgnc: renamed SerialName to avoid camelcase
  staging: dgnc: fixed multiple line over 80 characters warning
  staging: dgnc: renames PrintName variable to avoid camelcase
  staging: dgnc: renames PrintDriver variable to avoid camelcase
  staging: dgnc: renames dgnc_Serial_Major variable to avoid camelcase
  staging: dgnc: renames dgnc variable to avoid camelcase
  staging: dgnc: renames TtyRefCnt variable to avoid camelcase

 drivers/staging/dgnc/dgnc_driver.h |  14 ++--
 drivers/staging/dgnc/dgnc_tty.c    | 151 +++++++++++++++++++------------------
 2 files changed, 86 insertions(+), 79 deletions(-)

-- 
2.7.2


