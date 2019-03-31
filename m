X-GM-THRID: 6674450234072891392
X-Received: by 2002:a24:2704:: with SMTP id g4mr4916183ita.36.1554029340358;
        Sun, 31 Mar 2019 03:49:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4687:: with SMTP id j129ls1992124itb.1.gmail; Sun, 31
 Mar 2019 03:48:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoXHB5ET7dt0v0/PYUvNyXcTSdKYf+5cGFlzahngMfDlzKh3Wa4WOL1ZsMuJyYYFFAOHG9
X-Received: by 2002:a24:4e89:: with SMTP id r131mr4736758ita.4.1554029339698;
        Sun, 31 Mar 2019 03:48:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029339; cv=none;
        d=google.com; s=arc-20160816;
        b=bzvu5CfgsO+vYwTl6XczotlG/8uiSTSMykQHu0LrvfUQeqXQ6C/IfEwOb5hByp6DYg
         A8ZsDt9SEOR9fy3/s1aRFV4GNRtGmYzqmiLFfuCzoGJTWsNMZRwExzfPE3P6H+c13qMv
         4dk7XuEi9Ec25N1F0YnmGH5TkXqvMQUkc9RrHb3KK5Iq7XnOLXoXoD0yCMoDyA3+4wPl
         G1KNRTRcTqBiIFDpdXBPncFVY5uyyugXvcA5SqlIwipjSemRRg45paDP9+8MdIRK87dy
         psJOS+6w0KLQ+RA9AfajCmpjfgCZRMgkJ7Bpy/DOie7tNnn8vDaKZdc8BBM8bd7O6gdc
         vITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mgbJm8IcGErtObkhlnMeoFAlUQJDonoccf3dUs39kvU=;
        b=rtnJqY1MCyzOpRXVBFOad9SyRIXYLf/7Fkf+J+ag42OYWQZbnfwUfm8s2Foe2/UVQ/
         KL2Mf/iIq02/9j8+0Q5cKcp6czMK1w8aPEoiB3Dj08KtUb+qn6vtc/a5CGREjJHpHQ/E
         wlT/iuSuGqM+bDDNM8ehLAZztPw22mRK3xlQIU3L2DAFwf7nOEILlV88nutk/q6E689t
         Mj9FCFQum4o4/nUJvBqPAGnWl1kXoRhtoBJNma8WmEuwgWb81OYk+0BynjjUNFrTtKE2
         mBR5NUCrpC7CplNlBAdYY6MZhepoJ88CpXxF3QUMms+MbQIPPfdlYwjMbAhkYl8Jy2mQ
         NrGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rut1BFvv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id 196si1170574itw.0.2019.03.31.03.48.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:48:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rut1BFvv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id u9so3292886pgo.7
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mgbJm8IcGErtObkhlnMeoFAlUQJDonoccf3dUs39kvU=;
        b=Rut1BFvvdA7mZczVEv3mX3oqd6YlRSPBPU6tukHT+8FaO71GmT/kV+zJdTx9ZKCpBW
         dCV1LToLpZm6cPkIVSdjZTwNTGNXeXOuWK539r7D4WivR7afNRpogvPTuDzLKUzSg/9S
         OGsnT6pur0gGjquWHXM2V+HGWTu4PXVSoeLQaMf9syF+RFCJqaNCD4q+cyZ1OSSW1VVP
         7mqu4QhNRdzymHMxl+ps0qpExRY1v0HFGvWaIgbtZcLEay01dLrb05kf6JHd/OPJUPrD
         xdn7S7RRa+GySaLQuaN78juMw1L8COC5HSRC3M+FNjYRjgyq0EKgXTKlEXPdQIfsLhyu
         HhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mgbJm8IcGErtObkhlnMeoFAlUQJDonoccf3dUs39kvU=;
        b=se++gdJU9/HTMmXK4YuVxbTrSOUPzibbmc3FU6oeZBiFa6LRIqBo8dMc/irz4d8GG3
         ma/tLKFsXkBVwW63Zun14/0zpFTAn0FVSyMtB74bKeBSmxRBL8q3M3KJZFf5CkmJnahe
         dSCayCnoE+b3lUsaZjc70BRJJmFxQf1Urgpjr8Mh8sj4yUJFqPlcmXbDEVD3fUjVGdSH
         S96r2U1FL67Gtski2Xl2fe2bl/nmf99HbaN9mLlSxikG19CP/blhPzhw+XvCJSK3aCYN
         jrt1SfpudFsEYm1WKCMDFRUtppGk8HkJyRAiqFKjewnwaZY8Jc0SCWgKrb0s63Cabgn+
         4wEw==
X-Gm-Message-State: APjAAAXNNNcZSQXsBbzXirNl/2SUv+iog94wSaGIe2qtK+7V/RCgOT2h
	3dHSgd8jAgzxXUBLm5sJ6FHZHGoy
X-Received: by 2002:a62:4852:: with SMTP id v79mr56698878pfa.72.1554029339136;
        Sun, 31 Mar 2019 03:48:59 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.48.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:48:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 0/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Fix formatting issues
Date: Sun, 31 Mar 2019 16:18:35 +0530
Message-Id: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset:
        -Removes spaces and adds right number of tabs.
        -Removes spaces before square brackets.
        -Avoids camelcase variable names.
        -Removes space before semicolon.
        -Aligns to open parenthesis.

Changes in v2:
	-Variable name “bl_inserted” changed to “inserted”.
	-Variable name “PMK” changed to “pmk”.
	-Spelling corrected to “inserted” in log message.

Payal Kshirsagar (9):
  staging: rtl8723bs: os_dep: ioctl_linux.c: Fix indentation issue.
  staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before
    square brackets
  staging: rtl8723bs: os_dep: ioctl_linux.c: "foo*  bar" should be "foo
    *bar"
  staging: rtl8723bs: os_dep: ioctl_linux.c: "(foo*)" should be "(foo
    *)"
  staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase
    "blInserted"
  staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "intReturn”
  staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before
    semicolon
  staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "pPMK"
  staging: rtl8723bs: os_dep: ioctl_linux.c: Alignment should match open
    parenthesis

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 103 ++++++++++++-------------
 1 file changed, 50 insertions(+), 53 deletions(-)

-- 
2.7.4


