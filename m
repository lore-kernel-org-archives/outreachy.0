X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:902:9347:: with SMTP id g7mr21147384plp.291.1570903530597;
        Sat, 12 Oct 2019 11:05:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9611:: with SMTP id q17ls2833564pfg.16.gmail; Sat, 12
 Oct 2019 11:05:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvDG6Cuks2ElmI2NoRx/+g8uRhO7Qg7aX0aiLFM5yH5D8qqryxBIDdd4XYm99Yeo4gq8rY
X-Received: by 2002:a63:4622:: with SMTP id t34mr24159875pga.0.1570903529466;
        Sat, 12 Oct 2019 11:05:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570903529; cv=none;
        d=google.com; s=arc-20160816;
        b=aWT9C8X5WCjaN++UyHIpz7PlJVhMwKoQihE3GhiKhUSsIPSssvDLQ+MzYyVhBHWZPb
         BI/EHai7xg4K2snAnvkyrxHBNW2dy1mc0FGOmhVEbXZpASXHTTcMZHS61WTRh+BHJRtR
         pnKFRp1xymw34XPMBJlVELUi0vVLV2LSucUHXyfiLiKtDaD+Boh6NKYqnN4F2RRfRMZ7
         GbWCnXfvrhfGuVz1cBsJ9e/tSkJT9Sa4pRlgpDTy0GzuckmqaGwCZaTnioxtqwo4GZdm
         n/Tz2+tWLj5LAmr9ismsXU+TqA8xpqHXJhAEgLLvcNypn4VDDm553UoydOTZGoS/n4SY
         d5pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=duF6ZL+HCwryTSjDdcx8z2lA9a6wjYiYn4UO3glWalg=;
        b=r3IYdZGZ0UKB6cLddrZWfp5J3cQFEEmdSvtuux1yQDCEXfCdvDNV9Os2Zi/OhIJ/S8
         pMb8rAnXgh0q3F7u3SJEdYCpYSBk2j51qaP9IbqJ7qJ+Mhpk2kB3mZQYD4W2TpNq3PnE
         mlttkyNzb5Zl+6JeMmm9zxhrBTSWgx6QJEK5SXYpuwuYQAc2Zhp4yyLVZxq1dK6nDmaM
         sJIfJCA863WS27wAEPVNLDXRBJr4eKaiIDBcv3y+tk/gfLQCiILU2l6Jj8bjgGcOyn3J
         PYliai2+xdQfW5bUE3NHFiBjwn8PWxmmepQtis+NMJB4B5d4U6DPzpoMiqG/gg03tV2s
         EfNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pe7Upv5G;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x137si351141pfd.1.2019.10.12.11.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:05:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pe7Upv5G;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id h195so7980340pfe.5
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 11:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=duF6ZL+HCwryTSjDdcx8z2lA9a6wjYiYn4UO3glWalg=;
        b=pe7Upv5GfSHEXJ3lhjxOf3Fl+J1g/S58wZMBl9VhRB6wt2D79P8Rad6mBvV5OHm6eE
         iaXPrBRedzy5X6lCx+aD+JrD0P1mrRBxGODoMDXwRry1yh/7Gte1dkCAvpeVuhfMFK4g
         LR113Wq4elzpROMOqS/lWxhQr3sEoV6EzCzfImBXOl01Yoe0t9H6nuieu8b4DBZZ8dsO
         zEBDBzHmdeN02DKQo7J0j9RrkLnhAMiqpCFnyl/exqW0v89UKJBZFPcC2C3IK6Pa7bDs
         Z7j19LoEn0JwmY0ad5Rcww6hVOCaT/SlEfRkSsyDcaI7zDdnYiFrbkknDLQSGd/Wl8Vw
         K23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=duF6ZL+HCwryTSjDdcx8z2lA9a6wjYiYn4UO3glWalg=;
        b=JWUfzB8qg3UjxHls7jOE2z6lCyIn0gmoxlQF5misj+oCO7K4bvjGJv/qc9edR9zkpk
         fJXyblzd5UxOH47QFn3L3KOyaug6i775m5vMhztgIL64aweprYb9zUilUCsBXUrF5Gnx
         Vd4/Ue8MOUWJt8JSS/EPz/cE7XEMAU4v7L+PqCM7RJF6z+vRO5dGnTJ/u5A47cqgnm7u
         HZ7K6thfwCFTGJPTFr+JMe0H2dLw7gEulMx1+RWcruWvNuFlh/+Xzwffr9aj62MQA75O
         7Ttk6oX6QpZDT+icGShxAGwzQ6HV+NDeOV9rZmvO5JYNHpI/p5kgJ/Zb3KIm078ioER2
         gEbg==
X-Gm-Message-State: APjAAAUy653Mbtkn60U4sUqOcJRttTR2RJqeTSrOVarVSK0fhpa/Dj7T
	68TL5QRRhpPCMQSBHDb4I0tcrA0Pda1mqg==
X-Received: by 2002:a63:541e:: with SMTP id i30mr23580760pgb.130.1570903528903;
        Sat, 12 Oct 2019 11:05:28 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 11:05:28 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 0/5] Remove typedef declarations in staging: octeon
Date: Sat, 12 Oct 2019 21:04:30 +0300
Message-Id: <cover.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes the addition of new typedefs data types in octeon,
along with replacing the previous uses with the new declaration format.

v2 of the series removes the obsolete "_t" notation in the named types.

Wambui Karuga (5):
  staging: octeon: remove typedef declaration for cvmx_wqe
  staging: octeon: remove typedef declaration for cvmx_helper_link_info
  staging: octeon: remove typedef declaration for cvmx_fau_reg_32
  staging: octeon: remove typedef declartion for cvmx_pko_command_word0
  staging: octeon: remove typedef declaration for cvmx_fau_op_size

 drivers/staging/octeon/ethernet-mdio.c   |  6 +--
 drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
 drivers/staging/octeon/ethernet-rx.c     |  6 +--
 drivers/staging/octeon/ethernet-tx.c     |  4 +-
 drivers/staging/octeon/ethernet.c        |  6 +--
 drivers/staging/octeon/octeon-ethernet.h |  2 +-
 drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
 7 files changed, 43 insertions(+), 41 deletions(-)

-- 
2.23.0


