X-GM-THRID: 6525083396428791808
X-Received: by 10.99.102.4 with SMTP id a4mr1000498pgc.28.1519248831101;
        Wed, 21 Feb 2018 13:33:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.56.12 with SMTP id f12ls496657pga.16.gmail; Wed, 21 Feb
 2018 13:33:49 -0800 (PST)
X-Google-Smtp-Source: AH8x225p9QqxFKMB0QE6GzGW+d0wt8HxQaazXqUgKhH9pO17HiaCA3OGwtxOi3msZRt4UY4vz1U3
X-Received: by 10.101.99.213 with SMTP id n21mr1025877pgv.14.1519248829963;
        Wed, 21 Feb 2018 13:33:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519248829; cv=none;
        d=google.com; s=arc-20160816;
        b=mmBzE+8R4VE8Pjj7A7YulVAA9FRMnkyXQePgQNdcUqIRxHW5H96ZcfTOsES2hJeE2H
         TqpPJb86iBkEWv58fEzl1fnoWwmj0VBZZVVPqQ+9a92Br4/HiHUXMoFa53Xh7lWJE2qq
         h5D0A+AC37FVZwuTvuXguftG+6wlmwmmnc4nJoOuK0jq/lxSX0DU2XUUgr/3f8VJeXtP
         AedY+J0TD4Dlg0l+7pzb2IP9L0IFgz4ZBRVFymuhwrcXXvbD05zYLjUv+yuHRwpzay+I
         rxdoTu20ViL4lRnbRGeL84ffQm9tZpKdULoSi4Baj4OVQ346Cim3+HknHRaHz87xug7m
         eehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=o6T0pWd7gXL+Wqvtc1tvdfw2Er+1Fx/xPbNJp7k7wGw=;
        b=0XTYZWndMOFAXHJOQylPBckc6naikG62zgBwtTMCCimBfjYmnh4CTA5BeoopapAgUM
         cyYesolsr44tZQ/NS06IEzKSyEeYKs1I7N1e227a1DtdMpGfR0eIy/O9kyDb1XdRyudH
         E9MpXuVIjLLoW15mVYTCCHoBQzDL+hjuoJHkTvP4ma0NpNXe7g7pMOZMTxtIe2QwGeRw
         jEX83X7qyJlND0/BB84GDqo5gUfaR++3mhVgP1L+jN2kujah0ToYGQ5fnjJ28+Nr3nq1
         9/1HNIA85fBHNb09bBW6s0GDu26AEXZuGhe5umpPVhHw/Z2LqiZ9Xe716ngalULCfSNm
         2INg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmt7mrcC;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x229.google.com (mail-pg0-x229.google.com. [2607:f8b0:400e:c05::229])
        by gmr-mx.google.com with ESMTPS id w4-v6si806271plp.4.2018.02.21.13.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) client-ip=2607:f8b0:400e:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmt7mrcC;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x229.google.com with SMTP id l4so1161582pgp.11
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=o6T0pWd7gXL+Wqvtc1tvdfw2Er+1Fx/xPbNJp7k7wGw=;
        b=kmt7mrcCzRsjNZSzMH9PUFFkxRhljBYsbT11os+/Cr7Ny8ufrTpDdChaR24Kpz7HBS
         ihdUPS2RACsDnJyq3lBPXmMFDzKkiYDnnwqBHhU8AABqaLsaK22cnJndmifsxaBVPGYX
         tl22WWnaA0Gzy6E5YBfyRjZwrLys3EkZCaEBxu5XsT+AmuMadZRkWs66W3viyRhEvwgw
         z6vQDr4us5txkbBxyS/Fk6G7h2BZNx5YkArrTcx0I4putHJliTBaeYHFj3dFKUWxoNci
         fr7z2JAba5aFO6zh268/ierKqyS4JHj33wCfGIdz1mfyNf6q+23MNFfWN9spMEKk226n
         Fyxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o6T0pWd7gXL+Wqvtc1tvdfw2Er+1Fx/xPbNJp7k7wGw=;
        b=GHwg5dh9yuVUSiHQW6eARsld1+Ki8diaHkhXyMTL2Mu4lz92ejQhIudnZHYrcHfqW0
         JLa7CrUPsPg6Y8A3E+SwaKcYK5FNAYEnCJYRkdS2qT5HR5aE9Q84AKOjknCSBmkSuf/q
         pYCUkQa7hw2aNvpJ4dj4/caNwZEAMkxNlzi7nUUsscI6O4ULZ7d+T7lOp98i9zglRuZq
         T1P0c9wRcIOrUuVhlrxa9xFOKNx0bkY+dDkV/eclrRNGc0V84BMDaJsC1O97eDGJfL+y
         u8FXyoAgy+zrLDLbCH4LxpdbM8Uoydt93TOSdFrGJ9mEZL14BAgE58MS/GThWXWaRrCE
         5mig==
X-Gm-Message-State: APf1xPAYdrv6/pmhhaTVknmI7C/7Lxxpg7GjyigxiFHNz8+n3FmrrG/P
	WzuRVxUOUOrOqiMS34eRsrs=
X-Received: by 10.98.238.2 with SMTP id e2mr4635806pfi.206.1519248829647;
        Wed, 21 Feb 2018 13:33:49 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id n81sm9295573pfk.152.2018.02.21.13.33.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 13:33:48 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v3 0/3] Cleanup in staging speakup driver
Date: Wed, 21 Feb 2018 13:33:40 -0800
Message-Id: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Do coding style cleanup to improve readability and maintainability.

Changes since v3:
 - Change commit message to begin with capital letter.
 - Indicate what has been changed with versions in all patches.

Santha Meena Ramamoorthy (3):
  staging: speakup: add spaces around arithmetic operators
  staging: speakup: match alignment with open paranthesis
  staging: speakup: remove space after a cast

 drivers/staging/speakup/speakup_dtlk.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

-- 
2.7.4


