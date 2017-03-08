X-GM-THRID: 6394970463288688640
X-Received: by 10.99.116.72 with SMTP id e8mr1723179pgn.92.1488945089255;
        Tue, 07 Mar 2017 19:51:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls2141250otg.18.gmail; Tue, 07 Mar
 2017 19:51:28 -0800 (PST)
X-Received: by 10.13.215.203 with SMTP id z194mr1864244ywd.43.1488945088897;
        Tue, 07 Mar 2017 19:51:28 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si387633pfz.1.2017.03.07.19.51.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 19:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so2032341pgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 19:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=HgjEXB7nK/O+s21uB4wOeeAgGBO0GZfgphJ5yUIsGwY=;
        b=JVsFKVnoEbNzTFCnUwAbg56/MpNuLAxaGKut0kC3cD04MBBcNt7ttB4P8sAFPk/hz2
         4KMnGFQxcMOq7ShbKM/cKVV7L8rbXyrdP6IUUdGRoj5S6FcghehLWE+lZE3hi0EUrR6M
         CVWTcWIpZGwtg/o41BIwPKIN80Lei+pnMbijYHpy2kE6UyZ55DrVZebQ36x1EPDDv1H2
         omobwAcrwzdulaFi84fZVsuNm3pxp0FeP24SocTa/yBY8+Rv1B4tHHkuaokKZsWevpo6
         gW3AC5+pOyzsd9n9CAtxGAFN8sxibQgho5Go++K0d7teK7BgV8HIG2uoRW+U+CoKH2QR
         HQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=HgjEXB7nK/O+s21uB4wOeeAgGBO0GZfgphJ5yUIsGwY=;
        b=DMRBjMi/n04ADb5WerWdtuKBhvh2pfbKPnvvTTs+56mLwjxs70ofiCQi/vTz0O4iyU
         h+bjnLXSXk1MMTVY6/nyJjoYzDh4uDzMYxWQYfr/9EMwE+NN03kg26fA1M9ahrxNSY+A
         a1L2rP/AIlxqeB+Q3eGZP25JLRdR1B9sU6lsfQ7oJKacM/Aq9gKxZ7sMsbJGnq0D077m
         XP8K1Mqb9O4XDWrfwyoHeiJTkYe88GYNeEU+a92hujzF6vEgYLJ4UvJUdW5YQhN2XRZ4
         lywY/6Iwd8Vz07ztk5+qoREcJx2eSxX+nwhJlSp+/sEJksDcPdGCJ2SRBqRyT20dZ6io
         SnVQ==
X-Gm-Message-State: AMke39nx1t5jO+Z1S/u/besTzwAopQjfaZZqriEbAtsvtLVzTvu8NnH0LUoME/BfP0fpvA==
X-Received: by 10.99.45.3 with SMTP id t3mr4486821pgt.162.1488945088697;
        Tue, 07 Mar 2017 19:51:28 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.99])
        by smtp.gmail.com with ESMTPSA id s87sm2449567pfa.29.2017.03.07.19.51.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 19:51:27 -0800 (PST)
Message-ID: <58bf7fbf.5a45620a.6b32b.8166@mx.google.com>
X-Google-Original-Message-ID: <20170308035114.GA6075@<rvarsha016@gmail.com>>
Date: Wed, 8 Mar 2017 09:21:14 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: atomisp: Remove useless casts and
 identifier.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset removes useless casts and indentifier in media driver.

Varsha Rao (2):
  staging: media: atomisp: Remove useless cast.
  staging: media: atomisp: Remove unnecessary identifier.

 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c    | 1 -
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c | 2 +-
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c           | 2 +-
 3 files changed, 2 insertions(+), 3 deletions(-)

-- 
2.9.3


