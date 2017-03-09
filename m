X-GM-THRID: 6395510258764087296
X-Received: by 10.13.229.196 with SMTP id o187mr4724153ywe.12.1489070770136;
        Thu, 09 Mar 2017 06:46:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls6495024otd.42.gmail; Thu, 09 Mar
 2017 06:46:09 -0800 (PST)
X-Received: by 10.129.107.134 with SMTP id g128mr5949672ywc.139.1489070769776;
        Thu, 09 Mar 2017 06:46:09 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1193832pfz.1.2017.03.09.06.46.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:46:09 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so7520708pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 06:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=wnIRw4qHhFYXRKFiX/JHdq52xluASTWhx2kJcjoR9n0=;
        b=EHYR8wY3ZyOOLkbRn0VdB3Tp8P7F1tuW/ECfAiUfQ3oMS8xSl2G0bYkIufPLR84TzH
         25VqN5aHWhRIRIy07moTeGvapQQXGemhdnZDiSaXqRNAZuTHgoANcuoFJNYJA9isn9PK
         OGFXFfWWNjXKZilGv8b4uST2zLbs9hKRvhvp8PGptLJfT070gHBhZfvFRWn9cCzdFHjM
         p9tYg1axKwlfm/Gulj2sptkGBjqEb7qR64ga0cQFJP+lDoe2TQd2aAvJuXfrtlE9ypkg
         mmIAlMSwBu/VRgIQSQww9boxYUP4FrX3t2UKXpQ9+LqSYgPa4lIMk7ggzsjck3NQN3P1
         ueig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=wnIRw4qHhFYXRKFiX/JHdq52xluASTWhx2kJcjoR9n0=;
        b=A7TQgkyqp/ZgMOm15KHULnx4e8hsPk7ncbbqGsWor+SvTbykTIioEKlLCThk0TeMwR
         N+2P3LnOu12Xupo0p7hbX0fFwX6aBfV+vtp0hJZgubJHjeDIBtyFPB9ChZxrwzW1e+ZV
         62j4TGl5jjUaezRUEBE57DA5pYBwuq1Rq9a68RYflMxMAn5gSns9lz+ffHLsZXikTg0z
         JstY8i9wTht3VbDCGKnsG2kPWRvM9B364EmGX/inEwxQXZ1aC4EXQZgpgP/CkkaGZDxz
         9CuivpretyxfqW3pmnAlkjUFDw3Rfhi5UHYR193hSTciTA3kXqvDYJQMWTHQP+8itdWJ
         wKtg==
X-Gm-Message-State: AMke39l/aowbKVg6KGpzsPPHyvZQ0TEVGRniQI/V4gMtep6HGXRllMwjZKnDoZRa1eD7CA==
X-Received: by 10.99.36.71 with SMTP id k68mr14376832pgk.68.1489070769426;
        Thu, 09 Mar 2017 06:46:09 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id q90sm13049910pfk.73.2017.03.09.06.46.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 06:46:08 -0800 (PST)
Message-ID: <58c16ab0.dd90620a.be0b9.d7f5@mx.google.com>
X-Google-Original-Message-ID: <20170309144606.GA14964@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 20:16:06 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: atomisp: Remove useless cast and match
 alignment with open parenthesis.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset removes useless cast and  matches alignment with open
parenthesis in media driver.

Varsha Rao (2):
  staging: media: atomisp: Remove useless cast.
  staging: media: atomisp: Match alignment with open parenthesis.

 drivers/staging/media/atomisp/i2c/gc2235.c             | 18 +++++++++---------
 drivers/staging/media/atomisp/i2c/mt9m114.c            |  6 +++---
 drivers/staging/media/atomisp/i2c/ov2722.c             |  8 ++++----
 .../atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c  |  2 +-
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c     |  8 ++++----
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c   |  2 +-
 6 files changed, 22 insertions(+), 22 deletions(-)

-- 
2.9.3


