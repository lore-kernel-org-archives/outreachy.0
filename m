X-GM-THRID: 6401819323480932352
X-Received: by 10.99.115.87 with SMTP id d23mr6510594pgn.112.1490539713921;
        Sun, 26 Mar 2017 07:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.98 with SMTP id 89ls8391436otb.22.gmail; Sun, 26 Mar
 2017 07:48:33 -0700 (PDT)
X-Received: by 10.237.36.21 with SMTP id r21mr5581328qtc.1.1490539713576;
        Sun, 26 Mar 2017 07:48:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1471004pfx.8.2017.03.26.07.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so5345259pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TJF/ey8SihwuAioqRL/FqPHbYpKj13tS/kHUG4K/WE0=;
        b=jMiluBJ1PGiEnDN2Snr6zQZn8NPiBmN7caaKOVbwM4BJQvt5mh15cmjwlRiYzVvL2j
         E9EHiH3xcWJMsYQZxCgoz5Zogum0nTxHNjL5m/MX61q+er09Q2kMGsu/Ph28dftaDfk6
         TqUakazkVjIvjG/UX6Qh1uZf/8bxPct3LOv6wG3veoWG4YAB557bmF77hXLKOMKf3Ol4
         0ZhMO0nKshYWHMNrIfF502AsI6EMJmSolQpF1eI9P6TmA3eb8bkXJXmbpOkApwcz/sHw
         WIcKmQMPqMPqnfyoZrSzFU6EIiDeS6w40HUyMnXmN08AYdNE8fk+KpZxjNeaoRcUAaty
         U+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TJF/ey8SihwuAioqRL/FqPHbYpKj13tS/kHUG4K/WE0=;
        b=AYPmEb2T1TSUwL5hXdLNAA9CO0YzJFUsseDHgmSLH9L93bCOXY9fmSxPLIJMr8Pn5C
         zdmhAfCrYdJKyA58L9zpWuRgjxPBghb9NUe/BLnpaXU6mWEkYOt3zw81xC3e/OKq2eAI
         otcv4+3Eaet72ZCff+Xh2ynWrFI3M1nALvXF2LTUMuOgyjeJHm8rr2be6VkA9rlyOOEv
         0djbV8S4A3ciUNc+pTb99gQPb3RnMYSc8XhSMipBFp4JF2jesPYelxXpTCeM7+bol08m
         ocKD3YbsgHm7kCKdoVyrSA7alKz0b9IpfwShNojwfdso9vZ+OKnNPbdjH6OYAHqbIonR
         ooMA==
X-Gm-Message-State: AFeK/H0s/Fh38NTj6CaKFILPbWBmeUYg5Yn51Qb/DGDQGzt/RINbHQAadN7Q042pW6Uufg==
X-Received: by 10.84.172.193 with SMTP id n59mr23373256plb.77.1490539713374;
        Sun, 26 Mar 2017 07:48:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id d4sm15520148pfb.104.2017.03.26.07.48.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:48:32 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/3] Fix multiple checkpatch issues
Date: Sun, 26 Mar 2017 20:18:12 +0530
Message-Id: <cover.1490539466.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This file fixes multiple checkpatch issues in pid_namespace.c file.

Gargi Sharma (3):
  kernel: pid_namespace: Remove return statement from void function
  kernel: pid_namespace: Fix line over 80 characters
  kernel: pid_namespace: Do not initialise statics to 0

 kernel/pid_namespace.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.7.4


