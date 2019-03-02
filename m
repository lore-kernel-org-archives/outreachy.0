X-GM-THRID: 6663863789016842240
X-Received: by 2002:a37:d654:: with SMTP id t81mr6531261qki.4.1551551695697;
        Sat, 02 Mar 2019 10:34:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls687873qvf.0.gmail; Sat, 02 Mar
 2019 10:34:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqydIUruCSt6bIqlPRO4M2ciJYBhZFM+k5vli8DMPbeX5TZJr/ONHITVKrQoQ75pjtK+5MyN
X-Received: by 2002:a0c:b048:: with SMTP id l8mr6564820qvc.52.1551551695149;
        Sat, 02 Mar 2019 10:34:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551695; cv=none;
        d=google.com; s=arc-20160816;
        b=Hu9DQSFL4+yywMklHQwKXKupaiAdfZu7oNZtMq5/zvCgqGrWZ6xXQGxl3iEVQgRNaC
         /TV02flCsNV/rVzBROw/+gsR6MTo588zPiVhrqU33Kr6hXiAMipAt/HaupZuSYj9SjeX
         /jQF8+pRSio/2LvVTkyMFHrkPMhnDip1AxBzE4tqnFKXM/fC82+dJ0yBb9EimDFc9oDM
         NyKVPsbgTg/j/L8v3miy3GY35LfdgEt8/FPgAmkQJ74qOG/KAPuQ+ppDZNWErDfHcOTa
         b2kUMVghtl0UyfYB051b9bONRrl80wFpipr2R7YweJEUKMGgLS8D1+3m/6X1NyKzqI3T
         /F7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7f7yqgIWMxiR5SIYOjsELZIS/WBmnC6BNU1t1B71hPk=;
        b=L2buIKjtHsQlw3gilnHLf//JqdNQvx0jx8CJwzkTG6F5x1ZCoEL9u/ngFuOtDauWen
         PA01PXDk60hSSyzYwAfy9lNckxKPYbbAyWcoi6CfMaZYm+6yXB/CxCBavXpmO3TBn1a3
         pxgP+BhxV2MTV+pOVI2H0fRjVfwdt0BzBKlz5QejRP0DTWD3ItXpgiV5bYRce4L+QM89
         QWb90HyRImdu5uC56jNFs+KpJfELDL7WVxBnSz916/BPJij95oCB/O9E2RwDLsNWW0zi
         MaNitbUsByBGwallaeaPeDxqhFjxNyqAk82nMHr8OuIMI/V4E4mZjycwQyDma+nZ9//M
         sOeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HmmCUWpW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m1si30902qtc.2.2019.03.02.10.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HmmCUWpW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id q81so812957oic.5
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7f7yqgIWMxiR5SIYOjsELZIS/WBmnC6BNU1t1B71hPk=;
        b=HmmCUWpWg+hnVozIPen+F4CUzlkjTIMREyBR1AQSwAu+QbicMxbZa3SITgkBmhhBzv
         Urk6homww7h9Hca2WjTEsGXWFnqiVtUAgXTspXm59LZ8rKcMLmU70rYMIyAx4esV8q0O
         jLj+Ki5CiNEpgDVXCGs03k0exKPupZnGq0JQlAV5YR39XZ84XcilkI+iN1INyLrV3C74
         EWtNc3n5d1tVRdYJ/7a5N9kH2bHg1ZzufRz8Z/EIs8zoFtGGQHPtVPePce8wY7vsrHm2
         Wn3AzrUj+jFT6k2RdOzlKYPvvbBzGomlBm9kxocRY0dWRSUbi6Cs/XjG2sUCtpStiGUi
         U+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7f7yqgIWMxiR5SIYOjsELZIS/WBmnC6BNU1t1B71hPk=;
        b=OKhsRyH/rm/7LCMAe0dstJz9uV8TrJQtoLH7zrIVrOoOJT68ZuBDi3EBA4GLSauS6/
         4LbiHw2rNwFyOv+hro4fbKWAqMyDQL/4N5T0+9nGySFhWduejtgdGppd4SQNyYHpkarJ
         CmKbSzOGidUaeIFLGEOgE6EBhLfVVxrJ58jd0jWfkSWsM+zS8Kdr1fMtbxdyRXx0e40P
         Owa41jnf32HY7/huTHo2j4I8vPPB1BFyHkDs5vJuvR30oojlzK9QSWI8Jt8D/NPk+7y7
         CcOtHZEoVTV6HjGXmnP/yXGRrkDeoKCatYfEoh5DCthucV3vYbTI6opr5xZPD3ta6g+j
         Fgaw==
X-Gm-Message-State: AHQUAuaUQMxZqNfsitdpg5ksJJZcM+eiXXfvllBkvJS4gfxcBPZeqGV+
	QIIB6haoqIu+cL698wV5U0/LGAoozGc=
X-Received: by 2002:aca:de84:: with SMTP id v126mr7342178oig.5.1551551694105;
        Sat, 02 Mar 2019 10:34:54 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id v8sm558768otq.4.2019.03.02.10.34.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:34:53 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/8] Fix checkpatch.pl issues
Date: Sat,  2 Mar 2019 12:34:42 -0600
Message-Id: <cover.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

These patches fix warnings of line over 80 characters, comment style
issues of SPDX License Identifier and remove unnecessary blank line.

Madhumitha Prabakaran (8):
  Staging: vt6655: card.h: Fix line over 80 character
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


