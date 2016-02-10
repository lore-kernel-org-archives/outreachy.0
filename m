X-GM-THRID: 6249584345065979904
X-Received: by 10.107.12.213 with SMTP id 82mr20510251iom.18.1455094745549;
        Wed, 10 Feb 2016 00:59:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.64.179 with SMTP id p19ls171137igs.0.gmail; Wed, 10 Feb
 2016 00:59:05 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr38436228ioe.17.1455094745285;
        Wed, 10 Feb 2016 00:59:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 79si294343pft.0.2016.02.10.00.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:05 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id sv5so619666pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nU76X5BNwSs48o1NYUmGf2JgqLhSyBNeGaqs3GhxVko=;
        b=MI61BgpL5uHhmKHWWMdPT2pbgz8bO3+7l11TE4AI1cte0VPMJOCE9v/n/lHlBhN2Xn
         09NMDbpxQy7nKXpB4AJK3NbAzGxTZbcF5NHF6Up68EDxBkuBeKwChbOvFyDkk8xNxyBC
         OK64ruQdJVmKU8hhA89nDr3RVUv/GUkhHDgRrJKtrPO9w7vcsnU34HkwPDDyl0TGC7lC
         C1+1RL4eO5TzT5frdsMXoyIZ7LEhVHLmdSRbqg8zVKr700vYcP83hsIoOY0xrmukK86A
         WTq0+rETUt3x4KKdtlJfay6grpeZ3LTWneearZaEdpbWofcPX43L58jEhXeug1PVZb8v
         kb0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=nU76X5BNwSs48o1NYUmGf2JgqLhSyBNeGaqs3GhxVko=;
        b=R2KSC2J1ySRo22HQ3Pk6uycdfnRZHa7DbE9+GpOSBa5+GuRMvtMUYGRMM3krjzjU1r
         lgHNk64ZN68zl0py/m74qr6Sn9PafMrq7GxaPpzNcKBc1Pepnguu9irOj96JJnhxm3+s
         3/uNZxYB2fXtMdkswMAd8FLw+wD17y9806//u3YzvGjdV4HkW98Z6a4Gr15dcbgTnGyq
         /0ChS35ZbpMcQYMhUS+v+tkPGAg1dWdXy2uf1H5n2081hfeC4A80zg2WcnH+zmZg+n+6
         Wh2QdUcbmMR7y2JQCXLJCKMuDw8OATrFwN2zmM8tPVUQ90i0iIdErE1ki5TBYhLSB9LP
         qRLQ==
X-Gm-Message-State: AG10YOS/34rQmoqynSRrgJOaAw+o/FulASkkRDHBBcIpqc0asWTgasQNiM71OdlM4BKe2A==
X-Received: by 10.66.55.73 with SMTP id q9mr56817584pap.44.1455094745045;
        Wed, 10 Feb 2016 00:59:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id u84sm3355859pfa.57.2016.02.10.00.59.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:04 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: comedi: Do some Coccinelle cleanups
Message-ID: <20160210085900.GA14807@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset does some cleanups using the following Coccinelle script
written to merge if conditions with the same statements:

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

Amitoj Kaur Chawla (6):
  staging: comedi: drivers: comedi_8254: Remove useless statements
  staging: comedi: comedi_fops: Merge if conditions
  staging: comedi: comedi_fops: Remove useless statements
  staging: comedi: range: Merge if conditions
  staging: comedi: drivers: dt282x: Merge if conditions
  staging: comedi: drivers: pcmuio: Merge if conditions

 drivers/staging/comedi/comedi_fops.c         | 16 ++--------------
 drivers/staging/comedi/drivers/comedi_8254.c |  5 -----
 drivers/staging/comedi/drivers/dt282x.c      |  5 +----
 drivers/staging/comedi/drivers/pcmuio.c      |  5 +----
 drivers/staging/comedi/range.c               |  4 +---
 5 files changed, 5 insertions(+), 30 deletions(-)

-- 
1.9.1


