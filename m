X-GM-THRID: 6810983981857636352
X-Received: by 2002:ad4:55cd:: with SMTP id bt13mr1522192qvb.111.1585805784092;
        Wed, 01 Apr 2020 22:36:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:5084:: with SMTP id e126ls1679982qkb.7.gmail; Wed, 01
 Apr 2020 22:36:23 -0700 (PDT)
X-Google-Smtp-Source: APiQypJIKFWI1mqXMl4nyCsPOpziMYVflfPBdX0gC/hyJWi63byNo+omI531lwnvvI9Gcc4d9hB1
X-Received: by 2002:a05:620a:718:: with SMTP id 24mr1852976qkc.280.1585805782843;
        Wed, 01 Apr 2020 22:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585805782; cv=none;
        d=google.com; s=arc-20160816;
        b=MGG/tmfthNRYrgqsgQiSJn3bDya9lJSqiWpWGF7fV7QBUSGDksLRoD17xgWQnlS6Y6
         PljmrZBfdbWXCObVuTBr+rjQXUzBh2/h0yOWgVqqxpuw2+6G8hCgPybIUd8bS2IX8sTm
         mzu1QiG/VN2W/iQoovGxAsO/E+k+Nh1Q+kvlgHAIC/2lDUGPT5n1O3iBZeT4czaTtmhh
         L37095S+722lf2U8yUkbN+9t4ZlQoL/52AOx/V3PnnbyzdKShEFG7VyaOy9Il0oj/BCH
         WlxXMxQVgHT9Xt2c+Yv9nmhEfQReufM7VRAKVFRwYivcbMjUs163/ADS2I5Bs3BSjYaZ
         s62g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Do+aDibkJ+9Nk2xPpC10tUF5bA+dXnOz/2cqO1MNak8=;
        b=wHu5vdQtOwyjppeu9rsgCrZpNSdL0kwTwPjQk02o4mfK0UcyRQBB0tqhqNK6mr38vY
         3Jk+17hw42A6ggftWFfXcf/M9AbTb8gYMON9djlUDWnTYvhcVnTw51GFRcFUX6bfzRTJ
         DmbSte/bxe8RjngGlgOf7xhbh9Nmy7N2cedErBXkBowov9zuelAblXN+4IPmOmlgrvgK
         v4spoGD/1z01SJThpZIsL3Tg/2vwFUg/RGoh8uaeBeO+d3w7/AtT/aed96/gHqzWm8En
         HfzFI2F0MFGpEzlan1zSrXXeBfnoateVQqCsfjbdfKCJtH6738Vauu48SiNePUej1bfg
         rpFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=knbC2o+p;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e89si309059qtd.3.2020.04.01.22.36.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=knbC2o+p;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id u65so1239213pfb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Do+aDibkJ+9Nk2xPpC10tUF5bA+dXnOz/2cqO1MNak8=;
        b=knbC2o+pyAfJPn10/x4p+jSPwqEdUM5vaqMNWU9Le4dYwA55h3tFjJus5wlFnZGXoZ
         iGGn+aIDrle8DsEd44/Qdz4R386IugeGaclIfFzf2HFdt+Y6thv2a2X4/Jfx5eiga5QP
         0UbSPz0O/CuSiDzcPtGx+OWOkQFOq3AgKX3CGZqnrYwDRJYt2KjJNqFkKOcTFUwmxXCt
         7roz2uoNXTY7WGYf7DXRHsW7TIUMgljMou2mWXCbl6lmu9uMIwnkJaC7mSa6qKqo8wWz
         E8zCOCMXjx+vPaKhSL8kfPtiu7pYDIFMQOwdGG5CshQD5A8QqNoFRIUFmnxgBHgbHmNg
         aQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Do+aDibkJ+9Nk2xPpC10tUF5bA+dXnOz/2cqO1MNak8=;
        b=ug6H5IBBPaRv0NrkxykAPirfxxxMr8aZwXkPfogl0ETqpNB9XhUA4IN4KKy2i4mAJ4
         x4rxUGcrRJI1jBHE6BKwSHDguGSPv0MWHLhz+ovveQZb0/8H/LD6XyKCQ38sa3YdcKEN
         4cqkQHBZj4jSqG8iw3ZLbZjMo51Eymr4i9MeUfJoaCMXKtlLtBvgJS/HOKQ2t8urX3fK
         fS3seG3+eYREV+WnU4ljtNkBZp9FJNRYFm4YRZqEHpx+fmzuUZxfdZ5BxdB1lorlPP+N
         cRlIlgtCsH1+9TKNXG0ywrFsTfYMcQ0AnU13HPu5VqgXMMc+ZXuB58UiFlHIu3k8eHNS
         lhCw==
X-Gm-Message-State: AGi0PuYJW+37foaukl0QA20u/CwlrV7hpD6G54h9kscEgxzz/RFr7bLk
	DIcWqnjoTqswqR3CPUUg13cBH87gje9iSQ==
X-Received: by 2002:a63:e210:: with SMTP id q16mr1785491pgh.26.1585805781730;
        Wed, 01 Apr 2020 22:36:21 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id y28sm2863136pfp.128.2020.04.01.22.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:36:21 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH 0/2] staging: gasket: Fix style issues in apex_driver.c
Date: Wed,  1 Apr 2020 22:36:15 -0700
Message-Id: <20200402053617.826678-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cache long enums as local variables to fit under 80 characters. Fix a
comment character limit warning. The goal is to comply with the kernel
style guide. All style issues were identified by checkpatch.

John B. Wyatt IV (2):
  staging: gasket: Fix 4 over 80 char warnings
  staging: gasket: Fix comment 75 character limit warning

 drivers/staging/gasket/apex_driver.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

-- 
2.25.1


