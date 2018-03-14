X-GM-THRID: 6532869391138160640
X-Received: by 10.200.6.140 with SMTP id f12mr3691100qth.16.1521052185786;
        Wed, 14 Mar 2018 11:29:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.68.10 with SMTP id j10ls1406551qtn.6.gmail; Wed, 14 Mar
 2018 11:29:45 -0700 (PDT)
X-Google-Smtp-Source: AG47ELug16LQ4h1Odl5hQsvbI0E8e9EG6DKFAWSzbgtLY8YnBk4j5cOxf3tbf2+lzJSY6IlSBPUq
X-Received: by 10.200.14.129 with SMTP id v1mr3875885qti.14.1521052185039;
        Wed, 14 Mar 2018 11:29:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521052185; cv=none;
        d=google.com; s=arc-20160816;
        b=ej8FCtcPjV2hkfJqck+suYIFPfIiEq4q4ApVsq3vLdIjlqptChjK46UVDbZlYWmGZU
         NDkPnVR4cn9j304Es7dveNBoQ81oWS0MCe8TP8zytZ2fOM8bJnQRlv0H8KooZdoaJFX5
         V96w0X7O4+csZp9NCgrZRd64w84jYb3sTGAy2DEkyNiICTU+yrRMc1dPkxIhkDlo4hJi
         azbRe6TXFwZxDpDtHD0zexEhOfMOVW7A5hLHtDrlXVCtaKdTm3RRc6Q274T1DjML/1D0
         P6NX0+YKKo3grQQW7bw+fNhd2wMchqT2WbSdjm2c7YYidSKcOY0g3mjy0dYNXa6XksUM
         Aeog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ufbwT8EnWgSCIPXRva6LBKsNllFTPn824G1rSMMmMuw=;
        b=M47/50vjtfuco4pYwVRzObvCOG9tdxHrj4hbsNxEaEHHE+kKbPSXKIaqu4hkGqWxRh
         wGKCktXX+kSrcC+Ue6WYFdNET+dqioEgTWMFWXESOw82OnMY0djBqpUXzwkSJTl8u8tk
         wbt8x4PZOYK/3Tuv3vkZAAunMj/bUtM5JJnhOE5weK+dAM4QwsOlviMXozawtRCti97K
         Hb6hvA1gpsnJJqgc+PpPYLTBf6hiLZ81yKZNgF/ceoBtgFElL8sh04Qo4I5P0h5d3V23
         GemGvsa9py0Ff2gO7KaGunB4L5FZuazL/EgQxlUB/y+IQ1gAgzyuqV8Abfn7bBuNqKc1
         xcqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=eh5Gi7jn;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22f.google.com (mail-pl0-x22f.google.com. [2607:f8b0:400e:c01::22f])
        by gmr-mx.google.com with ESMTPS id a19si96121qtj.0.2018.03.14.11.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 11:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22f as permitted sender) client-ip=2607:f8b0:400e:c01::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=eh5Gi7jn;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22f.google.com with SMTP id ay1-v6so2182243plb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Mar 2018 11:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ufbwT8EnWgSCIPXRva6LBKsNllFTPn824G1rSMMmMuw=;
        b=eh5Gi7jnhVzkL55PnoHOuPVe6C/zwA/PtMH63qhz+Ynnw83tuHEW0u6B5rb8TAkHqr
         ypxfYqHIfuzgZDUSJN7u9PN2Qy2Ylw5H2QGFUDUPWhj1DndLZWAjsiMSW1aCu2DJK/Wv
         ED+kje/ds/b+u757HiQRnnISve3FFPMARRDm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ufbwT8EnWgSCIPXRva6LBKsNllFTPn824G1rSMMmMuw=;
        b=qYC6z6Chn5NFMDuxFAsiG8ITqcnsQi9vnxFdujR3OkqmsQp+JMcqllE8G3ud2b9zZ/
         dDfmNlocAYlOSQ31C8SzZfJVd96ctWH7LoMiT1YZEb+uoZdLL6U66wB1MsrcbVmxSohI
         //jRPlzvLBgW3QzuwOimwVvad1S+1dtags98Q4SgHWIVQGPbCQKNO14OWL0Q2QIm1pM/
         1ajiEal+6eoZCvH3Jbdr5A7/WrKaR6REKD19zZxVXzM3WUs7rFLkeIJ7rvFQKga59DMu
         gljHuv4nIrR9uQTlzviWKJBXK4mOmc97GF37kReSc9y/ZHQ4i4IzsAC05ueNDNq+A6/+
         hKEQ==
X-Gm-Message-State: AElRT7GbgNnqTyKFYdBxCkoX8VyfkbW2vQR8xIR9FxN7TS+I6fz2gJus
	1A1S/nm+obB+IlCnuA6m2rhiwQ==
X-Received: by 2002:a17:902:c6b:: with SMTP id 98-v6mr4901011pls.267.1521052184536;
        Wed, 14 Mar 2018 11:29:44 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id y3sm5697339pgc.81.2018.03.14.11.29.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Mar 2018 11:29:43 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: ks7010: Remove braces around single statement
Date: Wed, 14 Mar 2018 18:29:30 +0000
Message-Id: <1521052170-27685-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove braces around single statement. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/ks7010/ks_hostif.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 05f7be4..c05102d 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1385,9 +1385,8 @@ static __le16 ks_wlan_cap(struct ks_wlan_private *priv)
 {
 	u16 capability = 0x0000;
 
-	if (priv->reg.preamble == SHORT_PREAMBLE) {
+	if (priv->reg.preamble == SHORT_PREAMBLE)
 		capability |= WLAN_CAPABILITY_SHORT_PREAMBLE;
-	}
 
 	capability &= ~(WLAN_CAPABILITY_PBCC);	/* pbcc not support */
 
-- 
2.7.4


