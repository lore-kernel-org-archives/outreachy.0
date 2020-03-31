X-GM-THRID: 6809913191851622400
X-Received: by 2002:a17:902:7082:: with SMTP id z2mr3135552plk.43.1585679570457;
        Tue, 31 Mar 2020 11:32:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls14578532pfd.4.gmail; Tue, 31
 Mar 2020 11:32:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYBEZU/p1Y75zLpVdyTFDgT69ZuyMd6N0uKTONWUSA18nS5UtftdhT5liANkcF8d+6fsGo
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr19733549pgi.101.1585679568901;
        Tue, 31 Mar 2020 11:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585679568; cv=none;
        d=google.com; s=arc-20160816;
        b=ZetHkIz6SRmM6TO0nYOcZG7v86WGdN8deIHe4htm/eG1gXm2H4vuKesInePXCcAx2L
         khIkK0R61/52jZ3Td25YedW/1BRwGgM4Ce9tEVjtjG5QU6ph7v3k8M6zYWbueYyI4NBR
         zPwh0qq2UlfssGotLnK8/mdM/unI0pXR9LIp5CEk2rbcrWQfdl9hw+F1o4F80ltBPTSA
         whnJ5FFJq4LQsP3exutyaiglaXqeUWAru3crtOnnDKBBBhf66DC/XsQ7xKe/qGsvOcrc
         DQeT3EADDL0daqBPbGdV0LeDFBOTx1fPoncfSY8NQHwSXLdCQDy0XsaKkW/jrr+eFpa4
         C0BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KXkTW7sSiB/h69i4dkSUWyfYiXMmQ+OOZbYR37VQQQo=;
        b=Uv3+dWvXioDQK2b7lEvfPMJqfAxiH5EHkcqhYd+Ca2ixPn4j93I4FIX+pv6fGvwN21
         B/tE+5vNqJ9F0ZixiT/rpeES/lxlc6wvv1GVik4NPkgIU9Tuuudbs0VQxZvk3dZaoWmP
         3Zvw5uTGXE5mKdZQb7BaD7kDvbdE8OO2zvQA5SiaauRdXpgArbEyjdAD5Q/EBmrIgruh
         5ba8a0fB64W6AWnJGJm/zrEgha/j+GKXD/xp2Ng28QA5o5ZrsSngC9LlauyASA2GBNdE
         VzWS2zfF15IxOUV5t+chpS8zlF9Rb/iESJ8+CoG/zqcVAzFKKqCU5d85MaL5Ow8QACsQ
         wCAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mdkih0Gn;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id c16si47665pgw.4.2020.03.31.11.32.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 11:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mdkih0Gn;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id o12so1436489pjs.2
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 11:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KXkTW7sSiB/h69i4dkSUWyfYiXMmQ+OOZbYR37VQQQo=;
        b=Mdkih0Gns19b4SssjjO3GqucHvA9LbyMYvgU096+W16PsBsXCmuhtLaNDEa/CyYa12
         JjNCYOcOrckAPUL+XtL2nLoXpCi1xW97DqDUcaeb5jwcRyFRqRJ6+BXHduBXzEZGOWpV
         9EanMT5CaP6KP5EkOyobn2aFG62Y3W+7zSeNPJqk22AhE0ZE7sIk9TZhl+dJulhWsJkp
         Fp+RY/PPd4NTJSuRJdm54fKypWUzTMf4s/CNNFER9v8qasRlMr6X46IBDoEsci7IS+97
         tjkipwJ+a9e0thQNVit0I1kmVeHOg0a0yiLJ7I7PIzAIjftGPEsBSjSEVm7RSIGSgmuK
         xwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KXkTW7sSiB/h69i4dkSUWyfYiXMmQ+OOZbYR37VQQQo=;
        b=lo+VDqI+7rkUPBHFab7lDjzTwnSBCr3tjV8Mg4n0v1d5gi/6J/QTuncAV+Hn5P/vak
         +HgLJgggYrbaGTklzwOP1dcXG2wAKmyOJhyZhV6f/NpaW4wlTklTxx4jMVcSPYnDMz1u
         cqFn/7TKT9lIBCoNw7scGfo380ngjSaEEeqvNe1xJ1GgPDBH1EJojc1SQ3KglS79COLl
         Do/3wfODU18ZLJpJb6eipyR/d3zafWfuMpIe35wpcnXJYeew/c7xzN87dddXTqfZQYuE
         dgF2vGW4ryVUJCAJEsuz9bqLQXgPpT9wtNNq7SI+nQ5WiNJohyGrRRoNzxjKADwvbxZ4
         9+dQ==
X-Gm-Message-State: AGi0PuaJp7fD2vBPGV6wX1pJKSgHHc8+XTFjQXP6wsTRMCeh1mZnPkKC
	3xS3ds0O6fNxvMCOVPYX8SM=
X-Received: by 2002:a17:902:9f8e:: with SMTP id g14mr7327061plq.289.1585679568482;
        Tue, 31 Mar 2020 11:32:48 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.231.91])
        by smtp.googlemail.com with ESMTPSA id x3sm12908494pfp.167.2020.03.31.11.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 11:32:47 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v2 0/3] staging: rtl8188eu: Resolve various warnings reported by checkpatch.pl
Date: Wed,  1 Apr 2020 00:01:58 +0530
Message-Id: <20200331183201.18386-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolves coding style and indentation issues reported by
checkpatch.pl
This patchset properly structures a multiline comment by adding "*" at
the start of every line of the comment and also breaks lines into
multiple lines to respect the 80 character width limit. Also, as
suggested by Stefano Brivio <sbrivio@redhat.com>, this patchset also
removes extra unnecessary parentheses to improve code readability, all
for the same file rtw_ap.c present under drivers/staging/rtl8188eu/core
directory.

Changes in v2:	
  -PATCH 1/3: No change
  -PATCH 2/3: Add curly brackets in conditional statements to improve
	      code readability and properly align the lines of a
	      function call as suggested by Stefano Brivio.
  -PATCH 3/3: Remove extra unnecessary parentheses to improve code
	      readability as suggested by Stefano Brivio
	      <sbrivio@redhat.com>

Soumyajit Deb (3):
  staging: rtl8188eu: Properly structure the multiline comment
  staging: rtl8188eu: Line over 80 characters
  staging: rtl8188eu: Remove unnecessary extra parentheses

 drivers/staging/rtl8188eu/core/rtw_ap.c | 91 ++++++++++++++++---------
 1 file changed, 57 insertions(+), 34 deletions(-)

-- 
2.17.1


