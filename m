X-GM-THRID: 6528628385749401600
X-Received: by 10.28.228.139 with SMTP id b133mr673124wmh.14.1520154593658;
        Sun, 04 Mar 2018 01:09:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.205 with SMTP id m13ls3717013wrb.0.gmail; Sun, 04 Mar
 2018 01:09:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELte0YWgODhCuRFjPpimKR0m0H3VJk2mhba6KUKtUsybk4tuwmhNFLrK07QPF/8q11e64k/n
X-Received: by 10.223.169.234 with SMTP id b97mr960657wrd.8.1520154592793;
        Sun, 04 Mar 2018 01:09:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520154592; cv=none;
        d=google.com; s=arc-20160816;
        b=UJq7l2uSKiUOENB/Jl2s6Wgs4P1B1uu9OayOBm7FPyARnT/Unllx2M+ZIzxC7mF/HK
         u+6lZOkrUpysYqUibCBxgYK347LGDWyP4XDm/gw1ceAnsN29Bb/ZNWbxMg5ZwcEiAi3f
         ESpS2cSIQWhDAwskJDeJAr1Ln0Rjt/khPTo6jn5oZ8DEZFHkER/G2utuzmH65Hl+Y+ML
         4TTM96MGcMdq/w4c/rsZCbKk+QuEEu8fVcccOiLXYV0CY1DfO643EDXimNi2Hw5gm32Z
         e2uV0na/tLf8btCKoLiKICc0VDAZtkPZrtCcuG3PPWocP4WHI90k9eoRmSON0Q0VBpan
         vDgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=WHLmw7g0K3R/rrCz9fwkFzYMOfGUtl58w9FL32PW2M8=;
        b=sBmrA3jAZn2BTViL1HLtAcBzebqkVqAZZlUHOUunFrqnH0wjV7OC9+m36FirCXUTgg
         6bEveJLDP1NeJ3XKJIGkWC9pEKVicCABBetkbh33+a0/O162HSlPUEaPTIdWUTyo+Nme
         F8kJAqvloSOyAjbjXZZAuLMNMXl1mGUNsHfu7g84TYwmpEysmzRbRttI3/W4rgTS1Ckd
         GLSlL8lPuCeS75Uk6raZ20YL9IPEWbtWjGA55ngn5YaWE19m1vruGVOics7JK01La81I
         j/bx4HwDKH2pR1ar9QJeRzgp1K7rXGD4DHhw7UhNL7C7OveIubQGqwxYuXup5DwYCILf
         Gpow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oz33UzEc;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id a33si435439wrc.5.2018.03.04.01.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 01:09:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oz33UzEc;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id h21so10377231wmd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 01:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WHLmw7g0K3R/rrCz9fwkFzYMOfGUtl58w9FL32PW2M8=;
        b=oz33UzEcMM+p4VlXS3at6WUVW8ADy5yPh9CGia+1lMZowyhtyuMwXE9QzcUbWs66L4
         6nu0+QSJMnaLb1GzQLH2Mhq+0YfUrx5vwX8po04bKtGXdByKxaQmbYBUrBTtEs5/C2X2
         ugNK2jsWlNnsWUxrHzSUb7GeKc3Rg2OBoyUykW/V+uj65ymYrS+XzrrCD1TPhoG9EaZG
         +16NvM6bfz084P5qjoDVartbe1TjLT7b5FGJ9LhT+ih2CkiCtwVaDIAA0bbmxhWcEmAn
         C5InsD+OoEKeWMfCrnX2kJi0cDfZm4fu8Gk+JPi1RlyTXhZ4UAncPlL2WeDIUUvCwUVY
         jwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WHLmw7g0K3R/rrCz9fwkFzYMOfGUtl58w9FL32PW2M8=;
        b=aLi4q88oJYnpJkEZm5VdNT5seVd8+c5WajRql8UZ0FrJ9Jpqtyzujn/OmhM3V6b2BU
         uBKT3h1w3i0OOt1+djo23UC+EcZG8fHm/peD5QEioC7hB9igd0vNWeVSlXGyBGGYQedA
         WDY6lHkO0+E+0AmldAtg1zrCBSi450BwIv83dD78iiLmqITBqFOdQRL3DmZJ1AuFnu+G
         oJdYSmWTcYkY2Sgt7Lq+pJxaaQwQ2zlYt55BcqkLZZKzL7F3irEInIqvM4C2LUXSJRxW
         RNr3x5DKhQaVfUWoPJWscZJkGx6LGzcXn7WEO2KXeXLrO3zvuZ2uom02nKgycRuu7xbU
         5YMw==
X-Gm-Message-State: AElRT7F+UIqhoVzExexopqULGBYp8yzLQc3ZmQSuIZbBwjoZTILSRxLD
	7j1auZrRmMKIo8F+5cj/soM=
X-Received: by 10.28.202.26 with SMTP id a26mr5302546wmg.45.1520154592519;
        Sun, 04 Mar 2018 01:09:52 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id y1sm7871635wrh.80.2018.03.04.01.09.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 01:09:51 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Cleanup for staging lustre obdclass
Date: Sun,  4 Mar 2018 11:09:02 +0200
Message-Id: <cover.1520153895.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixes of issues found with checkpatch.pl for the lustre obdclass driver.

Changes in v2:
patch 1:
1. Revert moving the constant to the right side of comparisons
in order to keep the condition in the form of
'lower bound <= val && val <= upper bound'

2. Revert returning '!!ptr' instead of 'ptr != NULL' since this is
not part of an 'if' statement.

patches 2+3:
No Change.

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


