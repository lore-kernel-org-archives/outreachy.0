X-GM-THRID: 6399968600794333184
X-Received: by 10.157.47.184 with SMTP id r53mr15872732otb.15.1490108808647;
        Tue, 21 Mar 2017 08:06:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls2257735ota.4.gmail; Tue, 21 Mar
 2017 08:06:48 -0700 (PDT)
X-Received: by 10.157.37.178 with SMTP id q47mr15918618ota.63.1490108808183;
        Tue, 21 Mar 2017 08:06:48 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 190si2036971pfv.3.2017.03.21.08.06.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 08:06:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id w20so698271pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 08:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QcECNOvAC7HRCbj5mBHAjKN9f38S2Sxg28yKlgk7IUY=;
        b=thaymQw4+x/MrAgYWRdM+3GoVEpdPr7zGlkcxX15PpkUHcxLxeqSZBnWkTLxWzbDPH
         lmTVT89AA6ilNNPugMsUE85zFYfsSDdeYeMwQb25BCiCcWPynD57mldKZukyzo7y0k5k
         Cfs5i1fMCjJAWBlIc/pYjVzx7fLN0pjXimgRNVT84+aaYyTXRtCb9GnKw5xXSwPR6hOQ
         bkj5yitdbS4GmtbWm2crtNPiVk3+N8Dvh5uQTGqz6IizIuncc7fcn6y8YGeaoBIYo8Fx
         /7kjWrVOooq8L5eZOHRV2OQlTnbRayRlpDhdb8VcoK4bJhit85HDSKBaTeZs/f8dAduE
         LPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QcECNOvAC7HRCbj5mBHAjKN9f38S2Sxg28yKlgk7IUY=;
        b=iZUSD8Rz74LiHlZARrRIdbUyRsXKcT1d1NueuAsjxlxH2gFTiAHJAku5qZn/gpuK1l
         9ILtyAACNe4yYZLN18RDaDVl1qavBPIj5XX8kXNJcFkdwAm8LM7WlDfVE8vaxlqeuJbf
         TXvgkrbsYAEZOYfPxcBEtoWdt/QEfmme+NebigivbX858A8ZDe+CM8upBaDFazN6t0ps
         f3TCsqkSQqXdSSFGCqcWu58NKm3UClY2rj4aD7x9il6dyRAFcyOii3bM9eUVnf56A+cH
         W6eYTiLJ0XqNXo5ShhDDxKI5gegre23lTVnNI335PMRo9DQfsycOkf9fHXNaZ5o8lwCB
         EbLQ==
X-Gm-Message-State: AFeK/H1kaoDqE68ugeMJY0ukcMynOUvUTMmfFMqyklw9IYlb2a2mj25CNqiJw6pqsPeI9w==
X-Received: by 10.84.228.193 with SMTP id y1mr17392441pli.85.1490108807967;
        Tue, 21 Mar 2017 08:06:47 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t12sm40284399pfg.14.2017.03.21.08.06.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 08:06:46 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: linux-fbdev@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sudipm.mukherjee@gmail.com,
	linux-iio@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 0/2] Remove Typedefs.
Date: Tue, 21 Mar 2017 20:36:36 +0530
Message-Id: <20170321150638.9175-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Typedefs are removed in sm750fb driver.

Arushi Singhal (2):
  staging: sm750fb: Remove typedef from "typedef struct _mode_parameter_t"
  staging: sm750fb: Remove typedef from "typedef enum _spolarity_t"

 drivers/staging/sm750fb/ddk750_mode.c |  8 +++++---
 drivers/staging/sm750fb/ddk750_mode.h | 19 ++++++++-----------
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 3 files changed, 14 insertions(+), 15 deletions(-)

-- 
changes in v2
 -change the spelling of coverpatch subject.
2.11.0


