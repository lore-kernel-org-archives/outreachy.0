X-GM-THRID: 6888359188938883072
X-Received: by 2002:aed:3031:: with SMTP id 46mr3370098qte.49.1603821103858;
        Tue, 27 Oct 2020 10:51:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b897:: with SMTP id y23ls622125qvf.5.gmail; Tue, 27 Oct
 2020 10:51:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJya9p75que/LUWuiSUj9Usqb6t1Kq0J9AbP8FJt0zf/Jgem6+UJxCU3vChxByBJumfudYaK
X-Received: by 2002:a0c:a4c5:: with SMTP id x63mr3632705qvx.58.1603821102197;
        Tue, 27 Oct 2020 10:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603821102; cv=none;
        d=google.com; s=arc-20160816;
        b=WEYTwOW18wx40yYKst9d53SkOr75WhKdiBTZNHqK1YfHiE4TxXtt/rDdxpgzWUA86R
         4fMvZAztLPxqgx0DHyUxHLV0EZXpZsWso+3Mt5310TiRhu+wBbHKlfhjpZcXlFjs49aQ
         vnkJYVeW9VZB/vecgcD/QeymsiCRRiE+AbthKi+MHFpgzLGLCqaWbE9cEqDvLvHu/5cq
         mwrrqWk7YBCTK8BW/X4EHXCuAUqrZLdv0C0maDpmObC8hi7LWMAjO02V6Ms60d7KszQk
         EjE6faR9uMflbFmrtCimIdlba0r4qSrLA8ajJBuEkK7Tv2WVooySPqogEaH9Ur+XX9Xi
         7RHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BIQ4OJ+VZfq9wfyVvbYtkMPz4pf67CmmmFdLBHM586s=;
        b=HVMTTZ3lQgPhReIANEMA4F+KNylGkjolwWtd/2WE0M32cx/EsxnV2XVtk0WVrYlkBn
         00hkZC3K/vWRzRWMuLAAi57M1JGPLKP/V9JK/qnV4ROv1IhGKmVBF1YdeeyK5HwcIvxs
         LzS9KpWoTfjYD2T25gw/864Fh9tjmLe6HTV1tFKY76p5PcHM1qlFUoXWIFa7TBHbhrHz
         YWJG+bhu3bBm1bQv9aVQmAxC3RVJ9tuPSzfYg12cmz/AqjCqLbFbZbCfrZiSr8BsOqko
         eRBnLCPkO8b25gcHB58jh4qPP7jZBfOOP0XZmM0LztjhY4Z1PE4L6zJi7+AkxErb68rb
         YQrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAFl73Qc;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x21si178683qtx.1.2020.10.27.10.51.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 10:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAFl73Qc;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 126so1353185pfu.4
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2020 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BIQ4OJ+VZfq9wfyVvbYtkMPz4pf67CmmmFdLBHM586s=;
        b=CAFl73QcPilETw9iokPTxt9XTVtMUUXdAItrLhlsoFKLzWNI9EzEI1BuvHAgFgSfK2
         aG6o8qH9eaV94tAJAvVfAv3he3rWgFogIU2R5wMTNiyp/KZC2Zb01wwvYnbuJy+Z6U/o
         lIdaHNc6UtZYOMeNTlM/bEj1ARyehKEMwjkJyhszk68ED+JDsQ1hRcqNsSaHNe9x3zoP
         LYPHWA05m4bQzNU4+Tx1WauuS6OzUrw+Y3ca3JTzj08Cb5Re4F1B7vxtC9qBrbI7f6GB
         1n0laGmVpTXVdXKJvLtYouMEBRQzKFz1xaaGoHgSwHUjII8DujZci1j2aSfEOtxGKGR+
         LJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BIQ4OJ+VZfq9wfyVvbYtkMPz4pf67CmmmFdLBHM586s=;
        b=pcpP75eSL+Q/kqll3u2ENzPpuNk8uhkYFGEzdqjAHXpQAKx566P2iRDBYiNWTgEosx
         KSKnCaQ5JyAskXWfoNwo1O+1eXm7sZdFVGb7PhoC5jF6EfmmaMI2aD4MHvdUgZdHyYiA
         7OTBvBBClH7oERh7DYQNC+Kdh3qh0ClWj8w8KnWH4ovEtJacDoskKYryfP3nmhQdUpXz
         QkObUXzMVbDFtyM//awL1UxKGP7SyD0yNrpuZZruyRhiLvgICgffGh+ZRmVNrn2KFKXo
         O1Dvatngtfz7w2+TnLFKeEMDUxPO9zpb1kNp8azYq9Qw/RJGisxYftwZiOxO1LEZN74a
         cHCw==
X-Gm-Message-State: AOAM530rpWNTaM476NXAIV7fcnJ1FWfuLx6xOJwPQIWT7MUo64zIKYMX
	fbZuTX/YWsac4jgfd/lQOWVkrkhteSswi2ZW
X-Received: by 2002:a62:6101:0:b029:163:afcb:9b94 with SMTP id v1-20020a6261010000b0290163afcb9b94mr3576790pfb.45.1603821101439;
        Tue, 27 Oct 2020 10:51:41 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.189.144])
        by smtp.googlemail.com with ESMTPSA id ge6sm2643906pjb.29.2020.10.27.10.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 10:51:40 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: nsaenzjulienne@suse.de,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 0/3] staging: vc04_services: checkpatch cleanups
Date: Wed, 28 Oct 2020 01:51:14 +0800
Message-Id: <20201027175117.32826-1-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset fixes various issues found by checkpatch.

Amarjargal Gundjalam (3):
  staging: vc04_services: fix block comment style
  staging: vc04_services: fix quoted string split across lines
  staging: vc04_services: fix missing a blank line after declarations

 .../interface/vchiq_arm/vchiq_arm.c           | 192 ++++++------
 .../interface/vchiq_arm/vchiq_arm.h           |  27 +-
 .../interface/vchiq_arm/vchiq_cfg.h           |   6 +-
 .../interface/vchiq_arm/vchiq_connected.c     |   3 +-
 .../interface/vchiq_arm/vchiq_core.c          | 277 ++++++++++--------
 .../interface/vchiq_arm/vchiq_core.h          |  55 ++--
 .../interface/vchiq_arm/vchiq_debugfs.c       |   8 +-
 .../interface/vchiq_arm/vchiq_ioctl.h         |   1 +
 8 files changed, 317 insertions(+), 252 deletions(-)

-- 
2.25.1


