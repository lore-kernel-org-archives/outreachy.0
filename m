X-GM-THRID: 6399941946737950720
X-Received: by 10.107.201.131 with SMTP id z125mr9066695iof.94.1490102602833;
        Tue, 21 Mar 2017 06:23:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls1913309otd.20.gmail; Tue, 21 Mar
 2017 06:23:22 -0700 (PDT)
X-Received: by 10.157.51.10 with SMTP id f10mr16113424otc.84.1490102602405;
        Tue, 21 Mar 2017 06:23:22 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si3432588pfx.8.2017.03.21.06.23.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so10581731pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+U1Eye1CpHnqB2sCBGJK+pNsjf7675xymZZ75XWlnD4=;
        b=mSfE85XV6M4789fqoBNTw9+vxdAk2ehqZhT1w9A5zM2xxYmAbDTAHKD67JnKPWe5KY
         pndnwX9GX4E9tTffG8FhVlEXCTDguih+xjXtHpdtOBsCvQo4HZWjymdHONaFbYN0MlVL
         3lYMJhgNJSrIyHt9HnHmeiFjryGUIcyWDevciccfT4fLKbEWpIkcmXJD60Pg/ld7nBcd
         Aa6DS8rJXhiGfJ5yNXaTgo51yUndqYk63z4qJW1PcBS0TIQnSzTxil3koTvRxmgfJEPw
         AaRnhxo5GRnqjFDzc4S/h8oeb4MgGfpZekBrwq2zfhqbesp4O2vWWdbiX5mclQ6IAgyE
         n9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+U1Eye1CpHnqB2sCBGJK+pNsjf7675xymZZ75XWlnD4=;
        b=juhIYJqh4fdvMY3z2jhMmdYEIANPzCslVm6GXDAReqj9bAn+HjLNDAUlsVwfv6UWJ/
         VXhQ6rLK0+TyqDUMTp6HMml3F/ox8aMrZDzzvDr39K6G/AoOOOYsXxBy8F/QNIFIB71i
         OvhlcJ3ehhv49ajAX9CzDPhapjYbqXGLHwNzD7rRrYprfVnmbGf30VTem+LTzsJ6mqKQ
         FlRIPq0bEVNIkUJ7a1Sj3l+JgxA2zm6lUxLdNgAzSV7ORk3Qpvvy+4lnXqXYOTT74hx5
         KlVMGojUvamfGLXCKu7WzvymwviD3wikdlRUzktblxoMrrL1BbrZLIwTDsn08kvizJ7K
         EZew==
X-Gm-Message-State: AFeK/H0LDCniScrnY8Q2DUMBD1ja9gEPU0h5G0Ys15TQBKR2L7f/BLpfpHa7FTzGAFHwxw==
X-Received: by 10.99.217.69 with SMTP id e5mr37735140pgj.56.1490102602190;
        Tue, 21 Mar 2017 06:23:22 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q194sm39667395pfq.43.2017.03.21.06.23.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:23:21 -0700 (PDT)
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
Subject: [PATCH 0/2] netfilter: ,netdev@vger.kernel.org
Date: Tue, 21 Mar 2017 18:53:17 +0530
Message-Id: <1490102599-27579-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series Simplify function returns by merging 
assignment and return into one command line.

simran singhal (2):
  netfilter: ipset: Compress return logic
  netfilter: ipvs: Compress return logic

 net/netfilter/ipset/ip_set_list_set.c | 5 +----
 net/netfilter/ipvs/ip_vs_ftp.c        | 5 +----
 2 files changed, 2 insertions(+), 8 deletions(-)

-- 
2.7.4


