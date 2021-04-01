X-GM-THRID: 6946316684199198720
X-Received: by 2002:a9d:2f24:: with SMTP id h33mr9087934otb.128.1617315384425;
        Thu, 01 Apr 2021 15:16:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls1593046oig.11.gmail; Thu, 01
 Apr 2021 15:16:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy55qQokCC3eYkdVj/CVf11X8pOh/rd299Xjl3DNrEuS+sk24jzTdrGBpUFdwBqZ8kI3olr
X-Received: by 2002:a05:6808:f14:: with SMTP id m20mr7854035oiw.13.1617315383560;
        Thu, 01 Apr 2021 15:16:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315383; cv=none;
        d=google.com; s=arc-20160816;
        b=W1zRZWZIfSNuNC2i5IYISc1UF1iDKuDvgW3mw67OAezHHHiRlDuMrqPYm+M+SQwodg
         rxWZ7zAx+wI65bpf2L+ZDH76Tcgrgv5TogQ47oryGDTC9RinK18ZKsgIxk9R2dzbXjl7
         0PEDWAJS2CFLqo3QAAbJFDTdszyL3tCCgDz7aJ1Z2PvTm8uW3qma+0E17Upxu3jKvexj
         8vWQ/wddPVeWe3RcrWp8c5KDGe0ii79qwwHCOq9Yeyjez4tjsnITaowTR08IlwX7J57m
         x5IhxWWzopoa7SZxceLyP2AGFNHeCgEryand9Vve7WxkhI6P/Bh8fHnwojOvxIF5kaTf
         jopA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jKf/bIRuPNdm99ftg+yWOdYdbkeJfbztmf6+BPi3ElY=;
        b=0daESlo+qTdjFpV0FwRL6LVGwwH4le2tw2GjiRnHdqsllPZ7a0gwaeegTrtjJipRKv
         4lDLSZlz27TPUx/+iOMzeS00LAx9ISZT3pgP/F5IlcMwGQfnfrFqHJueS5dHL7sMHA9p
         oQ20FPfrTp3ha+xSO+ZyZraqUWeCBGLkC/KyCg+AJS2Kf0LpYUYfkpYcvJFLTOkHOdkW
         U2dJhPJqykTM22jnDFv8x0SSITqIYHZblQXon5Z+rLKLYkQpRtwuBAP5TXweEkBgOZ5N
         ASE6soQLRFy+MeDcdV9YeGpL77wDedYR/oCJQKJgxsdB8OAit+oT83TX0hB9yfi9BpFA
         Nx1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X76vwLT0;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i14si568481ots.4.2021.04.01.15.16.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X76vwLT0;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c17so2421024pfn.6
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 15:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jKf/bIRuPNdm99ftg+yWOdYdbkeJfbztmf6+BPi3ElY=;
        b=X76vwLT0ntTAWOqsz8Btk1VEg5vPVNk1nmpwaxxyJIF09eN/IEPp6XA4T4ZI8ptzaT
         hSZYH0ORceccsuZI3SHstGm+vUz3jALF7vsVgUjDxxQ+DVHEFVO2AWGiewl38t/dCDQ1
         2bSGeikoQ6Wd51f6QWHVm9Teoh7rXDH6YR6XPgwyn2lrDSh07m9aW8/QLobKMN+hYHKB
         i9hIj53hO3YLAgW+Fi8mHMLsV9nIYUFPVLhiNo243JP9DWwjWfbMKr8SjEBhfPEC3VUr
         SqhKadcZ4++9/0pUePggaXY9fcd3hsqMvufm08Habk4J0SZgYEw9u0tCNsww0CbX5v2r
         NEjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jKf/bIRuPNdm99ftg+yWOdYdbkeJfbztmf6+BPi3ElY=;
        b=bCdteOSWzRQvFtNCO891iyvLqAjXe1EDbmcNfSI3WCyd5GkH3wq0eXuaT0VAsNZw/8
         b6cPaGbkCNRozMi012hBjWbmECg4Horlrr9w0djew7Nd8AC8yH6x+RSfwcXK4YP09wSm
         jm826nyy43XD5lptHFGJm8QGq06t9fHFIg4HM4UY1L3sM/Yxl51/aRwYybYa3vZ4Js2J
         Iy6f8RrTo/gpNyk3N9QzQgYuwKn607Rf9rvZL0/xwK0y9/VrVu243CUmUyDH709P6hYu
         0o0ukqwNrIz5Exwi4WCcZUtPcCXCN/GdxhY3IVe8jD/HtY4pvDSdU1Z8JgrNh/vcqtyk
         Ycag==
X-Gm-Message-State: AOAM533Q0fy91gPvMCq9YQi8lCsQUyBSyShHc9xo0F5CED/15s3q7SEe
	F4ul/O2Tgkkj3fhD6Hm/LXA=
X-Received: by 2002:a65:4c43:: with SMTP id l3mr9284964pgr.327.1617315383009;
        Thu, 01 Apr 2021 15:16:23 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d13sm6671494pgb.6.2021.04.01.15.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:16:22 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH v3 0/3] staging: rtl8723bs: core: block comment style changes
Date: Thu,  1 Apr 2021 15:15:39 -0700
Message-Id: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

Style changes to block comments.

Changes since v2:
	- add subsystem/driver prefix into 0/X email subject line
Changes since v1:
	- all commit messages more accurately describe changes

Deborah Brouwer (3):
  staging: rtl8723bs: core: add comma within a comment
  staging: rtl8723bs: core: add * to block comments
  staging: rtl8723bs: core: remove empty comment

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 61 +++++++++++------------
 1 file changed, 28 insertions(+), 33 deletions(-)

--
2.17.1


