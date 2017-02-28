X-GM-THRID: 6391488728330665984
X-Received: by 10.157.23.43 with SMTP id i43mr23798ota.65.1488251788778;
        Mon, 27 Feb 2017 19:16:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.20.13 with SMTP id 13ls2549248itg.18.canary-gmail; Mon, 27
 Feb 2017 19:16:27 -0800 (PST)
X-Received: by 10.107.13.194 with SMTP id 185mr149817ion.49.1488251787971;
        Mon, 27 Feb 2017 19:16:27 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si76293pfd.3.2017.02.27.19.16.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 19:16:27 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x244.google.com with SMTP id s67so3058706pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 19:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f6NKLQhq5awZyucr370BhTWQ8b9P3CpDO1y3DrqJAMY=;
        b=V05zqqxGVD4EzoAO8Jp03LzsrHDXrV1bOSP89eAaCwPUAgYNWMvxihEL1SDoOD+C3M
         KbxHfVxMDO7eIxoLp3WxlXdXVxjMLLDLtnUSO47AAiciqZojegthXvg6S35OtTSDBjL2
         yFOwDBFHtt07jj+kotws7c281TCm5SxuvD2S9lPL8d2C8iIoL78jmva4UHW3QaBuEW3R
         F95fUix2aCxU53qWeDZXBhX0kgfH4lxkP8QhYDXNicbNoPCLLEM5fwZ+Q1DGPvp0pFT/
         nKc8NJ4gJiSJLe2O4Lhzl3vayOK2/ErgJQoKSuoPjRWufPGvnrBkU0sHZ+Ww2b0SbHS4
         Q/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f6NKLQhq5awZyucr370BhTWQ8b9P3CpDO1y3DrqJAMY=;
        b=DDckwn2734bqyorSexF/M5Hqh/LnlVUAVoQnPR4CWJsO5RsBp90VV7QA4fkWIf03/Y
         yPdxkHZUerhRHMSH0MUTwKmAB/XYlLYgTSyJ4W7/S2kIhTzCOqA4j2XGOjFFSY1dsPLt
         rUQLaLe9LhVAgSjWI5gdOH2qf3RK2lveI4OnlpbwR+7tdhi6N8tsLY8hwwMWpWreqPem
         PTXKinT4EuFXqRPGqdGW/ShvSs13zOuh8ljmz1eVSObXcyUQqR+Ae1c6mbv00z6YBviH
         8hWO+/BcfP8h0mS+NTIx9zCf24o1xg0J4cQqYiaiKNMYU3ULBgUnZZUexly+LTocg/w/
         44Eg==
X-Gm-Message-State: AMke39kQ+kYyOaiC9TVa91fjo003YOTWFX3EdoxvVXthAwzX0CqVsudATinM4RiiFjLjRr1a
X-Received: by 10.98.15.143 with SMTP id 15mr119860pfp.100.1488251787601;
        Mon, 27 Feb 2017 19:16:27 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id u75sm412705pgc.31.2017.02.27.19.16.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 19:16:26 -0800 (PST)
Date: Mon, 27 Feb 2017 19:14:15 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH 0/3] staging: iio: meter: Header file maintenance
Message-ID: <cover.1488250884.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary definitions, collapse header file into source,
and clean up includes in implementation.

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


