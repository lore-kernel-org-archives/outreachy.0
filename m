X-GM-THRID: 6663863789016842240
X-Received: by 2002:a25:4d88:: with SMTP id a130mr5556519ybb.36.1551553472571;
        Sat, 02 Mar 2019 11:04:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls518022ybb.12.gmail; Sat, 02
 Mar 2019 11:04:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjQq4J10shvvNjAUoPHMTc3RT7YSpIR9dSY8IuAlWoYwu9UlS8pXdRGy3nVxJOK35Itlj8
X-Received: by 2002:a25:4e86:: with SMTP id c128mr5845282ybb.12.1551553471731;
        Sat, 02 Mar 2019 11:04:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551553471; cv=none;
        d=google.com; s=arc-20160816;
        b=S1907aFn2M7S27noGuY6c/Yl8yu0DdbgXPAthCiYBuzAhkVZJIrOc2AwQlK+5YJqph
         rbnsCgHpVn/Yhutx62PSOc8F/X/EZvmorEwnAAi/Ybt3JFZFw3aT0lxccItyJY6x2H7F
         YY45ouuHppkpin+mCITfIrSbsrX+Xt6rO1e/yP8dcxqYvL/b8Kbon1qcpuJ5Qnv3yNRS
         MAKeC/0ICpPemhmrtd5XBwoYYLcgPxZ4pODkhL6foaRkX9Eba2gguJDpqeiVc6HtIIKK
         CJuh/oYnq0xs3LKuaIKw4jGBOuoYjyr3xALpJxdBbUvBCOco5nb6NNNTdjtTh2uB2mlc
         8SGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=P316iAX75p8OazEinRSzrngVxCLSv1B8dVSADMohqgM=;
        b=Kg2yruVqNIefcuC9973hEQ+2NrlsbLLE1BDvZEMKiNcA1Vw6UEaCchTIG3ZtFFPH0f
         Wr+27VThhK/7l0uMTHyWTt5fvGD1KF371sFz0CM/vgUKoD7AdxCByioZnhDCZdZa38h8
         UZtK7hPGgPpn/78gI9WfATgCqnOGkVMH+AzjwDIFZEhX9VcB+fy4tEHlr3afWFUJkAIe
         bBnJ01W0Uy9UoUCJwR3zFPKezvn/3ERVv4WBIVTI8y+bNJLgjZTgXR7Z9CefJAHopSc+
         aej93qCUlWfjCt//WT8NqULKOMeIkGZJ/+JKei14EqFhwQqmxLIozhSr8Jw9uO/yio8p
         GX0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WBQ5UPY6;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l39si81755ywh.5.2019.03.02.11.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 11:04:31 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WBQ5UPY6;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id j10so831810oij.13
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 11:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=P316iAX75p8OazEinRSzrngVxCLSv1B8dVSADMohqgM=;
        b=WBQ5UPY6nPDEJwCQUf/CEQCUIE/3qX3NmWYkoDl9YyBhs2+HIW6HVXyKr9UI+39oVY
         ZDIeKomBLVOJ7aksZpPlnF7ai4EOL5IoY0gK8kvOLRiEH4hVk5IFMIVIDaMyFo7y9UQV
         dN5bAfFfeZ6pGzn3U9qz18J4/sGOUFdv+mv/51/CtRS5Bba47ewfspxTn0AxhDxZ/BVO
         HDdoB7QawW7eS6JS/P4rGJ+d9FdMvoWNfZysbimcxfzRd74kemHw4i4sNhg6wxew3vmH
         izvmVBeTwQ6WDCI6W+dyJzn2Gzr4xzzC+5MQC9ENMnuJFWpiztVUQtZvC/E6akoi/VYC
         fLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=P316iAX75p8OazEinRSzrngVxCLSv1B8dVSADMohqgM=;
        b=noIRaDyZykcLasYrcGhJ2JJgE3I/k/n/C2GglSn2vdbsyHVF7Sh4y+Rn26WPN3Q3/P
         wk8EpwSBC0xZheZYKX28DTXVab3BoAGSDTdZosJ0OZWZYLKTHRXpMPFZHtf1rJR27VJ0
         P2TKK4j8GoG100kb61sLP7FEaYfKciSVF3D1CkD5TB9MZjQQvy4RuEWrh2UeG18p3Thz
         qPzVs+of1tImcUozCSFJ+HN4oSxlaO/6roFZ5J70OR6zFxABdV0t16En/UjvAhuKS2sf
         hEbtwM0ygxvbySgQrD27Nv7TZgxtMMZRVBbe0e8o0nlrEt7ljOkvUnGo0cPC5wsQIDAF
         5FUA==
X-Gm-Message-State: AHQUAuYBpUOdnp7ipNvjdS/sCrgwUU5g5KJoVoaAj+/vTBATYD2OgGLd
	uHVamD9IYRjlYD8NhPRAUog=
X-Received: by 2002:aca:e889:: with SMTP id f131mr7462899oih.136.1551553471275;
        Sat, 02 Mar 2019 11:04:31 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id i9sm571061oth.13.2019.03.02.11.04.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 11:04:30 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4 0/2] Fix checkpatch.pl issues
Date: Sat,  2 Mar 2019 13:04:25 -0600
Message-Id: <cover.1551552831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset fixes the comment styles of SPDX-License Identifier based
on License Identifier syntax.

Madhumitha Prabakaran (2):
  Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier
---
Changes in v4-
-Fixed matches in subject lines of the patches

Changes in v3-
- Fixed commit log and version number

Changes in v2-
-Included cover letter in patch set

 drivers/staging/vt6655/channel.h | 2 +-
 drivers/staging/vt6655/desc.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


