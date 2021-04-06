X-GM-THRID: 6947867046648479744
X-Received: by 2002:a05:6102:a84:: with SMTP id n4mr16002845vsg.18.1617676356936;
        Mon, 05 Apr 2021 19:32:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:242b:: with SMTP id l11ls2075433vsi.11.gmail; Mon,
 05 Apr 2021 19:32:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUhumbgWYNPft4GHZgzDWIPOBd0Qw4XpkLqJlN8t2OEyWmp7Oru0wd1gwG19NW4VjxK4/+
X-Received: by 2002:a67:12c6:: with SMTP id 189mr15092643vss.16.1617676355871;
        Mon, 05 Apr 2021 19:32:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617676355; cv=none;
        d=google.com; s=arc-20160816;
        b=BhYbLSr7Mong0CEjyTNimm+E5Gp7BHMHH7FJp3VF4eTrdRUMeSrAkuSS9au4rJuGyQ
         6aqff3VtELK82kCFRYjQkPS/mgjBZXyCyryY2GMmNnHFJ4filR56mRkpZHOXXnOZMTPy
         5jwdSI0jLzf2IT9k7jshtsf1AgVhWo14f2MAL/aPaZ2ESZg49PzglkVygArRl1p9AH4f
         vql4VqCTW4clqaXuJ1ZoSovTvRSmE/4X293BQBwgWPtB+LDNuaqm2dImXqr4UXcTVN9z
         TBKEX/XfbkrMkxiXBw9EGPjMmKQLUG5YmPMmc8RQWRfRFsrZc9Ds02tN1LxQ2t1qqxR/
         GhLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=oEU1R+GF3fw05zjoYhUSVLkVYZLjVhoWO8rK7v+0G2o=;
        b=tzUBXdpiQl4I9WInEvKNyRQNIxFoyEtd2Ey6pdk2EdcIjcaXePZ94aMv0Fw5awCDAd
         WlywrfYcXoR2b3GaFFqePhRdKthOW0zT5LWFvxAR7znK1Iq0UzjNxMMVJTbP2ZHYXQ19
         Yc/u/uAYKJ/UcL5e966L7MULctpE49O7rxQTUJ0CmZYBjP44H9RsNCga0D96+3nsPfRJ
         VqtXzpIi0mlvyzkfIZZjPXO3UNND8mJ9dU7U7J4T+4Vx/J3LT9VNP6J0UMsmQVBHbjL0
         I5qV06b/sQJE/XsK1erYGubstLCBXsKwHkqd4Ed823g3Ki9lT7xiEKovSG3SJzr6jnAt
         QOmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XiZ4k2eT;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id r17si1064545vsf.2.2021.04.05.19.32.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 19:32:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XiZ4k2eT;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id z22-20020a17090a0156b029014d4056663fso1957333pje.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 19:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oEU1R+GF3fw05zjoYhUSVLkVYZLjVhoWO8rK7v+0G2o=;
        b=XiZ4k2eTKFHwCIJxrkbELoBfxWNyn5gvUHVBSM2CKl9/CYF7769JNBUmgHW8BboKha
         DczoKC/869C6ctOlkfsDWfIEBw95lv/xpii1Fi/yhTHSNQS0SWmlfxEhUrXeOd3oN2HY
         uFm6VRRWNfIifvsiGRaKud1d735nrcIJ5m9clUlZ0O30VZiMxE6mPe24h2nOlZUxoZBV
         EasL7jqpoOpoYcT+U+IH/HdPs2OA2VluupxcsLDToq4vCYYRcKC8ADQ/L36AOMPQpYtI
         FxKXO34NxqifCGZ+kuBYlxnzgCYonSPWvPphVRENnbMuKLaGtldDIlMgm+UV+2wmJXG5
         vYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oEU1R+GF3fw05zjoYhUSVLkVYZLjVhoWO8rK7v+0G2o=;
        b=ldwYjMMMPPJQZUfbtFB2QsHuom4lVQcMUoS7Ax1zyL2+C0iaunKyuG7VgcPuGOsXzz
         gcBW4kauoU9MBcVEpnqxOznt+IG/dijsthz/CLb/whWX1TFullMCQrHqv8xRXNg5SIT/
         StAue9kOX+AfQlH0qXbtT0VCiXJ5MnbO624d4jxygiNhs7YPx2paqyC4lypAGR2FX8Pz
         5cINZ1b0Zt8nRmt4KYTCFRpMn0ApUUMJka6xVOOuNPbk275n9BEyBP6rzSObz1sq+5Qh
         KDpKFuRuJLkZVUTvxlrHHW/e4BfKJEZYy62/T18xJ1z9pkbWt7hOkb97YP0L6hOBtYPR
         vJCQ==
X-Gm-Message-State: AOAM533JUOpAAft5hIEEU9BFfl4hovu6fd2J7WhaHtnF5hbm0LKzYNnv
	pVRX0mibNg6nrJzYQRz31AI=
X-Received: by 2002:a17:90a:7bce:: with SMTP id d14mr2165977pjl.139.1617676355125;
        Mon, 05 Apr 2021 19:32:35 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id e7sm281196pfv.107.2021.04.05.19.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 19:32:34 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 0/4] staging: rtl8712: clean up style issues
Date: Mon,  5 Apr 2021 19:32:16 -0700
Message-Id: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

These patches make changes to clean up style issues identified
by checkpatch.

Deborah Brouwer (4):
  staging: rtl8712: add period within a comment
  staging: rtl8712: remove a blank line
  staging: rtl8712: remove space after cast
  staging: rtl8712: add space before binary operator

 drivers/staging/rtl8712/rtl8712_xmit.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

--
2.17.1


