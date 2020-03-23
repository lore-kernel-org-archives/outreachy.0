X-GM-THRID: 6807378568444641280
X-Received: by 2002:a17:902:6b03:: with SMTP id o3mr20978773plk.331.1584966333427;
        Mon, 23 Mar 2020 05:25:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8c8e:: with SMTP id t14ls4604546plo.9.gmail; Mon, 23
 Mar 2020 05:25:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsXCbh+9yzMgF/ZfS0Puc/n/zUhgWUsLuF8TANhGv/jbvMClUT5PsxpEes6G6u9/cXTKYzR
X-Received: by 2002:a17:90b:4d04:: with SMTP id mw4mr3334787pjb.180.1584966332111;
        Mon, 23 Mar 2020 05:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584966332; cv=none;
        d=google.com; s=arc-20160816;
        b=jpRasItq04C6vPTM2GtNfauIj/65GnLY9o/ru4fQvRJ6U3yulDyTA3Gci1iQ/GKH50
         x+RTSO/+BL7oCLvDhY3DHWp+P0p0qiyNqGRBcnOG9t5mdgjiN6br3ZBGrHqU5qtfPsFa
         MwpraMzlGDmWruYW49Vj60lAi7acRXjIYT1EyjVDrr5S/bNWiYJUUiS1P2eiHP4rvmsm
         VZB6SXUencEXjgQTHpu7z34USm4VeTZlAZiK8X0RKOeh+1eQ454Ta+VKp2XGEbEyTNO9
         dNCAzPGlr4DNkGEzAobiVCdcHA4k6STOZFsfrHp0JDxo5PgPLZ4O2yJ3xJ/Pt5UoHUYV
         XfbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/5yGRwppSNRqir17LmDfoABCJd8hkUi3wAiJlxn80Ds=;
        b=hxjWY6cyI0YraDbxsl8NJLhJpb12eLTe+iiGbo0XhimjH7GdgnMMItfhliVANhc+tf
         GmovShF1Zmx3SH/XI7bYomtYFpSJ2ord9Hbtgeo1+u72PtZG47XKZehe47GhMejR1ZkV
         lmapZbcl/oqxwHQYeAsSz30SLUAMwSIqLMsLOOP6DLdBXNkP0RH25Dmy5KDA6dsKfvm3
         2YtC0wZjMEPtHaYYSqvS84xvHDQJRnvG0O3nj+V0uZjp9WSF0z3Oru1JiNOmPSiRI3MD
         TG6ppev41zri0JKHM1xNB92xFu+TqFs66gzkuaecCS1bx7gdN2aiPDqDkyccSVkRZ2lf
         YavQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d62D3O2T;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 138si151141pfa.6.2020.03.23.05.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d62D3O2T;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 7so7132455pgr.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 05:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/5yGRwppSNRqir17LmDfoABCJd8hkUi3wAiJlxn80Ds=;
        b=d62D3O2TejcZqJVojdJ2wnjXROEpOVxPyobfIpNpnt1HgL6jNycTx75+MqTf/ARR9S
         IES+5xVc/3HEvcZLVarWkGmCfxnoRNT9p0Id/8+6A/Xy12j6A4iSku70dpD/LryO0eaq
         oMQnuch8V3WqOyHslqW5cFxQ6/jCCfwqU5coiLEkjYoJd1jjaC8l04yOmW7K6nFoEqdq
         /UPPTjWrFw2vpz2TQoyQ2NFfPEglujp2Kbfr5qCW6X6/ATOwI8qKhUXAjoSnU9CS1ay1
         S1mXLCDPEnDFnNDMMGXqJHjAheu2wHx1yfkiw9Wj5MTwXTcvirQT7F5uK91eRSJbnmDm
         VMkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/5yGRwppSNRqir17LmDfoABCJd8hkUi3wAiJlxn80Ds=;
        b=NVVkV+xT2KZsZ+ILSvEGr8D13eUWd3VrbK7W7lGkGVvC1gxYPdX16cqs/rX2m64ZSa
         L7Czd07C4sZxxHL4GxsVZAmJ/gL3UdxgOzED6ADuWNAMRAWS8VAjGPXgqEy7qNDGFRCX
         QM9ETRJzMFxxrW3Ulq7szUL/lMSANlSQO5IMjfwHCSnNkn+HUGDpAgSpgcXAY66DF+IX
         Tz60rj+jYLHuGVg2/gMwq0qGgChUNHpzEhEbfFy65ZgRVvlvImVIVhGJeQbXOA5cKJQf
         L+m3cuaivDs6dm8tUzpuQZpzAftD/0AW5TjA3LVBCS3475dAneiajC106OmhKLMgiM3S
         esDw==
X-Gm-Message-State: ANhLgQ1tBVe3baxKltgMzDfaBSnF6PTUZImF6t/cND1bdCpG4iKCAs+R
	d+TwpuIpcSmhFazz1SYreHQVCUbiorDtIg==
X-Received: by 2002:a65:6805:: with SMTP id l5mr14636799pgt.256.1584966331370;
        Mon, 23 Mar 2020 05:25:31 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.207.88])
        by smtp.googlemail.com with ESMTPSA id o15sm6796602pjp.41.2020.03.23.05.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 05:25:30 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v1 0/3] staging: hp100: Resolve indentation and space warnings generated by checkpatch
Date: Mon, 23 Mar 2020 17:54:23 +0530
Message-Id: <20200323122426.60340-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Patch 1:

No change introduced

Patch 2:

No change introduced.

Patch 3:

1.Change the patch subject to describe the changes more accurately.
2.Add space between  signed of line and line before it. 

Soumyajit Deb (3):
  staging: hp100: Add space around operator +
  staging: hp100: Remove space after * in pointer declarations
  staging: hp100: Remove uneccessary blank lines

 drivers/staging/hp/hp100.c | 61 ++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 35 deletions(-)

-- 
2.17.1


