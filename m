X-GM-THRID: 6661088091510407168
X-Received: by 2002:a25:4e88:: with SMTP id c130mr6872421ybb.94.1551108966254;
        Mon, 25 Feb 2019 07:36:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls2261031yba.0.gmail; Mon, 25
 Feb 2019 07:36:05 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYB6kX/+6LrJmKp5wOrSeXx3dTyAgYRIOPKMTzxNZfa06ydSN1boc6Oc5WyKXcV2jcI0cIq
X-Received: by 2002:a25:b81:: with SMTP id 123mr260021ybl.40.1551108965651;
        Mon, 25 Feb 2019 07:36:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108965; cv=none;
        d=google.com; s=arc-20160816;
        b=fmis2mCRViNk+jBmmhXG3MrvcIrZXekx/mherPDFoima/kc1ihxpKcrRQA0ABmoYlf
         aq8RWJ83TOBFO5U62BLFApvLYPU1/4eVdfjHMXS0wyt5B/pTxIddrNgZOFzsl70Ag2Ak
         5cZI6Nn2McHX5VsOo4scyerag9uFndZurI/J8PDAughX9lwcKYZsb5xupyKoX3SLowk0
         xiAnyB3X3g2WgSXdPi1RIMiCjpvDrGhcPO8+fwg0v0UYHp4408DQHq29hRk+k3kTLWLD
         x/yQf46ptE2SMEqwXuSXEi+qeNo350fPE+nihfNbErHW4+LmhbkzNfdcPMqKmhaIqYcG
         8y6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9nr9R3xJ7vfZKLyFlfFeiEkRpb5Zuhrm+nXQmcVvrmI=;
        b=djdl5L7ghmCBS1hZ4ZsbYb1W4J3DVCVl9JgJ78WJuU+C5zvMN1E4Gg86/9nJLYP8S/
         c1jJpwQlm/m2ir8rTttQ0X9G2YVweePoYjzcii/OvI2T8k5cpAhk8KEcxrdpYSLcR3Dq
         O6dfcwamHQwsd3m5ujUX0JQ9WiQrMF8MgqqVE+lunaCKjBYwOiksN+R95+iEkHiOc5eT
         ou/yRt0Kag1ALcGJQnX9VsQsEIZaP4baTEbVRdOh3xs43uk+rvUKV8NOVqUrm459zMRb
         TDJ+uszcDa933M3BoOy+th1C5n0zsXvBm7fKSai3OXLv6lotTtn8GW9EhynwzvMbPrdD
         HI+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tf2DKjhK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id i189si414621yba.2.2019.02.25.07.36.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tf2DKjhK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id e17so2607012pgd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9nr9R3xJ7vfZKLyFlfFeiEkRpb5Zuhrm+nXQmcVvrmI=;
        b=Tf2DKjhKviAldWTgyaS293xNCw8ej58eaEL7KQJVWusYuu1+Fe5k0q7v/qJeCZk1PX
         MvthukKqRIJme31rYqFakJArVMxwmPDJDYL4a+EWjcZt4DOfpixd2Irr7ieR1eNfrn4T
         fBHKotNmd36rBYi0XP/z+dPlqOrDh8KmYlKBSo11PjIhmLA0BA+srfRaiNzQssWaFBWk
         jarnVjfcETQmlUH78Gmyu2HPZ6Ou3fmnjVtK7bmpFxOxka8yZsCohmGVuyIagUz8lc5l
         bKVp52FnRdIn7dWFs3GYWQKaak0Qsj4CZ7zeO/J+4ScK4kIG8/c+Tfhb94obV6Hzk9dL
         nHnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9nr9R3xJ7vfZKLyFlfFeiEkRpb5Zuhrm+nXQmcVvrmI=;
        b=uBw8hqinuJCXFt8StpPkaG9wMRjXdVc/Zc4mGgW02FOt6IgRhXrBscdRCvD+vKLD4V
         2QWj4QFwabWkfrq/kXaxJ08A9Y8KGHqa0QgTqdBukNniEds/RTzGlSCuEChJhBaHcMYr
         fKOiih/OEBmIZpBVXz6hWTp7+u1b7y4Tq4UC46vCKtfBsMxn8SHzwsqd0kT2LoBn5LM2
         xaHujhLiHAzrtIBiuTgNlDEC+qG6RDUUmHXSqRQp+6lg75wQHG/QzAs6ElbqrGQBKUL8
         dMw8jGAilUC5nzlHl8lYc50mk8Q5g0k3t5WpidDaxYT+hvamh28knqwpWnJX+oiY4CXd
         1GgQ==
X-Gm-Message-State: AHQUAubxOsuLdmXUUfMMvd0RlIMOBfLsfpE1aDK8UefuWmtrl8pW8/jU
	3yeA75YN1qe7dfb/tawRpd2itePhCKI=
X-Received: by 2002:aa7:918b:: with SMTP id x11mr14001981pfa.228.1551108965086;
        Mon, 25 Feb 2019 07:36:05 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f18sm14048855pgf.26.2019.02.25.07.36.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:04 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v3 0/4] Staging: greybus: Fix various checkpatch.pl issues
Date: Mon, 25 Feb 2019 21:05:42 +0530
Message-Id: <20190225153546.10484-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Staging: greybus: Fix various checkpatch.pl issuesThis patch series cleans various checkpatch.pl issues
CHECK: Alignment should match open parenthesis
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Please don't use multiple blank lines

v2:
   [PATCH 1/4]: Commit log modified
   [PATCH 2/4]: Commit log modified
   [PATCH 3/4]: Commit log modified
   [PATCH 4/4]: Commit log modified
v3:
  Include all the mailing list

Bhanusree Pola (4):
  Staging: greybus: Alignment should match open paranthesis
  Staging: greybus: Blank lines not required before '}'
  Staging: greybus: Use a blank line after declarations
  Staging: greybus: Do not use multiple blank lines

 drivers/staging/greybus/audio_topology.c | 1 -
 drivers/staging/greybus/bundle.c         | 2 +-
 drivers/staging/greybus/bundle.h         | 1 +
 drivers/staging/greybus/connection.h     | 2 +-
 drivers/staging/greybus/control.c        | 1 -
 drivers/staging/greybus/control.h        | 1 +
 drivers/staging/greybus/core.c           | 2 +-
 7 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.17.1


