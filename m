X-GM-THRID: 6391110237247504384
X-Received: by 10.200.33.136 with SMTP id 8mr1638667qty.26.1488123323319;
        Sun, 26 Feb 2017 07:35:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls11555431otb.40.gmail; Sun, 26 Feb
 2017 07:35:23 -0800 (PST)
X-Received: by 10.200.53.25 with SMTP id y25mr2986603qtb.45.1488123322995;
        Sun, 26 Feb 2017 07:35:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si2670995pfk.0.2017.02.26.07.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:35:22 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so9745078pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=ndrWSHSqmjNB6xb0yzOH6rTmx4mtxjFdTNo63KBKNJU=;
        b=R09EIzhGEfCPGZT+G3K9NeUf+LZ2vmCI427+ybjJBCZi7qsU5Yb9aQ6hovFrelek7j
         EhY+GatPi7E6zybZywBhcmizu+BeNhmc1b42QXzsi4GtzzNLQ5wBqY0Wv8MQ5G3OYvEV
         akzfccIa3Z3fuv00ujccpNDwXWQpPUSgtAoOx7IbdrohlE/YQGWAFi9xS3iIg0TSkIa/
         fIZtsK5cY2quUftYJUHHdbfS2uKzEWJozXdwDzn6byzkmcaDLw02O74zK9fDAl+TTbHc
         kxrCZEmEZvJCcZd3kKEIe0c3VyJcju6dt8bRRlAGgmN5SjXBnK9x8Mz0H+TegvZOczfA
         ot9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=ndrWSHSqmjNB6xb0yzOH6rTmx4mtxjFdTNo63KBKNJU=;
        b=jv2pm2xSd7NBr88A4CMi7v0nuC9GiQNqZ32oObXAiKkfd1rlYnzIkD2cqogbioXDvH
         qPJiiqbIyT8b010hls8rAAaH2aF3MvyAXur7nqgaqrBzUEA9GQpu5hoadPJxylf3sBHa
         kaZQh3aeyhrE3aQ0eHpED7elF9HB/qFjHaB+TnMzOF7jgCwyScVFa9gZUUiVjVk9Llym
         m7WMLuppy5Gav0zuNuL6Y3lh05Tl71gei63bZYFTem4Nay/vbQHfGU4MLVHRkpvovQ62
         2fLGIzOstHkqOEiJMrdqO5bScMA90Sw0cL1BUsDTnfvJFG0SZm3Ykn0UeUIn3p0Ha74R
         RuXQ==
X-Gm-Message-State: AMke39kiNbXePpH24Qrezfz4Ld7qb/U5uhZNE+7ZTDAIeKb5T6zQNKpGobBQJhWAfhlB/w==
X-Received: by 10.98.194.153 with SMTP id w25mr15401061pfk.181.1488123322771;
        Sun, 26 Feb 2017 07:35:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id c22sm3251766pgn.18.2017.02.26.07.35.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:35:22 -0800 (PST)
Message-ID: <58b2f5ba.5672630a.66a50.77ab@mx.google.com>
X-Google-Original-Message-ID: <20170226153514.GA28872@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:05:14 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 0/7] staging: sm750fb: Fix multiple checkpatch issues.
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


