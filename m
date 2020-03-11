X-GM-THRID: 6802879895263248384
X-Received: by 2002:a62:f24d:: with SMTP id y13mr2071993pfl.27.1583918904520;
        Wed, 11 Mar 2020 02:28:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:b114:: with SMTP id z20ls813979pjq.0.canary-gmail;
 Wed, 11 Mar 2020 02:28:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtr0Hry7W1EMU3M+WOrJVBamQUqjXWJS47kd08/IjQIsOuDDRm77H6U4bOeZkrm6WL4sEMW
X-Received: by 2002:a17:90a:a417:: with SMTP id y23mr1472667pjp.184.1583918903164;
        Wed, 11 Mar 2020 02:28:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583918903; cv=none;
        d=google.com; s=arc-20160816;
        b=eZUxGCtVFEKFC0tPbnP8ODKtcZK8S83qpcqq0It1MCCE8Qsx/pCe7dDKgGk2tgdatK
         GCwJsKqAxuGHHgTO9TGKiPn59p2u3J2yVVk0rnguzGU6fND13m23VnCA45dnAmWYT4SV
         f6fINbEh/7rR1bAGHsR7c7y1+s4/PtDqRKP2hDmxo6rrRZ9u4hxREHoKgry2y74OPNCr
         MdtGbmyAHjxJnHQXX9Hims5qP4JqbKN7jjjCT6nUrpXvtLS7lduhI+vYpNN3AXo6aFMH
         +Lz87bN7/u9qphiOkKfQoL2HpEBrx4sErdAYkhZeNpRxVvTuMKJyjLhXXoQlAF9bPSBw
         5CnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fWZRaDRaF+mSfOiGcYxGW1dQzdc1bZy42GzifEy5enc=;
        b=ficvo9Re0KmXIyRr8L19eTw82ZUC387bM72eduOAaN9Nvldg4WAG/LQ3Xnzw3ccB0s
         RsLQtG06pWkvFUl5t8yCtc7Bd3imVsGq+1Q/eefum1s7W5AU8Tb3kIEmLQ9Y6d0dmMZr
         K8VXss0C2+hBqjetgj5hR3iofcR/OLWqOB0Ov7g7RADCLI4Ca20mlRO3NB7W2pFOSrRV
         FlmOEoSyHEimBVC4/Ev8XByQ/ky97AXlSE5gRKuq5sHUDhjOU2DsdC/eIVFjqD/coSZ8
         5UcKc2HF0Z/dj3ju660gLX1XMoGR+yWlnrv6jZuM1FUxEngDgVQwcdFimX3mRrw/wQJs
         KiUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJpFRJSV;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e2si105499pjp.1.2020.03.11.02.28.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 02:28:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJpFRJSV;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g12so819034plo.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 02:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fWZRaDRaF+mSfOiGcYxGW1dQzdc1bZy42GzifEy5enc=;
        b=KJpFRJSVyo/hiNcZKiMRXqW+c5a4fIwGRKD4b8tAG6q7igXWtVV/Qf61KSHT92jB1m
         W60+0+rorGZYMRhl+WB9WJMWS5XCEHLeu+8dGAG0ScqkSbuWQvjVBO7UIU2nNhkKqloa
         s2mpj/Q8BcE+eEa620GwGXPbfxfT2YaFBhmCLqHnQVJKgNREzZklbDHDhEabdV0qZh5X
         VYU13m91fb6dfkjFYB9KxcZQI6m+pcMUlPiNMK2c1Tp4HOvCQ89D1z3wyuR55xFyG9Qq
         6mTT1SjW9Vb2V+tnBzgvKo33WbGg1BC/yjL+3STzWyHhwSYjqddk4i8KD55DvGlf7ycz
         KAgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fWZRaDRaF+mSfOiGcYxGW1dQzdc1bZy42GzifEy5enc=;
        b=hxoSG1aV+9E4jhpNMueIPbRe2TF/5cDa2q+I/afPjYXBBndc7Oh2YkRzhO0W30KwOd
         +rcJMbBV2VOuDAyNsk+NBywooL6zlMy8y7EszeNqSuPJUTmHdQ0OTOmLnD2/BDDJlfVb
         G68P0zY6/06cZ9MxdDuZfrxxWucOCcXBoka+sCTASasD8DwXJCIPyMM/iFlFr04yns7N
         ctmhAmvK+sJZ3R2awnN/FJXP9WjXzJhgUDGB4T9XbfCbZ5s20eAqvbriip9D40C91x3o
         1WmTR3PnWEYQ5uaIbWQm+q7dKCBUZjcWizxmZDcLhUTYJWh/5MwBSIgm4UxLtWfpdjxO
         0HGg==
X-Gm-Message-State: ANhLgQ3ZaWYClM3rb2Vd8J7PkZWqpUyjffF6Rxi4O0nE3lIVGY3+Wb/O
	KvfsRqPPZ9uMtyRWKedKblU=
X-Received: by 2002:a17:90a:c396:: with SMTP id h22mr2491308pjt.128.1583918902719;
        Wed, 11 Mar 2020 02:28:22 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id u126sm50443116pfu.182.2020.03.11.02.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 02:28:22 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 0/4] [Outreachy kernel] staging: qlge: remove unneeded variables
Date: Wed, 11 Mar 2020 14:58:11 +0530
Message-Id: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unneeded temporary local variables from the files of drivers/staging/qlge directory.

Payal Kshirsagar (4):
  [Outreachy kernel] staging: qlge: qlge_main.c: remove an unneeded
    variable
  [Outreachy kernel] staging: qlge: qlge_mpi.c: remove an unneeded
    variable
  [Outreachy kernel] staging: qlge: qlge_dbg.c: remove an unneeded
    variable
  [Outreachy kernel] staging: qlge: qlge_ethtool.c: remove an unneeded
    variable

 drivers/staging/qlge/qlge_dbg.c     | 5 +----
 drivers/staging/qlge/qlge_ethtool.c | 5 +----
 drivers/staging/qlge/qlge_main.c    | 5 +----
 drivers/staging/qlge/qlge_mpi.c     | 4 +---
 4 files changed, 4 insertions(+), 15 deletions(-)

-- 
2.17.1


