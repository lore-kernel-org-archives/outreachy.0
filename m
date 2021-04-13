X-GM-THRID: 6950478192224239616
X-Received: by 2002:a37:9bcf:: with SMTP id d198mr8150430qke.401.1618284311123;
        Mon, 12 Apr 2021 20:25:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls10391636qkl.4.gmail; Mon,
 12 Apr 2021 20:25:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgyeEVARxSWRhK6w+NyqYrtchE/OKtIDyYtmk4xAUbG8ZuRCSQdKlmMGSXtDp3L5nGjdyw
X-Received: by 2002:a05:620a:1477:: with SMTP id j23mr28869201qkl.416.1618284310377;
        Mon, 12 Apr 2021 20:25:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618284310; cv=none;
        d=google.com; s=arc-20160816;
        b=SAj8WZcV7aG1f8gx/2qHZFKScELiSM4M8yF2UXdWaSpYNaEtObKQTM7iq06DK4BxiQ
         6d7patxXHtzG4LgAYTbg/52ERK2fylCdHSR893XW5TRR05sxa/D/GXELlis7PVN3hZ1l
         LAXKYEBeZO5R57ws0Zwf7gfGcRd0Pt9IL8SUL5EaOKAJwTkfI57LJ6SVwRaMw73GpFpH
         8wWud9D/Ww4Du5klWuQFHA/EVjF4HlDdASdeEhLiL2Omt93uZ879RtNhRsKPRJ/UzTLm
         2pAo7t05nm5ME7vXELNIvW0JQu0YpMdNRpx0zGh9GICfF7rqCqIwD5EVMVqn4AQ5vmvV
         +OtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=SRXvRUJitDAL3LVBcxgMSN2+Nyo+g/E1R/YUuhMK3zY=;
        b=ZvSc5jzBdrojJgZs+8M/oLZbPOyWJPRutKCsNbfVIGraZ8Li1EXqgEdoBZDHetzDZo
         Fly1x6ZIsFyRhLSg3RODFQQIjwTcXK9ytPGEkN9sh2XBwg0AGXHzkuaSSNzFIY0UryVd
         VpqicZE9VQt/9KPMXHpe7PsW0krZ4hkCQS93MqGDtNG3Z9u8HkOqjfx1k6HIM4rzirys
         TL/YEOESNCeArV+5QYDyN/e8ma8f95SUbaFubLHQjg2La6mWCBKiooD8UxZkjyTAXDIL
         YxVGvjY4BKHUJMsvGnzHOR56Go2ROAbOVMrDSzdMhrYI0bNJ+HMc5BMD8u9WOdtTfLWH
         xx0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NT5wxcrM;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id z143si212291qkb.6.2021.04.12.20.25.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 20:25:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NT5wxcrM;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id t22so7128688ply.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 20:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=SRXvRUJitDAL3LVBcxgMSN2+Nyo+g/E1R/YUuhMK3zY=;
        b=NT5wxcrMIElDPZAIwOHzPA+cCkYYmfN0PcrXjLMovuafkLeOokhyvZDn2+qKo1JRMw
         yfifmdoDp0w2m5Lq8veWu5rKtEumpKNmqr5PHwjWEM9M+FvcakfBMLmH5HMQ5mVP+Y+m
         Xc6qu+v5+bA4mn4ApziWUp4d9NSZ7y7kojwd/lKea4W7FW4qdJbG6GwkCemLFG241fRU
         2LOd1mtDMhFJdW6M88KvI8PSK+ZpgeDOPmQ60KIxOUuea6gtP7WojxZbAjsV4dUTCPa9
         WGSxnkmoixLKk4UHZqJul0iqUf0VQNm+Cuv3hxFjsj0qN9e8/NrkHF/Ve38cU4JU80PD
         0Xmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=SRXvRUJitDAL3LVBcxgMSN2+Nyo+g/E1R/YUuhMK3zY=;
        b=Ia53AijW3gHRQxXcY6qY03G4WrZJmVb+FA3BsvebxSI4S2eRJTjbty42skogoVjb7B
         VgHphakjEHsxQ/J1qWuUYzNXGt6bvQhtFpAfpupy+9pY+qSrf1lHantGy/FJNjSLQxbj
         IyjSUuAwOzZhCw9DOcPMsU6tyN6B7/aym1YGBL1eYXCZrIQuF2H1mlfSMGXQx0sG1vzs
         FKNztTlolxZyuI2mNbG2j7m2b5E4FJW0HfGnqT6PQAZ3/NcryP1gCjeUc78zQgnYoisf
         +Ahrne48mnLzT3fEWvNSMRMfIuCJ0j6wd7ww88EkzSnhAuGAY8ticbdYvnQmVsi6p3Gj
         5XiQ==
X-Gm-Message-State: AOAM530+Ar9fiz1PIB46tppaq3e1OsssaXV1F78vfZVq65PmLHnu1ggx
	kxiSIGTgofugXlzGaUk193E=
X-Received: by 2002:a17:902:aa8a:b029:e6:64bd:e29d with SMTP id d10-20020a170902aa8ab02900e664bde29dmr30083774plr.24.1618284309436;
        Mon, 12 Apr 2021 20:25:09 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s20sm8993891pfh.144.2021.04.12.20.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 20:25:09 -0700 (PDT)
Date: Tue, 13 Apr 2021 08:55:03 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v5 0/3] staging: rtl8192e: Cleanup patchset for style issues
 in rtl819x_HTProc.c
Message-ID: <cover.1618283232.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v4:-
[PATCH v4 1/3]:- No changes.
[PATCH v4 2/3]:- No changes.
[PATCH V4 3/3]:- Removed casts and parentheses.

Changes from v3:- Changed subject line to match prefix on the patches.
[PATCH v3 1/3]:- No changes.
[PATCH v3 2/3]:- No changes.
[PATCH V3 3/3]:- No changes.

Changes from v2:-
[PATCH v2 1/3]:- Modified subject description. Changes has been made in
v3.
[PATCH v2 2/3]:- No changes.
[PATCH v2 3/3]:- Rectified spelling mistake in subject description.
Changes has been made in v3.

Changes from v1:-
[PATCH 1/3]:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.
[PATCH 2/3]:- No changes.
[PATCH 3/3]:- No changes.

Mitali Borkar (3):
  staging: rtl8192e: remove parentheses around boolean expression
  staging: rtl8192e: remove unnecessary ftrace-like logging
  staging: rtl8192e: remove casts and parentheses

 drivers/staging/rtl8192e/rtl819x_HTProc.c     |  18 ++--
 1 file changed, 5 insertions(+), 13 deletions(-)


-- 
2.30.2


