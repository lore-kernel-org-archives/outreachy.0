X-GM-THRID: 6525083396428791808
X-Received: by 10.202.168.193 with SMTP id r184mr3811193oie.64.1519323319007;
        Thu, 22 Feb 2018 10:15:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.6.129 with SMTP id 123ls538012oig.15.gmail; Thu, 22 Feb
 2018 10:15:17 -0800 (PST)
X-Google-Smtp-Source: AH8x225YPysOiqlh9GxFiCYXHczqVsakb0av8PY3iz8q6ww6JNMJwQOR+2Sm2wU5udiM/omxliYm
X-Received: by 10.202.87.14 with SMTP id l14mr3804709oib.100.1519323317961;
        Thu, 22 Feb 2018 10:15:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519323317; cv=none;
        d=google.com; s=arc-20160816;
        b=FTRi3B0lneKF4hHw/Ef5bV/96kD59gSSTl2SPDka09D76GaQeCpmM9VJum5ZOQ4Qqf
         hJ6k9SrtIGJKue0M2uyqtRtAM6rk/B9mLJ1E2Q0J8HmJWsaWt58a19/1rVvuVYkn4H0j
         y4ZMQAduzzCvTn4V9scHtCNF4FRxP6Y5QOwW9C3REI4cIm4HftwhfaHYf/iB1HCUCwXe
         IoOxj+lnUllVoqnJJdc0lJeTxg8YZwMHaxRkFv0HMq6bwFtSmKbwsT9Omt6Xp3THU4mA
         ZYrDhcZjCIBybIkKpaN8r25ra6masgsOCWdi+yNMSG5Et/RgMI3idCubmSuVubHom9hB
         s4vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=RRpEm23N4fl8VeAkDzPzBOV6SiIyDzvE6ahaEucpLDw=;
        b=FzE+PszsN5rAXtY67QWx0EP9nQVNbLyNibHkuzpU8lgFiZn3jwYzXCtj1YQrJw6mjf
         DW5hB8ezyFz3I8VSDk2l6Q2OV4xZbZk4WXhTTW+KZRSJaG5WXXStAwjI88tOb20tpdNG
         Ow2yleoHsQ5HhqopEmC/84sjD9mfD6Ef/GIPShx9WbhJqIO9hpicVQ2XVRkAEtoev/lh
         R6Fg4U9uS0Kl0UISic1Vwqx3roX+vnzR2FLwgbOaI86WC7GGXJXFPegdIEOEnR8hAnM/
         FEDdJTu8GT44HzE/ucweDSs1iSQ+O5Xe1N43dealpb58Ac/Ax21oOGKXwt5ntAyiBX5n
         XxIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kuX4kvfv;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id d67si50209otb.0.2018.02.22.10.15.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 10:15:17 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kuX4kvfv;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id v9-v6so1319983plp.12
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 10:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=RRpEm23N4fl8VeAkDzPzBOV6SiIyDzvE6ahaEucpLDw=;
        b=kuX4kvfvW2YmIyyYb3fkQUMljFmahzJ9NK63Eee2b3W5lqUP6qDVWBOXi4KtoSAU6T
         vDpBBI3qC++TE+hGeyTXgQ31FLRZ1c/6zwjHtXYqPQtKn8JklGSTF1o9v7wJwaeRP8h7
         vIieP1RU5WkkJluoazwU0Ul6/ysxclQo1gavigOT2OQfdCVDWqDpMTwV0FuohJjdVSG1
         zO0CsFHuDL+YF2qqPAZHv9V6H/aYr6WX4nKr6j0a5RIlB07+vkNa7NRFnhp49+AmRGAY
         DAT+W/qEC3vaM75k5MIOvG7bwgRBCPQtF3AnL+4A9AjZ5SP3yTuAorXIKVoV+iRsR6jY
         IV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RRpEm23N4fl8VeAkDzPzBOV6SiIyDzvE6ahaEucpLDw=;
        b=f6yEQKJuc9kxIhQlBVu7NX9p2jGDSxv66VTZrhH+HL4Fmzab4oJJ7ZMxb3xdmk6xp8
         azL/VkfIIKEAEZkbBINQ3orWRA2n+/AYs7Vblt3tCkhlrh+HL2ixmqTe1gbG4317XaNt
         PQ1QdJoHAZ1M/Ka7SuwsL8wViXHD6TXwp+dzC3xgbUe+Gsug0AexDSmQuaDJgo96Fl3q
         x6jT6Jw4w7dbpxf6qWs2l3aIzR6DGw9qoqYzl2Fr/nLVHeZQYIJVEJ1vkHG5782G85a9
         YOC5uw9uRlDoKIQW1RNorWDdBnAbl0HgebjAMJBaElT9O0QuewIJIcJLls+sXpnV84U2
         IFrg==
X-Gm-Message-State: APf1xPBaDUQbX61QlSUjPQgAC29255Q/gw+Skk4vUElFn+SLenB4NkHb
	/QzuSKdaQNOMvd3pp7QZ2zQ=
X-Received: by 2002:a17:902:d204:: with SMTP id t4-v6mr2677238ply.377.1519323317277;
        Thu, 22 Feb 2018 10:15:17 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id i1sm1506314pfi.116.2018.02.22.10.15.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Feb 2018 10:15:16 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v4 0/3] Cleanup in staging speakup driver
Date: Thu, 22 Feb 2018 10:15:08 -0800
Message-Id: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Do coding style cleanup to improve readability and maintainability.

Change in v2:
 - Change commit message to begin with a capital letter.
Change in v3:
 - Make the change description clearer.
Changes in v4:
 - Improve the change description.
 - Change commit message and subject line to remove typo.
No change in the code since v1.

Santha Meena Ramamoorthy (3):
  staging: speakup: add spaces around arithmetic operators
  staging: speakup: match alignment with open paranthesis
  staging: speakup: remove space after a cast

 drivers/staging/speakup/speakup_dtlk.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

-- 
2.7.4


