X-GM-THRID: 6523195637320646656
X-Received: by 10.101.66.71 with SMTP id d7mr1435947pgq.85.1518799838966;
        Fri, 16 Feb 2018 08:50:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:3084:: with SMTP id v4-v6ls1013372plb.4.gmail; Fri,
 16 Feb 2018 08:50:37 -0800 (PST)
X-Google-Smtp-Source: AH8x225WW5AUWTDmOfO0bG/M5vVd7cJfILPtoEye8jNmWc/eDX8gbcPd4hbgO/CsiQ3QIVpzb58J
X-Received: by 2002:a17:902:507:: with SMTP id 7-v6mr1502038plf.1.1518799837437;
        Fri, 16 Feb 2018 08:50:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518799837; cv=none;
        d=google.com; s=arc-20160816;
        b=L2F7/FVFTD+fy0O68Cu8zmQ2ThaRbpVcUvEj0a99JlCWgkm4hQs5hYP5fmqBhQo6S4
         Uah4H++LB5lF3ouv86B+TRDKYRZxu8/jDcyJfwhUzQVm2X37TOiZQjBigLzYH+LRk+4L
         dGgHp+2T6i3fZ3C7/SxWNN2Zb0z59Tw4TJYeXefgrRPLJbp0+/YgmdtnsEF85K8r3x0p
         pKnR9HPtz55leewZNGP1NjSrj9F5UuI0nXeqXMFXllozGvq0728UYRu991sXIa+rKPEz
         6PbKd8+qaGPrlKrIYGDBLZaxm9cPYqVE5MWu3Qdhs2uMVq50HeUFIoKIzAwaexTIPVkZ
         7zXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=7Hv02El/WI4OrJhBv0SFG60kNmeH0HrZ3xxf9ONDKwU=;
        b=r7cZbR0uU0A9X3ySXlaxdtV+XXKV5yrAdNgJZbO5FqbGZZ7s9MgaFEs5xBW3uRTBtP
         0wBwoVVrrL9kymO//M1wdviij+980rwfpWeH+QoqKEdKQJU8ufhHB+zTYj1nR4pMKku4
         KkxPYP9e7WFdxXUvTUeyOrG/Gg3W/6GvzwWSNaBuRziNLgNvI+xrmSlekCWlDBcoG1nN
         6bVMV1jsnEduLldyG3k24CxCje06rnZVHhX1SZx7d5Mt1wuSxC5o7piGnZVy66JUuHsB
         /ZJkX5gartat2YfR88EdWmPFfQQOx8W1b3tSgaB1lay07Olxx2b8rErs3EvxmmAr0Eef
         i0lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IJUwRQrF;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 68-v6si79117pla.2.2018.02.16.08.50.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 08:50:37 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IJUwRQrF;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id f6so2827602pgs.10
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 08:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7Hv02El/WI4OrJhBv0SFG60kNmeH0HrZ3xxf9ONDKwU=;
        b=IJUwRQrFQkHJYdlL4/QVa4QJGm0LPvJSrlQxK14UFlW4stav25gOZfDuaGiayiOu8B
         W7uJmFNQCteXj+7l8IFu4hrYLq/2tbifSrekmlUFngCI9r4d8eSclQj4aRk7oOb5S5ly
         JGSvkJVihvBaks0xyWhf2uAKjpiUSl4QTsp8hmMwcvOMQo/hEgYYT3umgLWPYOmx5c+y
         uX/C3nV/+wI7CjYl7XCe1ELq8V4WXkqGVb9q3ClolcDSToop3TUIE8rHcSaadDXtITVI
         hZ/PIDfEyw2wi9Fdk/BGxU4FU4apRsEO/XoEUrIClBTLblbBV1rFp8/lFrxG8aNYHwKU
         jEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7Hv02El/WI4OrJhBv0SFG60kNmeH0HrZ3xxf9ONDKwU=;
        b=oHoJQ/JS3J2hzunxpB6wNFTibslJcXpyAatGPhuVlP9nB7WkVW4X6kHpYn0yEkk8AK
         9zJ/Zpzw2cyFLCr+wq4JbqmzbISsU6/NeENSSbwvjRF6wygbCTawXj8L4se7xu7Hux+D
         gX8Ln/lAmoFOL8N58Oif+iJdMXuEa790ofbJat1ka5WDbWf+bNZ95kv3mZ0kjshKvQmH
         vzvqLK3zFp8JqIdHaczq3FdL6hV6rRgsxhFPTTyaTCN8rd4CY7RrP6whVe4NNIbqQASS
         NLrJGbFjUZjOa0vcY7q6YsGWQTvTF+yNCeP1roq5okOK6mYQnUMzG7oyGUJPusE0lq6H
         chqg==
X-Gm-Message-State: APf1xPBS3NlcLRnVXVVgUQn+yN5qaB7fU250wxsukz+DSC1uBra2QRZb
	yQgsDDkS2HsCLNOr8/rnWz8VuQ==
X-Received: by 10.98.8.141 with SMTP id 13mr6667487pfi.213.1518799837011;
        Fri, 16 Feb 2018 08:50:37 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id t76sm5734776pgc.17.2018.02.16.08.50.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Feb 2018 08:50:36 -0800 (PST)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: boris.brezillon@free-electrons.com,
	richard@nod.at,
	dwmw2@infradead.org,
	computersforpeace@gmail.com,
	marek.vasut@gmail.com,
	cyrille.pitchen@wedev4u.fr,
	outreachy-kernel@googlegroups.com,
	ezequiel@vanguardiasur.com.ar
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH NAND 0/5] Replace printk statements with pr_*macros
Date: Fri, 16 Feb 2018 22:20:09 +0530
Message-Id: <cover.1518797480.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset removes all the log levels i.e. KERN_WARN,
KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
statements and replaces the printk statements with appropriate
pr_*macros.
According to the kernel coding style, pr_*macro is the preferred
way to print the message.


Shreeya Patel (5):
  mtd/nand: Replace printk with pr_warn
  mtd/nand: Replace printk with pr_notice
  mtd/nand: Replace printk with pr_err
  mtd/nand: Replace printk with pr_info
  mtd/nand: Replace printk with pr_debug

 drivers/mtd/nand/ams-delta.c     |  4 +--
 drivers/mtd/nand/cafe_nand.c     |  4 +--
 drivers/mtd/nand/cs553x_nand.c   |  8 ++---
 drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------------------
 drivers/mtd/nand/fsl_elbc_nand.c |  4 +--
 drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
 drivers/mtd/nand/mxc_nand.c      |  2 +-
 drivers/mtd/nand/nand_bch.c      | 12 +++----
 drivers/mtd/nand/nandsim.c       | 10 +++---
 drivers/mtd/nand/r852.c          |  2 +-
 drivers/mtd/nand/r852.h          |  6 ++--
 drivers/mtd/nand/sh_flctl.c      |  2 +-
 drivers/mtd/nand/sm_common.c     |  5 ++-
 13 files changed, 70 insertions(+), 67 deletions(-)

-- 
2.7.4


