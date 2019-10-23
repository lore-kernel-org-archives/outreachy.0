X-GM-THRID: 6751036778892754944
X-Received: by 2002:a05:6638:1f1:: with SMTP id t17mr10047177jaq.130.1571848238785;
        Wed, 23 Oct 2019 09:30:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7f45:: with SMTP id m5ls451302ioq.14.gmail; Wed, 23 Oct
 2019 09:30:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVaBn5tC1E2Jumt7H9VfRCuGC6C2qvrt0rDeFQlmJDj9ku+i44rjmu3/0Nwg18K9hrhDbr
X-Received: by 2002:a5d:93c7:: with SMTP id j7mr4342174ioo.167.1571848237622;
        Wed, 23 Oct 2019 09:30:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571848237; cv=none;
        d=google.com; s=arc-20160816;
        b=X/lJ+fnLgOyaN/KJziHK+famzLU7YenALH+EvsXe++4lKJ1f39OF54Oyn9DjIzfxXn
         k/sLCSdeFbiqPpI76cb01hgVTltdWPGi9I8OTnW/GrnnRzRr9jw8aLTGLjpTisMUuEEv
         LQmvUkVWta9oFwSq7tcgMVbaOjRybiCzVyedHDqlFY2jnT8B16gI7/fLxh0Ikh+Y+7ar
         PfFnOAUZOemhlgAwQUYEWpjVKOv1ZDDqvJCJnfIj9QD8QPJGYaQ/Bgct1Yusj/hw8TbV
         sbRwXP+RcqoQBxiWR6a/ayNDEdG/DZkOXrXTcNeT4hUrUbRjTvqVuiHl1MhSHfvilB/7
         5xkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NYgftd2K8E8go6dCNMYIgx6K/W9Ge4PxegoF3wHYU3E=;
        b=a0vya+TWPa2VSAkOaVRsILn3FKtNN/89L+R50YqQlMp8q0mSbCJTi9kafWP0SPjGif
         IHhIVk+ihuaJQv8ZigSKI2hdJLK+Hpw4quZ8NfCIM9/0a7Hd0C7vCE9ELkfbM52g4tF5
         qUAmfnXI1Gyjlnr72ZtnVE3xF7uLFumnMANvWTwoEg96QTY6FsdNeUvyPQ775cPwc11A
         aOzO7wsqcU9NciEJphxghW29wHZWLIqgrMnLmeA/jVrQupcm3kojVMj7yzzXhOrVMpzg
         BpAx8QkAh/L2UwOrsT/i8ORgp9FK0+CcNTJyIjpPcDf1fjUH3FAbzxT4KMjdrYLEal60
         2NNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dCy1E55h;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id s5si912973iol.1.2019.10.23.09.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 09:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dCy1E55h;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id y81so16438320qkb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 09:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NYgftd2K8E8go6dCNMYIgx6K/W9Ge4PxegoF3wHYU3E=;
        b=dCy1E55hDsAjxQkiX5GhMpmqTL9uI76H1e5PNjFchBvecUy2B+e1tODI0wXOMWN1sn
         0MCyWyrDehNtD9FvKAe6ROFsAo9oRz3xtsCeQBFrbu69fkuYDCE9gLLYwMj+TC+zT0By
         AIV784ejMABZAch9RDozoOmtn54UBvrQsmyfJMpfM8JWfgePgY6lQ1uxe43iHTZW8hq6
         FpNllPsdx2qsAz8l8YVIB1sGiJ+QiPVDMMjAMoOYWrUyV59KDXNyc3nnwXeORn8FP45w
         xaQloBDs7mplIsGlL6bSSDbjxJHGlnonUW/0S6Q472CUqR4zMzxhAC+pob2XJrG24iLk
         /foQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NYgftd2K8E8go6dCNMYIgx6K/W9Ge4PxegoF3wHYU3E=;
        b=sMMx3QHXNpjprTbiOQESIpUppblGMN4jEONN/qt1Vv2ff/pcO3aOW5hiADqykRvK/1
         tvLEG3czYARj5+7UsYD6ZeJbNT6wbQgkEcVrj3/EWgkwVjev6bSiPzOh2TrapJc/u5ps
         bXgOvBz9RXxMFlNlE0w+SqjrgOSvv2c/8WyJwKZu6uXOx6u1CO8T35wYkxGvI+a7I3Mw
         rncyxRTY1LQMSBjBolyDct893wxF4BX0GaFyx+XVC5PR5cOMYyTdSN01woJpCddj5j1c
         SpKznMF4UQzXuTEx98Lkj05GddkKwSXHNl40Q+7TDgU0yJuZ3vH3GKg9/tIpyUd6/9JR
         a/jQ==
X-Gm-Message-State: APjAAAV0SS4KfxR1QO3dVFQkblUMTWeajx1c3CAGltRM61HEeeujbZvs
	rZ3uf4r+7cllt6y+z9eOgN6fM9E8VeM=
X-Received: by 2002:a37:7b44:: with SMTP id w65mr9301660qkc.409.1571848236668;
        Wed, 23 Oct 2019 09:30:36 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id t13sm8349067qtn.18.2019.10.23.09.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 09:30:36 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v3 0/2] staging: sm750fb: format description of parameters to the kernel-doc format
Date: Wed, 23 Oct 2019 13:30:12 -0300
Message-Id: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cluster comments that describes parameters of functions and create one
single comment before the function in kernel doc format.

Gabriela Bittencourt (2):
  staging: sm750fb: format description of parameters in accel.c
  staging: sm750fb: format description of parameters in accel.h

 drivers/staging/sm750fb/sm750_accel.c | 72 +++++++++++++++----------
 drivers/staging/sm750fb/sm750_accel.h | 75 ++++++++++++++++-----------
 2 files changed, 90 insertions(+), 57 deletions(-)

-- 
2.20.1


