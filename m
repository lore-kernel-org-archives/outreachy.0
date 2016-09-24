X-GM-THRID: 6333834735065759744
X-Received: by 10.157.61.137 with SMTP id l9mr2700884otc.53.1474710818889;
        Sat, 24 Sep 2016 02:53:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.8 with SMTP id l8ls1135425itb.14.canary; Sat, 24 Sep
 2016 02:53:37 -0700 (PDT)
X-Received: by 10.98.29.7 with SMTP id d7mr2764870pfd.22.1474710817196;
        Sat, 24 Sep 2016 02:53:37 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si2905032pfk.2.2016.09.24.02.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:53:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so6389611pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HmFwz2gnI+cPQDnaIgBDigsq1L6FYS1LSNHr4oIA4r4=;
        b=DHkvb6xXsTS/ECNlVrf17H1dsLrniYGViOU8XpTdked1SjTWQPKwNMH29qmuDY/OYr
         R6GVgtiMBQ2qqqHd3MNyP37KJ4a0mq+ccVOi7d+QcXv5UypGYQ9gkWw/c3EASebw4xpe
         6A38uBExc3imGl5XdCUdhBX6Kdw5I8Njy/TT3smKjx9HYcgAPPiY7gPUu+URXiVMD1xu
         EJOg0jQgDDmvsODdsjrYhodYS3GcuzaEX/V2eRySGyWUBgae/L4IuxQGLBkciJHBg7yW
         JwBVRd3ZTU0gWokuyZIcntwhVSqNT1FR7lNabI6CUi61tc4bjDEknYfguJ2GegN0yzw1
         WIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HmFwz2gnI+cPQDnaIgBDigsq1L6FYS1LSNHr4oIA4r4=;
        b=I3gEzggT3c8dMDQhme7TO+6ijT4s1ws+dJNt9acMGBU4+UhoeIBA2XEN6oe1jlfECc
         dXJbHq7LtZYZ3/baZQe7m58nI0IEWMzN0zsSy7LNNXpwzzY7U9NZVrieY4yPrB1wH/eB
         r80g6UndCn8bCgliEKwwdKF4xBR8BrFGVRnHchPAtqVXdrYfUZyHAQl6Iv/3rvM5sVQY
         t43kUfgAz2vqJ8jlUlY2igDsvbGl41WHTPbOom+spwyCzVZz+Sg8YIthOrhcyjncx04E
         rplS14Xh121FdgyTUGy2F7U9vKdIH6S3u/YJ3nwiWr/7plP+3Kv+CTOBwwNmG8y4JANF
         IenA==
X-Gm-Message-State: AE9vXwOyq4vbb8O+jlu/0pOmjBzulhp5DgksZm+bbpsssTaQ0eNVJTJ5Ph4mAzqtC7UbPA==
X-Received: by 10.98.208.195 with SMTP id p186mr19996140pfg.90.1474710817050;
        Sat, 24 Sep 2016 02:53:37 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s1sm17228558paz.47.2016.09.24.02.53.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:53:36 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:23:27 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Namrata A Shettar <namrataashettar@gmail.com>,
	Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	Tapasweni Pathak <tapaswenipathak@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/6] staging: media: lirc: Resolve checkpatch issues
Message-ID: <cover.1474708455.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple checkpatch issues.

Namrata A Shettar (6):
  staging: media: lirc: Remove multiple blank lines
  staging: media: lirc: Add space around '+'
  staging: media: lirc: Replace data type with pointer of same type
  staging: media: lirc: Add space around binary operator '+'
  staging: media: lirc: Mention data type along with 'unsigned'
  staging: media: lirc: Replace data type with pointer in sizeof()

 drivers/staging/media/lirc/lirc_bt829.c    |  5 +----
 drivers/staging/media/lirc/lirc_imon.c     |  6 +++---
 drivers/staging/media/lirc/lirc_parallel.c |  6 +++---
 drivers/staging/media/lirc/lirc_sasem.c    | 22 ++++++----------------
 4 files changed, 13 insertions(+), 26 deletions(-)

-- 
2.7.4


