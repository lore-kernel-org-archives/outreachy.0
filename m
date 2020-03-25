X-GM-THRID: 6808114360858181632
X-Received: by 2002:a17:902:bccb:: with SMTP id o11mr2948351pls.281.1585137648714;
        Wed, 25 Mar 2020 05:00:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls1482205pge.4.gmail; Wed, 25 Mar
 2020 05:00:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvHCRnLo4DjHWDbSAw9pVvQRJ3o8mIgTT5t8if8sglywWUFdmUGk4rLJCBuN+XsRDLe5NVd
X-Received: by 2002:aa7:8696:: with SMTP id d22mr3068189pfo.54.1585137647101;
        Wed, 25 Mar 2020 05:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585137647; cv=none;
        d=google.com; s=arc-20160816;
        b=TxbxT/S1ImqbNKOxD5oxCbSTBIgFZ/woY5jseqnXXpoOtsxUoVQH4oCU2Ef/S0N5nr
         sQ24/MwVPNIlslcBOjzJlMvCsKuZV/ZjD5g0ymQWGQEw60qvlVvhKefczHLQXrOdNpHj
         BuK8x28Monhc13DoSDfPq1X7TAD9R6hRhiFrcvT9G7GAnyphaXATShWR3B0dUMLKrZ9N
         rmHeIXVPRy8inzhDq0MNNQ3wBreH5qQ1j/XUrdE9ExA682nGv41ldQOtrDKGF/z0WZsx
         tdHytaO8/eC3ytzWne3SRGv6YQ+dMKSRvEnzjWGOPB5nqa2FexbVdHuwC5S4CAhBFXgx
         MUbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vZqtkJhBKGl9veqgrd1b6XfzrtfDdu4i+4g9S6HDGoA=;
        b=mJQCf2nUHicPFkIme0ZNAA7mwAZXl14FIIKg1vZituk/4nRTzcIWjirwkKlPVqxudj
         hNm6Ehnemi2cbFnoeapvfNim31Y5+vIQXqszQqCSqnxq3xiEfNFIofODGcAyCIHajE2D
         Yhrb+mHJ63s1yrGPk4E76PkwFtn+oWYyWdpKxKIdnwuWwoeElNJlU/QGABoAahU6u0b8
         PWyMWjMBF6GzEKb8uIIdu4oAZ42WFp7wfBbHlGIfghjjFEi3Dw+uOgetPdxUI26jlCre
         Zc3IMhY3erlJ9uTtg5zy/CXLFJSoxhDZ/iVm0jxk+zS5IHzguxlEe84vuMksvFhrqp8h
         BKrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nTknNiKn;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id r76si1176624pfr.2.2020.03.25.05.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nTknNiKn;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id o12so925204pjs.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 05:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vZqtkJhBKGl9veqgrd1b6XfzrtfDdu4i+4g9S6HDGoA=;
        b=nTknNiKnJ0hzMPR/tM5i9u8oKvnUDbQS7y6WYvyVbbt1L4VCu/1OGJ0ouLnvhZIGvX
         JEnBhwfwf4gl0gCW2PJpXhYwgILbL7kTSDPrwZhuqTTEaLzvgEGUeTZI5VIENtXz3H9Z
         PgbPigxggOIAqYNJ4bRudm+lee11ZGxGAjuBaF+mJG87ce00AEix1name7I8QlQB+R6G
         dZWSTVGrvdARyuR9lFeCaUxM1oTnD4FX1Foa7/8fkg3pBHOFxY8g6c76Qq2AqimekYVq
         yyTsjcr/bNR3/VrVIM0efYcGXnWIpylHwNs5yyzSydeHAxyqvSZ/dFDgm3gyNtBDgTAo
         DVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vZqtkJhBKGl9veqgrd1b6XfzrtfDdu4i+4g9S6HDGoA=;
        b=Hemc5OJsw8Gs93n+PlPa6b255rHtBrqqRQKQY4rqEhslbX13+Ag3fC7plNZAssdv3J
         SX6kP8OR1nsWb3ncwJd6Od9ukZ6V89T4tnUznK/dco0CN1i4H3D6zFJOdg6TFLdQmkwG
         Ft/X5Z9Tib0X/HrFtsQp9fXJUIf4iijZCxAhacMtBWf3SZrwqMJpk0Kc+mgFn8Weiiut
         DeKU4hIXWI3/qi8gkab5tagiggCJV+jsVjmDw2CB5Kzvm1ULPX7U41uEAxCdEJ/7LtUZ
         Luy6A7XxgUqY+a4LdSGcyIcAtGw7MmLZ2x0Y2kTo7JKHEDAIW2Jjevwe1RDwkTW0TZZ2
         61kA==
X-Gm-Message-State: ANhLgQ0TgBMb57eX8s7RYT4MmZHRQ3cHC3W/PS/kbC0mwn1WW8nLvBKE
	rs5VxkVTpLrTa2pQopZWyVuauGLoe84IFA==
X-Received: by 2002:a17:902:6b07:: with SMTP id o7mr2815503plk.141.1585137646388;
        Wed, 25 Mar 2020 05:00:46 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.210.159])
        by smtp.googlemail.com with ESMTPSA id t85sm2792270pgb.1.2020.03.25.05.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 05:00:45 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH] staging: hp100: Add space between while keyword and open parenthesis
Date: Wed, 25 Mar 2020 17:29:56 +0530
Message-Id: <20200325115956.37126-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space between while keyword and open parenthesis "(" in the do while
statement to improve code readability and to adhere to the Linux Kernel
coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 926d0b51ddb2..ac3ad4d30d2b 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2990,7 +2990,7 @@ static void hp100_isa_cleanup(void)
 }
 #else
 #define hp100_isa_init()	(0)
-#define hp100_isa_cleanup()	do { } while(0)
+#define hp100_isa_cleanup()	do { } while (0)
 #endif
 
 static int __init hp100_module_init(void)
-- 
2.17.1


