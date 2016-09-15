X-GM-THRID: 6330303746353922048
X-Received: by 10.66.19.167 with SMTP id g7mr7643691pae.46.1473966514775;
        Thu, 15 Sep 2016 12:08:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.70 with SMTP id t67ls1344022iof.48.gmail; Thu, 15 Sep
 2016 12:08:33 -0700 (PDT)
X-Received: by 10.107.53.135 with SMTP id k7mr7989569ioo.13.1473966513652;
        Thu, 15 Sep 2016 12:08:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1481647pab.2.2016.09.15.12.08.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so1127571pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vmX8hLQO/CzcFvj1bp3ESTsT30FDz5zMbd6susJmeh4=;
        b=HruRC/5XEMWweIXUU6JzFSp69OY7zHVj3OQ7+TTTZ/Q/3OxZhoaB/MU32JgUYBO7tU
         02RG1s+z7uv4lyaYNpisCUPG9CTS8u3wOBdNV8s99MaJzM7YV5zn97O+UAUtZBV0f7X9
         VkyK2FZbI3lkOGI/txMemTh8YRfJrKKzA16ecx9RR5yE49zYeCfX22cCs9OLx5I4120m
         EU7wbRi+us8ZyPdOUOkGL0Cflx1ziGGu9uoXxPGnlyaAu7iOagTa8BbceGiSX0Mp7FzS
         0dzEOVJ0z9uKzjGHsTD1APGcvXIn/86Ramlf8/jkImh1ScKW5KaTG4xsP9R/lQwod/Y0
         HTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vmX8hLQO/CzcFvj1bp3ESTsT30FDz5zMbd6susJmeh4=;
        b=O8wSNQl0PHqjv6L3DZz/UZ04TQYMzxJLQoItubrcyhKJZuOkWzZnPQ3V8WUTAeToNF
         4VsUEy2tbKdgXCz0MCipl2wz6k0MX49q4zBl5kKwrFjB4C1QSUG5S5tIasFM7XxcDdsh
         85vKYgPRxEkVYiiz9fT3ITIT5FWMbLHvwmQz6VbV+UMYsLSgrYnPvOWfxcypZxQql+Vl
         1YG7SVQoU16x0zr3GosMiUnBtdEapTypJS4v+IuDcIq2x9ZGE/43ir1V1p7LiW9y/7n4
         YDpoG4l4iH+TD/VUna2dWbRXhJVExztNe99G2P9js+EdEnw0QO+m/p8R7+BcBlPh327h
         HKJw==
X-Gm-Message-State: AE9vXwOrtDRFH8VSIDTgMfeVhhjBKM6FnW3hponNV3cRBTSbzuHCWSwcGauUsUz8SN30sQ==
X-Received: by 10.98.84.65 with SMTP id i62mr16867419pfb.72.1473966513459;
        Thu, 15 Sep 2016 12:08:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:32 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 0/6] cleanup of xgifb/vb_setmode.c
Date: Fri, 16 Sep 2016 00:37:08 +0530
Message-Id: <cover.1473965826.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

The following patchset contains patches to make the code more readable.
This patchset fixes various issues that come up in the checkpatch in
patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion
when a one patch was sent fixing the checkpatch issue of
moving && operator to previous line.

---
Changes since v4:
	fix alignment in patch 6 such that the if-test arguments line
	up for better readability.

Changes since v3:
        fix commit messages in patches 2, 3 and 5 which exceeded 80
        characters. Also, reworded patch 6 commit to explain the
        solution more clearly.

Changes since v2:
        reword commit messages in all patches to explain the solution
        and using imperative form for the commit subject.

Changes since v1:
        made a patchset instead of a patch to fix various readability
        issues in the code.

Gargi Sharma (6):
  staging: xgifb: move AND operator for logical continuation
  staging: xgifb: remove unnecessary parentheses
  staging: xgifb: remove blank line after open brace
  staging: xgifb: add spaces around |
  staging: xgifb: remove blank line before closing brace
  staging: xgifb: fix alignment for if arguments

 drivers/staging/xgifb/vb_setmode.c | 49 ++++++++++++++------------------------
 1 file changed, 18 insertions(+), 31 deletions(-)

-- 
2.9.2


