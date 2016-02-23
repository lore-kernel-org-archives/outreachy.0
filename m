X-GM-THRID: 6254600890861223936
X-Received: by 10.107.184.195 with SMTP id i186mr35291725iof.24.1456262751948;
        Tue, 23 Feb 2016 13:25:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.208 with SMTP id 77ls1291863ioq.71.gmail; Tue, 23 Feb
 2016 13:25:51 -0800 (PST)
X-Received: by 10.107.184.195 with SMTP id i186mr35291710iof.24.1456262751640;
        Tue, 23 Feb 2016 13:25:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id u66si4627688pfa.2.2016.02.23.13.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:25:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ho8so119824939pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uTAlAbNe+D9SkZfOXJbAYKp3njz59sAyxOtCTsykFWw=;
        b=RSK0D08qB6RDKUVHDjENblfWRkiMSh2sJ+O10Gd6TKUSWV41yLFTw2G/tr+HxfdoSK
         nE4uNIz6uStH1h2zuHpsEwiDwtLi7+qik4ZJ0r8QUvH/U4lOrFlEWiOcSMJd0VjdTduQ
         NbRbJ/NK8moLE3k/HDLezXxRIPJGUdoyaLGNwJOGdBKyXpVm+BDqU7v7kSwSAfOv4GHy
         rUqqnRyuev+UkVuSaY/0NXBLV3Wp49MzePCYTadIG2EtJLztELY89pg9I+VocaUfMGZA
         0LnwMix+T0O6a94j6NX04hOlIW2rftIOLNLu9F/4EWQeVyEjEQ7HBnWCtRkELj+f8TYX
         6BJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uTAlAbNe+D9SkZfOXJbAYKp3njz59sAyxOtCTsykFWw=;
        b=kc/rKMJXMgG5zc6945YNKIpZAwnXn+nkSmjsASFRyoZc4Caq1RAkZdfzeiogmYHoUl
         eHHugrGj2XhqUV76JMZpGOis8mW8+vEXwnj04AX4fUquH7EMEtfTKX1mbU+9D/q/87zp
         pVQNp5pmw1hf9NPCSkTq5RGmPOfRqzKXumBEGnYZBO1UF31TQ4G7R0Y0CM0O+kgdoSX3
         ETgVdDrkL8D9hGgwEwDIrDQHpfvgutT2G3Ru7uuWCwvcgtqYOjka4N0HLvsQyxHXOovN
         r8y7ztLLk+U2TjMy/tXIVxp2xRt7ZS9Qu/8AaFzVUpQNGEjfd3hQmmUomkIBIjCBwfRI
         G9Mg==
X-Gm-Message-State: AG10YOQbMhwTCAJ3QtMUDbL8w+224YKggxDZtWC4c+mdPjXRba+aI0T1BP9lX3TDgPKLpQ==
X-Received: by 10.66.254.168 with SMTP id aj8mr49814850pad.18.1456262751475;
        Tue, 23 Feb 2016 13:25:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c68sm29525844pfj.41.2016.02.23.13.25.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:25:50 -0800 (PST)
Date: Wed, 24 Feb 2016 02:56:25 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Drop Useless Initialization
Message-ID: <20160223212625.GA24192@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes useless initialization of variables
if they are reassigned immediately

Bhaktipriya Shridhar (2):
  staging: rtl8188eu: hal: Drop Useless Initialization
  staging: rtl8192u: ieee802111: Drop Useless Initialization

 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c      | 4 ++--
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

--
2.1.4


