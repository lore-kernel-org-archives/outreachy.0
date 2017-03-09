X-GM-THRID: 6395378707824902144
X-Received: by 10.157.16.117 with SMTP id o50mr4597560oto.78.1489040140407;
        Wed, 08 Mar 2017 22:15:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls1041199otd.11.gmail; Wed, 08 Mar
 2017 22:15:39 -0800 (PST)
X-Received: by 10.157.41.240 with SMTP id g45mr4146084otd.94.1489040139947;
        Wed, 08 Mar 2017 22:15:39 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x22a.google.com (mail-pg0-x22a.google.com. [2607:f8b0:400e:c05::22a])
        by gmr-mx.google.com with ESMTPS id g82si1042697pfb.5.2017.03.08.22.15.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:15:39 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) client-ip=2607:f8b0:400e:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22a.google.com with SMTP id g2so5108479pge.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 22:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wLjVq48f0gkf5HwpMeB4/XuyuMXpAUOQDGkmbCM5wAo=;
        b=SErWlgUk+XfF7g9+NP5FVkdXDpE66HW42V81Pg0oC6OWJHTyuUayiX/uKk8sHrWXHC
         xZUDfsVymLuOO4lPWcskHYpr6SRfzOAkB59K0u26TO2UEBODcGtC0pbdnQWm6XKXTG3P
         wwHj0kxMvV/jqK3xNhkMN4SyskcLrGnntv/IKkRAF5ogKckZfxXDksWixBL8gUrj81rH
         ds6tafMGeWHpWBlku/iNELaYKu1XBj+2j1r/mdQlynWOsLx/3tzJ+xGWquQvOot3P58I
         RMYxoCrz1lmLtNSC1RtVphrgkNHwNiwR73EXm9SSvXZgjoPFVKwSxtVRtHlQRG78QoBD
         tGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wLjVq48f0gkf5HwpMeB4/XuyuMXpAUOQDGkmbCM5wAo=;
        b=Jj3byC/1hPLctDl6R9tXX8+FOB0CdA6j9ZGbuBZBnV+PbPwMRTinojnx3FXCTfLdHW
         YeuX9nQQ5BdL/sRnkIx/X5AXowhvmPtrW2/Do5AHozvSeHrUXPtrG9rOPQJSsmpRjIvF
         zHg4tvhNq4GnZQPO+nuC/wxPxBAMlzLQXVvgU5KSZDJpzdEAt/NiGpAItMavYS1ALtjZ
         r4fF0W2vMfWehNjDnBrjNwLj1Dhd1IUZh/reKFmi5Oq1FHg8xdNkaVX+YVxnJb+R6B/8
         zR/RRVb7dDOouH9kqhFgOILENE3c7Kw1EF5YEp5SmVEO3nkQJ9eIPZ/oAw/ebjT8OoW5
         oD7g==
X-Gm-Message-State: AMke39lUsKvG2LxF4OEpZPXltnmIELGAqb7irVa/l7xvc4cKZE7sWXmEGwCr6TeI1Rg6cA==
X-Received: by 10.84.150.129 with SMTP id h1mr14501040plh.86.1489040139477;
        Wed, 08 Mar 2017 22:15:39 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.174])
        by smtp.gmail.com with ESMTPSA id r67sm9612875pfb.125.2017.03.08.22.15.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:15:38 -0800 (PST)
Date: Thu, 9 Mar 2017 11:45:19 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 0/3] Fix unintentional repetition of words
Message-ID: <cover.1489039271.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix typos in the form of consecutive repetition of words.

sayli karnik (3):
  Documentation: phy: Fix repetition of word 'the'
  Documentation: ABI: testing: sysfs-bus-pci: Fix repetition of word
    'the'
  Documentation: cpu-freq: cpu-drivers: Fix repetition of word 'to'

 Documentation/ABI/testing/sysfs-bus-pci | 2 +-
 Documentation/cpu-freq/cpu-drivers.txt  | 2 +-
 Documentation/phy.txt                   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


