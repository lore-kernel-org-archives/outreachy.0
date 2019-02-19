X-GM-THRID: 6659802346769350656
X-Received: by 2002:a1f:4e45:: with SMTP id c66mr20288576vkb.25.1550606067704;
        Tue, 19 Feb 2019 11:54:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:204:: with SMTP id 4ls3643134uas.1.gmail; Tue, 19 Feb
 2019 11:54:27 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZpusb8qVaXyyex2nX5kT78La4/05avK+VVnjJI5OfNlfJ9t7LDkTBMQI44EPJqRV0fdj9C
X-Received: by 2002:a9f:2f17:: with SMTP id x23mr19735320uaj.24.1550606067001;
        Tue, 19 Feb 2019 11:54:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550606066; cv=none;
        d=google.com; s=arc-20160816;
        b=a+Tche/IIpFVcJP0DHOClYST0MNbvZ0/HR6yRCo/QnC9Ue7t82qWLpad8u6y6tz0ho
         Zmt5aafpVM8t6Yk1tq5WEgae0rt6cu+fe4/zX2IdMQMd4A/YY2zTyGOLHBQxtfhPIDLO
         KH1PtuJ69RlrIaVKXq0D/PdQ4+NTkPSEW2EK4DiQ04saA8UfoTycdzdk/J6jNMWDg9Ok
         U5cOLwh0yR7pgDYwqebSnCCQw5joZnQEuaXuDkIq67RukEC8FTgCGZCnbqqtRi1Ee9OJ
         vWjA2OTLf0+iD+XiRVU5iwJA6AmgFje1B4X+oJ+SPt4GFXyxqLDtiqblhxCY1DAQMWHv
         OGlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FADZuQEqGi+2NbIf40HMBvJ50iZQEG2adZBIKVjD8bs=;
        b=xQI22+JdnFb9toMvokj5oHgD30WF21wCtWrRRiU0pZ/sIeiBf3tehC/9FsscDGOxi3
         1JttmPfygawwf9WerKpO8O+WepDXFXKRmwu6/wMA6NEHVBEbmVcCUyPLd9lvnj3jQdmK
         UsjkkiDn/+xxkk1Te0HlD1/E5EO1QLasE3k1WYP/+PF4DyfdWsVMk2iEeMZ7Op2GzHsA
         sbkN2IagqpLqiGAGYQ8gbZmn6xvE6dNyDcuI2jgXUDf2H4vmTMxe1EAFMvpVhNn0PnZe
         +Q8gWzpsN7DcG0w/XBvp7jsIdpj+yGuQRQ4ZAI8E/au7Ht1zLaj+Uc55N+AGHhH2UeQ3
         oLXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GEbFnVfp;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id v187si859078vkd.5.2019.02.19.11.54.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 11:54:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GEbFnVfp;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id b2so4882037pgl.9
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 11:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FADZuQEqGi+2NbIf40HMBvJ50iZQEG2adZBIKVjD8bs=;
        b=GEbFnVfp69YyrZrVe7j55fZRRfjizJov5Ychbw4Jm46R+NbUS2QPogqwoIgmWMkDGM
         9L/h3L6Al6/1p0z4LwyTnHHdRqr6TCMHNkMCTRZQ4VROmkZAbACIOWnv1xR7yPMsroF0
         u2pMzon5dM5frfvXIsK+u7PR17iWWAKdMIsPFZxaOT0hvkVfFUgaP8H65Nkk3MhuEm/l
         ocXYJfcPckAHkQ64M5Bbi+U9NLO1OxTyZ3bdJ8clRUxTX0tBrIoeb49mI9dLBj6JZjUj
         Xbm6AVWG6jXkSaNMdzCkMnTpK7nbGJr0es8eca2tzESvaJumCeM5Gpn8y7rfCanz4qH/
         J4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FADZuQEqGi+2NbIf40HMBvJ50iZQEG2adZBIKVjD8bs=;
        b=M4v4C2w0IMXG5QnD6aSr4eG5o0vkizJ0yh48xg5MtAYnwdsZDIllVSCFU3dJt4Z0hI
         t2zOd9IYAVKgXTCK5PkS/wiRvJ8qanywHVwVwMRcUQO9L3DWt/lT7dBxVS9X/biP7GTw
         kGc2WRzWWyokvJnVq386gkxxTdcNOAPs2b4BQqeEwCBFXZUvYBgqDvib6YS7fNunW8/X
         rp7UNi343lTV9MqvWIFTc68n4Dw7tbcUVvuV1kW3d33NkxzxJMcpWCwNIrjVpxurUQoT
         /HJGDWJn4ZKmCzuScMRr8u5FvyKNfKz/g8kdrYDgRfwzM7LiGTNAcAWKt+IMygdwJGZJ
         D5ww==
X-Gm-Message-State: AHQUAuaSU1Zfoaq2juGKc9SLIphYKdzcHcINBlK22ujMlX7c74kQ9r2B
	z721J940HV/BzYHlk2LEQHgiCDIpPVA=
X-Received: by 2002:aa7:8045:: with SMTP id y5mr30819476pfm.62.1550606066645;
        Tue, 19 Feb 2019 11:54:26 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id l7sm4593278pfj.162.2019.02.19.11.54.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 11:54:26 -0800 (PST)
Date: Wed, 20 Feb 2019 01:24:23 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy Kernel][PATCH 0/2] Staging: rts5208: Fix Various
 Checkpatch issues
Message-ID: <20190219195423.GA16232@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Various code cleanups reported by checkpatch.pl

Bhanusree Pola (2):
  Staging: rts5208: Fix Avoid Camel Case - style
  Staging: rts5208: Fix Macro argument reuse

 drivers/staging/rts5208/xd.c |  8 ++++----
 drivers/staging/rts5208/xd.h | 15 ++++++++-------
 2 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.17.1


