X-GM-THRID: 6668981360875536384
X-Received: by 2002:a17:902:968f:: with SMTP id n15mr3335496plp.75.1552766191267;
        Sat, 16 Mar 2019 12:56:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls5378307pfa.3.gmail; Sat, 16 Mar
 2019 12:56:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4WJYbG+3hEi3sPge9qQ+stS82Vc8DIEsXd5koMbcg84DUs0i4OK+5Re39isn5X3Hh7C+3
X-Received: by 2002:a63:f246:: with SMTP id d6mr3970396pgk.54.1552766190614;
        Sat, 16 Mar 2019 12:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552766190; cv=none;
        d=google.com; s=arc-20160816;
        b=aNjwy2GQ59gMyJmesH/1M1mDbazmS8svnWdXtb6X6sNCEVS5E7xO70WC6qhY1AhYqs
         TjxJXx6LgZjz3nuoIFOHJVHwvRwpgrJz7IbTwpZQFWLMfwEc5wEgQ1tOVzNHK+rm1Lwu
         PuHFUYCVByrds5hRI28WchjBWPTiB78JkNVMVV/Uit5mwWgzA1Hj4OVBk4zT/tsTzFug
         tfKpe4S53BNCT8DIjlgQ+7KWtmd5BnpF2evqMyuTg6sCHNhecpDv2kF7Xx/N4Z2bc2Wt
         D63p6lClQzDLKAexKMj8Mdj1aUN/X6Hf4UJJtoWL/5g2VNWlEOIZmScWzaT/pqPbjXjy
         MsfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=9oWEpRhyTtNqAGu7OBKM9q+RO32E3hEZNgq532a2uAY=;
        b=dYdHUfewgi+d29VZ3E70/0ovECHwg7H3CLWRqaG9wrmHcgDlpi7sowWN0AZMjbaCk4
         d9Z7/W68u3z8Oefpn+q01VBnjfm7lvwSfh/JjxUUra4OZ+LTb1uxnYfYPzql6zi+1GLy
         V+YXr69VHTkfRXhEjK/viOvF8ntC+1r65Ms/1Cd/ilRY/ZGanj24r0ARKnwn9yagsN/e
         jrKsQnR4ccJNjn9rzIlNkeltPmWbvWYLeeKBbR5TI2pIF2g/LrdbrLgNPg9qoqhlhY/7
         1c6T6fPfDuhW8fmFH0xXNHudbzH2zps3Ov5dnDH+ZFJH6MiWJ/BbRiM8xB36Fzakqpg4
         xU9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DjuOkIih;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id j8si282897plk.3.2019.03.16.12.56.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:56:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DjuOkIih;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id i19so8617665pfd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 12:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9oWEpRhyTtNqAGu7OBKM9q+RO32E3hEZNgq532a2uAY=;
        b=DjuOkIihdyOaXzR8dVhnGSdZtbk2bUhgjh1PUpLXnzVKXw1a7xjGlnvHKeR/C3irYW
         xQNqy2+UN6CYGMq9J142kNtFUE5mLhUFpb7G/Upb16ffSqXlOVrVl2c2zF1PdF5vHcv3
         tSC6jzvng9awRPybWLAXbtebLVT682Hp8VpAXJ2QA6ZVaacsZpOruQysuOJgwjSp6tf3
         LG77CzR1B7+IWv0iUuvRGpTikevFZyqa+3bE/FVWwEEAPIA8peShlyZgKimkdlXj8t4f
         UMvAvHOgLXrNqupmG9kQ0Axv70phQm4P0sE6SP4dA/81qxt4LX3VRlUak+PVLJykK0/m
         vEbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9oWEpRhyTtNqAGu7OBKM9q+RO32E3hEZNgq532a2uAY=;
        b=SqQmxokpswUCy32BbGMmTiu0G2JfLvOiAr465UQpI2JUfAa94PUwvectQ7so/S2gTK
         +6i5o6rmL+Gcf8sBHmmxOzI+cLwoB5CNRAguVwKIgTDCDuSLixp2wNJHkqmDh3qcYkfV
         0SB4dYgxGaYBN92huB8RaKcx/c9AfP9kP5QQL7QxYjWj/xizlzJL291tlY6s81e/tm9R
         Ev1oZK9KGiuKFMDYt6iQ8y/93NFYc7TJSwB+B542I0vzdtVvu5a4pAYUaNR1NW4qqT2X
         uQ5Wrwr+doxVKddEeAXlS5vQWDOZbAOhIU0xsRWLJJwNjnLW4tSwpjTdeoqzgiAXh2WB
         SLKw==
X-Gm-Message-State: APjAAAXBSAZtoySLOYWBt5Rji2ZosdE8K9sgdQ6Eb7/9Rn4n5TPA6HMq
	4MGiNtecoErewD7d56v0uog=
X-Received: by 2002:a62:1d8c:: with SMTP id d134mr10823892pfd.185.1552766190428;
        Sat, 16 Mar 2019 12:56:30 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.92])
        by smtp.googlemail.com with ESMTPSA id l12sm7092782pgk.40.2019.03.16.12.56.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:56:29 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/3] Staging: rtl8188eu: rtw_recv.c: fix various warnings and checks in rtw_recv.c.
Date: Sun, 17 Mar 2019 01:26:19 +0530
Message-Id: <20190316195619.2533-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

This series fix the following checks. 
fix a paranthesis issue around -> 
fix a space issue 

Changes in v3: 
Change the log message from the [PATCH v2 1/3] 
Change the subject line from the [PATCH v2 2/3] 
Change the log message from the [PATCH v2 2/3] 
fix a overflow of 80 characters from the [PATCH v2 3/3] 
fix a space issue around '>>' from the [PATCH v2 3/3] 
fix a space issue around  '-' from the [PATCH v2 3/3] 

Changes in v2: 
Remove "From" line from the [PATCH 1/3] 
Remove "From" line from the [PATCH 2/3] 
Remove "From" line from the [PATCH 3/3] 
Change subject line in [PATCH 2/3] 
Change subject line in [PATCH 3/3] 
Change log message in [PATCH 2/3] 
Change log message in [PATCH 3/3] 

Sanjana(3):
  Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
  Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue around pframe
    -> list in rtw_recv.c

  Staging: rtl8188eu: rtw_recv.c: fix a space issue

 drivers/staging/rtl8188eu/core/rtw_recv.c | 113 ++++++++++++----------
 1 file changed, 62 insertions(+), 51 deletions(-)

-- 
2.17.1


