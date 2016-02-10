X-GM-THRID: 6249603259895382016
X-Received: by 10.107.168.139 with SMTP id e11mr12361486ioj.32.1455099149086;
        Wed, 10 Feb 2016 02:12:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.131.166 with SMTP id on6ls745134igb.6.canary; Wed, 10 Feb
 2016 02:12:28 -0800 (PST)
X-Received: by 10.66.241.104 with SMTP id wh8mr37491386pac.44.1455099148798;
        Wed, 10 Feb 2016 02:12:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si328070pab.0.2016.02.10.02.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 02:12:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so156434pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 02:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bRmUlkIwi86SJFrPQouD4UVkMDFbVvSQU6gA7x5UYsA=;
        b=iEjMGYOmkM8iQG/75m6GYuhZDibDftkB7OuyvPQU1FSggzvyMOnWK954QDkKwXpG9O
         Mb5C0lIxyE0dwA1I8rjVH4X4Ud2PCaromD2bGVdIDfW7v+yUbRqHRKPDFt9yItrr+43l
         tDy6dnZDGf2WkNRqzcS5H5FsxzmmMuVKKk9ZWgm9ULLErYjvZHQ7QavVtvaGapLID+xd
         NDzGjbxQzngUwfc/qmG/OlE/ZC3NGUg4VbcxgiI/rNTWGf0HAkll/SJFWLf2DDsB4iK3
         KWCIKRR0eZydQkCh3n7jD5VgGrq4/8mobTng67x6wsKfKWOM6PfskeN2Z0epjLV7k6Dl
         GTnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=bRmUlkIwi86SJFrPQouD4UVkMDFbVvSQU6gA7x5UYsA=;
        b=SneC7QanZhHmtzFCqX3sRaRSXQCemPu9CXXU+I18QKMsCrPh6UPjsnh6wheYKTutkP
         1IxQnQTpfJCqcBedKmlrAN9GZUOVIclXWFnewzwSx6j9FUH1ioQyAkOVJN4EnFJTZBKR
         0gsHV7dxlvjo6fvYlqlrdDV7Jl4+M+7IQFoAEvcmSM6FoVHDjVL9a2rmlG+fVytIBwg/
         3wQB7EnsS7RKVeW/91mWkTH080q83HlN1X67jqt4L7NOqcoDedH98lHlU6k9JHxtwrTn
         xZwAi85ZOU00dnPYObcUfvXVZVe/b5YGIPnMF3Aa5cAT8QHZnSH4c8R05xS9QmnaGLv1
         KWEg==
X-Gm-Message-State: AG10YOR+JLamKcDUzjSJ++5dpw+91a/KLMhi13g1QI9/GQTeFsPFkyb8Xo0SLKtj3fha2g==
X-Received: by 10.98.43.149 with SMTP id r143mr32426695pfr.7.1455099148661;
        Wed, 10 Feb 2016 02:12:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id z3sm3955749par.17.2016.02.10.02.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 02:12:28 -0800 (PST)
Date: Wed, 10 Feb 2016 15:42:25 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] staging: comedi: Merge if conditions
Message-ID: <20160210101225.GA29163@amitoj-Inspiron-3542>
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

Changes in v2:
        -Patch 1/5 Merged if conditions instead of dropping them.
        -Patch 2/5 Merged Patch 2/6 and 3/6 of first version by not
         dropping if conditions and only merging them for the same file.
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


