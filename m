X-GM-THRID: 6251802034906857472
X-Received: by 10.182.120.170 with SMTP id ld10mr19744336obb.30.1455611091738;
        Tue, 16 Feb 2016 00:24:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls3279308qge.15.gmail; Tue, 16 Feb
 2016 00:24:51 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr21624235ywb.57.1455611091040;
        Tue, 16 Feb 2016 00:24:51 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ui7si3790050pab.0.2016.02.16.00.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:24:50 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id q63so101148997pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=d16iL+ecG0djRna/s2eRIn3IFN0R/1U+g3DQzKOv0HU=;
        b=E0f1eK11LOqnDjW4+9fQyn05MJ6rPRk0XUaPS1QnM9/2HeL8SG0ibVS/K+oRlEoXTc
         4jsE5tTVaDonwc6OHIk5E+dGwmq3ROf6m/CWyO1uo7wY7F8ze34Gm4uE8MjRUS2rLKF6
         pj7j6oeV/FUOx1zo6RSTVYlQGQN1bE/T/odlIay0AG3Fu9IxK3nCMrRyeCxhycHqDVsC
         25E5totrlKP+L5rEpjgwFRNcaVEovbFDtglzq05wOtbkHHAMAzZsfzZwZzoVpOvETr2N
         +2HgHSqbeoaLSsLxJlZoGwYqfGE+tPOlGDNIGeELkVlAFkz28BA3sSsBOYXCaohTFudZ
         xQGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d16iL+ecG0djRna/s2eRIn3IFN0R/1U+g3DQzKOv0HU=;
        b=EUuAbOKPUsEZ4cKyM/P4i//KNy6S6IcL3EJYeF5jysQC9UTjetam5mAdU0I9c4ytR2
         x5jOfaj8ZdXIw8MrRWa7FL355yivSRPLH44G/dDUpvl3BiZ0Y2IHvbMHIT2TeRlNBoCf
         6AoBdR88EClQS727lqJnuumZExaUfj/D3jAdYDvPZDjcmjJcZatLOuAcfH0lieBj3sfe
         WVQDpDRSXh2sP/BqC9o/gjUX96wy9MDwwujzdKPjV0x+Gq6AwoX2ZRDa3wLk7x2NA7Zt
         FDdOi3/wTzmaCfRoa/y4qsGAIyZ8bnhkYk76GgdkBCeGQSWTi7UJAsgEcJ2Ew3UDp8eg
         f+dg==
X-Gm-Message-State: AG10YOQ/sZok7FUrpNPEevjkb9mrGabMtCo2+02uoTDh4zfRWZo7nTq8hM3COjizjLeG6w==
X-Received: by 10.98.42.20 with SMTP id q20mr29863621pfq.146.1455611090868;
        Tue, 16 Feb 2016 00:24:50 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.200])
        by smtp.gmail.com with ESMTPSA id r26sm43733844pfb.21.2016.02.16.00.24.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:24:50 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v3 0/2] staging: wilc1000: fix whitespace checkpatch errors
Date: Tue, 16 Feb 2016 16:24:43 +0800
Message-Id: <cover.1455610768.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Address the following checkpatch errors:
* ERROR: trailing whitespace
* ERROR: spaces prohibited around that '->' (ctx:WxV)

Change in v3:
* Further split the whitespace patch per distinct change
Change in v2:
* Split single patch into two separate patches of distinct change

Eva Rachel Retuya (2):
  staging: wilc1000: remove trailing whitespace
  staging: wilc1000: remove spaces around '->'

 drivers/staging/wilc1000/host_interface.c         | 2 +-
 drivers/staging/wilc1000/linux_mon.c              | 2 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.9.1


