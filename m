X-GM-THRID: 6333834735065759744
X-Received: by 10.176.3.247 with SMTP id 110mr2865959uau.41.1474732793570;
        Sat, 24 Sep 2016 08:59:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.24 with SMTP id o24ls10712279otb.35.gmail; Sat, 24 Sep
 2016 08:59:53 -0700 (PDT)
X-Received: by 10.31.233.67 with SMTP id g64mr1093761vkh.33.1474732793234;
        Sat, 24 Sep 2016 08:59:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f12si3000576pfk.0.2016.09.24.08.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 08:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so6706753pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 08:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s50B/J5q+s0qWU3DSopb+O10QBkgcvdoghelVv7d2tc=;
        b=mYLNgStq9rKEwhwrXsYhJqGNr2UH9Lo3vS+68RqzPZOsVNDLrqPNfYE6oRRsHaZiZa
         wYiCZnuJZ7oXYPO/uHA1+3L/eQohD3jwMev+aVU821SuNC8js50+ireK61ilR7L7iPYv
         BXo8evtKqsvgkkqmjLbxMQUGpJfBWHIrSQKkVZHS66XNKqOH6Mc+1IKU2+W9nHGoO0/C
         abwH+U1XqFdBT7HWwq3dVqgFnTO4dQe9ILQL2FX74HI5UiUtMGAtPY9alGBz3+e9Jp2w
         x+xR3TY3BHhsgDiJRQLsXVVi1WnsBtbTPNNHAF+nyeevIgL6cDZKw89ii0zeKGt2icUv
         mOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s50B/J5q+s0qWU3DSopb+O10QBkgcvdoghelVv7d2tc=;
        b=VKB2r1fwt4Vq5Y/K4EvewVWB0TcgmnJbV2uFgLv9lpUsfsk4GUca9Um6bdcYCxhElc
         4G6B7h4yVu4Rr0dZiTKV8Bg+RB7yLCXH785RlpjSk7dU7pmZrpQa7y8zo2Etyy317H+1
         1I8yha8Zp99VB0aJty7N98o8Q1XZOPLnQKKatH5TRxDTnp8uXYg961v7VqduS9hg9u2W
         AlFHtUXaDXpX5+MsSxkrbj5abDWgFRVFKdZGBdMNm6ljQBa/9ABY3xkRlS5PZ3OU550+
         x1cLg62h1CQGzF7Mx+HIKfXo2VBhkmimgT5vky0EMzuyqzCZUWVMLmTAIm3iX+w2AuYi
         mqkg==
X-Gm-Message-State: AE9vXwMZ+n8H1VZPariFKtb3XGWEB3i0GHfbX67R3N7t1aPa5eBk6MUpxo4cufnSJQnvGA==
X-Received: by 10.98.158.90 with SMTP id s87mr22601756pfd.117.1474732793017;
        Sat, 24 Sep 2016 08:59:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id y9sm19566702pfk.2.2016.09.24.08.59.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 08:59:52 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:29:46 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/6] staging: media: lirc: Resolve checkpatch issues
Message-ID: <cover.1474722340.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple checkpatch issues.

Namrata A Shettar (6):
  staging: media: lirc: Remove multiple blank lines
  staging: media: lirc: Add space around '*'
  staging: media: lirc: Replace pointer of data type with pointer of same type
  staging: media: lirc: Add space around binary operators
  staging: media: lirc: Convert 'unsigned' to 'unsigned int'
  Replace data type with pointer in sizeof()

 drivers/staging/media/lirc/lirc_bt829.c    |  5 +----
 drivers/staging/media/lirc/lirc_imon.c     |  6 +++---
 drivers/staging/media/lirc/lirc_parallel.c |  6 +++---
 drivers/staging/media/lirc/lirc_sasem.c    | 10 +++++------
 4 files changed, 13 insertions(+), 26 deletions(-)

-- 
 Changes in v2:
 - Subject line and commit messages

2.7.4


