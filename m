X-GM-THRID: 6336950026186522624
X-Received: by 10.31.169.5 with SMTP id s5mr4797236vke.19.1475436153187;
        Sun, 02 Oct 2016 12:22:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls3341516ota.25.gmail; Sun, 02 Oct
 2016 12:22:32 -0700 (PDT)
X-Received: by 10.200.49.49 with SMTP id g46mr4952456qtb.62.1475436152860;
        Sun, 02 Oct 2016 12:22:32 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z73si1020792pfa.1.2016.10.02.12.22.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 12:22:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id cd13so5601217pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 12:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VlTqLGHyIyU1GzFYqrMbSeB++RR5QIwW/Zr89k+1uIQ=;
        b=u6ggWagsFsws0Pu/WecZHMrjEJeR7NwFo9cKnsyBW9XH8R5Zxg2G2Naakq7DPtP5+8
         5zbsSbtN6tSBfAy00P/Jdwtpz2F8zJnpuH+QS1seKzGh6PVZf1s8ap/hQTOV+aIqLRWh
         6FPzxPLy/au2ff3gCQkRJpMYmZm0BtRebQXEXICp0/w6gduZwv2d29ZvyCtxd0J3seUu
         7YHDav3fNsiuf4kWzpIWIN7PpeUYJgytleyJOV1I7KGc44zvn/1+QmrvmP37iJq+J4LA
         H6ItnwHODPSANR7fzHNW3r6eKcNWU7xagV3HI1dRXX324OzZMQFdZyRRJJdh1isbTvx/
         n4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VlTqLGHyIyU1GzFYqrMbSeB++RR5QIwW/Zr89k+1uIQ=;
        b=NKY6LB8zNuqcW97w27qh34dG7KZ/DpZr7GoAR8Y6UODUMdpSi9Ze3bFlkkwIfi/Ovo
         v8EU08jCmyB7FR3ZNrL3Ia5yeYx51Hfy+yyAlBYHm+cRpZX0KZAEvMyN9hq0AVmWunKF
         Ga6KqaPd2V1GATEQovYRbE7n7O/xNMLDwR1mbAV9FJU+er5q6MsUDLesRgoIaOq50uIk
         0UiQ2YTwInC9No52ymYHL0Ksfg1ufMU2uVM7tQcwUEKoMsFuqwykZCTfAplYzPjOO45v
         oIo4/Tm0DdOTqbvSKsgj1SEswhbfnE5S8XohJRphFyqz7IrP+nlfZ1sfjrlrf4XvAQvJ
         SZBQ==
X-Gm-Message-State: AA6/9RlsWqDJJ3UA1dHFzm1h7ELjAtEcl6LkHxc7a21Kc6iEiYJdUf1jdLb0NslLv6ZDjg==
X-Received: by 10.66.81.42 with SMTP id w10mr30846004pax.141.1475436152533;
        Sun, 02 Oct 2016 12:22:32 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d85sm28182609pfj.57.2016.10.02.12.22.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 12:22:31 -0700 (PDT)
Date: Mon, 3 Oct 2016 00:52:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bryan O'Donoghue <pure.logic@nexus-software.ie>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy Kernel] [PATCH] staging: greybus: Constify local struct
 gb_loopback_stats
Message-ID: <20161002192224.GA5295@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The local declaration "struct gb_loopback_stats reset" is not modified
throughout its scope and hence can be made const. Done using Coccinelle.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/greybus/loopback.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 7882306..fb5a068 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -837,7 +837,7 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
 
 static void gb_loopback_reset_stats(struct gb_loopback *gb)
 {
-	struct gb_loopback_stats reset = {
+	const struct gb_loopback_stats reset = {
 		.min = U32_MAX,
 	};
 
-- 
2.7.4


