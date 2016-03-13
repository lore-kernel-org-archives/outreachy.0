X-GM-THRID: 6261584556721176576
X-Received: by 10.140.157.69 with SMTP id d66mr15299344qhd.13.1457888762629;
        Sun, 13 Mar 2016 10:06:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.210 with SMTP id 79ls1745577iop.77.gmail; Sun, 13 Mar
 2016 10:06:02 -0700 (PDT)
X-Received: by 10.66.224.68 with SMTP id ra4mr13431060pac.45.1457888762262;
        Sun, 13 Mar 2016 10:06:02 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x242.google.com (mail-qg0-x242.google.com. [2607:f8b0:400d:c04::242])
        by gmr-mx.google.com with ESMTPS id y131si1153213ywc.0.2016.03.13.10.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) client-ip=2607:f8b0:400d:c04::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x242.google.com with SMTP id 14so10732131qgg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ojbDwheU46YL5vyuAucrTsYeulA7B9b04XczXgISJzo=;
        b=o7lmroI2yjDz35NZZgrIFO65sEOOViCITr4ti8IHR9KCc7T1fAisz5R6q3nJ/R92Z2
         b3cuYgr60zV49D4HY1Y5Zi8JB6y13hjvTvS5nVpEQtFXHGYTxN3q3vkEG2l3HuK/1AVK
         kL6HpkLqs9aUMwbTarZiQZXPM574PP7hjNiL4071QzzYUy81UNn9ZqufvXq17gogTOT/
         Lnssx0matTZZI6AgX4YwHUORlz+dQu8OrRtCRhCYp6WoZTOoiP+ZnkvUT0cprCN6p3al
         ds3LXTK/1TNf+JocbPmDwVvQkI12aizJ6EMTcn7Syp+/PcCYEVWTe7IN2xLjNlqXypki
         UZwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ojbDwheU46YL5vyuAucrTsYeulA7B9b04XczXgISJzo=;
        b=huDP10Oi89Vlp3chjp10RuLUT2L0wg7mnRuXp65OrTVkMg4on8Sq91ohwFAn/y2R2K
         4N9DdLnXjPNp6YLOXu8Ryq9TthJjKkl7NaIpFj1IN6yRepdBsgMhmnsnAn+3MEwkkDfg
         pxsRuyO0VVe6+m+cGlCk0J3e69DBkrpyU8DZqm4QOaemnpEFYzMVYN+l01A1HhvQYTgI
         SwsgXd6dkEXad6UHr9Hf2v5/QAo7n62GAZHFX5FfbHIUhHU7LHnCE5AUFJWQWwtZRhIc
         b7bpHLfY8TJuqcM8LD4ashnXNIFBrt2t+3CEsNov2EgghKj+ulgwDqLqd9v+gkt+b2cg
         lFBw==
X-Gm-Message-State: AD7BkJL5oIa4v8jMTABnwMj7VWKhnZtR9Y4hEUXIukO/s3a9JmfEbtuvEbzaoRjF4P6/6A==
X-Received: by 10.140.95.117 with SMTP id h108mr24895074qge.65.1457888761924;
        Sun, 13 Mar 2016 10:06:01 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id j68sm8442376qge.41.2016.03.13.10.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:06:01 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:05:57 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/8] staging: dgnc: fixes multiple coding style issues
Message-ID: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch aims to fix multiple checkpatch.pl issues and
warnings in dgnc driver, mostly on dgnc_driver.h and
dgnc_tty.c files.


Juliana Rodrigues (8):
  staging: dgnc: renamed SerialDriver to avoid camelcase
  staging: dgnc: renamed SerialName to avoid camelcase
  staging: dgnc: fixed multiple line over 80 characters warning
  staging: dgnc: renames PrintName variable to avoid camelcase
  staging: dgnc: renames PrintDriver variable to avoid camelcase
  staging: dgnc: renames dgnc_Serial_Major variable to avoid camelcase
  staging: dgnc: renames dgnc variable to avoid camelcase
  staging: dgnc: renames TtyRefCnt variable to avoid camelcase

 drivers/staging/dgnc/dgnc_driver.h |  14 ++--
 drivers/staging/dgnc/dgnc_tty.c    | 151 +++++++++++++++++++------------------
 2 files changed, 86 insertions(+), 79 deletions(-)

-- 
2.7.2


