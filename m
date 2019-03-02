X-GM-THRID: 6663618170330284032
X-Received: by 2002:a25:c407:: with SMTP id u7mr3850054ybf.59.1551494507932;
        Fri, 01 Mar 2019 18:41:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls3992ybh.9.gmail; Fri, 01 Mar
 2019 18:41:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/IHkwQTmUpe9uenmzlndbpdupOK7+xG8xdNjhMPVJn9j8RAdbejz531+ounGuc8jdK17z
X-Received: by 2002:a25:4c85:: with SMTP id z127mr2753783yba.69.1551494507017;
        Fri, 01 Mar 2019 18:41:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494507; cv=none;
        d=google.com; s=arc-20160816;
        b=0dfa76fbDh3jGYesCz/j56YwhteOlfhzvLDYtnjtL9dzHqquVc73BHDc9Zwt1jPlBk
         hB9cTgSLGttjNOoJdFNq7DAFgWjzGwCdLvCRNQBS5+ZkjxHFDUjwVR0Owr8xyZ12YGw2
         dNTxoLjQLlQg7Q5e423ky0tf290IYh3DbvIq4FtlUoVHuAhQ8/aKFYhn484TX8Qlydon
         YEGM/ZyXTd7qx23NSRMAaJyZNBsR3nTqgp6GyAJWwGVh+Gl6ImNoK7p6O+qqxdlgm8bX
         g/cI713JGki57t+zdf1BULeGrL2HF2nB8eRQjoJf+26mhSz8EvEGqyrY8Q1JiETa0CJS
         TwXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=i/+9WtE7ARqjD4aB1uQojdbPbvZlQH8r0wVii3+/EGo=;
        b=QygN2KDGCnbx43y3RS/WwsglKKTjVhrHeyFfUOxe3MhOzrBC7TJ1VehxhuOmyfy1im
         e+BWIARpaAdLhhKr38sHPrRi9jUEaIVxXPadyEIGCBPHGe01HfmK0xSfXRS7am7AH4Y6
         WWy+zN5HjKCSdW9uNHUjpup6zAinEEfIvoQjrAG9LwuwHNfiypqqTCmvhz0FlWwI14f3
         2BZyBtH7xObveBqE787TzGGU50kjHIs5EB21DEIWdVzVM28QrZQWvn0oYtwDEcA019P/
         tJYYxzrH0B0KS0stra1RXvyXslu5M4NWkbHuI/NNx61A4QHAFL5W57VP6fGICQFBYmmg
         M84Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RoPwBS9f;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c1si256317ybo.4.2019.03.01.18.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:41:47 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RoPwBS9f;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id z19so22774063otm.2
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=i/+9WtE7ARqjD4aB1uQojdbPbvZlQH8r0wVii3+/EGo=;
        b=RoPwBS9fyKqtOvM389qqZz/3ATOQ37I6xZsr4fXuTEvY3oN0C/olkEciFry1V+jPyA
         DeSVYBUBFE/j2WGiu0Vw7MUQ9dfTJBLM0k2BQvCkWn0PtQL2y8+cRjmGRI/KcyYGV6c5
         dZ49yWG1mbT2glBGHoa5jROS4zWI7X6/r423WH/q3JnEx9gr9lf/jBQ6YrAWYGUeOXQQ
         coeF8vxkrMMVcl+d+YnAFqSYaLIsEHOy/zq6QM7ir6C30sdxHt7JE0s6IRxF5s8DypAh
         Bu2yXvf6EOLEGYTK0/0n3p7l3PaIk3l78eVch48L72rTCy3I3chTi80LkYTjYDtPDFIz
         MnQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=i/+9WtE7ARqjD4aB1uQojdbPbvZlQH8r0wVii3+/EGo=;
        b=shzsl12VA206eMnMqEMtDohUUg2QFxMNUo1htGoUieaFIf6EJee227ogaOLG/Mu4eh
         lO3zP5OpDDlUy+mOYZSryA8bbHI9hnN6iow3ZgZ+XJJkXOWo2mP99sCvqNKD4FG5KXab
         +rXKEOVixYP5O4ZSeL2/h+fjS1bbzmydHOH/S9RQoPk1GdV2YWGAHiQ5eVmQsdr1uJdy
         aFy6SADV/FaBJElLnkGjhBqVd45QvKm7ZgFTmxLtPhm8/sPdusbCdeqPb/BShFU4K/n0
         roGt29jf+wjJ5zl5Tlo9wNBjPVUeVzEiKmN/ZuxXl64aTorgnTaQ183Y1G69s1xkm+NS
         Ltzg==
X-Gm-Message-State: APjAAAXCabJUdGtFQf85ykFTqAHAWhrHFfCdBbLAP2IMhGKMZd/5wVUt
	c6vVzK154chWFtu2M8g37G4eydIk0UM=
X-Received: by 2002:a05:6830:19:: with SMTP id c25mr5235152otp.79.1551494506278;
        Fri, 01 Mar 2019 18:41:46 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id y37sm10485955ota.17.2019.03.01.18.41.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:41:45 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/8] Staging: vt6655: Fix checkpatch.pl issues 
Date: Fri,  1 Mar 2019 20:41:34 -0600
Message-Id: <cover.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

These patches fix warnings of line over 80 characters, comment style
issues of SPDX License Identifier and remove unnecessary blank line. 

  Staging: vt6655: card.h: Fix line over 80 characters
  Staging: vt6655: card.h: Fix line over 80 characters
  Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
  Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: mac.c: Remove unnecessary blank line
  Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier

 drivers/staging/vt6655/card.h       | 6 ++++--
 drivers/staging/vt6655/device.h     | 2 +-
 drivers/staging/vt6655/device_cfg.h | 2 +-
 drivers/staging/vt6655/dpc.h        | 2 +-
 drivers/staging/vt6655/key.h        | 2 +-
 drivers/staging/vt6655/mac.c        | 1 -
 drivers/staging/vt6655/mac.h        | 2 +-
 7 files changed, 9 insertions(+), 8 deletions(-)

-- 
2.17.1


