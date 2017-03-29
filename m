X-GM-THRID: 6402914629157126144
X-Received: by 10.107.12.215 with SMTP id 84mr359346iom.52.1490799478846;
        Wed, 29 Mar 2017 07:57:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls5564207ioe.33.gmail; Wed, 29 Mar
 2017 07:57:57 -0700 (PDT)
X-Received: by 10.99.133.200 with SMTP id u191mr315550pgd.93.1490799477863;
        Wed, 29 Mar 2017 07:57:57 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1289240pfx.8.2017.03.29.07.57.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 07:57:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so2166278pfr.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 07:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3XQN62EmkyX8Ldsf00IjOVt9RVQiL/EJtBFvd7+JkWM=;
        b=GF6pqpW3P55fuLjC6a3LaZ+SmHZ5zStFw8qhx2k9Pn43uetmdcTtyWZx93oPM25moz
         h3ip2qT1HTeoSJSPmDLiH5tHdc1zcN5VzNN8+YngLPB294BdW85876S04EZpPbqHYmu3
         nsDEdsJXM+Wr1b4M/2x6+1JaxX88HQlvSA7GL9nVoD7nodENq3bNsLZfSXny8f/5jiPG
         +B+ETsxcmKiejGgm+fUHMzGYI+lnNqa/582EAkYKT0JXpmdYbppXI+gQ5kyg9frCf+Qg
         1SBad5GYYgFon8fYq7YDRFJ7f0dVpp233H7QhjovlO8A1DGUo58diqEPA3h88wTSEs0R
         diwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3XQN62EmkyX8Ldsf00IjOVt9RVQiL/EJtBFvd7+JkWM=;
        b=mjYMwb5g3HeCPZ4m7eqCo+lE2XyDgpGbDvxNeiOi8gDV8lMBDJbLuAp2KB69zFUaLN
         ujcreFl1aOrDJfE/phUN5bz52Tv2OjMxZvS11sBfHJevjXPD1T/0UAxGkknPLTnoiz0K
         Lp8CukCN1u1ffTN0/e9UK0SFAnB2+Aj7vckc85FS+OlCEKUHeLRPc98JQMuIsxCpGLCt
         2igDtEUNyuheoSVRfXZL9cCJuPywnFBHwqqg2UPV6DUMGR7WfiWOoSIy0+RqZxisWEpY
         yeZPeoLbpkXreVr2vTbIVK5ffTMUPnXHQUbWudkTsXtRWQDWvbLrwnGnWSYRFpw3ni4c
         Paog==
X-Gm-Message-State: AFeK/H0/8tUFsoJlqc+yiu+dbA5SJ7q8xvnrhzVxGoRV7vC+9Fdpux+v30JGhJ0LFbyx9Q==
X-Received: by 10.98.103.146 with SMTP id t18mr931453pfj.135.1490799477455;
        Wed, 29 Mar 2017 07:57:57 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m20sm14174601pgd.32.2017.03.29.07.57.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 07:57:56 -0700 (PDT)
Date: Wed, 29 Mar 2017 20:27:52 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Wensong Zhang <wensong@linux-vs.org>, Simon Horman <horms@verge.net.au>,
	Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] net: netfilter: remove unused variable
Message-ID: <20170329145752.GA2756@arushi-HP-Pavilion-Notebook>
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
changes in v2
   - remove extra blank line.

 net/netfilter/ipvs/ip_vs_ftp.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/netfilter/ipvs/ip_vs_ftp.c b/net/netfilter/ipvs/ip_vs_ftp.c
index d30c327bb578..c93c93762354 100644
--- a/net/netfilter/ipvs/ip_vs_ftp.c
+++ b/net/netfilter/ipvs/ip_vs_ftp.c
@@ -482,11 +482,8 @@ static struct pernet_operations ip_vs_ftp_ops = {
 
 static int __init ip_vs_ftp_init(void)
 {
-	int rv;
-
-	rv = register_pernet_subsys(&ip_vs_ftp_ops);
 	/* rcu_barrier() is called by netns on error */
-	return rv;
+	return register_pernet_subsys(&ip_vs_ftp_ops);
 }
 
 /*
-- 
2.11.0


