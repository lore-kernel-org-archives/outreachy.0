X-GM-THRID: 6663618170330284032
X-Received: by 2002:a05:6830:118d:: with SMTP id u13mr13346718otq.2.1551745449958;
        Mon, 04 Mar 2019 16:24:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls7857543oth.10.gmail; Mon, 04
 Mar 2019 16:24:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqy8VMkRUZ2ME2XNBuynDTp2frUU1Zjz+dekA7HdzFpOAtO9+RXNJuELvCmahg+hosPwpWqC
X-Received: by 2002:a9d:6753:: with SMTP id w19mr13638533otm.24.1551745449114;
        Mon, 04 Mar 2019 16:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551745449; cv=none;
        d=google.com; s=arc-20160816;
        b=sG5qBdfaclUit3zxX++94FK7nKVeWocGCN/nmae7THkZTMy2fWSmEGyMM7GQmFgJv1
         K2Yl97AJGqj8ykkJ/lWXJg+9UTJj451HNADmE310kKoyYCLHq/Sk2Ut6l3AZnibtZJUQ
         Aj6Pqn1yQgkIWdvaJw0zotM5uVL2UshIsJncwWgV8XC4kgU0eVssE3i2Aa0x7Wbjolvj
         UE0CJSssAfm9haQn3PHeF/JOWa6zmS37PdsByzouuKnaPYvo05rIs99vXXmriQpTxLPt
         ChmlyI7bgEb6DqaZn0G4nVSlSRaHOmJypVoNNMPtJEZdIGv7YrwIEE/NrdmzBETaXKYS
         7n4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=viPaYW1IR0ldfU9ayeE7Gnis1Vgi+dF8CJdVdhvNmV8=;
        b=gZUdR+vz8Bd+bMpTXBwdEsjRkAYYXY8/9GyWvW07C/lL5HRd9C1qmxOfgzzmKQ5gLx
         ArNG7QZ+uMJ0FxX5ibckPgBQ3WvG+7cinHeIzlxW3suwtq078u8wWk/trRH32/tAf/dN
         p1JRIe7xYUsknMowo6T8CHx+++pk8lu1g7UwI3Mowhkav7mCRJA7kX5BKgA1+1mlBYsq
         vJCwEISXOYJle9G749q2nkm9Dr3MjdZ1ixpJkhbmBxCTUSn1XQ5YSwholMEFCt+riys/
         O344ZJHt+rUkdpLys2TiIMZlDCRdVgUHvDCs9EonDjTLSNA7DTNldP+2c0UDILNEfefM
         0njQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sZZ0HcDx;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l26si447726otf.0.2019.03.04.16.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 16:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sZZ0HcDx;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id b3so5911635otp.4
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 16:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=viPaYW1IR0ldfU9ayeE7Gnis1Vgi+dF8CJdVdhvNmV8=;
        b=sZZ0HcDxhMI6ye2V0JYIzhrMY5tu53PywR2QnuNDejKaFqJHS7uoi7R1r0qUxY1Ypr
         gPEKkY9eK999rtDK3o5ZBN3SDWvWsLtyfmMBAB2sWXqig/3yDk//CkrDo6A2JneAqmFz
         l5H7+gJP6Hb+m8RNnXAM0dWznb5b88YVc5oXII+QQm6jpBjvY6zZ3aoIN48ratnYAdfz
         6GjSzBEboxt/SuZt3F+3eR9iCNoXerNeL/A3Vb/XZC4mALy1pD6+YBECsAO7I9+6SRmX
         I1nRfM6wMm0LZeVPxjiIUrKEA+hkR/TeNxav4S06Ql4mz1N0MH7pPGBlpT13rjxHK6Oo
         ZkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=viPaYW1IR0ldfU9ayeE7Gnis1Vgi+dF8CJdVdhvNmV8=;
        b=ZHE+Kcvsh/sBu2a2Ce9htNoE59bXgu56t+B5cDGWDavrjkM79pE4IpodhzcSuhqGJ4
         hlYaE2sVfgbSolpx5vFfesRkBs2JmbZkg+j4UmyXzCeeI4aXXztq+ZyQfFL6Cr1IGq1t
         R/t7D0Wunl1FoHClqUeu6gAPxfAxO9wodskSZG7RWbRI5mmVBctOKgNfKxPlRGTaY3iE
         RmONqcBf8sV7Ewy2UYfpyKEF+lFgphrDDNijHu/pZaC+BO908zCPP8vyC7RMFUiiY88J
         JiM00fKNI2AaUiRjbNgtE3tR+s7GmM9lYAz2gVh+BNimO2MeDyj7cDOdZw8K+1LjpMbn
         KQbA==
X-Gm-Message-State: APjAAAXWEgXpjB19RUVC8p4tX4U/+4x2NOP/5LqW+lZFdqiAhvY5lCey
	Jd4VdCVbKp0AwtcFORyl1Kc=
X-Received: by 2002:a9d:7658:: with SMTP id o24mr14103293otl.275.1551745448499;
        Mon, 04 Mar 2019 16:24:08 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id u6sm3144762oig.5.2019.03.04.16.24.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 16:24:07 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/5] Staging: vt6655: Fix checkpatch.pl issues
Date: Mon,  4 Mar 2019 18:23:58 -0600
Message-Id: <cover.1551745071.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

These patches fix warning line over 80 characters, modify spelling
error, fix warning about preprocessor conditionals and fix space around
'-'.

Madhumitha Prabakaran (5):
  Staging: vt6655: Fix line over 80 characters
  Staging: vt6655: Fix line over 80 characters
  Staging: vt6655: Fix warning about preprocessor conditionals
  Staging: vt6655: Fix spelling mistake
  Staging: vt6655: Fix space around binary operator

 drivers/staging/vt6655/card.h  | 6 ++++--
 drivers/staging/vt6655/power.c | 1 -
 drivers/staging/vt6655/rf.c    | 4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.17.1


