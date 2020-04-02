X-GM-THRID: 6810978384400613376
X-Received: by 2002:ad4:5610:: with SMTP id ca16mr1604173qvb.104.1585804481312;
        Wed, 01 Apr 2020 22:14:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls1627547qke.8.gmail; Wed, 01 Apr
 2020 22:14:40 -0700 (PDT)
X-Google-Smtp-Source: APiQypKOj3lpB/6dylDH4gEGB/zfnceZ5AU5k1ufpKNqbBcD0qhuPxpAV5LT5NrKVDEzRbh46S7O
X-Received: by 2002:a37:8044:: with SMTP id b65mr1796521qkd.238.1585804480234;
        Wed, 01 Apr 2020 22:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585804480; cv=none;
        d=google.com; s=arc-20160816;
        b=Qj84NINR9XhIXWAcrY2ZzI5PsDbNjIXOlaY1wEu+s2a8o9zDOcqGzzhEOTqxIY5wQa
         rG9GEMtjM8kkspYGx8MWy3/R4Ryffumck/Rd16AGmmi+Lsu9uSUZqYP5MeaSlDN/U/ZY
         berGHfknY8bD+U8QssX0o9pkCnQ0A0p76tZxdaoUryRKlDhWeRBJEZIIC1i6Qin/O2Cl
         rh9RttBnQvmmQMIW5bccWrt+KAYIlFQp5iiIUgP79m7CFOZD0h0DprF86jHYYsrD1vyC
         lzQow0WICgktC7uVvMHn4vdnS3Zk6HSKgS3yrGJeJyxScT3gyt1ZkxZq454T04yj+e4R
         s4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u2W3sy+9Z4/2JaPMg98oW+k6sx0Z81RNfnn1TPGpz/8=;
        b=z4Dw6foAHoSYQIAdYQ3OzE2dJUWu+df30SrRUIHKp01sofjDUo8jaWed9HLfkyQdmL
         3iKbR2V+CWG7MDaij1JWEqPYH73Pa8zqvJXWWiViJz4FFq/ylOOXoTTcBY4LjW8mC/Z2
         x4wA++0Alh/O4Ztt5lI+ElJNWmA7jKTZjkruimC5uaO4MJtpeE0+ygPTneO0zkh3F3R3
         L0DFnE7d7afAvd7E+EKnE1j42anX83mJsQYg58bmeBN496VWfj7UXxnPbTh+L4OCPTb9
         cWN5tV9+8ypv1I6XYimxraEyhRk9S8CkPaF/ccZKqwlUyqqdhpykZsBukIla9DfFQ6sI
         KRFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=efGdKbnK;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id d205si158719qke.1.2020.04.01.22.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:14:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=efGdKbnK;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1031.google.com with SMTP id g9so1067933pjp.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u2W3sy+9Z4/2JaPMg98oW+k6sx0Z81RNfnn1TPGpz/8=;
        b=efGdKbnKQ8IHwWdHUrBGVY6AupawDPWQ05pl7rAbstdkVuOEMT8Eixl5I4+2gQpAc2
         yhEYApVEIZeoU/baFBNB0/2W2HKxlVXj/zInlvnt5SmdRNWh3RZJmB7CanEc6gEV10rd
         3knee3iUM+saUYN9FZSO4/687tL96Gg3GK/OjfWkTmgfP/Sm7eQf4vaDVzXM33EMRPOO
         1YIR8AlmNu5D1qoFuJn1exHcuoR+Aad0S7SLgrvtnH+K90debAiPyZ/uJ9k++dtezg/t
         X/jbSDlq7I0Uz2bXqgcjIYmfhuh0NpixRZ0TjmBTepbQOCwQ1f+BxQ2ahse2Cx0mlPS3
         Tobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u2W3sy+9Z4/2JaPMg98oW+k6sx0Z81RNfnn1TPGpz/8=;
        b=nnDjth5zUHJFBQeiRPB6ojCKObrEo0rSbi2+kl5XbTTO7PTiOPONlavt8W0HH+gnDw
         r4B7QjQIQ3OGVgjW3WCU6b0VwOYv83XY5b2XGdqnXFRxbFC0bUXFrtfzWgQSUg/Y+kme
         0R1e8pMzNAhSh7GVEl/dcWhzEq5+UJ7gZFBrglcvadQOUGEiv1A9FfaRxaS4ihpaEGsU
         u/9R1JdBdMeFTpkRqIhjccrFEG+JRNR/M2jQ59v1HlY0jsHgOCkRcamHViswVKJv00qZ
         4BDgqkMVdVEbK3+0jH+Q9gdibJDixvfrDK4ZEUAVj4l+Wr0rfSfbg0G5lbXd0zwX2+z2
         5plw==
X-Gm-Message-State: AGi0Pubsx/mkPoUi3/scmowYUzEexJDtpOy29diK7/JSN4uJyCrgQnsQ
	dXFpGrnsu1gxNzSPYtU2q8s=
X-Received: by 2002:a17:90a:c401:: with SMTP id i1mr1739159pjt.131.1585804479693;
        Wed, 01 Apr 2020 22:14:39 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id l1sm2846485pje.9.2020.04.01.22.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:14:38 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v4 0/4] Staging: vt6655: Remove unused functions.
Date: Wed,  1 Apr 2020 22:14:32 -0700
Message-Id: <cover.1585802818.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes functions that are not called in the driver but
are prototyped in card.h. Each commit limits its scope to one function
definition and related documentation in code.

Functions were checked for calls using the Elixir Cross Referencer and
git grep.

Per Stefano Brivio's recommendation, output of bloatometer script after
changes:

add/remove: 0/4 grow/shrink: 0/0 up/down: 0/-572 (-572)
Function                                     old     new   delta
CARDbSoftwareReset                            10       -     -10
CARDvSetLoopbackMode                          14       -     -14
BBvExitDeepSleep                              40       -     -40
CARDbRadioPowerOn                            508       -    -508
Total: Before=36131, After=35559, chg -1.58%

Briana Oursler (4):
  Staging: vt6655: Remove CARDbSoftwareReset definition.
  Staging: vt6655: Remove CARDvSetLoopbackMode definition.
  Staging: vt6655: Remove CARDbRadioPowerOn definition.
  Staging: vt6655: Remove BBvExitDeepSleep definition.

Changes in v4:
	- Update patch series title.
	- Add patch 4/4 per suggestion of Julia Lawall.
	- Patches 1/4-3/4 unchanged.

Changes in v3:
	- Update language in patch series name at suggestions from
          Stefano Brivio and Julia Lawall.
        - Remove references to the changelog in the cover letter. It is
          unrelated to this series.

Changes in v2:
	- Add output of bloatometer.
	- Change language from "uncalled function" to "function...that
	  is never called" in each patch description within the series.

 drivers/staging/vt6655/baseband.c |   6 --
 drivers/staging/vt6655/baseband.h |   1 -
 drivers/staging/vt6655/card.c     | 105 ------------------------------
 drivers/staging/vt6655/card.h     |   4 --
 4 files changed, 116 deletions(-)

-- 
2.24.1


