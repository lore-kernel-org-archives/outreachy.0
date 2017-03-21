X-GM-THRID: 6399943701223702528
X-Received: by 10.157.40.36 with SMTP id m33mr16293549otb.49.1490103011676;
        Tue, 21 Mar 2017 06:30:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.17.16 with SMTP id 16ls2824787itf.12.gmail; Tue, 21 Mar
 2017 06:30:10 -0700 (PDT)
X-Received: by 10.107.178.15 with SMTP id b15mr9180652iof.93.1490103010586;
        Tue, 21 Mar 2017 06:30:10 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si3410644pfa.6.2017.03.21.06.30.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:30:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so21977078pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LhuHk2TugdqkEpFILMiLcwHL2IplQru0EP6OvblMyKQ=;
        b=cY1KwnorePNlLUkB0me6sQbcERukPZoPNP5rQH4ajhU5MHG4GacXmut9Ru1OH+nAV9
         se69H92w9iELh3VriMDo4GQ4m+1ZQL8lu8xYJJaJiugIlvqXdZ8aF8IZLAO/0jQiHtPY
         kvyo0gtlreyJd/MkH0iQr0cvmIE+Ct5NmrYROppDNpsmWA7VqOSpuyKK3RMFQhI88kXP
         5NooPuNvikwwSJ1t8UeP7rHWiveiZah2nfnN/Ty5gXfNSHJsn3gY0vaWuO8saUOP72Vn
         UqOx7T909mbejnCeU4xsGGAsXgdE4p5fCemFRGHai+nHFAmhGgAeTgSLE1JkbM+VUk1L
         hNIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LhuHk2TugdqkEpFILMiLcwHL2IplQru0EP6OvblMyKQ=;
        b=RbJYccE5qxZtge2x6K+UdedUJ8NbO/KGaTD4taj4qXZD5aM8vaGkQ+ts09OnZWPMNS
         Tk6O3ieKpLAus1cgRFXe1+1JKpDO/CWkIriv6rlhxgwFGttO0HmztHP710FeuaUn1fiH
         WpbDswF7yUTZEHjYSDIechh+h2nl4YPAAejH+pVQraIL0U4j3BT3D00NpUQUOXjs3cO8
         xbi4iXoewhbhVd5Y5w8YYTi7BBr2YN+mKbmhDLbuiiN1OQ3See9B9bq4lN496AZm9C1M
         MZ7WT99hsdB/+DUDqLU1fpLqFrlD3i5LeuGCoWTWYND29Ykipa+KZZhqbmcwb7uo4XoV
         JDrQ==
X-Gm-Message-State: AFeK/H1MCoqxaZeaVKpt5q+gTRm3PerhbMEzeBth2xYZJelxds3H6imhCVCiwRPfaZFHKw==
X-Received: by 10.98.103.146 with SMTP id t18mr39867921pfj.135.1490103010326;
        Tue, 21 Mar 2017 06:30:10 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h20sm39824868pfh.79.2017.03.21.06.30.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:30:09 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	wensong@linux-vs.org,
	horms@verge.net.au,
	ja@ssi.bg
Subject: [PATCH v2 0/2] netfilter: Compress return logic
Date: Tue, 21 Mar 2017 19:00:06 +0530
Message-Id: <1490103008-665-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series Simplify function returns by merging
assignment and return into one command line.

v2:
  -Change the subject of cover patch

simran singhal (2):
  netfilter: ipset: Compress return logic
  netfilter: ipvs: Compress return logic

 net/netfilter/ipset/ip_set_list_set.c | 5 +----
 net/netfilter/ipvs/ip_vs_ftp.c        | 5 +----
 2 files changed, 2 insertions(+), 8 deletions(-)

-- 
2.7.4


