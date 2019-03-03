X-GM-THRID: 6664084258635644928
X-Received: by 2002:a17:902:aa06:: with SMTP id be6mr4260739plb.58.1551603027955;
        Sun, 03 Mar 2019 00:50:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2c81:: with SMTP id s123ls5026166pgs.6.gmail; Sun, 03
 Mar 2019 00:50:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwGyPwKTNVm8xqcZmfh4MAXMiG62EPoBSF8raAK+aZtMyBBW0a7omTYO0ryWJ25CXxiDxF6
X-Received: by 2002:a63:1061:: with SMTP id 33mr5095197pgq.82.1551603027044;
        Sun, 03 Mar 2019 00:50:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551603027; cv=none;
        d=google.com; s=arc-20160816;
        b=uWkDdAXI3hH+dNWIXLPvxZVt1CoytVASR3eAenW0hbTlo3x19iFmhN55yG1HOAVE8h
         kFb6hYwUNouRxzzYFgJvjDAvDWN0IaW2jF6/Ol9qJpwQhHyK5ZaszmLa3f8AwIFJYNYO
         t2TJKjyYI99VNa00o7y15+XLhBhzgVFuQvJmRezekIKpE9als8yN1LJtUGBHGJh8LNOd
         7Ui7c1Ize7aCmbFwS5/VUM6+pxk0l7AUV8+xDaeY1S/j5uO4F5s7ebHO99LHPf2iwD8v
         DrwR6kTKhGn3fbxmlFmO/gn6p0mX3JHjrM+wINDfXMl3gqK9mNLGjCLFX0szdDB0PhMI
         q/og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ArxsbO8t6UqK7B0iiQcvMy7UpXH2+EIA1QApMIgaKzM=;
        b=nLpDCjsYGef1NpHqsUo4TmBgVrLXSiLiGkSxoBq8OkaMZUijdlxZyhIBwvOAifF17K
         687BREybXFwFyc76jJMrGtwSh3re7E48IcrLcjGVg+GJQJ9FY0v3d8eXFRxJ/glxyaou
         36fwfK5x4zQQkfiReZSi4jcqtqfsIjyyBZ89/eri52IWpdNNFTrfZtHPMD1AbO4YAmnN
         VD9E9SrV6EcwmibBoK96mBtnjmfrxdscnxvXFIOcVDIiX019bhI/DXh0qT7Z6QQBrdaH
         Z6cfqAVELCydJpq24K1vmvCBHxEBx5V/R/6k3jgijDi13rLk4wgsqMAAf9J1hnjaZdk3
         OAKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WhVe/ZYv";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c12si129789pfc.2.2019.03.03.00.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:50:27 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WhVe/ZYv";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u9so1058831pgo.7
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 00:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ArxsbO8t6UqK7B0iiQcvMy7UpXH2+EIA1QApMIgaKzM=;
        b=WhVe/ZYv2A8cIZeSj8BAY6g2p8qHp06Jq196glSJP2Xjzqqr4cB5c0qBqbrnALLNhM
         uEfv2mGwWQHUi0/D2BpaHDLqkpRkXyGvbGOdcGMq6EU1x+8VgsuV8vwj6VZSLCaudec+
         q8x669aIykx7NYpBHIanm/u1I/Zz2ponrrgkYAJu9R8sB9l2twucuOiGolbqV2BzEoD+
         myI/VRwoQEzPkJ4zISfCRkdFP1q7CjQb6ZyrQZ04G86pic4Tnx/QY1MjiUjKmsAKvokB
         it0PMGXXwgxK8xKXgTiXm7OvIlftatalx+DUBnukBCqJoI9pWXM3zRLL6BeIzNU7hdgT
         UgAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ArxsbO8t6UqK7B0iiQcvMy7UpXH2+EIA1QApMIgaKzM=;
        b=iObJldk87kYctHxp3wZnlz0my4ah/801Wdb8u3TDp9JxKl3gnwAACCzCToArzRunkd
         ntBqumNE/uHZNl7TmF1GRQSb+cJEfXmSANV2GK3enl7e9wQbW1cQ8tJchEQ+Ho0fRmm3
         X9e2dtQ9BsHkYKTBwpIvlNFxew51IhVJlTnpYanr7tZV/H6iyD5j0nmHKNvYx8YTQ0TT
         2N2uy5J6cHVeSxB5GE7Y3nMiB2YBXNXBmrke0bMLpXOLeI9DbR6NDYEy3fUIQ3cHN5xG
         kIkh/3s1vSKBMsjdlGsEoOSkt6L2SPTEjvql5xJMcZsRB3A9G/nS3J/vjipnovJ7/Grp
         1MUA==
X-Gm-Message-State: APjAAAVw9mUUAlvLBSsbIh15V2I7kk//0/uDKFfw2w574BsB9wazT85S
	algCgnkHo1a892XuhxB4r+E=
X-Received: by 2002:a65:6683:: with SMTP id b3mr13184853pgw.423.1551603026637;
        Sun, 03 Mar 2019 00:50:26 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id b65sm5883263pfm.127.2019.03.03.00.50.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:50:25 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 0/3] fix checkpatch warning avoid camelcase
Date: Sun,  3 Mar 2019 14:20:10 +0530
Message-Id: <20190303085013.3491-1-himadri18.07@gmail.com>
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


