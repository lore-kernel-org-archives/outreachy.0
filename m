X-GM-THRID: 6670193586677481472
X-Received: by 2002:a0d:ed05:: with SMTP id w5mr1267439ywe.14.1553025466030;
        Tue, 19 Mar 2019 12:57:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:19c6:: with SMTP id 189ls20116ybz.3.gmail; Tue, 19 Mar
 2019 12:57:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAU88bxzPr7xFUr1+WgFUvVUultAI2nqCjEbG4vLkJZAEjuDBpLaSy42OOjfpsX4bH/b/r
X-Received: by 2002:a5b:bc4:: with SMTP id c4mr1209526ybr.42.1553025465159;
        Tue, 19 Mar 2019 12:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025465; cv=none;
        d=google.com; s=arc-20160816;
        b=nHAxfhQGsuBHfGcwyC1cw9eC2A1LdadljnJXrilxu+SdV6DrhY2jo5br2kiPBF62sN
         ZFPYk2SAT6V5dn1VJ5Cz6pXI/ehSaF6kWSpAugXI7U2fLhsC9JTsFL0TcHLb2eVC0Rf9
         fNMBQEtLmnNch37EeR76P0kR8TDoriij/4t2CVn2lbsjEw2pEtf88z+3FMgw91nqVyGb
         jh+35JzEvc2/D63v9YSOad7B2azdfC67C01RT+vdjugWG6a5pGI0b/b7FL4iT7dmOXIM
         1O1m/eraeX8Stw6Md6kgO2+eWSVguMiJJbxMIKqkS52+lPtw3/uWTAvq35srLSTDI8YG
         FD2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=U1go1yFBje/+ear/SQ9jcuMoHpuYTvz1Th99D8WI044=;
        b=haloUDl6xCP30EEbCF7gYeTOs988EgQ3z8AWdZliD1yIUKrSVNBj0Wqgi/IkOr4bTt
         9+Zda1a4Tu0vaUMSa48lAl0joI1NYBA630gUG2JT2Bf+pJn2x+PQO6f+TX2hGmRUqdg3
         lJGFUqvtAY0faVDz5TR3+GyTVJgFoumvkxbgb0PZVZt8OM9VQuxkxE1RN3z4m0RyWN8h
         hmhnmrrwYEXj6a0x7HFvkF5/EEBIKLIRWeMJ743kRi6U7/1CUE1WmiGpN77muUaKjFSv
         KLJdTatHTxO+2Czvd6rRQc9eVl+Ig0AUdCm+JWZzNk0Cp8jR7wBxdEzFGAbGFW2a1/Nb
         Twsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Hj3p4VZO;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic305-20.consmr.mail.sg3.yahoo.com (sonic305-20.consmr.mail.sg3.yahoo.com. [106.10.241.83])
        by gmr-mx.google.com with ESMTPS id k15si702195ybk.0.2019.03.19.12.57.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:57:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) client-ip=106.10.241.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Hj3p4VZO;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025462; bh=U1go1yFBje/+ear/SQ9jcuMoHpuYTvz1Th99D8WI044=; h=From:To:Cc:Subject:Date:From:Subject; b=Hj3p4VZO0BRru+5TnvuMDaNeR1+iKdnuxh/B5x8ZD1Y4GYqgXt7Sn6XHZMTxwUJMZB9tY8zb6e1byWuaWIe0jVfCdxq4te/rm3GWTqysyeUWDNbAU4tsfcIzSInr9G6k9RMhme5dxgiZWoDeGYJ7Bri3MiEtRjhTzhrW1Ud/Eyk+a2YetoEr0jGCJkG+Ri28HY9nkMTeBPtismxijxLcrSs/MWHldo6QLvqu+SkWw0ZUOZnHSUub2gRqClHIzXAtWRj+TEoLvEV+zhAU6aEB/2zJgqLX6us7kvLD4KN6JVd3c2UqZOq0lXoc/jkjZd3AJhtORIO5lP+8gUvgg4Fgyw==
X-YMail-OSG: C7rxMEQVM1n1pGcrDeMObFO7lQTqEttCT6pi64Nv4mQFVjI1f9sPraBbTtJ2nNL
 7BZjI_a433kxHRyH2DTY05zytT88wh9jCfD.G6x.izo1w_h2kl74zwNbqYW5Dev3T4xQ8pKWY9Kv
 MMpTHKWE5ZyYf1vhkP4_O1XPyMFpMfOTpvQyus_jpaa5fn4hlWi_rxknbhd8.WxpSgMQARsxVp2K
 5xsCqYezyy8RQ.yzumHYe8.psgG.bmIlMEQKXwd2adxim6roZnK14NECw8202OjsQt78xFSs96.m
 IfWa7cFNgValsDCaACxKuc.O9_2uPANyPYjamON.OlJWmJr6N4sQr35UYwzXp9njBc0grrcykFrT
 X0cHY5DRFS5rFNcIfAn4T8kHaNPfi7E0Xkl4jHzxUPKfVDM4UtHxdjxpkgvl_29SrCpLvAYXlsfm
 7ayZcdPMmbxHYQhjVgQ10tdZSLs7GoN.LeSzYRElfELCMCsg1l6ChhrChQPT0idx80lYxdkfoB1p
 xjFf8DYKuHkDz6YxdY4c0LM303i27sK5itxHh3IlvHE4BdVTEKTKxWfp3Df7NX71pZxCS8Uraa_D
 Yy9J3kL7OozAkoBXCOedpH4VeY6f0zWoBLyu_E4G3Jno2GTZCFF5k3wv7pyHQTpSXscQAbOKTZS_
 _1zV3tiIOD3HZfTwgfhZrGXgo1tzpB2.VJJucNkPEMG5bwq_egi_hWHCD1o8TdPhwHKpw.kxohC0
 drPbSu3fulsdWtWCrmNNKEdkpEXlGHn4rdVYqlDKpKOgVJtWZaPyjGy.eExNmkQLT66QGGhts.uO
 T4LUDcgUC5gClunT0hIXULiqjXlkZsBwYy7vbTG7ZkKMzZgPFGjDdh0fsueaBYsSy0SvgxQH9TBD
 Q1IQmbeTvxuvJKLWMreuL2ZOYwfblk1M6c3pwOZVPs9baK5KwEKbmuLs9flKno67Dnl0cxkL3e3i
 fFsCXDkSxfWS9WQX3n0FuBYm21NVgstCuz_2nkJgj9tPz2zNgp9zqRXRMjDhUbsLoq3CGQKSdkdP
 F_Mf1rtcFaE.CFoRab1fbwO2ZIPdabltwjtdf5Ilal.OM1Dsw.hVl9LxcoFKmHMMOJj_IPJv0CAX
 dGQgT63I-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:57:42 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b707d24ec4d48d531001bc1a2a399b3c;
          Tue, 19 Mar 2019 19:57:41 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 0/5] Remove return variables in multiple functions
Date: Wed, 20 Mar 2019 01:27:26 +0530
Message-Id: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following patches remove the return variable in multiple functions
and return the required values directly. These issues were suggested by
Coccinelle using ret.cocci.

Nishka Dasgupta (5):
  staging: wilc1000: Remove return variable
  staging: wilc1000: Remove return variable
  staging: wilc1000: Remove return variable
  staging: wilc1000: Remove return variable
  staging: wilc1000: Remove return variable

 drivers/staging/wilc1000/host_interface.c | 11 +++--------
 drivers/staging/wilc1000/wilc_spi.c       |  6 ++----
 2 files changed, 5 insertions(+), 12 deletions(-)

-- 
2.19.1


