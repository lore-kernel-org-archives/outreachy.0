X-GM-THRID: 6399911887326150656
X-Received: by 10.157.5.102 with SMTP id 93mr15613455otw.144.1490095604410;
        Tue, 21 Mar 2017 04:26:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls11483847otd.14.gmail; Tue, 21 Mar
 2017 04:26:44 -0700 (PDT)
X-Received: by 10.157.24.90 with SMTP id t26mr15672272ott.91.1490095604136;
        Tue, 21 Mar 2017 04:26:44 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si3226578pfb.5.2017.03.21.04.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:26:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so16665662pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PZC6PJu6JQkZm8J7r1NjNAYnGVIp5nbtj/59HgfO4qw=;
        b=Pmoqk6WCxjUWX1ZBw2+6Yzesm9A1r+TnzbJcxTrhCO1EkVou0tigey6uzY3uMfegSt
         5wz/tQ/ZNa4/p0A1CCQ7umrZ6sUcQy6cb8GWtggDlFhosVJGaDH+aBwf05/gRiiuNyGi
         twHP8BlaNJcVi/qHXwNWGIlCXk4jPNHzil0qorVZ0v2ldobfv4mcTy/WGPiVHa5dP0cU
         Rd/uN7TQ/0WDw6B0YFzqWnsWXnuqfVErnpf7y4dvT4L8d+PzxXVlMM2SIrLotmvnTPiW
         75ve7sH0V5YQAFnhOhR1s3BPbLfhdaeXju1dpV1qOnB+7uy0sdYgwhkEt8x4G8Mpw2x1
         KunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PZC6PJu6JQkZm8J7r1NjNAYnGVIp5nbtj/59HgfO4qw=;
        b=WueEgXDqN81TyMHvDSb/ik7ssxX/ep6QZEOtjsm5zGLplAeRg9guBvIs4cvNgkYDCw
         xkUIJqyjpW60RVlYcdMRh2ZCq4ZR168zVpJeZxRUc0IARMJy+mV/wyFAtEGGFKh1IcZj
         7T2tOhbA6t41c0Ba0yG7xPOScldllqxgefxJBdMOe/ZQJWodBU93PJUhSS0SjGl0ztXk
         Cl64ydk3VjNIW74mILFH0yLuoH+aEgUP1zHAGGqHqO/2Bwy71IKPW7XL3Zmut8Se4Qbc
         gzP+NnPuRIkutROylwmfbDKD2lxAv9Z6oUbwktfPOiXBlOAyKX/G/wQD4eeCYAVzZQe7
         vWiw==
X-Gm-Message-State: AFeK/H0p244rQAXbhhEiwpHxX9OC+58OQMZ9+6PyLzWOVLA9hUvOBRmy7TAT4u3vz5zWdA==
X-Received: by 10.98.89.139 with SMTP id k11mr38046079pfj.196.1490095603928;
        Tue, 21 Mar 2017 04:26:43 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v26sm39089441pfl.16.2017.03.21.04.26.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:26:42 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/2] Remove Typrdefs
Date: Tue, 21 Mar 2017 16:56:37 +0530
Message-Id: <20170321112639.32495-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Typedefs are removed in sm750fb driver.

Arushi Singhal (2):
  staging: sm750fb: Remove typedefs from struct
  staging: sm750fb: Remove typedefs from enum

 drivers/staging/sm750fb/ddk750_mode.c |  8 +++++---
 drivers/staging/sm750fb/ddk750_mode.h | 19 ++++++++-----------
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 3 files changed, 14 insertions(+), 15 deletions(-)

-- 
2.11.0


