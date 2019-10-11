X-GM-THRID: 6746422022313607168
X-Received: by 2002:a63:2012:: with SMTP id g18mr14798345pgg.182.1570773781330;
        Thu, 10 Oct 2019 23:03:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6853:: with SMTP id q19ls1835097pgt.7.gmail; Thu, 10 Oct
 2019 23:03:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyqzNyKwC3Yf2VkXLeazf/WI53KEI0ONX3FtWAUHaS2eAl81s5818ylPWTz5h9kn2FqH1E
X-Received: by 2002:a63:e145:: with SMTP id h5mr15356668pgk.447.1570773780365;
        Thu, 10 Oct 2019 23:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773780; cv=none;
        d=google.com; s=arc-20160816;
        b=edjZwld1OeTFd9hv3niUvVKVV6UbaEN5d2Jq15zU75IhF0HwlChdqvdmg81/qrAOWK
         WADJ4xMPW8pW+F5u0uVpFxXaZ0DMh6odWlBf4Cg4Z5mwJBGdH4Ghjzfn6XqPlwA4Ze0A
         aamIL3GANx/0PabLo6TM5OFJjWE5RZHtr+N38qtOeAVn8YkTFovr2a1iSmg6pYAFvqeS
         f0NnnmoGR18lATxhV4CHxYxuL3hmjRYJVjBxODdBPdI0CCFgoUecyeteyCMRs0f7AtZF
         Y8H29LXm+v6mqmbQqX7mdA6iWTbCyT/QrKjcuN6ngC4Fr3Hy5iawMyV3YUg5AvKqwmty
         olmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Por79pKV7/zxavztiqV46lugG6MuHRsk2OLPtNOwr00=;
        b=HP28KxQgDeSxdGQsdbIXawEy6UPI8Txgvz9BQYCgcFzP3n6LuqSlhHpvZ886lI01sX
         MUAHfyrO5EK+3IV0U57ktqEd67krMXBghWYlipx5QUpbB5vqirPcMH3lCGx+u0Xo/VDj
         BmX3JPcVjl0kZ2vpdB8EQ+kwu/TpryO1ZQOp0RFOOn6Sam4u+OPv4d1dIgUsK97hqfCc
         DUxbbOEjVa98z74NJgjxPb3bsDoixfo0iwWbQXzdhVqBsVTYtG40vD4LZX1tCMIGzb40
         MT+ux+cb+huRnP8ZgmyIh7qTKhU/P/Wmb8kDA/kh7A7D1zclxBDoN2zY4sBO/xfKhB4X
         f5qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OBYiWhCt;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q141si720011pfc.4.2019.10.10.23.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OBYiWhCt;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id t3so5140152pga.8
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 23:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Por79pKV7/zxavztiqV46lugG6MuHRsk2OLPtNOwr00=;
        b=OBYiWhCtNkd2IIOgjtym3d9Naqwmjj78kiNv7xSHnP38ZF2KTdRA9uSR83WWkKRu/J
         31A8Dv/7jc16ipWUxsTijs27RLbJByqq+LJyCpo3WGu41iXrI2ScMOucuvGVg1yAbiSm
         5n9W4L0bD4Z0RuXcZ8Oi/9ei1AwSYGeV2ZprddLzluJbVNxgHYolBzD5JhZl10DWDn+l
         VoIBpL0KsOjPM283XxSY31gGobT+b3w/kMcPYUUap7qifk9E+uKDm+/Z0qpnmCIRNFvH
         tOGoxuI9kJFsiINMatT2KTToI742hnNJs76lJVVVsLiSWTGvcgPIHT7r835+8D2OfDgN
         V0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Por79pKV7/zxavztiqV46lugG6MuHRsk2OLPtNOwr00=;
        b=RTWvYir584meJa9isihRtLsIqgXaFFmrGQY3AgwX/QHXNoAoehYyTW7weawFuq/tvG
         PwH9I5VcOfrwOeubnAvFtkER6pSBFneGIkEwdWXiFZ6tt6bUOfHQ3yPvTKwqBaV/32/k
         GXGLwkomerZH2zcrY9WRL1cz58b4Bj4Mhx/A1uHP8mns/v+uPqqje6G5xaAX/7Y7yPUP
         LCNRwblPpWLjGdBVThdmW7lwttWOlHTm5XljT2fSY/EU5UCk6Ek7zPsbX6P3gHvkTqeb
         FkOyxGnS9YvvxU4GrRs+nDFZdFFfL5bUpZRk/gj44VB1C6S6h/n+8Zr/mVne7Z4pEn6Q
         xmCQ==
X-Gm-Message-State: APjAAAU6t5XobwcneF/8AAbBpo6ZdZH22+kWQd7M3OtTlvzIcR4qPWXi
	UwATvL9AF7NDI3dskYSDdQCJh8Uo+uvXiw==
X-Received: by 2002:a63:5b07:: with SMTP id p7mr15604104pgb.416.1570773779760;
        Thu, 10 Oct 2019 23:02:59 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 23:02:59 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 0/5] Remove declarations of new typedef in
Date: Fri, 11 Oct 2019 09:02:37 +0300
Message-Id: <cover.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes various typedef declarations of new data types
in drivers/staging/octeon/octeon-stubs.h.
The series also changes their old uses with the new declaration
format.

Wambui Karuga (5):
  staging: octeon: remove typedef declaration for cvmx_wqe_t
  staging: octeon: remove typedef declaration for
    cvmx_helper_link_info_t
  staging: octeon: remove typedef declaration for cvmx_fau_reg_32_t
  staging: octeon: remove typedef declartion for
    cvmx_pko_command_word0_t
  staging: octeon: remove typedef declaration for cvmx_fau_op_size_t

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


