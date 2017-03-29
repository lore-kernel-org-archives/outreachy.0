X-GM-THRID: 6402914629157126144
X-Received: by 10.129.83.134 with SMTP id h128mr177207ywb.32.1490794734880;
        Wed, 29 Mar 2017 06:38:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.11 with SMTP id s11ls5481194iod.14.gmail; Wed, 29 Mar
 2017 06:38:53 -0700 (PDT)
X-Received: by 10.107.135.91 with SMTP id j88mr245291iod.82.1490794733764;
        Wed, 29 Mar 2017 06:38:53 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g82si1071318pfb.5.2017.03.29.06.38.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 06:38:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n11so1937892pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 06:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ypA+//v/a5SGLQmIrHZC4stfiuP/OS4YOvJUKdJo4yo=;
        b=eLCgPtrADQ9LXJE2fjaMDobv5ZDW1aHY8//Zg/T5ov5p9lpBtLz2DjoXQKM82kJSg2
         s8UrUuHbB+CHBGiiaucjVEJ41lD2KexvxF7HDl/cIbKn3CtkARVGV5OuGiBjhkYQE5Nt
         OY4xw7ScNPxeQjyhxwHie17XG78xt+xyDmuROSPaEyanBUxRjKR/CouhJYfNAe2Irta6
         skXpQ2b2NMlaXn9W+YaHwEEkRD/x5SPk5XUD3ZoDI3ToEjjIXp5zovNRALWsf/5uZt9l
         OUWg/8bCkSi91XD+fbqAsXVDtEnwc3xtz74CTCf9HILDfK1wVHwiWBGH5cPM/pL2Ba0A
         a6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ypA+//v/a5SGLQmIrHZC4stfiuP/OS4YOvJUKdJo4yo=;
        b=Egdo+zIdeJGfVjSxjodNgXUUiKWaKOxg1uJ9AEiE+/u74X38HguCRf7kqzPWXCx1c7
         rIC781Z/Z89FEYARLrEJwqqCjSJxJB9Q5WKetMi6dbLzuKmZxra/6E12mdb1vnVPSCwu
         iGw6FaAFAGPVG79LfGWhZ5VB61axAOgfIKpukyLLUNBGvvv+uQoxpau2aevk+lBV5DLL
         iRcjgep85/zg/H5Y9NGLJ6ScSUSNDkcXbLpB+2kHWAEYBtZFZSDx9t5nGqMNGxTU50kC
         rqR3+TY/e8I/lP2jdKsRN1OfXBU8+i8n07Fw9xTQsV0D+yVCv9pG34ePB8osUYTYVCoP
         SyXg==
X-Gm-Message-State: AFeK/H3sqvH+DU4fG+PjhByjOef6fL5kV7wu9F8nJoQRaHWezt21Gyeg/jwdkgGOAS4EWg==
X-Received: by 10.99.185.1 with SMTP id z1mr555718pge.165.1490794733534;
        Wed, 29 Mar 2017 06:38:53 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w129sm13762066pfb.130.2017.03.29.06.38.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 06:38:52 -0700 (PDT)
Date: Wed, 29 Mar 2017 19:08:48 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Wensong Zhang <wensong@linux-vs.org>, Simon Horman <horms@verge.net.au>,
	Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: netfilter: remove unused variable
Message-ID: <20170329133848.GA1336@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses the following coccinelle script to remove
a variable that was simply used to store the return
value of a function call before returning it:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/netfilter/ipvs/ip_vs_ftp.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/netfilter/ipvs/ip_vs_ftp.c b/net/netfilter/ipvs/ip_vs_ftp.c
index d30c327bb578..9e1e682610ef 100644
--- a/net/netfilter/ipvs/ip_vs_ftp.c
+++ b/net/netfilter/ipvs/ip_vs_ftp.c
@@ -482,11 +482,9 @@ static struct pernet_operations ip_vs_ftp_ops = {
 
 static int __init ip_vs_ftp_init(void)
 {
-	int rv;
 
-	rv = register_pernet_subsys(&ip_vs_ftp_ops);
 	/* rcu_barrier() is called by netns on error */
-	return rv;
+	return register_pernet_subsys(&ip_vs_ftp_ops);
 }
 
 /*
-- 
2.11.0


