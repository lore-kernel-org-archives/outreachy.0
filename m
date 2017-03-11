X-GM-THRID: 6394528999032225792
X-Received: by 10.46.7.10 with SMTP id 10mr3885294ljh.1.1489235700582;
        Sat, 11 Mar 2017 04:35:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls1278607lja.48.gmail; Sat, 11 Mar 2017
 04:34:59 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr3226730lfg.13.1489235699777;
        Sat, 11 Mar 2017 04:34:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id y19si240174wmd.0.2017.03.11.04.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 04:34:59 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so2863522wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 04:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XEPVFh3URceKKZw17q2w4vgcCiL2JTy72jPdRjPuE7Q=;
        b=fl1o6v1UjoVxEmUUT4VJto8RRGX+juBN+s8Fd/ev/Gq0m2xithnKLXaWlfnUgcAezq
         IrYXgoq8695Wq8GTAanAMX/lB1HjHIzYyObBOkGnnwUtg6orleG01Lxf4U9tuzhxcuo9
         h4S8VJKbgBjoCmOGD8aywklosyBi6iClFi2P9lzV/I9Yddj3F0vxXA9L0DIxu+oEObYX
         VMxFnHkwj+OAsFT3T2wa4Y/8iBY+t2giA/UiKyhYuFPQJDxrRBW4fGN5WlMhHYq9yj8e
         itAPUIWoRjHQoMRZzJLvMGZN8AO9FxkSw6XrqmqfFp3CW5EFqt28o6afed89Lrs1ffvV
         X6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XEPVFh3URceKKZw17q2w4vgcCiL2JTy72jPdRjPuE7Q=;
        b=YnP1OLZI8v/m790Yt9G9Dylvb16DnAGB9lKQdr/nD2Axt1dyK9JuP0a/CGlRBvkFhg
         qKZKXfE3qpJ36D+5Pp/UJIl0Ko5yWMx0DwBE+HXTBD7LyDz2hPNnWsVXAmGp4oP0BwO9
         ksYNbBaG2uM6hD/NNthgHzqtU0UhiMUYIDZm3vHA48YQVcvjdrNa7D2ytglUOS3Ql5Ag
         n/iL/d27vZQGYKapuzGDeVK3pIHN8Vd4+A6vjJArzFxEIBu+9dkjFwd87NSBUB/dsk4/
         ccvD8xcyDY7td9bdTK100B29rx2Y5+lMLmkrwVlkNcNYceXE3r5eP4PCUGwTFroxph1r
         821A==
X-Gm-Message-State: AFeK/H1tKCI/rooec0/YBFSd8cIU8bAWzSVheJeqiOzszNoDV0OYTL90GZbITlUCVjnwKw==
X-Received: by 10.28.97.2 with SMTP id v2mr3215754wmb.3.1489235699622;
        Sat, 11 Mar 2017 04:34:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id u11sm17252324wrb.45.2017.03.11.04.34.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 04:34:58 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 0/3] Improve code readability
Date: Sat, 11 Mar 2017 14:33:57 +0200
Message-Id: <20170311123400.17274-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability in wilc_spi_read_int dunction in wilc_spi.c

Tamara Diaconita (3):
  staging: wilc1000: Declare variables at top of function
  staging: wilc1000: Correct name of variables
  staging: wilc1000: Remove unnecessary brackets

 drivers/staging/wilc1000/wilc_spi.c | 52 ++++++++++++++++---------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

-- 
Changes since v1:
*Change the patches order.
2.9.3


