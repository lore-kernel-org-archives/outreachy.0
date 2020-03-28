X-GM-THRID: 6809167002234519552
X-Received: by 2002:ac8:38cc:: with SMTP id g12mr3091732qtc.186.1585382735202;
        Sat, 28 Mar 2020 01:05:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls4580557qtd.5.gmail; Sat, 28 Mar
 2020 01:05:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt0OGyAj1V2bNo40T2pA4J0XrCOjeGP9em3FjaQmea+LaBp5P6tvvx5BOnM/LSe5pvTp9vG
X-Received: by 2002:ac8:1184:: with SMTP id d4mr3057381qtj.104.1585382733765;
        Sat, 28 Mar 2020 01:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585382733; cv=none;
        d=google.com; s=arc-20160816;
        b=DuI+mBDuHcMscYA65N4ehPnjLx+o4n/BDIywfKDTHpf1XF96IUjX6WKbt7wlHsUFFm
         UCEttjHnSxt/UA9/5fcUs8mFmN2neYtQSxKFLSaFF/daDorasP8lMH3+edL4XYiU+ooW
         O6Bi6xz+jmGb67xT3tsxNq5uUuCg/W8Ccn8F9A/VhF+Uvr/kG/vJbEoyXB26jMibPSJG
         VjrzyIhjv+GeN9otyvLVG8SLZxRdzBVj59YO6qxoeSfQoZvjL2/ibvoVnRtsKV75MvL8
         RacWOry4Czmq3GKWmgKUC4gtLAtjmNWVT+LPHlQSBWCPV/Lduf4fhDaAQ9eiP3HUgcA9
         PaFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=V8yv1DlV93GdDmTZAGiIHBuz10HcwCksalqMAi8FAf8=;
        b=Kdi90TE+LYL0LuiYW10+GgrePzt1pWr8BeIG0lXVf2/dyCc3Uu/esd36rTDqLm1NYW
         iJ8FtTDrgOsGl3GTT0IT/HUd+kOb38cdOChbtk3IUbQ501WRAPBFrEzjMP2W1Zd4ohh/
         dxiVJI1B/StfBFT81kPUCnpq8pd1xKc1PLXKIlaQcCSs2mGK/H5Aa1LKJ5a82QLrU/D4
         ElKMROkzoI2PJd6lxHsCmku2F54KLQZo98wt9PgxyFk53QVWjUe4Ipi14MAtGUU7SPIr
         wZaLM6c5fB8Ry04be0Yt0x8xQDLxNkGdkeDqHYm6SDdZFxrcXXTntDc+jHVjgCr/1Dfd
         yYuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hBXI0Nga;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e89si748306qtd.3.2020.03.28.01.05.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 01:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hBXI0Nga;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r14so3267148pfl.12
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 01:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=V8yv1DlV93GdDmTZAGiIHBuz10HcwCksalqMAi8FAf8=;
        b=hBXI0Ngalvc1MlvfFNormnb6f0CN2gZpUByWnhlHwp1YCI9e/JblpgqZh/c77sUzHD
         t7hhstXJKdjsnr987VyLFXbdRnIizJoTJEDFb4lXkM1W55Cc0dq2B0U5rUt9elGg7nXM
         amyIzms74R2IXpHwkTGtwLgElcqanDOPN76O2iawhOSA9kbEJjelU6n2IlDTj01Dkart
         itopp4A+p0IaLXKayTpELe0LsUHJG2mne3PhAqWm4BHGw2lWaiZ3GEUOAijeyGWJRPdN
         fXRqwXGg0bH6qkarY15SUpyJKuzLAl38beEN0Z/rsKupFDGN4tqPSqJzinRV/90h2Rf8
         3ACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=V8yv1DlV93GdDmTZAGiIHBuz10HcwCksalqMAi8FAf8=;
        b=Fu1tbsNyDgczM/Xw22l47gkOiqtq6kRQuY13eIF6vrS9xtwWDi2P7rEHTp4N1EQcO4
         cafgB1V0mKDUaY7B+ztDFrDObQWbqDhxhP00Yq86ecZj5Y/ZeFRel2eI69x1Gbpvnk/x
         eS6lEzzq/yiVhYJiI7JfcG8dYL61hgRSOffC3+fXQ5EJeHeSANkkD5SIAolrrNRE9BDQ
         fWfJMOW0PjHqBR4DHsR8+9k9FQ7ef9B2Y7a1EXUSUZsPQ5PoC200v0RcVjW7A9ZkgFx2
         eXcH4KK3pmzOduKNNMpX0amUrBRnwgsQ/xnaseyv5+qhQAlc9XGfejYeagCFhv1xsQ0t
         KjIA==
X-Gm-Message-State: ANhLgQ2Ms9UVciuu5bFl3NMyEhwHvzhgpAUzGykehXPxECMZHefSlwvT
	Tg/9fwTaE9EWXuqzV/vYqyoJWBRZCdPJHA==
X-Received: by 2002:a62:6244:: with SMTP id w65mr3273722pfb.89.1585382732308;
        Sat, 28 Mar 2020 01:05:32 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.239.176])
        by smtp.googlemail.com with ESMTPSA id c207sm5671124pfb.47.2020.03.28.01.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 01:05:31 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 0/3] staging: qlge: Resolve various warnings issued by checkpatch.pl
Date: Sat, 28 Mar 2020 13:32:51 +0530
Message-Id: <20200328080254.6692-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolve coding style and indentation issues reported by
checkpatch.pl
This patchset add space around various binary operators, remove extra
unnecessary blank lines and properly indent a multiline comment for the
same file qlge_main.c present under drivers/staging/qlge directory.

Soumyajit Deb (3):
  staging: qlge: Add space around operators
  staging: qlge: Remove extra blank lines
  staging: qlge: Properly indent a multiline comment

 drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

-- 
2.17.1


