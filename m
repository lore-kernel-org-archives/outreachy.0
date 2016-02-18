X-GM-THRID: 6252531554516467712
X-Received: by 10.98.93.217 with SMTP id n86mr5585189pfj.11.1455780946038;
        Wed, 17 Feb 2016 23:35:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.202 with SMTP id s71ls2344200ioi.85.gmail; Wed, 17 Feb
 2016 23:35:45 -0800 (PST)
X-Received: by 10.50.70.1 with SMTP id i1mr1608781igu.2.1455780945672;
        Wed, 17 Feb 2016 23:35:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si767891pfb.1.2016.02.17.23.35.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 23:35:45 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so1672367paa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 23:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=9olyBsK9MBlfzbSwcKxZNQWL9i1bAdutVzTl8nHPXTI=;
        b=a96MQWEZmVQ8Lwgyq9dww2AmRyXJH61zpnU2Zia3KndEdDb8Zu2+2t0A0lnuJpk+Pg
         MiFN6JrUSDrZ+829NE4TGzUhIafgaMfWygwvg8uan6WcOuulEiC2ZTWoI8y3FRi5Z3ay
         fT++KbK5Uov5DvA9gV1mRynmJWrs+BXBr8KNjWJOSKqzPWvyNdJVeLJ/W/JPj2HSFCpx
         cswMF5/UkNYVpz23xNCiqf0UC6XBaMqoESVZmlhgnV8AZX0Q4TCyhHfgrCj0fqcWe+H5
         dZjWvILleTlwAncaL2dblw5hUP5BLuSmgaJ4FEQpZjU1UZzeZ97gTNrEoVN6+Q7vFKMm
         HYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9olyBsK9MBlfzbSwcKxZNQWL9i1bAdutVzTl8nHPXTI=;
        b=kj1veAQZfu4B12olAgU2zDVdmKFdYxnm7MPRx2/XEQUDPRLwbUQij6OGvlsxLHMl+Z
         G1BO2fS68jzWD8kKorEjk3/h+NM4LAjeybSMHNO6sxfp/HY4ZDiV5OwzKtjYQGDolp++
         TkwcJ98iACwaUTMIiYg4tOnf3Ve0/70aBpRzItIxb5jqQvU9ZFGZWn7xk5DnLVL/R1Ne
         BlWo8v/mlBKcKiuMGEoASly/jQuOC9bPJKx7VLz44uNGCWPLFyul4cRs5EkyNCuyGWdx
         f+sOePq/vsYx3mrmmx1fiNhDwWe/2taUH708pcIezNtkWRHtizSLPmOh0V16z7Lg/p5J
         EsYA==
X-Gm-Message-State: AG10YORAnw6EjtoZxWPNBYaEOrzTTYrWdZy58td6XIjxe5WcoP/rzvKQO6+LZw6jsjoUuw==
X-Received: by 10.66.102.104 with SMTP id fn8mr8108976pab.129.1455780945551;
        Wed, 17 Feb 2016 23:35:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id wh9sm7692424pab.8.2016.02.17.23.35.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 23:35:45 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/5] staging: iio: light: fix multiple checkpatch issues
Date: Thu, 18 Feb 2016 15:35:35 +0800
Message-Id: <cover.1455730714.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Eliminate checkpatch checks and warnings in iio/light.

Eva Rachel Retuya (5):
  staging: iio: light: properly indent to match open parenthesis
  staging: iio: light: omit space after a cast
  staging: iio: light: fix block comments according to kernel coding
    style
  staging: iio: light: add space around '*"
  staging: iio: light: fix multiple assignments in a single line

 drivers/staging/iio/light/isl29018.c | 39 ++++++++-------
 drivers/staging/iio/light/isl29028.c | 27 ++++++-----
 drivers/staging/iio/light/tsl2583.c  | 92 ++++++++++++++++++++++--------------
 3 files changed, 96 insertions(+), 62 deletions(-)

-- 
1.9.1


