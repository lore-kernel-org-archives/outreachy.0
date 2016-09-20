X-GM-THRID: 6332315727900442624
X-Received: by 10.157.29.165 with SMTP id y34mr790619otd.50.1474357146458;
        Tue, 20 Sep 2016 00:39:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.195 with SMTP id n64ls3863067ioi.36.gmail; Tue, 20 Sep
 2016 00:39:06 -0700 (PDT)
X-Received: by 10.107.164.205 with SMTP id d74mr15919108ioj.8.1474357146015;
        Tue, 20 Sep 2016 00:39:06 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id e66si2192792pfk.2.2016.09.20.00.39.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id my20so537115pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2egmj3ShUhMehPJanUT1J/JdEL7+MWdcMHwcmVRcNmw=;
        b=zaU+Gg6911VdZRZgxGHPgltmsRGRyk3SPU1K6P6j7qG9hyLPcJa3mx71aqiZAUvPiD
         +qqGnyj8y55aNQ14D7cXNc1s/nWsobEbLDH+AyoZc4XHPGAVWj+Q+OXTWtSmlgyc6JbE
         HsaG0u+FY4wo37v0XIRE2JEKfhfLme+VPqDcWOSFqj0LZMHC94DdTePLRWABwvfrS/P8
         s0Q3cgIbmQ1FeAGPyDBsoAmO6N4G3TBUf670+cX3YpZS3WRKSGWUFG2LBN/3jfXJTdaW
         Hi4G+5NJ0QiMqEa+ZC6Jx68AVh80dhWk+EUqj270FzrhgKRfhIo8wjLL4cFIzt7ZFO1k
         GOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2egmj3ShUhMehPJanUT1J/JdEL7+MWdcMHwcmVRcNmw=;
        b=Q70hqFntMUFTSRTo8WJdrssavbXBy6a7M+K3E6L+xxtvKWRArpfqZ+nFrE9y1WyiAN
         scHm0t1z7bJtb/Ws6U6gSG7t5exJNX7xXSj+2RtYPUWtDZRo8vy/Yt5qIAMg6PxqoIRR
         I4mylsxznmAPMar1VxjJxGoPvRvDZKhrBhWSzSJnSMQF4fC4QxzQhH/F9ddG1MQnQzzs
         2cm6fxzlRURbvxamQ65a9JCjwI1xZ64jeEGkv6NUBkNOCzCwUitXxGn1Oebp9m5FdPRl
         t3L9Y15cviJqaoFuNfUFtpPsskv61kUZsSVsVAI32Bs0BLv3dPW1n94mYG1o2eQXjvjt
         sg9A==
X-Gm-Message-State: AE9vXwO3GyHCzp7k1MtM+3pyXQv9xBwWA75gMxIAIvQx+CcAJ3ZvaQQOEAnypHr/AeKLMg==
X-Received: by 10.67.22.132 with SMTP id hs4mr4944494pad.88.1474357145670;
        Tue, 20 Sep 2016 00:39:05 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q4sm76504819pfb.18.2016.09.20.00.39.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:39:05 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:08:57 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] Merge assignment with return
Message-ID: <20160920073857.GA8747@toblerone>
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


