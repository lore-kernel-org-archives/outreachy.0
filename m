X-GM-THRID: 6668974051336126464
X-Received: by 2002:a5d:954c:: with SMTP id a12mr8846066ios.31.1552950764513;
        Mon, 18 Mar 2019 16:12:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:bdc1:: with SMTP id n184ls7076916iof.0.gmail; Mon, 18
 Mar 2019 16:12:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxy/vhVtYOFbcI/gNLa752fQKea+aOf6pZUqCwfs1e4NakUOXKZaGNJgPEpWdKoZouBEgoP
X-Received: by 2002:a5d:8141:: with SMTP id f1mr1801613ioo.9.1552950763677;
        Mon, 18 Mar 2019 16:12:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552950763; cv=none;
        d=google.com; s=arc-20160816;
        b=ET3NXYLI/ILf2q+h39WhuJH+se39rxwMAkE5RQ15DEfu6K7KIO02nfGYDEzs1CdgZt
         zMJW5HpnzzL8L88KDEQa3aSYr9/DZMaWgwaGknbfPdlh8dR1xpQwH1y9inYUNcluw21e
         xdIIMZCdc9dThw8lRYfxFsSyYTsyRciERc6t8Dv9FO6/K/AkcsOA/Z6KvvyTVbf2AiN9
         iWxqcBST8HoKsO/RBd769cEi+wsQ4F5rdiA/gb8e+Bi8zPoMCm3nYVGG7rB586feonvG
         xsjng+0VtHL2ooTtzbDfb4GTBatF6IeIaChPU8sMx6JzbwUuuS2zRgsRUlvZeT/UolG3
         MXCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AjyYDBlbDDagE5fiH9zeK3OtqwMX+Px+W5hjLQk7cBE=;
        b=m6hqIOv8h3n6EhWrBkUOlt0T5UZQ7u0kwPYPkrdfelbicVYAFU0eZV8Dk+i5JvZhcn
         T5WMNh7tp9dhe518qkJ2XS+JrQPRepu280Mu8SAT9SyniV943IIXXN0BuUofGjQpa2FP
         wEEyW9Xavom+8ROD73IglD2uEFrlin28/NPHQCbUsIFHSJpbepNfg+wHFdx/WznflxvU
         B+DRbGh7cxjIYvpvGhcXkSoGmxBghKoVK57xXFM/dkLbE/9ocYNrlPodLLtV7KknoozW
         zSCL0o4bsrZNFvwQ9gCuef+4Uh9+VKvDw9S0vAhezRrmh367WOVlEvOATZl7Fk2Sc5Eb
         Rs5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sJXkBB7T;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j2si673190iop.0.2019.03.18.16.12.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 16:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sJXkBB7T;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id c16so4623943otn.4
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 16:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AjyYDBlbDDagE5fiH9zeK3OtqwMX+Px+W5hjLQk7cBE=;
        b=sJXkBB7TTeaqACra73B0YHyYQ4jPiX9/6DqD9NHNKsgo+vzoOO2hX2RhnFRUdU8CVi
         9L0+gRN9RNBpwegP8kV0nf9fDcCjbdVBV73cselxtIofWz7c5svzyMAnCZ2rYh4SnpZQ
         7MaPXRWIrhbeizWKbATB/qIJrqMYNIVcL8WZtdvsktgGDFqTgPnWEtOmGNEek9MxA62a
         0meWkFXxG85YKo0Zy+g5YfDVJx2+kPNNlZ1bsyTRn91AYrAivZYYxZ67kjtlNt+aWBdq
         uvwB9B11bqm57qjW7HdhdQDgCVKf/n5WuCfILRorBBljmBR2UEPD4e9b7DAGR+bBygYI
         TuJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AjyYDBlbDDagE5fiH9zeK3OtqwMX+Px+W5hjLQk7cBE=;
        b=a6cKowYfVlEE2/ZB/hCn9quvB+rqDzJW3/Xi1JtHsXTSGzhMTuEUXbnIHkRUmgTPfd
         /YEzmZIVZOf9GpqN0Vv6fHYRJPZg7rPQBgXtZ2pIBMPAEd5PvMOKFXP1LBrs9ouzKBgY
         26QpzMqXnNZi2rXlZNumpWd29nKmnQhlnO3n23DB5yv/hK+n4474sTZDPSLU6b5BQIPU
         mPFGP1mr7++nz3gVKSRqIxIVmPGMGk3O0znzN/2j/PLDMWrcyBznKDK06vY5O083x6md
         BsFJ/fMFbU3d1LUdTd8YslJlMXQ/s4ODG48rdrXjAcqXhwxDeUVM73VWx/U3st1pCY09
         kXWQ==
X-Gm-Message-State: APjAAAUrpnqZSD5862C+DSjEZ/NJsPHuLfFIaj5nfTCLEbX51ozJPeLz
	YyIhHPYBn8b6rN4jfFwCJ2A=
X-Received: by 2002:a9d:4d07:: with SMTP id n7mr4160593otf.162.1552950763252;
        Mon, 18 Mar 2019 16:12:43 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:34ed:fd05:e76:6c04])
        by smtp.gmail.com with ESMTPSA id h6sm2818287otq.50.2019.03.18.16.12.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 16:12:42 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 0/4] Issue suggested by Coccinelle using ret.cocci
Date: Mon, 18 Mar 2019 18:12:32 -0500
Message-Id: <cover.1552950374.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does tasks as below: 
1) Remove unnecessary local variable in function
2) Change values to standard error codes in functions
3) Replace NULL comparison with !
4) Add missing NULL check for kmalloc

All these patches are relevant to an issue suggested by Coccinelle using
ret.cocci.

Madhumitha Prabakaran (4):
  Staging: rtl8723bs: Remove unnecessary local variable in function
  Staging: rtl8723bs: Change values to standard error codes in functions
  Staging: rtl8723bs: Replace NULL comparison with !
  Staging: rtl8723bs: Add missing NULL check for kmalloc

Changes in v3- 
1) Added one more patch 
2) Splitted the changes in two patches 
3) Modified a code in patch 2 and changed a commit log

 drivers/staging/rtl8723bs/core/rtw_cmd.c    | 16 ++++++++--------
 drivers/staging/rtl8723bs/os_dep/os_intfs.c |  4 ++--
 2 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.1


