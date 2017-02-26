X-GM-THRID: 6391110237247504384
X-Received: by 10.129.153.201 with SMTP id q192mr4344374ywg.118.1488113123248;
        Sun, 26 Feb 2017 04:45:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.54 with SMTP id 51ls2888301otv.20.gmail; Sun, 26 Feb
 2017 04:45:22 -0800 (PST)
X-Received: by 10.129.56.193 with SMTP id f184mr4372939ywa.32.1488113122772;
        Sun, 26 Feb 2017 04:45:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2331650pfa.4.2017.02.26.04.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:45:22 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so9472370pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=ndrWSHSqmjNB6xb0yzOH6rTmx4mtxjFdTNo63KBKNJU=;
        b=Us6H8TMw7sGK9MDgU80Hgg2GQQlYnaLXqJurK4TtT9W36vHtXwt7PydHrv3ONd+caS
         Nrrc1+wFPBobJMovHxo3T83F2c0wwMk19kRBy5myTon1Z2ddyiGaC/vtcqFuYR2pcC7V
         xoeLDTk8g4JJIeC4X8HddRbpzdF9hHpAz1LGQH7WspSt/RH4G8zAcqScwKmcWE2q0b+k
         cDb58rhGnKH9t11+DlX3ZF1Rzb+Lue/N69/CXF4zUhq2+MEpNKhkuqKzRFlMIjhbYH6/
         70hgh+qNrnl6K7Rda1pI/DiE/d1XylLKIUvb7xS+whCoMd/UKrMZRUC9ke7c82qyStp+
         7Sog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=ndrWSHSqmjNB6xb0yzOH6rTmx4mtxjFdTNo63KBKNJU=;
        b=Jgto+3IwX6pyxGNQa+Dz/jF5r11JLzyBT9y2EKTSpDV5eTdshg3Z60idxfJu04PRss
         8hRUy4LMSLq+jsaNsY6Spl0YVGMt0sN6ej/rVIgJxAEGojZXs4oqJ72/eWG4nnlPkqca
         A4isgmPocUfCqBqBc8MpU5c7hdxz2Q+RPwgkp2NlUVacwxH6KPykYcDrhiATiJqEIzng
         PPM8liRMY+cC3gMoqvuk74A8C9GpTLIVKXxU6P2l0vKuUsiOu1ch5Gu3DwJRirYyRrt+
         d/pumGGxL0IwxNc5lojqYJuP5GxAxrU35hh9DPNa+xA/lePQyRZL42gzn8W6BPQ7rvcA
         rJIw==
X-Gm-Message-State: AMke39mp/TbWfIPQbkDpNAbT/nYhFNRRWppL9auJh99qTf07QNd5vpM0QiisLRvQJw3ANg==
X-Received: by 10.84.169.36 with SMTP id g33mr17194670plb.36.1488113122573;
        Sun, 26 Feb 2017 04:45:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id u14sm24791040pfg.18.2017.02.26.04.45.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:45:22 -0800 (PST)
Message-ID: <58b2cde2.0edf620a.b79de.50fc@mx.google.com>
X-Google-Original-Message-ID: <20170226124513.GA17743@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:15:14 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] staging: sm750fb: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in sm750fb driver.

Varsha Rao (7):
  staging: sm750fb: Add braces around if statement.
  staging: sm750fb: Fix line over 80 characters
  staging: sm750fb: Add identifier to function definition argument.
  staging: sm750fb: Remove unnecessary blank lines.
  staging: sm750fb: Added spaces around arithmetic operators.
  staging: sm750fb: Replace NULL comparison.
  staging: sm750fb: Remove blank lines after { and before } braces.

 drivers/staging/sm750fb/ddk750_chip.c    | 14 +++++++-------
 drivers/staging/sm750fb/ddk750_chip.h    |  2 +-
 drivers/staging/sm750fb/ddk750_display.h |  5 -----
 drivers/staging/sm750fb/ddk750_dvi.c     |  6 +-----
 drivers/staging/sm750fb/ddk750_mode.c    |  5 -----
 drivers/staging/sm750fb/ddk750_mode.h    |  2 --
 drivers/staging/sm750fb/ddk750_power.c   |  5 -----
 drivers/staging/sm750fb/ddk750_power.h   |  1 -
 drivers/staging/sm750fb/ddk750_reg.h     |  4 ----
 drivers/staging/sm750fb/sm750.c          |  1 -
 drivers/staging/sm750fb/sm750.h          |  2 +-
 drivers/staging/sm750fb/sm750_accel.c    |  6 +-----
 drivers/staging/sm750fb/sm750_cursor.c   |  4 ----
 13 files changed, 11 insertions(+), 46 deletions(-)

-- 
2.9.3


