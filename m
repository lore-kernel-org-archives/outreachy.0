X-GM-THRID: 6331967538741641216
X-Received: by 10.237.41.70 with SMTP id s64mr4003768qtd.37.1474276077725;
        Mon, 19 Sep 2016 02:07:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls2343682ite.21.canary; Mon, 19 Sep
 2016 02:07:53 -0700 (PDT)
X-Received: by 10.107.180.17 with SMTP id d17mr3861283iof.53.1474276073305;
        Mon, 19 Sep 2016 02:07:53 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si5036859pab.1.2016.09.19.02.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so3717157pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 02:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SxFn5+QlZWpdh8hdilgoACuEhpZ6FV39vZFTt2yhRUE=;
        b=rLkxn2c9JBQKUsObD6kiB1bUYMuGEZezoeCoMwCx4zhY1/aHHjT/7useHZ9cpu/JK6
         1LFYVDvSGSstp1tfgyJ8FdFtOOqfaQv6ppXEDTZireqVVmICUFMlZwC2sbhRVkQbQnW5
         azy5OBjH538NiPoauOgb85/gxNqBlwM0UTv1l+YwnOKTTWqq9r0zmliIH78BKfEtJNgq
         0HX7ikMMEXCYAMcSPFHHmq1DTqxvzsSVQJS4Gi29m26WL1BFKFvEJVNfhrvJWXwWecWW
         ZT3KCF/3Lx72gOfC8GU6+4OY8ch1QoaioUVo7Hp31N74pnYN1y1il5EhplsJX6DrQ/wl
         qnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SxFn5+QlZWpdh8hdilgoACuEhpZ6FV39vZFTt2yhRUE=;
        b=ba4c8ut9BbsP8sxuYG1OJiglT1dqsLBj4yLy6n+/C2nwHlzrcbIPhiYXdw2JrjeAzF
         ETRmKyZS1yuADBlTGACUFW/0tv5tyPgde0GBD70l6rm29D974NV3rGTqR8LPkJ4E52Tb
         S9hXLS17L8qTTmXZdI0hOuTqthJdevKiThaFZne67WOx6Oswr6048vQprgF6rrmi7glo
         OzbmosNytjc/hmln1SMi393/ls/QwwTVCL00Lsy1J4jM0gH9u620E3LdKOHuHZ1h1QgF
         /rODtVcyACaGkhCTJbgp1LIggnsu5OVwBSaRvk8ps+kJpt2bWKOI1I8//6+SywIj0mDq
         JmKg==
X-Gm-Message-State: AE9vXwOnAOXjKsHb+CHuY8QSsCR2QIpaIrMOYUx6HkL8Lz+ATDMQUkaa59/+6opMdGf/jg==
X-Received: by 10.66.88.227 with SMTP id bj3mr45746997pab.113.1474276073132;
        Mon, 19 Sep 2016 02:07:53 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id n77sm35440986pfj.31.2016.09.19.02.07.51
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 02:07:52 -0700 (PDT)
Date: Mon, 19 Sep 2016 14:38:33 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Staging: Use x instead of x != NULL.
Message-ID: <cover.1474275111.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL. This patch is found by checkpatch.

Sandhya Bankar (2):
  Staging: rts5208: ms: Use x instead of x != NULL.
  Staging: rts5208: rtsx: Use x instead of x != NULL.

 drivers/staging/rts5208/ms.c   |    2 +-
 drivers/staging/rts5208/rtsx.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


