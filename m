X-GM-THRID: 6249603259895382016
X-Received: by 10.50.7.6 with SMTP id f6mr15153478iga.2.1455201495227;
        Thu, 11 Feb 2016 06:38:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.194 with SMTP id m2ls542029obh.0.gmail; Thu, 11 Feb
 2016 06:38:13 -0800 (PST)
X-Received: by 10.182.27.101 with SMTP id s5mr43012923obg.35.1455201493212;
        Thu, 11 Feb 2016 06:38:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id tn7si985859pac.1.2016.02.11.06.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 06:38:13 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so30852543pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 06:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3KL+gxL6T0E8l+Bw5FqHTVymdyIR/Y+Aw9t1ZDmkIAQ=;
        b=025fn+MMAxseseTvm9u2V/p5xaBEARHsFXbMgNrKcry/Ab7I9/Dnjb5u2gf+5wlwPo
         aaIL7Jp1qhjfsYjXrb0bvBCX3wJ7IZFTYrJCM4dVPvOljcMYzCFHQWUjSOvdASbvoise
         IBPoBMsFjt5rlN+iWJ6S/Klsb1RvczG7uXkmKDrNcRBwF0EIrxp5cc0pRoJBLvpn+m5m
         B9N+gcpaU0YWu+NIwcH8LbRDR4vBbolixyAa1cNweYjAejVFyiOt6A3Iu5t7eJC5Vhfl
         J1qPoBO7K2mJz/+5TF/8EmmyuR22NuguaIlu06BBLbIj+5m54X0NfRXz+OqzoDd79c1R
         kzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=3KL+gxL6T0E8l+Bw5FqHTVymdyIR/Y+Aw9t1ZDmkIAQ=;
        b=hAH0HPOIc6dK0X8kWNp8F9LkYS1OXJZGnSK0Whi8AEi3Getp+R5taWybTg1nYEJAsA
         1eg+fkyKHzZlUFKLibb8wmeOcGbXuYuHCCZ0Ei/MqkGCqBO7yox5F/ELVnlEnlpZzpGI
         ZJnKEuXxTPSpzvceokHIafZZSPdTPDezp1U2yEbEmXAtUEWPSipwqWFeq9HwvMX2I4Qz
         MDzUfyknNFkWhdNTbqQa7kbw3+PqoAbc5z6YISmTFKss6ccry9b7hFvNLkkJBYjYaPnm
         0xljAc0oRbFpY8AyOZLrgsgmp7sBDx8/y7d9EL2bwJioH/swf/mRG4jyspG2V581TaJJ
         NHwQ==
X-Gm-Message-State: AG10YORCxFRLXJRZydKzwnvxau+sa4ys33KLaaQ9/zc8pmGz6/pZu7itA5cySqy3HsO48A==
X-Received: by 10.98.68.212 with SMTP id m81mr66483130pfi.135.1455201493036;
        Thu, 11 Feb 2016 06:38:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id g25sm12902713pfg.35.2016.02.11.06.38.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 06:38:12 -0800 (PST)
Date: Thu, 11 Feb 2016 20:08:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/5] staging: comedi: Merge if conditions
Message-ID: <20160211143808.GA300@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset merges if conditions with the same statements using the
following Coccinelle script:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Amitoj Kaur Chawla (5):
  staging: comedi: drivers: comedi_8254: Merge if conditions
  staging: comedi: comedi_fops: Merge if conditions
  staging: comedi: range: Merge if conditions
  staging: comedi: drivers: dt282x: Merge if conditions
  staging: comedi: drivers: pcmuio: Merge if conditions

Changes in v3:
        -Removed extraneous parantheses in Patch 1/5 and 2/5

Changes in v2:
        -Patch 1/5 Merged if conditions instead of dropping them.
        -Patch 2/5 Merged Patch 2/6 and 3/6 of first version by not
         dropping if conditions and only merging them for the same
         file.
        -Patch 3/5 Removed unnecessary parentheses.
        -Patch 4/5 and 5/5 While merging use !x || !y instead of
         !(x && y)

 drivers/staging/comedi/comedi_fops.c         | 14 +++-----------
 drivers/staging/comedi/drivers/comedi_8254.c |  4 +---
 drivers/staging/comedi/drivers/dt282x.c      |  5 +----
 drivers/staging/comedi/drivers/pcmuio.c      |  5 +----
 drivers/staging/comedi/range.c               |  4 +---
 5 files changed, 7 insertions(+), 25 deletions(-)

-- 
1.9.1


