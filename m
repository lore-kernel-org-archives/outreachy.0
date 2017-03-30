X-GM-THRID: 6403214915087106048
X-Received: by 10.157.37.174 with SMTP id q43mr1886536ota.63.1490864650797;
        Thu, 30 Mar 2017 02:04:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.57 with SMTP id c54ls15698147otc.48.gmail; Thu, 30 Mar
 2017 02:04:10 -0700 (PDT)
X-Received: by 10.157.25.236 with SMTP id k99mr1877607otk.76.1490864650260;
        Thu, 30 Mar 2017 02:04:10 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id i189si218567pfg.3.2017.03.30.02.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 02:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so8474027pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 02:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nbH9cBTNjKJnLK/p8BLKao62PqKXlrfM3El5Eg3Nbcg=;
        b=gp6QBHCnjC72QTLZzm9bFf249n/lC98v/seGHTaA4HId5hefvfNCecN96YSmNE7sl8
         L7xIjvkgVgkb8+fPsk0L6k2hwKFjTHlasHw0nSD9gwbzfGd53XbRcFdVP4H3eaUxwwNf
         MvpkxOD425nPlNKZfdXetpdzT0NHeMaxMzgVQ95cMqYQ8TynYbk1IHp0sM1K1LRxQkT6
         +tFgcgTK0oBv+ej5eZuX835j5r4RdulnqUurg/5VOpBt8+1K0G0Vt38QmJV3ZoHyTphm
         sQVcyO0jtTjLEcX0HiYU8/yb2KTB1VNIRfpBucTYMQXk9L6W0RqLTeOrWQCUYNGtqap6
         7tMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nbH9cBTNjKJnLK/p8BLKao62PqKXlrfM3El5Eg3Nbcg=;
        b=U2WNxyWGQyXBe7TxxOSd117pP7ZXt4fuBpjL9+h/sBS2HMHsO7wxXdwf41EB24bBpe
         m6DmDPNsc1eo/H3V4y0mzZkoZwEPfq2PIuNniDyvTnw1lq+iv80NnHOJ0+Y2uTaw465o
         XHNg+X0uPxEhuooPoTyvsgz6QsSX0DQpc7843OoaGguS7UGTvczC5JlfUed2nXtGNXoz
         F3kxSvYNILyioJODNBPmXRdx3H27e7nkkCUNGUR9wiR8wrVA+v46mLyJ4r+pFK/Um7qp
         fcdCwJF97jPp5wiltTJOs9bxB26TiKMQJPs1/xNLJ0LQegNKGbE9ZlNWTXOa6vHdSkNe
         I+Uw==
X-Gm-Message-State: AFeK/H1lun2CQfyulW9tARXdizerr8Ita/wj8kNfYaVPHvlNAttHx+MOn5YVkccyV+/R8A==
X-Received: by 10.84.178.101 with SMTP id y92mr5793557plb.171.1490864650048;
        Thu, 30 Mar 2017 02:04:10 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d63sm2998578pfg.132.2017.03.30.02.04.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 02:04:08 -0700 (PDT)
Date: Thu, 30 Mar 2017 14:34:05 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: netfilter-devel@vger.kernel.org
Subject: [PATCH] iptables: extensions: Remove typedef in struct.
Message-ID: <20170330090405.GA26814@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The Linux kernel coding style guidelines suggest not using typedefs for
structure. This patch gets rid of the typedefs for "_code".
The following Coccinelle semantic patch detects the cases for struct
type:

@tn@
identifier i;
type td;
@@

-typedef
 struct i { ... }
-td
 ;

@@
type tn.td;
identifier tn.i;
@@

-td
+ struct i

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libebt_log.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/extensions/libebt_log.c b/extensions/libebt_log.c
index 0799185..f170af0 100644
--- a/extensions/libebt_log.c
+++ b/extensions/libebt_log.c
@@ -27,12 +27,12 @@
 #define LOG_LOG    '5'
 #define LOG_IP6    '6'
 
-typedef struct _code {
+struct code {
 	char *c_name;
 	int c_val;
-} CODE;
+};
 
-static CODE eight_priority[] = {
+static struct code eight_priority[] = {
 	{ "emerg", LOG_EMERG },
 	{ "alert", LOG_ALERT },
 	{ "crit", LOG_CRIT },
-- 
2.11.0


