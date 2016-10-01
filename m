X-GM-THRID: 6336577206052978688
X-Received: by 10.157.2.142 with SMTP id 14mr3694345otl.16.1475349349978;
        Sat, 01 Oct 2016 12:15:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.200 with SMTP id g191ls1505783ita.20.canary; Sat, 01 Oct
 2016 12:15:47 -0700 (PDT)
X-Received: by 10.66.52.40 with SMTP id q8mr3738221pao.107.1475349347065;
        Sat, 01 Oct 2016 12:15:47 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 128si446906pfz.2.2016.10.01.12.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so6540963pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=WoW0Th6xa3ILN1NG8Aev+t5a3lyRonymdjWMJ0RMotw=;
        b=JbACU/sQcPtA65/bnzzxegANM5YzbBo0aMgExB1dree3paWDv/Z+OB5yKE2xw6lpWT
         Sn95MPeXTEa5nqFf+FDWk4tvyfCVujC+c75ahfcdqJsCqCwu/3EvD3eGxexYollyMqKo
         Jlxq0y5W9SxymCjzWeOM1q29xSTKL6S36n9zCpfG+JRNM4hn2Te+6SLpwPlnnCLA2tNR
         VHV6P8Gjja75sad5mW5irZilImY5xtKzXgoIMpuDyDbbkL2guZMg2/0cbuNKTsKsuaku
         Oz1cFp+lv18fWrCiBmsvm+KAHjyHqQG80BxHa29Kaq+Z7z3UnjxtwU2KTrbdg+dz04H2
         JX6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WoW0Th6xa3ILN1NG8Aev+t5a3lyRonymdjWMJ0RMotw=;
        b=LgWtceQX2OlSe6VsespH8pY149uDXhtxfnMuYWdHuMN8vcZHzGLxwUhrBJZJAZyKhU
         UtZnME9IcsdbDszg+GtyUSyAoOjHfXJoCc95lxrNXb6FMmLMR+KQefBF5eoX+ukS8vTT
         fJb247kFQFXAk0+/7max9sIqWTkLa223zdWO4lHJU5d1H7fZSh/mplwnUgu5mKGAtR0X
         NkQQnrxSm0A5abTaXcqxi7M+vwt3YzWW/nFaD+0+kijnmDBjKoCyXWeSwtSqs+q2G/I8
         50wRzgjasrRms+9kGfK0Jc+azIkQbFKhtOq3VisG9GaytOII8PNtvqCHZngkWNuY3e2o
         HfZQ==
X-Gm-Message-State: AA6/9RkatygGWHVkYA0G9RxLUg7fhKy++uR5ba71ILo5BhoX7VD8uv+yNkavngyTSNaU4g==
X-Received: by 10.98.94.5 with SMTP id s5mr22872715pfb.126.1475349346909;
        Sat, 01 Oct 2016 12:15:46 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.189.15])
        by smtp.gmail.com with ESMTPSA id 21sm36566459pfo.80.2016.10.01.12.15.36
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:15:45 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 02 Oct 2016 00:45:20 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	joe@perches.com,
	apw@canonical.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/5] Constify attribute_group structures
Date: Sun,  2 Oct 2016 00:45:10 +0530
Message-Id: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Constify attribute_group structures.
This patchset is a follow-up of the patch: https://goo.gl/VzltBL
("iio: Declare event_attrs field of iio_info structure as const").
 

Bhumika Goyal (5):
  Staging: iio: sca3000_core: constify attribute_group structures
  Staging: iio: ad7280a: constify attribute_group structures
  Staging: iio: ad7816: constify attribute_group structures
  Staging: iio: addac: constify attribute_group structures
  Staging: iio: ad7150:  constify attribute_group structures

 drivers/staging/iio/accel/sca3000_core.c | 2 +-
 drivers/staging/iio/adc/ad7280a.c        | 2 +-
 drivers/staging/iio/adc/ad7816.c         | 2 +-
 drivers/staging/iio/addac/adt7316.c      | 4 ++--
 drivers/staging/iio/cdc/ad7150.c         | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.9.1


