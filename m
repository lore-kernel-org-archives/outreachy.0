X-GM-THRID: 6254513741412433920
X-Received: by 10.50.85.100 with SMTP id g4mr6287956igz.6.1456242460731;
        Tue, 23 Feb 2016 07:47:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.35 with SMTP id t35ls1146529ioe.37.gmail; Tue, 23 Feb
 2016 07:47:40 -0800 (PST)
X-Received: by 10.66.141.74 with SMTP id rm10mr8180802pab.16.1456242460335;
        Tue, 23 Feb 2016 07:47:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 12si3875724pfb.1.2016.02.23.07.47.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:47:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id x65so114188955pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=iwyKvuGidINTXRq2pD8IBXX5y9vM17LgG6CxtBYNr1w=;
        b=Q4wejrMIZQn8aXL3v1JR85HFo66HigUdsOfsqt5ytAeEmH4zh9WIfl0cmEM6AA4QPT
         deJJjqqZEr8lK53BuMbVvdGDvLWmbZdJmaJPfx131KQSVZDZ8ob8h4r0mwb98ygxoO+D
         Th0Us0UChKKjLQirajAO8Y48WwXOTE6KKqfcFFJWhudWAuWtOiYr1iCLvWmTtwUEqm9+
         xx0IjwIk7adygVvXXR0w/YO/MIWKVlnFeiCc4zPg9GClKEoT9/Zy6KEJ0hrRvd4eNkpo
         YGqEbd+acGvsNO45UCMgWPMI7QeSGsO0EW3lGdzz61b4IvO7R+Ay8bZlNiLvY8Mtziu+
         QFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iwyKvuGidINTXRq2pD8IBXX5y9vM17LgG6CxtBYNr1w=;
        b=Bt76pj/S+bfKOmyHhNIVTAq6ACpCLL5bHqDEApDw2th7yHLID4NNWnH3JL+LasaCmA
         DOHpWyJu91801u164lKophb5vckO8lQgUtDs408oJvO93XYKygmO79ABmnHNg8e3KJoa
         XOCU7bx6OWnR7wtzGYETPOg+IFBAtbhH7obygdycJqepkCkR7DYTbsk7fzCy+xMEb7vo
         p5K8GzTq7A9OKtBiGNSVj643P4ei/NyTqTYvEu5EaqXpIaTDLfe+w0r5DPyOnv0ZNFBP
         YOOB1VD58N1fn7WlvIsKPG6H8mR/reMfzTWi8/J+x0vpRmTak+pZ9SY7MU19nfKRGBYh
         Rs+A==
X-Gm-Message-State: AG10YOTP22fZ8E3+ec58CyTMXHsTEr/K+uHLvbFsJ7BeJhsk1d/gPAMmEyNwnt36OYaCiw==
X-Received: by 10.98.65.193 with SMTP id g62mr47026532pfd.148.1456242460172;
        Tue, 23 Feb 2016 07:47:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.174.102])
        by smtp.gmail.com with ESMTPSA id wt2sm45264761pac.48.2016.02.23.07.47.33
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:47:39 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 23 Feb 2016 21:17:26 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 0/5] Staging: Replace ternary operators with macros min/max
Date: Tue, 23 Feb 2016 21:17:15 +0530
Message-Id: <cover.1456241358.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset replaces ternary operators with macros min/max as
they are shorter and thus increases code readability. Macro min returns
the minimum and macro max returns maximum  of the two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Changes in v2:
* Use min()/max() instead of min_t()/max_t() as the values passed in the 
  macros are of same type.

Bhumika Goyal (5):
  Staging: rtl8723au: Use min macro instead of ternary operator
  Staging: rdma: Use min macro instead of ternary operator
  Staging: gdm724x: Use min instead of ternary operator
  Staging: lustre: Use min or max instead of ternary operator
  Staging: rts5208: Use min instead of ternary operator

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


