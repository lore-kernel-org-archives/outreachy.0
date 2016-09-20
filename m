X-GM-THRID: 6332315727900442624
X-Received: by 10.107.37.10 with SMTP id l10mr16302909iol.18.1474358405694;
        Tue, 20 Sep 2016 01:00:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls1291069otd.5.gmail; Tue, 20 Sep
 2016 01:00:05 -0700 (PDT)
X-Received: by 10.13.220.66 with SMTP id f63mr5618614ywe.129.1474358405383;
        Tue, 20 Sep 2016 01:00:05 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si5977271pfw.1.2016.09.20.01.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:00:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so569719pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 01:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2egmj3ShUhMehPJanUT1J/JdEL7+MWdcMHwcmVRcNmw=;
        b=yIeqse/staYPmVBSuxB7OB6KilEj6uqBd3QSd1rQwF6q5P1KmkpE6NZANQuyy6IAcW
         LWfwrpc4ACoJZ3TWzkWenUhYW7G3/fMLVwZpC7WioPvIwc5ionylcJO/dg9rqobCv22H
         yALArDMj7pHw7Xfe1iO75ttWJOYTzedHgFwdNNtXmlaurKmpQ5Hyuzuq49lnEv/yYifh
         +DSiFH2KaL9lzlXyrX0ZgE6uH0z71JJ4TYsb714rekXur0cm5Hibp0qQ1OI43kfIOiAY
         kOu3xkPOSxHoLS3zq82Z214IGKpA1MnrqiOoY+78nq1a9llC8rXrQRXKf5D8acTpYjG3
         m4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2egmj3ShUhMehPJanUT1J/JdEL7+MWdcMHwcmVRcNmw=;
        b=f1/PklxHcKVR5PUlR5OvpCNVhIoRkyOL3fLbJQ3gULO0WawWsZalAHnDwcsqnRxI2h
         oNM+D4HBcV7D9Hwt2aMYM9Twd9YjkDYGqfzz5/8WdF8HcYB2oTURRJ7HMZPWlzMsLoF3
         u3kGRfQu8stjrFGBJM5Uoa2vzLc22kzc8rtQIqvk0XYjB0kp/xoXTcPHZjya/xCcQij+
         Pp6X0/F0k3doxQila8dGfYQR4iUhWk7ZTP5di7RnVby4bpdBGcxPmXM3RV6nZby0/6Tj
         ZAcQ/KWsr8iBQgY5oLaT9lczTrXsPErO6VGrqD6dX0bUh87hWJY7aB5RQyXvZUQnh0Eo
         8WdA==
X-Gm-Message-State: AE9vXwMdwqtJ9s+KXOjA4Lyy/74jMhhnumKsIg4I0ahh9SxYCYlbZmjSP+Ds6AK2E/qEGg==
X-Received: by 10.66.75.39 with SMTP id z7mr43371538pav.83.1474358404957;
        Tue, 20 Sep 2016 01:00:04 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yu7sm36811307pab.45.2016.09.20.01.00.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:00:04 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:29:57 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] Merge assignment with return
Message-ID: <cover.1474358156.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Merges assignment and return statement into a single return statement in
media drivers.

Change in v2:
Make the commit message clearer.

Rehas Sachdeva (2):
  staging: media: bcm2048: Merge assignment with return
  staging: media: davinci_vpfe: Merge assignment with return

 drivers/staging/media/bcm2048/radio-bcm2048.c   | 14 ++++----------
 drivers/staging/media/davinci_vpfe/dm365_isif.c |  8 +++-----
 2 files changed, 7 insertions(+), 15 deletions(-)

-- 
2.7.4


