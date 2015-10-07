X-GM-THRID: 6202772083227754496
X-Received: by 10.129.146.87 with SMTP id j84mr34335689ywg.18.1444195416194;
        Tue, 06 Oct 2015 22:23:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.48 with SMTP id i45ls89249qgd.21.gmail; Tue, 06 Oct
 2015 22:23:35 -0700 (PDT)
X-Received: by 10.129.87.21 with SMTP id l21mr11094024ywb.13.1444195415831;
        Tue, 06 Oct 2015 22:23:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si4381570pac.2.2015.10.06.22.23.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 22:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id lk4so9700912pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 22:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tCpyKUHh1ZyZzb//Uo4/k6qpo3/h+o6E8T6tq17qa7I=;
        b=YTmTE9EJYBNLuCJgg3U/WxZC+1o/f/Vvpq2GYz5xQAzkUyOlHyoz/1+AjQHNHTvDi1
         WGXMWBzHgNqIXj69uIsU3uS152oIuChZKfbGFoQWVJc5lrIyqzy4D3T6kna3a1yPM5mS
         zAAME4AN3jOjFmiPIH3j87U0juH/8vkYUryEh4+z6/aQ2YEXhvsQkCoDc8bS/wGn4RYE
         alaEqrZIcCPvEYFQ8DG4/En2ddTj9QX8CaLXSClMc+Kk9qk9llIvdsbLHwbzfPxjzLYq
         WVm+gQoC3IEfrj2wCmlOWU5FkZpfXCNsh8+xpx8tEr2KZ08Kooo2hwQ030WMUjIw6mpk
         MVwg==
X-Received: by 10.66.119.167 with SMTP id kv7mr26333770pab.141.1444195415637;
        Tue, 06 Oct 2015 22:23:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.197.85])
        by smtp.gmail.com with ESMTPSA id cn4sm36718360pbc.94.2015.10.06.22.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 22:23:35 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:53:31 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove Explicit NULL Comparison
Message-ID: <cover.1444194896.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes null comparison by using '!' operator. Problems found
using checkpatch.pl

Amitoj Kaur Chawla (2):
  staging: rtl8712: Remove NULL comparison
  staging: rtl8712: Remove NULL comparison

 drivers/staging/rtl8712/hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.1


