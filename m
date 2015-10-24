X-GM-THRID: 6209065689827770368
X-Received: by 10.66.184.175 with SMTP id ev15mr6301383pac.26.1445660761306;
        Fri, 23 Oct 2015 21:26:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.39.225 with SMTP id s1ls1147953obk.79.gmail; Fri, 23 Oct
 2015 21:26:00 -0700 (PDT)
X-Received: by 10.182.104.137 with SMTP id ge9mr21499107obb.49.1445660760861;
        Fri, 23 Oct 2015 21:26:00 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si2573731pbc.1.2015.10.23.21.26.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 21:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id z6so134800096pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 21:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fDZLVSImfNEnDDD0QWVtQKOY/9Tpt8OwKzg81r6yT5Q=;
        b=kkvQl6QtkyW+ZwZ2sxA9MUKcxqFkRLfjr2O7Oo+d2fiQZPZPPuA8YrlYXv9MU/E1RT
         3DmJmiA80nJzjKCHnJw+MhLcCSFoaKoJXMi48dvSZeVWq9G26UE4sbpExFiLTjh/0Lna
         g9vnwlPS/uYG7YKFdhF0QSZ7ucPwFPC3iDOjmqmxHVWdT/NIGLX8JOFSw3raE/BBNEwP
         /bis/4xKLzQgPPJ/LG7Nb09Fx3o15wY9TiZgSnNi8jggqREHMyl69VJvMz9r2LtEvUM6
         nzJyuheuJxeZgGaHqwSU1FxdLU1fX6X19paOorENtGQ+8goYz+eE5Mi6TyvE8OzmKZuH
         kEKg==
X-Received: by 10.66.63.37 with SMTP id d5mr8626081pas.99.1445660760726;
        Fri, 23 Oct 2015 21:26:00 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id qk7sm21674650pbb.80.2015.10.23.21.26.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 21:26:00 -0700 (PDT)
Date: Fri, 23 Oct 2015 21:25:59 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: r8723au: clean up in file rtw_ap.c
Message-ID: <cover.1445653471.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset reduces the checkpatch warnings by 43 in rtw_ap.c

Patch 1: It begins with a clean sweep of the comments to improve 
	 readability & reduce CP errs. (apologies in advance for
	 any patch review fatigue this induces ;)

Patch 2: Addresses the simple line over 80 cases where params
	 could be moved to the next line.

Patch 3: Simplifies one NULL comparison

Patch 4: Removes extern declarations & adds a header file include.

This file still contains 30 checkpatch errs (mostly lines > 80) 
and some extra long functions.


Alison Schofield (4):
  staging: r8723au: use kernel preferred style for commenting
  staging: r8723au: move params to new line to improve readability
  staging: r8723au: replace explicit NULL comparisons with !
  staging: r8723au: remove externs and include needed header file

 drivers/staging/rtl8723au/core/rtw_ap.c | 243 +++++++++++++++++++-------------
 1 file changed, 146 insertions(+), 97 deletions(-)

-- 
2.1.4


