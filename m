X-GM-THRID: 6339006763773198336
X-Received: by 10.129.102.137 with SMTP id a131mr6348720ywc.80.1475919959080;
        Sat, 08 Oct 2016 02:45:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.59.15 with SMTP id i15ls2620060ioa.28.gmail; Sat, 08 Oct
 2016 02:45:55 -0700 (PDT)
X-Received: by 10.98.97.193 with SMTP id v184mr3460868pfb.10.1475919955220;
        Sat, 08 Oct 2016 02:45:55 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 80si2869495pfw.0.2016.10.08.02.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so4197901pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gp43AXDKXxz9rHMyahfk7u9TyNmtUJ1Xt8QcXX2dhC4=;
        b=Jyz6gwrg3UH5Aupp4Jhp0oHKOuGeP3UncQ6Uvh2WKDFIX+bP2g1jq1q44R8UfM5EW8
         ppI0c3502o8LBk6KRZKf9Qtzh+SrP6igV7Fhqm8TvR4hpOVkpKUJ2+g4XCafsoo1DDIX
         iElm4gfTQL8UamCCQP8B/zJITZYiD7hl6qtM29SiWbTecXl1S9GGTD+AipAxYrlvG1LM
         sibClDv+CzwdNQR0v82P1GScFqyijjRzPEYauoeaaUU0ecCPo1zevG3lDYwbXCi239JU
         yXYz/e2A2t1i3mVZpeEN8ZYQvyQWhFz0SL2s60/2SsGOhZwDHdtWklrqoT7FprV3LJ5A
         mM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gp43AXDKXxz9rHMyahfk7u9TyNmtUJ1Xt8QcXX2dhC4=;
        b=ZMWbFx1fR74MLoQEom0nBYOH/KRRQNzMWPoDZjpqN6/A+Msa7VLPeK+cHFxhxbFY3p
         P/3KOd1LL11Le9y2JO6qq8+CttJROnRVCuXluknB7DzOvuBMYosiXs2snYy3MqAiZ8Wv
         QGIySZDX128GieSs2mtDunoRGGhwL/hbSuTCRRK0qXF1fklyokReDSjZgYXu3EFWCJbu
         ur8cCXK0DH9feiTrP/3TefqFDmnTQo8cW1ykTN8n7r6+/zQXTQSMLapoTZZpJO5ZUYPu
         jwHiTG0A9wIWKfNViJ0aOlm3B0gs/Al/t1S4fSs9KLqbWUhBLTbWkh9iVjzgRvPfwuTU
         PTJA==
X-Gm-Message-State: AA6/9Rn45lYXDCFaqG3KJbeD30nvQPtebmoFH5YqNp6OGhox4NAQ1ksjXxFQ2zH78h/YIw==
X-Received: by 10.98.103.193 with SMTP id t62mr26393028pfj.150.1475919955036;
        Sat, 08 Oct 2016 02:45:55 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id s74sm19966827pfs.44.2016.10.08.02.45.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:45:54 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:45:51 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 00/13] wlan-ng prism2sta cleanup
Message-ID: <20161008094551.GA12055@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patchset focuses on solving the following checkpatch warnings
found on wlan-ng, mostly related to prism2sta file:

  - Lines over 80 characters
  - Block alignment to parenthesis
  - Camelcased variables and structs

Changes in v2:
  - fixed alignment blocks
  - changed pointer line break for better comprehension

Juliana Rodrigues (13):
  staging: wlan-ng: aligned block to open parenthesis
  staging: wlan-ng: fixed lines over 80 characters
  staging: wlan-ng: renames hfa384x_InfFrame to avoid camelcase
  staging: wlan-ng: renames hfa384x_CommTallies32 to avoid camelcase
  staging: wlan-ng: renames hfa384x_ScanResult to avoid camelcase
  staging: wlan-ng: renames hfa384x_JoinRequest_data to avoid camelcase
  staging: wlan-ng: renames hfa384x_scanResultSub to avoid camelcase
  staging: wlan-ng: renames hfa384x_ChInfoResultSub to avoid camelcase
  staging: wlan-ng: renames hfa384x_AssocStatus to avoid camelcase
  staging: wlan-ng: renames hfa384x_authenticateStation_data to avoid
    camelcase
  staging: wlan-ng: renames CQ_currBSS to avoid camelcase
  staging: wlan-ng: renames ASL_currBSS to avoid camelcase
  staging: wlan-ng: renames ANL_currFC to avoid camelcase

 drivers/staging/wlan-ng/hfa384x.h    |  42 ++++-----
 drivers/staging/wlan-ng/prism2mgmt.h |   3 +-
 drivers/staging/wlan-ng/prism2sta.c  | 167 ++++++++++++++++++-----------------
 3 files changed, 109 insertions(+), 103 deletions(-)

-- 
2.10.0


