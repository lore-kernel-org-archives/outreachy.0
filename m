X-GM-THRID: 6664112359271825408
X-Received: by 2002:a62:e513:: with SMTP id n19mr5093540pff.125.1551609569867;
        Sun, 03 Mar 2019 02:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b297:: with SMTP id z23ls5386821pfl.4.gmail; Sun, 03 Mar
 2019 02:39:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaPc94jVqSI9ram3YdSAZomdEoM1VWIW6eGEKFUkih3xuTViTmGeNBVCL/jyUU8pvND0TSq
X-Received: by 2002:aa7:81c8:: with SMTP id c8mr5297834pfn.102.1551609569087;
        Sun, 03 Mar 2019 02:39:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551609569; cv=none;
        d=google.com; s=arc-20160816;
        b=MdTCR0pf4z0vlxT1ioLarGwCZKe6u1FpYezgW+mfsPkP0es8Mnd3GZGUah9Bkszs0L
         weqOeHSlxgy4WPJm9a8NY1NcyY6aTNNW7CH0V6BXyyixqO90ObhXP9AiNk7+ikOw38CH
         MuJBrif7LDGS52dH566WlwDuHBEXRBU7RgkB7BW+e67s8MZSkBbDHnYpLRBHsUsBWA39
         XDfXav68B8ZkRoxCEf40kqHPkJuIqTPj8i2L5IcxYmLbYD//Y4o1Jl/Sh/nzlSijYmRj
         EbBdb7pK3r0U2F1adPejk2utsC8piBlnm5n2q4jSDBbWL9AJDcCQSsu9IWwWf/bevbhD
         /nZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ArxsbO8t6UqK7B0iiQcvMy7UpXH2+EIA1QApMIgaKzM=;
        b=029XgSmwUTBONRklGkJu0dFEAg3F/WwZy7xsbR6aHkwtBYa49+aw0DYhPsa+peLSQx
         WxhKAzyT31dr92Tj1lPViqowyyGVTo8ivDRfv4XVEYq3CLJMR6wtRZfwMXS5wP3iiPDF
         1891UIgalvGEv6Z4feSQJOBoHLpTGoTMpLTXykzi7Y/9STV1qGY4p/ClgthL17ZOxkpk
         Jf8wuydi+EwJosQmfM4gcgSG+ppvUr6Tf/tB1VQeTdw6wylSib6AuSHhsZcaJ542xODo
         MgIBPRGGMt6vAyy6FfWpY90DVDOg5oHlGgQo+eICSupI2J4mWR4CfaVI1dVZEFOusIGD
         8C1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e6xlU4as;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z184si155770pgd.0.2019.03.03.02.39.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:39:29 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e6xlU4as;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id i130so1135231pgd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 02:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ArxsbO8t6UqK7B0iiQcvMy7UpXH2+EIA1QApMIgaKzM=;
        b=e6xlU4asI+ro2U27BFkiUSHnLDkGreXAyg5HINgQVB0+/6d1J2h5dL8d7g+HmQYlRF
         q78rqyjnwxv6jpkY5qhm5ZEn0w16SpHFWHo88a34LkakOcdsLh+xv+L4SgxaWIGKluqQ
         oUerxG/i24KiF54JD8hFGoztKU2EWgSJIS0Qb4CgP4RcPIPZqticS7WfMB0zumeYdeca
         l7q8qV1hRmusrYfWKau07hh0cLTs/z23anmWklmpbXQHBfxcI7/y3Q51p+EHbcrz/fjQ
         hxsVSZh5DgOftZ8BPIAFszwbyaXCgbhbqNIaGxBKtj+ZLqsHz+3FnN20DSiRvA3sOdDL
         JoFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ArxsbO8t6UqK7B0iiQcvMy7UpXH2+EIA1QApMIgaKzM=;
        b=Drd3Z7O1RT5pm3UffYp/spy/gcdvWXwmMmHfmaRyC12FbCJWZRZohngD2gGqd5lWhw
         OzpK7OMuAi/Oo3h80mfEtnDMx5YsC+mZ4s4I9bzzKElVXHdQyOhsXX2/gEpa6qYs7iY6
         7UXRgKdLQZbgqIaolc3D0K08ElBA4nKZE1sNunpViDjX0pyQXpGy5aq89A+mTzkbIG4f
         Wwc1MdixxFuHeUdtkv73Ikh8JvizUMrLGvYaAKAUGqpMIden5EtHv+r8wDtpkIuvl+nC
         A38IYjQFWkXfAARxXOheDBs5C8NixxJ1O1DTgSEJyRqol7iaudvxFTitr5FOsXkfQWVv
         zYNg==
X-Gm-Message-State: APjAAAXgnaSny9paTbdWIBqqCBI2F+O7uvghA/DRQ4fCBxNhOS8bsLbt
	w4paRGg4t5/arlHLzUZ5s8U=
X-Received: by 2002:a63:d70a:: with SMTP id d10mr13320196pgg.286.1551609568189;
        Sun, 03 Mar 2019 02:39:28 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id v6sm23675pgs.71.2019.03.03.02.39.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:39:27 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 0/3] fix checkpatch warning: avoid CamelCase
Date: Sun,  3 Mar 2019 16:09:12 +0530
Message-Id: <20190303103915.2684-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset renames following three variables of struct _adapter to
fix checkpatch warning: Avoid CamelCase
 - bDriverStopped -> driver_stopped
 - bSurpriseRemoved -> surprise_removed
 - bSuspended -> suspended

v2:
 - Change types of these variable to bool as they are used as boolean

v3:
 - Include type change in changelog text
 - Improve changelog messages

Himadri Pandya (3):
  staging: rtl8712: rename bDriverStopped to driver_stopped
  staging: rtl8712: rename bSurpriseRemoved to surprise_removed
  staging: rtl8712: rename bSuspended to suspended

 drivers/staging/rtl8712/drv_types.h           |  6 ++---
 drivers/staging/rtl8712/os_intfs.c            |  4 +--
 drivers/staging/rtl8712/rtl8712_cmd.c         |  6 ++---
 drivers/staging/rtl8712/rtl8712_io.c          |  4 +--
 drivers/staging/rtl8712/rtl8712_led.c         |  6 ++---
 drivers/staging/rtl8712/rtl8712_recv.c        | 16 ++++++------
 drivers/staging/rtl8712/rtl871x_eeprom.c      | 23 ++++++++--------
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++------
 drivers/staging/rtl8712/rtl871x_mlme.c        |  6 ++---
 drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 +--
 drivers/staging/rtl8712/usb_intf.c            | 12 ++++-----
 drivers/staging/rtl8712/usb_ops_linux.c       | 26 +++++++++----------
 12 files changed, 64 insertions(+), 65 deletions(-)

-- 
2.17.1


