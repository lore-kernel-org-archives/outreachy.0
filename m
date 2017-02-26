X-GM-THRID: 6391488728330665984
X-Received: by 10.157.7.193 with SMTP id 59mr4898970oto.148.1488134434704;
        Sun, 26 Feb 2017 10:40:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls1656654ita.12.canary-gmail; Sun, 26
 Feb 2017 10:40:34 -0800 (PST)
X-Received: by 10.107.22.4 with SMTP id 4mr4559282iow.61.1488134434049;
        Sun, 26 Feb 2017 10:40:34 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h79si2499pfh.2.2017.02.26.10.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:40:33 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x243.google.com with SMTP id s67so10127699pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 10:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HrEbieqMV2aS4CCh/5pAN2V4knrBPgqqGueDrhCpU5E=;
        b=ssMrGGq27ZZgFZQpYUPL+F8wb7YVB/9NGmmIwjwqAsWn4ssChkXgq3qrxWtBWWWrog
         Xe0G7CjIcHjsqJAA3xV3UQk/kAqOJhuZRqvOMYjEl8aEz4uQ1uP5zrwnmJyzdFuTQJ/r
         0bhhevTaEOvQN5/5Hxd26Byf/+emwnoryxSgUJIYuJ5Co6ss5FpBt85h99b5TvE2TVbf
         Jwk1kZDjms7Ne57w3vChILaezeDINNHoPual6AY7t1PWIVrasBNaxXRIyoHjCU8e7Sq2
         C6G+1Z8Ur1SAdu6U304dDAZxGN1DRzp+MG31p01ls4KDjc2SlbNdkNOXyIAJgSJgrFvI
         3ixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HrEbieqMV2aS4CCh/5pAN2V4knrBPgqqGueDrhCpU5E=;
        b=BOjdg9js58kOVMLE8MW356ZNHC98Lg3GUdgUQwdUrLezLbPUCj/jGh2doG79Fv5ONk
         RtpThStFLO975KJU/Dzlge7p1ipKxffFXImAXQHADqh+owTiRMdHItE6yZAaR4TNUqLC
         ts5ryic5hsJ39NEBQIVKwaAA1KJSuSkBxUimxbwL7gBoMyg9WgJMQ4rHoG1H2CsgVhzV
         nWG47jPl3zfwvzq2UNFx9eEiKuj6iqMATlwJsLnShaJIE646/2RuHlmAF6HKVUwxby5X
         dduZkyD6iicy8mnWL3feOTAlycKRqbvv6R+BpdetlIsEMN/yqDCA/nTCCmNBDngHwIFz
         I3IQ==
X-Gm-Message-State: AMke39nkLJdcQz7bBB5R3jKyFW2F6s7X/zBq6Q9GmK3AIi9A4yEYbTpKu0jkSkNnD9SnRovk
X-Received: by 10.84.231.205 with SMTP id g13mr19047778pln.30.1488134433804;
        Sun, 26 Feb 2017 10:40:33 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id 19sm25884810pft.46.2017.02.26.10.40.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 10:40:33 -0800 (PST)
Date: Sun, 26 Feb 2017 10:38:21 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [RFC 0/3] staging: iio: meter: Header file maintenance
Message-ID: <cover.1488133199.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary definitons, collapse header file into source,
and clean up includes in implemenation.

This is an RFC because the placement of the definitions is somewhat
subjective, and I've attempted to follow examples in upstream subsystems
by placing them near their implementation.

Katie Dunne (3):
  staging: iio: meter: Remove unused definitions
  staging: iio: meter: Move header content to implementation file
  staging: iio: meter: Clean up #includes

 drivers/staging/iio/meter/ade7753.c | 70 ++++++++++++++++++++++++++++++++----
 drivers/staging/iio/meter/ade7753.h | 72 -------------------------------------
 2 files changed, 63 insertions(+), 79 deletions(-)
 delete mode 100644 drivers/staging/iio/meter/ade7753.h

-- 
2.7.4


