X-GM-THRID: 6675306415104458752
X-Received: by 2002:a0c:9286:: with SMTP id b6mr7762876qvb.39.1554215889504;
        Tue, 02 Apr 2019 07:38:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b49:: with SMTP id 70ls281385qkl.12.gmail; Tue, 02 Apr
 2019 07:38:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlYGda+zixN9EWtl8a2qq9n4R/0p9aN6/L0FJv/Hf3I675mEXbr+4tHqdGrO+7zqrdOsUf
X-Received: by 2002:ae9:e649:: with SMTP id x9mr7353341qkl.35.1554215886482;
        Tue, 02 Apr 2019 07:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554215886; cv=none;
        d=google.com; s=arc-20160816;
        b=judK2l0/NN5GTGqm6KTqVsIJsDHQbY6+8olXESvfe78+6mvc2cfVggMWm7ULsFAGB7
         DkIhy3eyR1BS1n7FkSN6MwLUTTTzjCVijnJ0hFYp8UvLW+R/ahpguoG+piFxGGIxRyKY
         kJzQVKmZKVUivxxBIw062oQgqTDMlZ0ZgtdQzBJUrjBcaiHwtYd5K9mj4biQBvBa36Pt
         spdkKKP7ZQlW9dZmnVonPS8JrT/V2EgPnpYR2BkgIYCzKOLjucpfj8ujwRQaMsdEdIWt
         2nsQy8UGvgqG5hODvbXuInWJyhh5v3lWBqxw9gBVDUQUti9D+LVmQi7r8yeb7EaXzlry
         PaPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=EMNFyvB/191F6AywvHKYEdlZHX6oAoZthPiECw1+/Ao=;
        b=JG1Mj4R53+i+tp77bAvCjpcji35l4V15NbACpZBxtoa8Upnhep4r5m5VnW3D0pTb07
         c59UK4lU0fJQicY6/Q7TrJOJduc9Mlc2unp1SywvJrc4DP/VuMtCr6z8ZKhfk+WEjgc0
         kzrVqLcw0bp4JKQZHZNmQn0hQcuIQxMU9YsRH1WZMDvnczBYPswJueNAaqRkHi+oxnU4
         aVt46Cy3hVevQCYnv9htnzsS5YP+xDonVAOb7ZVHhfAT4jFSuYgt4x9IytiSEbIxghDF
         KSa/YZhDY900GpfpC/XLdDteFdewJHqCsqzSQ/JCF6m6ylZMeb+SuaN4qd2a3iHZvuCZ
         5Sog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiAKhpmq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q58si663717qtf.5.2019.04.02.07.38.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:38:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiAKhpmq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id b65so6374509plb.6
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EMNFyvB/191F6AywvHKYEdlZHX6oAoZthPiECw1+/Ao=;
        b=MiAKhpmqKB2BoiRcIMXEJVUL4suQ26VXMrbzBfbxyjJbG9oWq8CQjGWBdnIXCJ40Ne
         5AmplS+kGXkUwKzg9EY4jJFwCT+tpI4Vt/4V7zUdrP8onT7q6bJW+zsakUyrkVzpR3as
         G/QQQWqPfhEVhn9loLaHYoM/DAfo/oE1vjO1BRgHDKOZyZ1XWEu6UdmVUKriqtA2XHFI
         5U7qzSK5ud1I8S8ixyKz03tU4PTk6pQvJ3yclRf9bjslvq2L5OUo7GjaKtTv4+3bt2e0
         uw51+xCyWEvUzbOIVjRYL4kEwnZkNnVOX+PY/lS29zKsJMOHVMfhfqkephsoDtSnGImR
         rC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EMNFyvB/191F6AywvHKYEdlZHX6oAoZthPiECw1+/Ao=;
        b=fvOyfZxLYyUODNZAyxTa646oTBFrbgsKoJTWgND3+nL7dju4W5y+0ychCcmyb9lbF3
         KlyzVG1kewvauVJxiDRVg3sBTDLvOZQwu86m+uRK665KIrGq2qe35lEIDOBS0oYtfmS5
         8t5sXjY++JHiTzqavOQ0SpbyX1zpGa+zAKMHuE6r27v3FNXciG4d+951ZNU/FzvVbTfs
         SPSQ7yDhR0YbydmxDwGE4nM4N10qKAwDlp4Yd4E4Z5XPYYMsgXioJd/lxl0EgK75jOcK
         tHlYO7QkmJn0QQlb6d1vn7aZBpw+fAF1S5vuwi4l3bR5X+gzFmVaB9othr25+qGyol+Y
         LNCA==
X-Gm-Message-State: APjAAAXSW5fdD3LBKGkRLEskWuc6Sm5Npn2vBfa/CWWvPzq2bVkdOul7
	duNoyc9lThWZ5itlSmo3sNIjYGch
X-Received: by 2002:a17:902:1486:: with SMTP id k6mr69793458pla.3.1554215885314;
        Tue, 02 Apr 2019 07:38:05 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id j22sm17603660pfn.129.2019.04.02.07.38.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:38:04 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/2] staging: fbtft: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 20:07:42 +0530
Message-Id: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Payal Kshirsagar (2):
  staging: fbtft: fb_agm1264k-fl.c: Replace bit shifting with BIT macro
  staging: fbtft: fb_ssd1351.c: Replace bit shifting with BIT macro

 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 drivers/staging/fbtft/fb_ssd1351.c     | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


