X-GM-THRID: 6948309790946754560
X-Received: by 2002:a50:c004:: with SMTP id r4mr2586049edb.192.1617779440685;
        Wed, 07 Apr 2021 00:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:c24:: with SMTP id ga36ls618962ejc.9.gmail; Wed, 07
 Apr 2021 00:10:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYdv3fgSyT5jnIiZNTUJOWeGOvK5tCF7NKslDljgW2aKpQ7zbQvgp+Agydd0O2YHP3Sdad
X-Received: by 2002:a17:906:8591:: with SMTP id v17mr2126902ejx.260.1617779438901;
        Wed, 07 Apr 2021 00:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617779438; cv=none;
        d=google.com; s=arc-20160816;
        b=Wt+qBa5HUMshGmDJPInESTgHG5yQPgFqgJ7hRkBubj3/JObG3uFOjgv2jnbr5iu5/o
         3rbxg2ZFAS0kEgkfZJ4err/VqrH0UyPgNDosETNg9nKxy0m/qkth0s2g44MZ5S2XBIjN
         NufWbuK9zqnJqze7WLQvqNHJzSHqoqjhthWY1RuckLpzXAot8iHa/unlYtiLH/WYeg3Z
         JY/HtzO3fpAZwCiGKNM7xlmVlsxkKzmS4q1vnoLPuM/kpQk00SxBXc+VaYnwCzEo+PMC
         JpmAz1J9sqhcTqMFN3DrMF7ECayFpL9QOUIVDsb/JaRLuDuV7ISpg50ZliojOnffCM9I
         Y+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=1xxJg4Htv+NiFNH8YSXrR/3HsPoXGP1NCBDdchvuCw4=;
        b=sa1gEUZCtYxhEAX3zubJPE+cZdTvlg77A4R6fgUTyZdjIdjALsmCRZ82e0S6Z4TgCo
         KStfyrkAHsW+0mBYbopkn562P4mLFmkSPtq8geI1atcoRxRbOS6/AFfMGWgELav0LXSa
         sqgSjlYFpARD9VNTaePr6Ok8hADoZWJCryUENVYkJMOLWfDYTJIL/ip2U6Flp/8qdOIJ
         zLxsovtOxQPu5GwFPpDwjxd7BMkyhZYDviody1+gLABUbq+/ilKcIEZgOVvund129ZkX
         FEBnE3ug6EHNm5B067ywyWpXFdvuQj4EPCjG0QFLYyU5t/75enQk7AqFH1boJfjudM6U
         2GKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UAR89YDO;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id b26si937940edy.4.2021.04.07.00.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 00:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UAR89YDO;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52c.google.com with SMTP id r22so7027691edq.9
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 00:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1xxJg4Htv+NiFNH8YSXrR/3HsPoXGP1NCBDdchvuCw4=;
        b=UAR89YDOp3ZKRwFc1J0Rkp/9ayixQA7cfROv3C6SD4jQTlBpWqY6zQcYZQ/VEJQe9S
         wydOD3hx6LgH/fLfspco6Ed2rLhRMOsf8o0WwMZLv1luA7fPIRc/gHmkSIQtPQUvuBoL
         AtuppdyiFy8lkbjzhE2ysZnW08GadWK+rNTH7O6pRSQtrFQQ8Pylza8oTzU02x1H69+G
         HMbTRi1APaAZa9HYCKBTg6CBgYX0E9xPgViqwTm4wbqzNSst9wJB0ULIb37iPrxBR9Y+
         kd+xy33DlnBL2nc1oqeCERX1IVA0Me0+c/Pu+tJPKzIR8JqVKMO7NFSqTopCwc7Xw5Hq
         KJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1xxJg4Htv+NiFNH8YSXrR/3HsPoXGP1NCBDdchvuCw4=;
        b=gCMlOjFESGGWekPkDEecdhq4ZHH12PdNUe92YLRIaTBnosR95VUaJPvGjQO+NY90Fe
         Kt74lQqCflqirfZ+7ZV21OyauwRwEDmUqS0o+i6aL3z0hjl2Y3KjJ/9PwJ+lpcLgYVsf
         xPYe6Um29j7oIE3nfRMIIPE+QEhDnzaLT+uqdCwrRIwNSYsMHxBDt4cIW3SFuA1SZfcT
         QCYmeb2FfR0LLAW3UYs6sf1mwYPmFPm7JCV3cb4cVEXu6tkWjno1lKc6M2gypD3k50Y/
         mcHprC5zeanScIklyryLKqc7lgPh72JyLd+2iX75bq/qFvPjrxRvVTtO7c+zcQby6Ofm
         15kg==
X-Gm-Message-State: AOAM530D5qSpyH5mrIQot7Wc3dUur4+6Iei5EfpUOpd0UM/8Hli6lFZK
	ymsbuTTzv86wQhw2L6trQkqv2LTwCVskbwgL
X-Received: by 2002:a05:6402:d07:: with SMTP id eb7mr2634506edb.242.1617779438433;
        Wed, 07 Apr 2021 00:10:38 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id cf4sm15117041edb.19.2021.04.07.00.10.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 00:10:37 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: checkpatch.pl
Date: Wed, 07 Apr 2021 09:10:36 +0200
Message-ID: <2427703.GWXgmFPN0f@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

When I run checkpatch.pl I get the following message that clutters the output with a lot of traceback lines. Obviously, it makes its output a bit harder to read and it annoys me, however it seems that the script does its work and spots the violations of the coding rules.

lines ...-... Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ImportError: No module named ply

What I understand is that a Python script, that is called spdxcheck.py and that is called by checkpatch.pl (Perl calling Python, lovely... :)), can't find a module called "ply". 

My laptop runs openSuSE Tumbleweed. It has two directories named "ply", one in /usr/lib/python3.8/site-packages/pycparser/ and the other in /usr/lib/python3.8/site-packages/. "zipper" (the openSuSE package manager) says that I have two packages already installed: python38-ply and python-ply-doc (Python Lex and Yacc), therefore I suppose I have the modules that checkpatch->spdxcheck is looking for but it cannot find them (missing environment variable?).

Can someone, please, help me to solve this issue?

Thanks,

Fabio 



