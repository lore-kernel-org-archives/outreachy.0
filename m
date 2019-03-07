X-GM-THRID: 6665612621009387520
X-Received: by 2002:a2e:800a:: with SMTP id j10mr635862ljg.11.1551958876023;
        Thu, 07 Mar 2019 03:41:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5b42:: with SMTP id p63ls659498ljb.0.gmail; Thu, 07 Mar
 2019 03:41:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqxWMI1b9cXhnQ9K72m8uD1+cw4hR/Hr0jl7u4z4feNh/cZ9soOc47u8LEPRAHaS9L76Zy/s
X-Received: by 2002:a2e:5d5a:: with SMTP id r87mr602252ljb.3.1551958874804;
        Thu, 07 Mar 2019 03:41:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551958874; cv=none;
        d=google.com; s=arc-20160816;
        b=dhBLye+/AYOIzGj6OeYjKSITEyEF7MRYK0b21ZvSQjqxNTlSwJUJWMXnpFarfcUGug
         yNngRGHzP88C3Yeu8LrhyIXOoXaJBIKbrsIwfDfX8hh9VHPqpM7Ep5+UKjZNvfvGXqIC
         vhFDZXKh1MyfY+nItUiLoTDw5qwNFKSAwv/70WmitbntbfRTR8Uh6x62W7dKXkko3fF9
         wMT3pTwoA+M5fjimzAB3vx9k6hVaYB5QDH7gcHYZadna280INbzV9U9ZxG69Yrg8xXft
         R11wDUiiO8kQzIH7iAHpMxBtE6ClqBY+WzP9xXb1GIh6nkBlUS+b/RosFQr+T3I5CxRm
         QktA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=l/OApj1sPVmqfNoik2wy8NPwEqu2UX4H1IRrEkoo+/U=;
        b=NIXsIYOEg0lNVzRej9e4mRV3QRyCC+3vq7bBMOKce2CMIc8NyZDZzkM+ROUH3kc/ZY
         tOhodJqqSd/3KbsME1SNt7aDa661bLpPk6e4KVwrL5JjYXGhUudE5Z3nD9+y+dnuJ/Mb
         kHu1PAsIYwdGgtpp1Jn3t7u8XbIe2/unISECoYnogjqyJM3PvnKz8BZbaet5MsEjPHGS
         cLVcGcrFJyw9ORfVisAcnivIXY04DP4V0oBCdndZmYSQmjCjv1oeNk7yrCgCFfY6U7lO
         AHgqcI5WgGs1ctRN9dRHBb9aFhghdDCYRFoRG8m8AAIjkEL592uT/feew/4DWjkobJDi
         vGUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whxsfxkg;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id n21si204514lfl.2.2019.03.07.03.41.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 03:41:14 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whxsfxkg;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id w17so17024629wrn.12
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 03:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=l/OApj1sPVmqfNoik2wy8NPwEqu2UX4H1IRrEkoo+/U=;
        b=Whxsfxkg1MVbd/hyz4cdFwFf796oGxPeqBn5dlNEgvHYoZz8tJA1lE1iYZ4PoAcPE7
         SN7YKMfHqlspanSvUQCkY28NSRo2TFKcO/Fua9caGGVp5Qvr7AVnEGVH44p3X4+PoMSs
         wKqeApm6RGJp9MyTENPScSXTRFWf4fNa0dBRuyIlQ+DAINR9D/Zw11bQZL04TyaLfmzi
         4vB1RiF/bx5vwHpI+IWe5J3XkXM4S/XolhlTynhmILPpZ5bEMas7ejqBCAWT8mzFOErO
         h17y8l4OxXh4xfPOzYIDLuxdZvElYYIluNTCghgB/eR0QEffObpX7Ry0kdhik5GzKH7i
         QHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=l/OApj1sPVmqfNoik2wy8NPwEqu2UX4H1IRrEkoo+/U=;
        b=jKAepisYtopUCcJodSrErwY8UowhKRTT3EOD1rpnbaOz8WogFjBQkTq21Lk5RIma1s
         RcdXiBiSqWAoWsi9/5sh1eBd2Jy287nGYRTLZpNok7YjnHt/p5+XiyW5NQHU+4UdV7Nz
         Ekbyietsadp3WDKYllCrfiMLqF/xG3ExfhFYbvAwGg8ggbAzhyHaZUG/M+YBXNLSQNLr
         TS7y0aA8d/A0X1KEDEcSlQf8esCw7XWMD2dW+cOAyk4Kk75uR2m73rOVzPllS1q+lkCX
         sBA7tsq8uYbvGienHDndayYC+fO4PxBtH0q4Nc8ucQnAyVYhj761U5ZfvqP1yR9A0qeJ
         SgUQ==
X-Gm-Message-State: APjAAAXz4afV3hJsyRzVp5dzeZXiKlikSXhiGd4gcN+PrBmdot48BmIF
	IwHW8GojSQXJwmfqaIm5S5U=
X-Received: by 2002:a5d:4945:: with SMTP id r5mr6262676wrs.295.1551958874472;
        Thu, 07 Mar 2019 03:41:14 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id v10sm7019164wrn.26.2019.03.07.03.41.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 03:41:13 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH 0/3] staging: media: davinci_vpfe: Fix various warnings
Date: Thu,  7 Mar 2019 13:41:11 +0200
Message-Id: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

This series fix the following warnings:
-Fix comparison to NULL
-Change multiple line dereference into a single line
-Fix alignment warnings

Daniela Mormocea (3):
  Fix comparison to NULL
  Fix multiple line dereference
  Fix alignment issues

 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 23 +++++++++++-----------
 1 file changed, 11 insertions(+), 12 deletions(-)

-- 
2.7.4


