X-GM-THRID: 6260127828626374656
X-Received: by 10.28.85.137 with SMTP id j131mr166651wmb.1.1457549591475;
        Wed, 09 Mar 2016 10:53:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.136.139 with SMTP id k133ls227996lfd.103.gmail; Wed, 09 Mar
 2016 10:53:10 -0800 (PST)
X-Received: by 10.112.145.225 with SMTP id sx1mr1371343lbb.23.1457549590795;
        Wed, 09 Mar 2016 10:53:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 185si431409wml.0.2016.03.09.10.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 10:53:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id p65so11836640wmp.1
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 10:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ka6ox0Zu3Jnd8ZhKStwRCR50ND/wNtPS0jbDobU1trI=;
        b=aswAvSoQSws5RUpRPNLbcLUaaVtQDJsYK5jpHnVqAGg1TTvhm3EItPirH8VgkN70V1
         tMyh/Urxe4ssBdn9OMjF+qhCpLq3b/gmfuMUawLT7qBkLfDz4w+mAWpK9WUekJunrKvr
         p3GkLEnLZs3SX36DQQ41TGxDb7GPNHt/R+sAromPa6gigzwEsw7sffk/i8bFIrBN4253
         98yzoVnL4wZ3ni5Na1KAlzoPrz/xU87sNtxeK7KGvyyH0fJXaPy01bpAySWn1ds3kz7m
         Jod1VXw4ia7EETIfzOfoPuhOhUJ0MYmxVlPm/OHmHc5jd18/+nGQfRLjxqiHdF8XQNTY
         cgAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ka6ox0Zu3Jnd8ZhKStwRCR50ND/wNtPS0jbDobU1trI=;
        b=mWV+X904dzsHgW9fCWtszutKCLNgrbbS4lOq0yD2DfZl1Fe8AKU3lWojAp+Fq/XFyH
         Ec2QP+QMapeGMbTyqjf2dk+5C3FygbiaGyNLI0OUWiH3KMhk6sOEGA98KR/qoLfgXZBZ
         39ypsyOBkS8/VvD1g8X+fhzFKMOXYoxIaMv0e6iupPABCCOWB0dZxoUQPLNom21WxPMG
         eGFFpIcCAY+k/tzHT84v8N28cdNFw8PuzsXNI/Ht0Dq5EOG4MOAScY90IselVhSwczgx
         h9HniAFyi7HI8/wY6abLBjeSYQOjFgJZlfe6m3ulC5gbC3rw0+lvuUPNWcT+C0Qf4I1z
         9Jgw==
X-Gm-Message-State: AD7BkJL5Ng6cbhURJ9m+faUc4nMubRiSIqsoYpN+pARUc5osPzwP72NglGEjkc9cTSHfsw==
X-Received: by 10.28.223.70 with SMTP id w67mr641798wmg.92.1457549590621;
        Wed, 09 Mar 2016 10:53:10 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (cli-5b7e49a2.wholesale.adamo.es. [91.126.73.162])
        by smtp.gmail.com with ESMTPSA id n66sm9657568wmg.20.2016.03.09.10.53.09
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 10:53:09 -0800 (PST)
Date: Wed, 9 Mar 2016 19:53:07 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org, outreachy-kernel@googlegroups.com
Subject: [PATCH nft] proto: Add router advertisement and solicitation icmp
 types
Message-ID: <20160309185304.GA13575@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Enable support for router-advertisement and router-solicitation icmp types in nft.

Example:
$ sudo nft add rule ip filter input icmp type router-advertisement counter accept
$ sudo nft add rule ip filter input icmp type router-solicitation counter accept

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 src/proto.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/src/proto.c b/src/proto.c
index 0ed98ed..b54a4c1 100644
--- a/src/proto.c
+++ b/src/proto.c
@@ -299,6 +299,8 @@ static const struct symbol_table icmp_type_tbl = {
 		SYMBOL("source-quench",			ICMP_SOURCE_QUENCH),
 		SYMBOL("redirect",			ICMP_REDIRECT),
 		SYMBOL("echo-request",			ICMP_ECHO),
+		SYMBOL("router-advertisement",		ICMP_ROUTERADVERT),
+		SYMBOL("router-solicitation",		ICMP_ROUTERSOLICIT),
 		SYMBOL("time-exceeded",			ICMP_TIME_EXCEEDED),
 		SYMBOL("parameter-problem",		ICMP_PARAMETERPROB),
 		SYMBOL("timestamp-request",		ICMP_TIMESTAMP),
-- 
2.7.0


