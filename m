X-GM-THRID: 6670524587430641664
X-Received: by 2002:a9d:635a:: with SMTP id y26mr3110158otk.53.1553102533254;
        Wed, 20 Mar 2019 10:22:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls585482oia.8.gmail; Wed, 20 Mar
 2019 10:22:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyt8YoqyoM0wxt54LZgs4pgb7eU/lsug0CjJqaKmvCV0wtHAi+uUFu/K6sQ2IdcarjTVyVB
X-Received: by 2002:aca:c6c8:: with SMTP id w191mr3123372oif.24.1553102532256;
        Wed, 20 Mar 2019 10:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553102532; cv=none;
        d=google.com; s=arc-20160816;
        b=hoYeu/dvRL/KYbLYG/33gpSu1P5ql79wU3wUu72ik1QPciyG6ERf394dMYeBzf1xMp
         bI9ZvYceFxdGcN/7YmvGy83bMl2PBGJjDTwCkrNqgKoik6Xq2/F0K/niGls/v95jb56+
         5NKbhmJUGo0lfJPt5yUT+9M2Cx2Ygb2YnMcFx0iiAwb29Zmo9RG+/JyQ4CAjda2Y+9pf
         Lb4MZz9c0jtGwPx7mEGTVMKQtj00e5YW2WOmgoyELrzr+KpJzkqXd+2is0FBa7PP1+s8
         KQAZmY1+iq5HKBW987FdLfm9ewxqlVsX2PE9dBZ4/UBJC3uBjsLABg2tm66B2CTb7/0Y
         TEpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=iIXKJVY6JvwOC3jLnxorQeMqPuIPUovXj4Bcp8FilNk=;
        b=F//9fpX0GoUpjvDUl5ygR29zF6sefejYfnJJF/V2dzemD0Z/f0Rqj+ARY/kI1EZdlw
         5Qc8ow37jCl/Yk1Ue9j8JBQxOD3BdiHi4zS2z0TIyshrndLARFEWycCKj15CC0WEdKHW
         HXuFSiBpGG6yKP1FGklYONTSpuowU18VJsxk3JbbHbRyKkHf7ZwuiCZ35HWYVGZSLnJw
         Kcw1Wte0Cbo0RinnG0+JGmzXs5PapM63/S3LKstqQnNnQ+yCKS0sNPSZOMkNzQaO3Tvx
         2B+DKY4/AzsRSXQu4ER/R36vRJ6f1f9Er+UO4jHGVJrn6nutikvKYskjbstbWxPvI2CM
         jiCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dgh+8MQ5;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x134.google.com (mail-it1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id x4si220945otg.2.2019.03.20.10.22.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 10:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dgh+8MQ5;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x134.google.com with SMTP id m137so54490ita.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 10:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iIXKJVY6JvwOC3jLnxorQeMqPuIPUovXj4Bcp8FilNk=;
        b=dgh+8MQ5SUhMn0KOhHps/6boRl9RywOhngwaMTnXAO5J9P8z5t09DW9xDtfwLbKdaI
         x96/scEph9V7Ae5Bh9Kq4VdqOh6WdsqRHwcD4wsq31EpUqpQnQgQdHPAVYdnR73R0G+H
         g80oVH5G9VjwM0/UxaX9L7tDEhGj5QinQWg0fGwibWtKYJ6+aG9bKZKUHRFBuDFRojWD
         RW834e5gxSalrP2ceWqkWvDI5DyPb0LCsOSWxN46ml4NWu47qo/u6NN16syujlbmQZG+
         F0s9WC4fUriWRozGOygV410TaznaPcR8EvoH/Qi+dv35xaAdo4cwLoBgDFL3MX26ny3y
         YNew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iIXKJVY6JvwOC3jLnxorQeMqPuIPUovXj4Bcp8FilNk=;
        b=dMN4es4SqnGMEImmAlUJQS20sdftUK/3Yj2UnYqum7O9AZAT8H1lahG5O2hhvQhpdM
         KQ8QR9OK+kx3w9ZLaK77b7xY3HREes3zCPV+CtCzDhoWzfqz9gPP08ksxzHHhPeGNrOX
         VYRXK+x0Gkc2p7syUApIGVTbyAsH1JTmW26xqh0j0KLfNsgg8Tsni72/SIVlusEF2L8m
         foqakou0Q15xV9pJZUve9URGWnkGsfQOo5UiejUWcggspCC1/g8WeS6JZm9Z0dtaMx5r
         i8W95Vz/kAnl28VbGjlZbmvPLe+y3PismrQiWiCzc+Ss0J3PcjqGglpYExcVoHD/tCZz
         WdXQ==
X-Gm-Message-State: APjAAAUmN4NBahNbMxPhqOc3JNy6EP5DMlkup+FWSvyDhGm/xpIkaGTx
	koRflK9mfvpUrCGzrfbe7Fg/QRxhjNr8
X-Received: by 2002:a05:660c:750:: with SMTP id a16mr5700487itl.170.1553102531993;
        Wed, 20 Mar 2019 10:22:11 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from Test-Virtual-Machine.mshome.net (CPEac202e096223-CMac202e096220.cpe.net.cable.rogers.com. [99.244.27.167])
        by smtp.gmail.com with ESMTPSA id t24sm1054414ioi.66.2019.03.20.10.22.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 10:22:11 -0700 (PDT)
Received: by Test-Virtual-Machine.mshome.net (Postfix, from userid 1000)
	id 1942364657; Wed, 20 Mar 2019 13:22:10 -0400 (EDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: wlan-ng: malformed SPDX license and typo
Date: Wed, 20 Mar 2019 13:22:05 -0400
Message-Id: <cover.1553099252.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset corrects a malformed SPDX-License-Identifier
so that it conforms to the rest of the comment style in
the Linux Kernel. It also corrects a typo in one of the
comments for better readability.

Branden Bonaby (2):
  staging: wlan-ng: malformed SPDX-License-Identifier
  staging: wlan-ng: Correct typo in comment message

 drivers/staging/wlan-ng/hfa384x_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


