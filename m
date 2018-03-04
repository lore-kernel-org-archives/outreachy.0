X-GM-THRID: 6528628385749401600
X-Received: by 10.28.247.4 with SMTP id v4mr880457wmh.1.1520194193179;
        Sun, 04 Mar 2018 12:09:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.20 with SMTP id o20ls3686472wro.6.gmail; Sun, 04 Mar
 2018 12:09:51 -0800 (PST)
X-Google-Smtp-Source: AG47ELssHs0YtaaRyH1DPLGRNpX1yt/lU2AFPQplzLOobJ1F9+E1GOQA0wsCmz9Pa9AgosQ8ZxU1
X-Received: by 10.223.180.86 with SMTP id v22mr1127851wrd.1.1520194191953;
        Sun, 04 Mar 2018 12:09:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520194191; cv=none;
        d=google.com; s=arc-20160816;
        b=vKGIAb4HzQNea7+3ebeIo8uLq/sBIZ+2qu4wtJ9sXWu5kqFHu8sWLUeI5TmgZuOODl
         fb4tszPZWvgsxSUp3Wppi89JlQfbN3wVn0l45+bP+RfoQYvJgWd38rQajHtCVFF1q1cI
         LWE0mCSpWw8wI3YKxRle0sOix2ScLJK1bftZJm/CEkfh7sKTy9ddtL3Ky0eF0dcDj0LW
         wqIsjRbRZdfA3CBT5A5OVLjkmPtQzE+IcIdGbjcGpEOgtnSEsZ5c1D/DfysvnSdr9SAc
         CN4V8Rcheq7MGV/mxyB3Oy5ReyUmTlTomItUizq+HHkjvyNVea8NDRsEcc0F2VOfxTux
         7veA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=MQ0B92kPzcENxf43m/H8uX1IyCmpDYEFkco6jVRMAgk=;
        b=Bftf0CtSSxhH9KaMF+Bbbz5EQ7Qk+LLJdexAx3RAwySDs6ApTZ2jZ5Hja0E0YknV5o
         diEZE2IHSFk8mzCI8toDn3NRC0qrocPc/Js2lc6/Zhan178FbCmCYGLQjw6Vp5DcyPkX
         kTTwcKxcrMUE94ULoTZUweCK1G5nM+qwVzr5sSRmBgS0JA02HDBwOA/GO0sKqx927aRw
         zP/+1qoI4TVT0G/FeCBURVsXt70OqxI1GynaNQ0RWZiAcfkjTi/5J+dSVTApTo56Syrd
         /rdYRyLEmsZN4Q53BsvPUHW8MvsAmuXR3uciyOg4iM7FQK9FlbJ9tWJ1XyE/TniEGski
         jYmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C65ODVHV;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id a138si195316wmd.0.2018.03.04.12.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 12:09:51 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C65ODVHV;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id q83so12081272wme.5
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 12:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MQ0B92kPzcENxf43m/H8uX1IyCmpDYEFkco6jVRMAgk=;
        b=C65ODVHVgVDUCbsEKtL84UCXv7q2nzNWiv6xRJSi8Yt3j1HyZuIjoL9LLL94Eqq3DG
         uDz2segOEsuQEKMrZLds4rax4u1+kGCfkSmYF4U85bZ6BulQALPAgnClhL46m+WJSdaL
         m4hsV/6Je4MXwFaYfyqYgEkWdcyiU2WJ2tcYzkKbt0INkslF57kcYOS+nWbipsQoP8QJ
         W/V1PfpIGk5t7mZy+IzjONcpPz85NcqdqejECCVliDtlsyY9Fn4s2rPqf0BLiY8Nscp8
         A8SX1noslGOSNWKKRcWboNSqV6b+1BEY3600e0mAke8mZqQcWkbvQHLefWtz8AJkEwVg
         iLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MQ0B92kPzcENxf43m/H8uX1IyCmpDYEFkco6jVRMAgk=;
        b=PnRgY89V7spenbvzT5AQwzzDZV+XdtetLpRYqQkwQ0TiSNBZeGmcSMu5aR0IBpOz1E
         f0UGuliVKu+GryU6ECOvC5tRZi6D4CVHcaOxDRE5cHmEzF/YmGzvA9V2JvOkIuxZFBWg
         KMa+4M/RiaBErxq+pvztnYlLfpFMKt5wG+sFjKQdlP5m3idzbYe0i5K0ej94jn9xVCJU
         AVCVgBzaoEiWPz1YfXl54bT2HS/Cq8mtdgcbGmQuA5SSKm9tA8pO36AnVYFbIaWiBa/j
         pVhGzGEJbveweb7ur28KySXCl4E2g9pjKUJ50VvvEvBmezUzY9qV2fHefR8MQdXV4EIW
         nClA==
X-Gm-Message-State: AElRT7FtChR6f6D3JKGOM9LwzadzRKBPOp2w+L2rc0IFyM9ShzDZYyEp
	mQCwA+fEneW8MKrL6my8K7k=
X-Received: by 10.28.160.26 with SMTP id j26mr6024342wme.76.1520194191587;
        Sun, 04 Mar 2018 12:09:51 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.huji.ac.il ([192.114.91.234])
        by smtp.gmail.com with ESMTPSA id c1sm7081212wre.27.2018.03.04.12.09.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 12:09:50 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] Cleanup for staging lustre obdclass
Date: Sun,  4 Mar 2018 22:09:31 +0200
Message-Id: <cover.1520193794.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixes of issues found with checkpatch.pl for the lustre obdclass driver.

Changes in v3:
Adding the acked-by to the commit body in the patches

Dafna Hirschfeld (3):
  staging: lustre: obdclass: Fix comparison to NULL
  staging: lustre: obdclass: Add 'const' to char* array
  staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'

 drivers/staging/lustre/lustre/obdclass/cl_lock.c        | 2 +-
 drivers/staging/lustre/lustre/obdclass/cl_object.c      | 2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 4 ++--
 drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
 4 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.7.4


