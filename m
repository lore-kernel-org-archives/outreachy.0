X-GM-THRID: 6660473635314073600
X-Received: by 2002:a37:a282:: with SMTP id l124mr1415135qke.39.1550818983773;
        Thu, 21 Feb 2019 23:03:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d1f8:: with SMTP id k53ls2247976qvh.0.gmail; Thu, 21 Feb
 2019 23:03:03 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYLFpjtqFRqMESdjLpE5Cxp9Lvb/oLwy/MaTX9XJyVbv92fB7RrfJaU37IBDg6f66yKZbYI
X-Received: by 2002:a0c:8935:: with SMTP id 50mr1416068qvp.7.1550818983262;
        Thu, 21 Feb 2019 23:03:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550818983; cv=none;
        d=google.com; s=arc-20160816;
        b=Al7QDQXr/FrSRtwyQua3BLBrKM85si1tf7yyFcB6VKtG03feUYu6k6WqZSW2hK4tyT
         /7zhq4b0vKYcJ/eoXrO8Oq4+Oq9c+6zBMfOUba9fUW6sU6CJuIK9s4ncIR8+bJ7FVrM+
         C14c07MkyZF8CYcii1ULDvU491MUsaUmwTXlyiE8R2i+6BuD/4bDOGiaONL0CtafFV/4
         DNgFZrQLijkhY2rAU4eAHBiMnf8eUsYsfqLsPe0Seek7fhceeg9s9o7wfb2tDqhnwWGF
         JG0AC3oynI1TGfMdEzmqLJaFiGQGPAcq9KkqR3vNaESfv4QWKaIOCgLCBYUU+9gqlkDR
         NmVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uzdvNfAq0VnOFeVGky4VrU2MUUCBTsRBezFpWHbqqww=;
        b=F6NZ+pdmV7FXerjS9q10GUQpi5xtqF3/h9UcLpB1RP/SgViAQc7n6pgLGxD2//glvd
         kID9SeyqXnK1+39TxmE0HBsnQ8KhSv3+8qZnTTP/DT9c3CEqdziT2acLWornteYRyoRS
         MpN/P70VPPmVaKD+fsPhGRhOsvzGo3PfDrs4G14DQlp6IohWrM+wnUmZNSCt2XmPdO/d
         spoduzHvpIo6BXzMCb4SRbFaJdB+kJvpA/42GDYNNyycF/mTPbdSGSqUQienJxDWtEOY
         6m/s2UGlili+FKl09oMdw4mxKQMSNdgFwEjYPYfhh2XPU1tALOEQ7ZW6+RfiY0JBXKBY
         3rfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMGTgNfz;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g23si41487qtg.4.2019.02.21.23.03.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:03:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMGTgNfz;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 196so664961pgf.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 23:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uzdvNfAq0VnOFeVGky4VrU2MUUCBTsRBezFpWHbqqww=;
        b=LMGTgNfzTAbRloGsFwiHopbIR75X3GzfipccITVgcCOO+OVXugDuU8z/SQYYAxpeZe
         ZGBDfreZfmO8GecDpibSnpgQh0ac9zyYI1R/sHksi+06bKvcZtsz2epXck5NngDlqKNN
         FjXbfhltcde3v3zY25OhJMMp84WTeIKIUaxq6OOqTto3716B0BwP3Vy5wyYME8c/TrL6
         0YT9mlxnRgaJDga7+cDJ2BVZ9VDu1OqzJtDXVqSCfoSblUVLNpJdc3eJ8xJcNnhWfZ9P
         BTFE/BFIoYKJ8RsYZmZB4Wndbll8WOAYAx4K6N0fnGNcRxs+ittMMh6MZzjuKUJXRp7M
         rKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uzdvNfAq0VnOFeVGky4VrU2MUUCBTsRBezFpWHbqqww=;
        b=Ad4lw2OHd7SYZC338Dx2194k8gDhmRfCJyoHEQ/ggSokHEpGVAd4cxo52yHn98458I
         iF2/OHbLT9TwfBAkoXMTwWDhIyCmOrIY9zP7GIeCm1d/muxWX5FDcqvaGUdoaikcDj4b
         c/8DfXy5R2dqN+DieuHzgl5sWbQ0z6nJVjeXr6Gk4kpm+qOk+9LEgrKuKflfrR1rxTgP
         MJEs9BawuFgKZzPIwUCx8GDNBqBRHyoH/gGYtLhDueTh/noa7fcX6tu5Mqra2r03xYPy
         6UNmPQfGKmQL3suzPmRLZJxTH+/O9xDO8MrFt/QInsg7CAQePZ4hEMnEEl1Zwl8QpFxP
         OijA==
X-Gm-Message-State: AHQUAuZ8tGuUZBmKYDsdHVe0XwwR2tTKmS8o2Gzqy3ciWepPAfuacmR8
	n/+a8vJ2qbOXMUl5kB6GTXJAS3awWI8=
X-Received: by 2002:a62:b286:: with SMTP id z6mr2747956pfl.106.1550818982189;
        Thu, 21 Feb 2019 23:03:02 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id n1sm1617743pfi.123.2019.02.21.23.03.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:03:01 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH 0/2] Staging: fbtft: Fix Various Checkpatch issues
Date: Fri, 22 Feb 2019 12:32:22 +0530
Message-Id: <20190222070224.3963-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This series cleans the following checkpatch.pl issues:

CHECK: Extra blank line not required before closing brace '}'
WARNING:line over 80 characters

Bhanusree Pola (2):
  Staging: fbtft: Extra blank line not required before '}'
  Staging: fbtft: Fix line over 80 characters

 drivers/staging/fbtft/fbtft-core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

-- 
2.17.1


