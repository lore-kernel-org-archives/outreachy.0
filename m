X-GM-THRID: 6254064858167246848
X-Received: by 10.129.72.199 with SMTP id v190mr26850841ywa.44.1456137946619;
        Mon, 22 Feb 2016 02:45:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls1429049qgl.47.gmail; Mon, 22 Feb
 2016 02:45:45 -0800 (PST)
X-Received: by 10.140.233.69 with SMTP id e66mr21260611qhc.6.1456137945892;
        Mon, 22 Feb 2016 02:45:45 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si3034063pab.1.2016.02.22.02.45.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 02:45:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so91774477pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 02:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=51Gclw+ZO5NJ91WPbVQCcB1+1tsPC252JcdGkWBXRpw=;
        b=wjgdv7KmMkCYT8wePwi1QBhkYdd8HnkJbeF7Pcq77ZcHBfH8cAluR2hnzk6DV0CTy9
         bE/fghYhXzRMtqb7uV+GtNdgXsgZjKJuI+SXdO6Kbjov8DCGnZQgbSbi3L/cpH4fpjBi
         6ybBOobztwxYfcIRIkc5DdS2qPf/3HfdNtVKXkj8Y1Ms8SjqwEQZ3hdts6rixLLGTVTm
         /bEDoe/TzngJADSGgyfhyiE3b40b16l+HPiMIyvMrvFCsU8znkvrOZHdbqNw+iJJCMlK
         WNTxyLOWxM7MpmwdW1SS2DW6fq1KmV/9O8gdGE7APz/qTLBgpz60PA9EOHevtY8c+nmm
         5OaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=51Gclw+ZO5NJ91WPbVQCcB1+1tsPC252JcdGkWBXRpw=;
        b=FdKIkIL6DGzHiwZApKcbk5mvwkwyjEQ+ut+DfZ9Oi7m6rTA8dt6oEXHQoSp//xzYwr
         jxaO4ZIn1E/Qse6SBcxRpytJM6Sxt2XnPzwAIj+ZZdxeV17LoWxH/DUJ5bKn+X607sAn
         rcZCpoMpyBUjlL94hxlUZad0L9P5pl4ZYM4VMPLREijU4MC/HgaRg6fEaWKlaul6DWFI
         mXFYPJTe0oE2OOFtiNQtv4Tl/58RTvl2RArFwlvpSQx9oLaNrTIY+BeVmPeNEEnn3KBl
         NFwFSuTlBUNfDnxTJyKUBUHFnPGaY5HNsTTOyHEqdCGdMtbMHzui/G98sNtUFgKv/iUS
         SMAA==
X-Gm-Message-State: AG10YOQF2fWNPfkIkxs6TaLUuWg//tNxEdiCSyC3sE0Se6IlsGL+XMuQFvigu/bGAy+BzA==
X-Received: by 10.66.63.67 with SMTP id e3mr36058236pas.141.1456137945745;
        Mon, 22 Feb 2016 02:45:45 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.110])
        by smtp.gmail.com with ESMTPSA id o184sm35886341pfo.36.2016.02.22.02.45.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 02:45:44 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 22 Feb 2016 16:15:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/5] Staging: Replace ternary operators with min_t/max_t 
Date: Mon, 22 Feb 2016 16:15:29 +0530
Message-Id: <cover.1456136671.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset replaces ternary operators with macros min_t/max_t as 
they are shorter and thus increases code readability. Macro min_t return 
the minimum and min_t returns maximum  of the two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min_t(T,x,y)
|
- x > y ? x : y
+ max_t(T,x,y)
)


Bhumika Goyal (5):
  Staging: rtl8723au: Use macro min_t instead of ternary operator
  Staging: rdma: Use macro min_t instead of ternary operator
  Staging: gdm724x: Use min_t instead of ternary operator
  Staging: lustre: Use min_t and max_t instead of ternary operator
  Staging: rts5208: Use min_t instead of ternary operator

 drivers/staging/gdm724x/gdm_mux.c                   |  2 +-
 drivers/staging/lustre/lustre/include/lustre_disk.h |  6 ++----
 drivers/staging/lustre/lustre/osc/osc_request.c     |  2 +-
 drivers/staging/lustre/lustre/ptlrpc/events.c       |  2 +-
 drivers/staging/rdma/hfi1/pio_copy.c                |  6 +++---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c   | 14 +++++++-------
 drivers/staging/rts5208/sd.c                        |  4 ++--
 7 files changed, 17 insertions(+), 19 deletions(-)

-- 
1.9.1


