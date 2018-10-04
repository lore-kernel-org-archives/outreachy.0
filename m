X-GM-THRID: 6608456604457107456
X-Received: by 2002:a9d:5610:: with SMTP id e16-v6mr5192410oti.67.1538670585190;
        Thu, 04 Oct 2018 09:29:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:648d:: with SMTP id g13-v6ls2899162otl.4.gmail; Thu, 04
 Oct 2018 09:29:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62/ckrC2ywls8WAyzZiRmTnsTlFUNN1K1E/6NLmcuRmTVinBmquEjOxnUtPluiwf71C8gbR
X-Received: by 2002:a9d:c01:: with SMTP id 1-v6mr4902068otr.3.1538670584385;
        Thu, 04 Oct 2018 09:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538670584; cv=none;
        d=google.com; s=arc-20160816;
        b=IfQOVKf5P7cNA7DrAf9WKcI67ZCFr07TVjXoPjVj3HIWIcIDtPBK85Zc481ZubIPH7
         kg4HACscJpDKkgJJxtXI5OF6xg/QDGRqM672rjgPNqv0IVFl1sdz0xho6Ah2nY7WarTv
         Ql4NkgKGqjOsDhR+uAALGxPfpLx6ImKh5oiNRS/ooeHgVI6fvJAuTz2G6kbvGEQ11pFA
         w4MlJRsLz9drQQhBAXqgrdoUFgQYTsb9lNunBXveFYo41ZgRm3soUlBHBDSyz9YlJBVN
         WErIxMSzygv+ZOxPRLenGkC8HHI7T3bSb0EO5GKW6DQgEI4jQXW0WKRcjGt+ficu1cdX
         zzdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1g7oBoCOh5ZdxhcRG7CRuTP9h8EJn889URdfi1MR8fs=;
        b=zr9b8UBYYDLq4NQognywIaZ52hFj2PdS4Txbz3QAHBD41kcguicpXmnxLqWNVu2jl1
         abFhgHR1xIQreAUk2trwuow1gP+51KB8zmyjCkDKOsbipitrqnIDn5CKG7NrNb/b+dx6
         RDP47ew4lTdkjSL8edaF4qdi5RmOaKSbXaIcZxBd23/P3BEnHzAlxwMIZar6U6mUwQ85
         lkcGFhGc1+o9ErjBuFPcPKNwm+oafm9P6475tc7Vo7yvZTPsJI6Cb2P0b7Xo4+qvi2EU
         NaWvwglbbMSMJsnS95dWMtOyZdVwK4B4xwywnhE0/Qf7KZk+4vC88R7Keuefewh6rjmI
         eB4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IEqJTN3E;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a84-v6si264134oii.1.2018.10.04.09.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IEqJTN3E;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 23-v6so3387425pgc.8
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1g7oBoCOh5ZdxhcRG7CRuTP9h8EJn889URdfi1MR8fs=;
        b=IEqJTN3EP6Bm9v5QZkEs3k/203JEk2N0ydYAx1B27RaTeKalkPG3tV2gQ4WICBpe95
         Qv7cM4iyMi2AC4ja9BY1Itx8u4XfKzi3Bge38rOp4IEk1xS8whLiJunzvtnOXHRK/f5K
         8Rd5p+AWl1yWvkB78W4Q40s7DCtMzoKkcsT7C4v1E7JmignHL2vl2lB7pypELbSiBFHS
         m0FxkPtRaEl1NZ4WxAh2HVX4/0TAaSkoKiXMXpIOaUG3jvXxK/u4HbIlZGaSao9nU9qS
         UivhjGMLTuGzUN4mmVYh5AIrY5mLQbVA2AANnLbFG75XYCkzBOtaOH1B7aAngQ6jXi2w
         s5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1g7oBoCOh5ZdxhcRG7CRuTP9h8EJn889URdfi1MR8fs=;
        b=Ar/UGGP/Tgcl/d7fpyfNRwdlNgOVV97echnlu0owro9dB912kj57CKYlAEu4CmNyk6
         xBppvXbqTvfQ5uRviPHO+KgoN/Bz+dhHz1MTEFeFcyVzLsM+h3CbXawiWqp5NjOGWDJk
         +pX56a3z/dz9r7PgCMXH6ZTPOkM2iyonNiekN6rtTTHKuC1x2BrVXLrNufOB3KXC23NL
         8zUNsoDC3f+bM7ZfMYiKfwWsFcKzSdtyzpNqbdoQ8tVoDN4WcBa9r2wTXLp+Pk0YOYoW
         zgVMPSCqBakLb4eef6P+pKjbgHxODj9uknrlYr38SBeAyMBsbFZ3su3DbrM3ziYVCz2I
         /5xA==
X-Gm-Message-State: ABuFfohozsz32GuexxqOyrX5t8veuZmzGWs0lgKwNeLOzBaKOAxzBHYO
	SDgZLgwSGP50+WtB0vh9Az8=
X-Received: by 2002:a63:69c3:: with SMTP id e186-v6mr6335582pgc.431.1538670583477;
        Thu, 04 Oct 2018 09:29:43 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id v189-v6sm9711797pfb.54.2018.10.04.09.29.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 09:29:42 -0700 (PDT)
Date: Thu, 4 Oct 2018 21:59:36 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 0/5] staging: mt7621-pci: cleanup
Message-ID: <cover.1538670297.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix issues found with checkpatch.pl for mt7621-pci staging driver.

Mamta Shukla (5):
  staging: mt7621-pci: do not initialise statics to 0
  staging: mt7621-pci: spaces preferred around that '&'
  staging: mt7621-pci: spaces preferred around that '|'
  staging: mt7621-pci: spaces preferred around that '<<'
  staging: mt7621-pci: Prefer using the BIT macro

 drivers/staging/mt7621-pci/pci-mt7621.c | 50 ++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

-- 
1.9.1


