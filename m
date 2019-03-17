X-GM-THRID: 6669000631583244288
X-Received: by 2002:a02:3d7:: with SMTP id e84mr7425553jae.20.1552820510249;
        Sun, 17 Mar 2019 04:01:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls1863199jad.0.gmail; Sun, 17 Mar
 2019 04:01:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzu/b1NbaroKaNawL6lPwoVdttw4CkFTFKNM12dus2aX/g+cDUfRzilWV5Bc30we6GY48d6
X-Received: by 2002:a02:7342:: with SMTP id a2mr7512469jae.16.1552820509579;
        Sun, 17 Mar 2019 04:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820509; cv=none;
        d=google.com; s=arc-20160816;
        b=n/Y1DYsxsPu3v2PuyEAaSDIz8dk+Rfylek6h+81te3pgwXfxdF39eDUB2ZTriRfOVt
         PGMGT6RubaZjy0/2UVYrkJ6LPrbb8/qso13Lm34BdIZRNeWFKm70iShrKBkGT5VMUpKI
         7ViGlyuK24AsavQL0hwFeBxgta4JzyZliyIdWiq4m4QAJAhq4nRkCs9IzmfMlZ+1VX24
         EUgPbasS3y3ekEh/5+MI68X1pqaikZMUxGWTctOzCAIN3FWsthI1PSKzfcSqX+qf/3zb
         q9J9SSnjR3hYofjJ4T1UKHp7H6/1O0Fustb9dKeTV0d/ikEjlJizLMyR4ted2Sqju09Q
         0s5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=4CJddGh9uz4XQ0BEyKtHz+vObe6eNYqeaHjJgzHM89I=;
        b=gdbl+XGPI2fJxdRVhdvjBAoFAwOvXnwtkvEVc6Msf1G7jQAs/EaVam8jaonyO8KMMO
         DRguqawoNK56gUTS7hYkM9YzzNqq8YLVqlcUEQj9NG895duNw0i7vHcgvta1BUnvVm5p
         6miuzZWY4xy+dwSbiDzpF3RowB+geznFlQTdiZRJ6L6s0KqRg4fXhaLZJH+IRG9IDB17
         +gtOW2gzt+/XM8eB8ZamaFciFKD6ecUte1JvPk0VisyFGjE1w9IexzCorTQ/+Kaq1xVw
         ZQbqtKycheV952XbkmIdHpLRrOu2qlDTBnPZYQ1+XDX7H5NdS5vNcxf2tvmmHZbeCrAu
         eApg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r4CEH9sU;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id 65si717973itx.1.2019.03.17.04.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r4CEH9sU;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id r15so6560771pfn.9
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 04:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4CJddGh9uz4XQ0BEyKtHz+vObe6eNYqeaHjJgzHM89I=;
        b=r4CEH9sU+gVeftJ/Slqs5s+IiKZe0E3656/JYEnDZ4/oIfgYG+togBvG0mcOozV2/v
         8IvTxojLO+6gZYSwwUcQODUnG6SO6Ok/bdRTPDznFy+LL68KTer0h1A/XmoEYg6nZxJp
         H4j+DLcqoSBdbiVIJaAmI2GM+2bUWVauQ30x5sBaemFImlvkbpGGgP1dNSrMEdNJ10gQ
         903ofv7wvlP9exqsUAjdLR9868jxaWkXXgi1lsbR6WmZG3/mzJSVb0xVN6+0JZRD0Mmq
         orccB3qCcyxYoP5x0psNLkwjURSsiNMy0rYl5BVoQfeDT2pJaf6JneDOqcQKLQW21nCh
         iGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4CJddGh9uz4XQ0BEyKtHz+vObe6eNYqeaHjJgzHM89I=;
        b=m1BBCXiHekTYXmDKFcOMLss2Y5dbIiBCzEIIgnUFIegDsmz2bL7QKA3qF1fUNTHd5V
         gnPuTxJ06P6mIWrrybKXuhlMhPIAHE3wnuiV/+44qir8Kyv2kdUuN31VxrU3Xu2krFm/
         veXaibqxBEtJyjTX0eMiK4n4vogOw8OizSn2+yWC7KieogKz0uBw8rNalxHscoLdg7ze
         4j6mWl0vb7cY8FKwS4CK/Agf4nDpDw1XWcaVXdhpXmM/9FCmI64sAJFvVTFMNBaJxdng
         iLlB1M7D/9neZWRHDSDsYRUFLtoeXIjPFB1VodaIkhBZFjaTyJRYE9jrfTBG0f7qQ2T9
         r4zA==
X-Gm-Message-State: APjAAAW2fvcebR8KBdL2sdOfjh4T1ky4LqU9xYdLpIzWyhT5/UyuM4Zj
	0vfIb9AeF35LZVgjU1lRXMZKbnIiUg8=
X-Received: by 2002:a62:b40b:: with SMTP id h11mr13553988pfn.108.1552820508837;
        Sun, 17 Mar 2019 04:01:48 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id m20sm23347733pfj.142.2019.03.17.04.01.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:01:48 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6 0/2] Staging: mt7621-mmc: Remove ret.cocci warnings
Date: Sun, 17 Mar 2019 16:31:32 +0530
Message-Id: <20190317110134.5368-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series does the following:
[PATCH 1/2]:clears the ret.cocci warnings and removes unused locl
variables.
[PATCH 2/2]:Modifies the data type of the function for all possible
values.

v2:
 -dropped patch series and did all the changes in same patch as the
first patch introduced the problem.
-Commit log modified.

v3:
 PATCH[1/2] Commit log modified.
 PATCH[2/2] included to modify the data type of the function for all possible
values by maintaing the alignment of parenthesis.

v4:
 PATCH[2/2] commit log modified.

v5:
 PATCH[2/2] Subject line modified.

v6:
 PATCH[2/2] Subject line modified.

Bhanusree Pola (2):
  Staging: mt7621-mmc: Fix ret.cooci warnings
  Staging: mt7621-mmc: Modify the return type for all possible values

 drivers/staging/mt7621-mmc/sd.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

-- 
2.17.1


