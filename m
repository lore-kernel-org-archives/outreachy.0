X-GM-THRID: 6525083396428791808
X-Received: by 10.200.25.81 with SMTP id g17mr3168999qtk.13.1519239367768;
        Wed, 21 Feb 2018 10:56:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.6.11 with SMTP id d11ls1147689qth.14.gmail; Wed, 21 Feb
 2018 10:56:06 -0800 (PST)
X-Google-Smtp-Source: AH8x225vaqKG9VTupvtARDFse3fqKs3wExdm5Gn2fGsNRg4RgBb0ZFN04uooLyCYeV71TWGYu1SK
X-Received: by 10.200.70.2 with SMTP id p2mr2972703qtn.34.1519239366387;
        Wed, 21 Feb 2018 10:56:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519239366; cv=none;
        d=google.com; s=arc-20160816;
        b=UPj7NKVU/OhtxtMsrrT8Dds90I2vVcjRNJCTkI372Te9nB8p9DUmqLE3yrvidtebvi
         jG+JuZ1PiKwqszDh6sp7bEZcnQhDHxbqjOqU7Wj80bmEpnoydOwYs6yWWjD2+3Jsuz6d
         IqpaatP+vZ0o+LieY3LYNeZ2UCYa61RjCWhtAx2ydHwDsd+/bNhmkUKSqK/42ZP+oXhR
         TI8CMC2LzjdoiCVgozzFkPDNLbmYVo6SLWhaouR7DHKlK8uVdDn4XNP3wzRXKbf/1MK5
         w2OPW8P2XW2Qwoj+qWP9BnwRyF0v+FouWUCfjFSPu5DXy0/HV5TFM+PWgbCB/lUYqmNU
         7cUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=WJigobLL4n8zLxgu3LqUai9UymDchjLF/g7ayhxaHVM=;
        b=efuHJppqMoiGdYAj3e7sQaZbVSwbBfye7oUgcMTQGpkfRMYhA7k5P+KLp90NYHN1cm
         RdPIWdn3u6f7X20v9/3bNAOfvdv9/jMZGWlOm69lFP/0qqaYU/ofQ8gseIMuqV3YqfWP
         wSnuwm5YJauu9Addk5FBvLVou6VEuNINLfqPTADN2lOjJJu4lYQbER1aZE9ZcmusQJ1f
         1CK0gUKgE3W+IkP2Qn985t9KRQa/88hNVVevr12yiEUHM4InTRdUJK6led731l0NJT/h
         39uYcl9fH68nxAYM+Zl+k6aSDsTt2x3OFvNxrepBl7WP94xlO1Zz5sKT207520T/vuGU
         erLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QQJCzcLb;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id o5si59777qke.2.2018.02.21.10.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 10:56:06 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QQJCzcLb;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g12so1006348pgs.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 10:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WJigobLL4n8zLxgu3LqUai9UymDchjLF/g7ayhxaHVM=;
        b=QQJCzcLbL+YpPMLln5emARLnErr7rrzFXrlVDxlaaxby27vF/EDCN0BlX/CDL7Qd5p
         uXbCuE9Q3UhIvHmkE9GiNe9WlejS6SIwNLBWIlZrUWTmtvUF2yUwuA950Zvs0D++UX7X
         51V5U1E3tZVqjoju/BysQ2/7Dr7sE4CuJcJHAlIgGw2z6fIHfLTktkYukqMkWm/eHfbp
         HJyiJL6LsrAcEfvG5GXMWDlb8aW4cJAb3vEMPa9oLx8WPoNh64HqdiyYxR/ybZDXNqgF
         SejLTSmrLg6pmm33p+X6vScv62MXKkR4GWY5M8DkE1jUFSMIbrwBARY6yDj2GeTgULVd
         KyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WJigobLL4n8zLxgu3LqUai9UymDchjLF/g7ayhxaHVM=;
        b=arCyTyWbTy4ZFn67tAeAHEHa7kmvrhKC56atPrDUKNwN5NP3lWEAlyKvdbp9exHQvD
         5dZrNPk2Zj1GIwn0Aph4yPwYIvsbRF1oDN7hajxAFTJbkDuQ4dol8QRfpAp3EJ8S9e45
         8atZ6fo2hJ+QVCoYcOlKIS2zA1yRmOtAJJ0G+DMw02SRWsTK4cAlOHRLZFIvgbscgFBL
         NJog79kjh9uGWAMLw8kqJk8/5MUqOypeHTVKDK+gFkLKXSvn09xktzQOv/ggsGWqyhGx
         rV3PYGB2w+MXu6Mpwal2VqWiZRkxlngNrb29o/TfEdZZ7lzGCEqD3LR9GzXyCw6QfcPo
         z67A==
X-Gm-Message-State: APf1xPC06SzbdUQ9/bECdCJryzNWxz3oRbwYkATQpXvlTkwMQrU+yZNG
	CbQLyKNufSagGZnyT3Sp7DGRr1B6
X-Received: by 10.99.113.85 with SMTP id b21mr3553013pgn.305.1519239365565;
        Wed, 21 Feb 2018 10:56:05 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id r29sm998352pfj.99.2018.02.21.10.56.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 10:56:04 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH 0/3] Cleanup in staging speakup driver
Date: Wed, 21 Feb 2018 10:55:54 -0800
Message-Id: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Do coding style cleanup to improve readability and maintainability.

Santha Meena Ramamoorthy (3):
  staging: speakup: add spaces around arithmetic operators
  staging: speakup: match alignment with open paranthesis
  staging: speakup: remove space after a cast

 drivers/staging/speakup/speakup_dtlk.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

-- 
2.7.4


