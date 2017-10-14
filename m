X-GM-THRID: 6476749000015872000
X-Received: by 10.107.169.29 with SMTP id s29mr2997540ioe.10.1507985638348;
        Sat, 14 Oct 2017 05:53:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.17 with SMTP id p17ls1885520iop.22.gmail; Sat, 14 Oct
 2017 05:53:57 -0700 (PDT)
X-Received: by 10.36.41.6 with SMTP id p6mr3658054itp.35.1507985637622;
        Sat, 14 Oct 2017 05:53:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507985637; cv=none;
        d=google.com; s=arc-20160816;
        b=sL2G57RtK50w8Zjg39P/N+AZUsM4SmeXl5VveNJXXp8nvCfkspozlETKqO8m+HgBdd
         rwocqXpaNwx6K2V5083XJfmS2hadce/IjTCdflJfWzmv/ujR3BUkX1pO4Y44dUAjhpP/
         fKf8D17eammxn9ATc4MYJb2/Tz0j4BG/qVZfqvMoFsrW/8GJElKdR5xwTnUUPe9kKj1b
         u7/1agQ2cqi4uEhx4hMYpLi2B71XbcOYouZMaNRdrUBRaJMOVQkIsPH0It19rnPCxu/d
         EDgS38wJiRK4NZ+PvyxxrI74VpfIikTdr7Q4frrB7wFByjpis8GQjqgeGRoFBf456OUw
         93Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=gIiNJdcX+e5GMwT+Cmz8mk0nY0gjOWJpBRUBpvlARzs=;
        b=07oVkgYd9bmwRISmlUXyH9WfRIi7LDZRQ2/Wyvhqj9balgwJ8geTlRDE1oa5Vn9gPg
         bmCqpn+RO8Wi/Jb3fbHipjFWqxY4dfhu8s2Ps9LlKu9mP0QRv5biet1IQavra3xhR55y
         wseriqLzkJe1UjsnK9AlJt0f17bGedLNz0oqy32TvA4ooqyUB5GnpTVtru9D+a5ampgj
         e0PPIotigkteBiRhw1zy7dwKDBtfMcK5VTNqEz36mKkWTAwbVb1RtNg9Y/U7eIbRd13v
         EbgWaRqNmteTjFRbTAwBzeTDtqTgku1rplwFap4OJ5fbJVLvxa7k18aeuAtJJeFMCRW6
         K40g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F2H5WrTx;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x229.google.com (mail-pg0-x229.google.com. [2607:f8b0:400e:c05::229])
        by gmr-mx.google.com with ESMTPS id b2si346005itg.3.2017.10.14.05.53.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:53:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) client-ip=2607:f8b0:400e:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F2H5WrTx;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x229.google.com with SMTP id a192so1869013pge.9
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 05:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gIiNJdcX+e5GMwT+Cmz8mk0nY0gjOWJpBRUBpvlARzs=;
        b=F2H5WrTxiWvqLSmsEwZILhK6lfSXNEQE9iNyxRRqkw07RtfD5TZmOX5Gh4KiRxEQvR
         4ViST+9RIfZ3OCTqjusBsJCJsMV2BUxxHzvsghugn7mN8PD4btkSXT/34BNAKk3rlz/m
         ebT2szaR5hIBIL3qcSRhs0KvSyiOmYHPdCCHPCBtlQ+ytFjimX7m88cUQFRdJ1KDlMRN
         UtGInwYSxeFZWYji/HNGbYW7JKWWGR1/jV9sCu8ry7TD4CBcZvEWMjSVnh9/VYz5fUl0
         gt+qtCRqa+ywwXgufkgb7E2VFLqWqHTLQIFQ+hCPgHqynNqrgznvm11PMG4H+Inmh4rM
         PtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gIiNJdcX+e5GMwT+Cmz8mk0nY0gjOWJpBRUBpvlARzs=;
        b=A/J2gIbXQBhSBSeQVtUW2cx1M+cViX7d1+pOUnpFM4i9D1RD8vxRFBw7s2BFfYJF/d
         r/ejl3o+3mgiLKzzVfWNBdFo20IEDhWBswL+I/KhbSpLH7qwTRA3e9karXwhiFz40sAI
         jYfW+QKmQ367JqNYGI7JIY6ndtOKU4+LWYkQ3UWLlSm2r5jKVq9j7C++ZCqc6gAhvFRN
         bYgChbCeyMQpw0xzH7q875uKUBmmWTCdoE4zgO0QyPUONTmHP0PTvhe2PXdRRnnasMdJ
         ctteS98BVFFo9e/NczsoxQjlgg2UyStTOi8S5g+uWgSnkMXSQQSXu+jw+VdUIvZ8K2w8
         wLsQ==
X-Gm-Message-State: AMCzsaUGAq3VA8e2nm4NzZCFlmFWGzc9OUdaCLDya5gfVqU/wWwp/+7U
	fCexsZgk5pOqq/25Ib093nU=
X-Google-Smtp-Source: AOwi7QCqhsjOyYBK39kYGyXXQRQ8J8PCCMLa9LebDq2ueblvwnAji8VbaOPskdL6wFeLJyQyeUOq5A==
X-Received: by 10.99.117.29 with SMTP id q29mr3776269pgc.61.1507985637403;
        Sat, 14 Oct 2017 05:53:57 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id j1sm7123269pfj.108.2017.10.14.05.53.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:53:56 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] update INSTALL to add library libnfnetlink
Date: Sat, 14 Oct 2017 18:21:45 +0530
Message-Id: <20171014125145.8336-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

configure.ac checks for libnfnetlink(>=1.0) library

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 INSTALL | 1 +
 1 file changed, 1 insertion(+)

diff --git a/INSTALL b/INSTALL
index d62b428c..d28ea5c1 100644
--- a/INSTALL
+++ b/INSTALL
@@ -11,6 +11,7 @@ iptables uses the well-known configure(autotools) infrastructure.
 Prerequisites
 =============
 
+	* libnfnetlink
 	* no kernel-source required
 
 	* but obviously a compiler, glibc-devel and linux-kernel-headers
-- 
2.11.0


