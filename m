X-GM-THRID: 6403070948028710912
X-Received: by 10.157.39.97 with SMTP id r88mr1223116ota.151.1490831130219;
        Wed, 29 Mar 2017 16:45:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.38 with SMTP id 35ls3283248ott.19.gmail; Wed, 29 Mar
 2017 16:45:29 -0700 (PDT)
X-Received: by 10.200.48.172 with SMTP id v41mr1126337qta.86.1490831129832;
        Wed, 29 Mar 2017 16:45:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a17si1203316itd.1.2017.03.29.16.45.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 16:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so5533568pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 16:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cG98rK54QK6TGsriE/wn1aPGsaJcLIAAmAtN+KmRlv8=;
        b=QvnER3BbCN/76Yfkzf7qWCSj/i9+WIBhHu1eCJyaXbZlRh+vc3NLh5i+x4cte/BD9U
         9n8In9DA1hLivuwFHO25tQFyv6G4UkxGQeRiGHzFb8hO2OLIGx0DUzLxiuXS6WVyvZQj
         5zZSj1lBepYZDjEbkaPi3hVpccSM+0VC37oglLFYxyr26VnmYqIYvvguDIrL3+ApZqo+
         cHJmOghBP40d+OEWVSQAs+KUL/2HNd3GDQtLkSfA+cJE8voT0Wk9+d3gNyxXU/IoRI33
         cc+2AToQKtSPLDWhKQnVTlz5/qw3QYXVqDyxB9WpxOgK0BULtL3FpolIXXA2klVG7Zhy
         lxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cG98rK54QK6TGsriE/wn1aPGsaJcLIAAmAtN+KmRlv8=;
        b=No5hxBnZ6XydYy0jDhPDPgUE9EIWjWbI69se4gGESa65jT1/lFNYHjh189Y4Uvyqis
         z+eo9XQh2kJ7vMLlSpK1q9hE3VBRroOYl1xZnoZ5YKLwuiJdyRHjYdJV0py0KoIhQD0Z
         75MCeJysj5LgJEu0pp7Fx0yrLyzncMNLW0rtjDradhnkkkhkNO0H47etyxVCZG+6Q8kq
         2kLXGhrzJxFQav0hTS6n1GK+1Cz0NdSEUsJfh4hgnrYgEtWsZ5c75riowXB002lKzrH6
         KQBjlGqFax8MPC7zHZJf6nJMxzyxalOpd7f2jViEHaFttaWGamQ5GIiAIl3vs4s4lyRo
         eG9Q==
X-Gm-Message-State: AFeK/H0m95u1/viEcZGDt7XP/IdDoLHzSn6ITdaVaTldIxiU17HZU8z+k3Xh7JEO1v9FVw==
X-Received: by 10.98.214.4 with SMTP id r4mr3074195pfg.185.1490831128970;
        Wed, 29 Mar 2017 16:45:28 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z189sm367819pgb.3.2017.03.29.16.45.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 16:45:27 -0700 (PDT)
Date: Thu, 30 Mar 2017 05:15:24 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extensions: Add blank line after declarations.
Message-ID: <20170329234524.GA23875@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add blank line after declaration as reported by checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libip6t_mh.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/extensions/libip6t_mh.c b/extensions/libip6t_mh.c
index f4c0fd9..ee17182 100644
--- a/extensions/libip6t_mh.c
+++ b/extensions/libip6t_mh.c
@@ -49,6 +49,7 @@ static const struct mh_name mh_names[] = {
 static void print_types_all(void)
 {
 	unsigned int i;
+
 	printf("Valid MH types:");
 
 	for (i = 0; i < ARRAY_SIZE(mh_names); ++i) {
-- 
2.11.0


