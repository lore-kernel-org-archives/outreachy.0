X-GM-THRID: 6402653408704069632
X-Received: by 10.129.18.130 with SMTP id 124mr10548474yws.56.1490733914713;
        Tue, 28 Mar 2017 13:45:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.36 with SMTP id 33ls1052513ota.46.gmail; Tue, 28 Mar
 2017 13:45:14 -0700 (PDT)
X-Received: by 10.157.44.34 with SMTP id f31mr10265665otb.52.1490733914351;
        Tue, 28 Mar 2017 13:45:14 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si890142pfx.8.2017.03.28.13.45.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so21151315pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KAt2AJnXj/dIXkeNMBHq3gk27gXElLbDeXg6hlqZ9AU=;
        b=fCEyG153zclxpVpJT4uUC6ZjaqSAR89Vsw4Dizqdh3gi1BEr5sSIy6PU13Ly470Kuc
         oFcqQgZtZqizjzCmbxkgOpNpt5G6GRYJ04KVolVwbAJaqZ2Pdv+yRgBi9Av2XAgxhJox
         HrD6kQaz4TZ6IbyF83py3FiT8kur5gwXPYM6LAqOZyCQbC19BpXvfU2wQOSdD0Hzfr9K
         X/znr9p9SUvq1y5esUJLFRyGOllczAsRoWws0TtNjuK7nY6RDBYS8sXX+DQyLFbL5w0C
         0yQ+Sc2320vf489JdFmt2x6uXGzqKG38AjL8edKnoV/CyWRAtYOP1ioNtWg9hudDyPLg
         4o3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KAt2AJnXj/dIXkeNMBHq3gk27gXElLbDeXg6hlqZ9AU=;
        b=bqoVSENdFzCpY+EIXCs4AYSFc/Xi12PD85DCpEhCiLGj0gm17P9W+/sJ34LpkIhuMU
         HaynLOOC0vYWdRvFbXUH/W9M19b7OcRMALEgyXfia7h+q9D8sXtqZMWf1y0GJsPSq51k
         HITtjOaAxxD7JNObCUh0HthqoRxJnG80AdIXzXoWxGiqr+3wUjfLGKGbjHlgAkvcEdD+
         O8e+c2dscAomOJXqRJK+K87AkPt1J5WSTUsWVeORLTA8PudGyJ/19kgFq9KaJzmWy8A1
         0Spxs1A4LZS+9Sn1Po+wYmysM4HxWrGMozMKF5X54SYrpM3DlOHvou2k6ZxjbryZRNc5
         D7oA==
X-Gm-Message-State: AFeK/H0ejdAWwNYjbAvOyZePepGrcPMJqV70skHOVsvUM0/r1FeymWnW91IaelIbvtDpSQ==
X-Received: by 10.98.25.83 with SMTP id 80mr32745844pfz.243.1490733914161;
        Tue, 28 Mar 2017 13:45:14 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 140sm5244916pfa.58.2017.03.28.13.45.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:45:12 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/5] kernel: pid: Multiple checkpatch issues.
Date: Wed, 29 Mar 2017 02:15:01 +0530
Message-Id: <20170328204506.16316-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix multiple checkpatch.pl issue to improve code readability.

Arushi Singhal (5):
  kernel: pid: remove space after open square bracket
  kernel: pid.c: Add space before the open parenthesis
  kernel: pid: Fix line over 80 characters
  kernel: pid_namespace: Remove return statement from void function
  kernel: pid_namespace.c: Do not initialise statics to 0.

 kernel/pid.c           |  8 +++++---
 kernel/pid_namespace.c | 10 ++++++----
 2 files changed, 11 insertions(+), 7 deletions(-)

-- 
2.11.0


