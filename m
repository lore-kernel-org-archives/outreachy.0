X-GM-THRID: 6528628385749401600
X-Received: by 10.223.129.200 with SMTP id 66mr778972wra.17.1520064749800;
        Sat, 03 Mar 2018 00:12:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.124.15 with SMTP id x15ls637432wmc.4.canary-gmail; Sat, 03
 Mar 2018 00:12:27 -0800 (PST)
X-Google-Smtp-Source: AG47ELuqoEwjMXkoNm6Y0KayNAQCeu/SNF3m1c0ed5ZtL9ulFDI12akGbg41VbEqc3xnPWETG72j
X-Received: by 10.28.116.17 with SMTP id p17mr422026wmc.29.1520064747942;
        Sat, 03 Mar 2018 00:12:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520064747; cv=none;
        d=google.com; s=arc-20160816;
        b=G3erZdT6G05xDShjJbMoAV4SIPSt4aN9jph8hT1Naag//NYnplpN45lRZX9XNSL19E
         VoqyfDX5m1t5LhdQTBAyKVqj2JUoIw/yrXq8nhK2CSwv6Olpt3VH08gpCAnIKqzcekzE
         h+LIVtxdm6rUOhgRWJYiEbRhOdW3jaciqOwpVlM8fjcHRgAtbGv10bkwSaiXCd4oVGUW
         RX8kFdLEyLAcpN6KWqR0JPREpRPGYPSBM1mlf5+Ilqbirfr4lJi+H1SkMcNvAUONVM+O
         /HD/CjEeOJYvkCmRbrr0UTU7z8sAlSzxO8tnn8v60Qgk5UJfbMkN0AFkNSQV7Ml8KnPj
         LjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xnWENL5Vup17Pu6tELVtLCb6KDmJmYWMu7nkON68eDk=;
        b=MR4yfmLsVzonOAnXs0c/wlAy7to9b1CJ5Oxvsx0XBDeya3r7REXxWp5ecJ00rF7//y
         HbxEB+vyrVIFD4BULFsPtTyioO75DPH/TTqc3iJ1tHQvPd5HndbXSgDJjuzlKDVGV+Is
         uTJy0YtJHi3HEaPjVUnBb2Du75oe9za3uvnqRPdiUGoQ2J+lLVcxN3jwcfiRcZ6uLpwM
         aHhTwZcrfc6s1pd51Y8YLRjuhXld1J3vHC7g3PmPJtuTlST4ec4GMAV/JhmT8W1w3282
         PNUbBvIfe3woS8APHpDzukBmHq7uQxxLWBZ1eMp67qB5oocJSeWlV9L7lZrbvhbNKGm2
         u/UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RfT0icvW;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id t15si128497wmh.1.2018.03.03.00.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 00:12:27 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RfT0icvW;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id w128so7096512wmw.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 00:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xnWENL5Vup17Pu6tELVtLCb6KDmJmYWMu7nkON68eDk=;
        b=RfT0icvWbLPBx8NgX3DK22YJSt4FY7apnfqf9SMJyb2sWbgwjn2BOBpTlw7jXcy9xO
         pxqNzKri8EJGLQnM9DNJeYwP1iq6OjlFuTF1rzAq8XS+LXGS+DbLNAiYhklA5+sNmwnP
         FYY6UjqUx/lHlP4thqxUaW7HKfIBAht6ZZcH+iuPa+QMm6IRieXQityTieVrjAfAATye
         xxVQ3Wx03qgzpTqwsWExR+x2gnVxc8J0izWRWzsKdATjjFhPZ8xfRmYE0bBjTgCDnVZo
         grqChuI/4xwehhHkiNhEL+qveVmnHEYiCmXYQ0Jo8Cxf+3Q78xlMAv3Qt8n7g6rYOJlE
         7fCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xnWENL5Vup17Pu6tELVtLCb6KDmJmYWMu7nkON68eDk=;
        b=qa2lsFaK6g79jJqq4I6F7Q3YE1hB9i5owBz/Z3tJO6Vzfv2fkFCO1Q14Pn1pietDME
         iFQyMLBX0UIG6EQSizJ/jWBQ0rHeq/TPxy/fOiyI1lpcM9wPMr9ppubaBqVeIYFaFyog
         ZqOrB90AWzG17PpTjGYk3BGm56g/knMNcrtDwSQlls4+UChO751VODCNmdt3haLxFyqV
         vvRf7KJ7iIeiE3Dbog8TWLStc0csDkisZQmof0wGBixhJMiaAc4n0H5Shf4MPcPYUgcg
         ky07FINpTGr6wtFAwVrwbrSIw6T/E2xhRITc9Jp1CA9IK0T60s1bhVFkNwkfZJAfuQA8
         tKyw==
X-Gm-Message-State: AElRT7Hc4EC0n9LZct+iQyqrCbIrWHpuOucHudOHShXDiDxDetrMRfzt
	UyK02N6CVM5XO95RI+JLyf0=
X-Received: by 10.28.237.19 with SMTP id l19mr3237685wmh.157.1520064747594;
        Sat, 03 Mar 2018 00:12:27 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id r98sm18712986wrb.70.2018.03.03.00.12.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 00:12:26 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Cleanup for staging lustre obdclass
Date: Sat,  3 Mar 2018 10:12:03 +0200
Message-Id: <cover.1520014706.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixes of issues found with checkpatch.pl for the lustre obdclass driver.

Dafna Hirschfeld (3):
  staging: lustre: obdclass: Fix Comparison issues.
  staging: lustre: obdclass: Add 'const' to char* array
  staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'

 drivers/staging/lustre/lustre/obdclass/cl_io.c            |  6 +++---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c          |  4 ++--
 drivers/staging/lustre/lustre/obdclass/cl_object.c        |  2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c |  4 ++--
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   |  4 ++--
 drivers/staging/lustre/lustre/obdclass/lu_object.c        | 12 ++++++------
 6 files changed, 16 insertions(+), 16 deletions(-)

-- 
2.7.4


