X-GM-THRID: 6535331829048672256
X-Received: by 10.176.73.67 with SMTP id a3mr8241828uad.41.1521625516959;
        Wed, 21 Mar 2018 02:45:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.153.87 with SMTP id b84ls1735812vke.11.gmail; Wed, 21 Mar
 2018 02:45:15 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtV7zrp2nUDdYwDzRX+9utDSsR8mBu8EOJkgmuXTA5EWc0elMZo/Y3Gck2y5CdPfdOSfIje
X-Received: by 10.31.83.1 with SMTP id h1mr8494660vkb.60.1521625515881;
        Wed, 21 Mar 2018 02:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521625515; cv=none;
        d=google.com; s=arc-20160816;
        b=GwNL8UmCkSMeGf4kuMY66Qe5e0yTle6zapIc6i4LGu+FrxqTPK9+3HiKMGr0T/6bg8
         1NZ57VHS8CGX4KbqZWyZbuVzdRYo2XouYXz6ASSL7zYK8eaX03ZGWwKeBaw+r40SU+Dx
         SV+ik2et65L3YgZkTpwJThfr573LhMBeYiURKH4ffzAN6pxDdrG9xqpVFkrhS2qBhcIX
         LdgoF7Ea20tx/HDqyDmHsZNwjqQtaI8rkq+/SeON4fLWJfIlBlExx87/E4PAtjfQl9+D
         oSaiAFP3wA59sRb0JBc6z1hj7y21bqkCQlulGhCPJNzxCtxZoCDRbMzY8WYXf0RKd6oy
         jspQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=M3FI9IwfvQzFnMqktgxJDPCCw77LAqR39xsjgILllYM=;
        b=LCWeuTCMuOutbecWM6JIyPq1fQirFYnY7pIg74aWiQ0Rf+m/5SnmDCKVf2guYVsU5j
         izTAP0BC8iIqie77+G2Q9B8j/FayuM3TKyqyXroiDz2Q5RdUZHbcHhPosScZJAh91vQJ
         ioF7c8qaGG15iXJfMt5I53Rof+vL8GgZijlD09gqWJ1ftDIDKFoj5VC/UoS7nYrGnwJX
         FBUTXXMlOy/+7yn2zfwDJq0prYOOJvzrCz5KzV/s+XyU17k49LUElCG1VfGH2xNhKzAN
         99hn3CNCaKtizuFm+8dw9aNf3B4thCBNNfchhoBWL4GdIlwsR+9uOIa6xCBGezscHE/X
         m16g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qRBZhJ5Q;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id b32si252052uad.5.2018.03.21.02.45.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 02:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qRBZhJ5Q;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m24so1737908pgv.8
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Mar 2018 02:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M3FI9IwfvQzFnMqktgxJDPCCw77LAqR39xsjgILllYM=;
        b=qRBZhJ5QNdojvN5Cf5xprlnQYc5WNVCu8v6/2Yc0c0jBF32Vc20PuPKBMNFMa/Stur
         NbFKGpxSdRtAxrNFSz+YprLcoLzgDwzXCrS/ESwGXdCe18v+G0UZRAboMbuJTDSdl2Ou
         eblp4QG9MCdJ2QkWQbaJFdvk5HeDJxmNVLrFYFUxcd/H1qbNlwYr7sKvB6Ta4FxtFQBS
         fnCy6AF5FNqGq1j93fiFwvvaiTPL1T1llqGk/w1IB1Ptfg+x/rRhGGY2mAjXgfzR9sP1
         96A8wubSrDENo2mgZzOjpdn7w1f8qdkXVEv7tKsuswezhwelh4wxe1MdCeVOwgksA6vm
         ogPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M3FI9IwfvQzFnMqktgxJDPCCw77LAqR39xsjgILllYM=;
        b=YIiucQ1KJP0ZGCeSaMHuXpMuBLrnhoYJ4mK/d2JI2YmGdlyAurwA6vFrdvmLSmfKIs
         XyWrh8ffOPLq0nH0kodGgl2oXX2ntfpnjh2w1vAY5HCydzX3b4vklf0ejWN2pulHK1TP
         8M//+AS8HZ9qZV++iimp+F7afGI2d3HNMRvBWX3RhFzN+mZWtLWGSyx9mH6t9cLP6Ybh
         32968ybshSyaWK8EVgz9ldHleO9zp+CCuAxZyBlPv9bdb66b8F/1/66XBc7dr+vWKBIc
         mmbRFS1gQafuQW4pTILc1M2ZNkswe3weaGn2Z2bUNiRtD2EC+/3AmWF+EBXiTtDh9pIk
         UY0w==
X-Gm-Message-State: AElRT7GamUiTUYksY6D/yB3misOZ8cr9OofvgcvlG+KbpPYMdjkPIxYe
	eIb/uCJbY3/Q8SZ0xhOX2At9Pw==
X-Received: by 10.99.183.15 with SMTP id t15mr14789363pgf.416.1521625513661;
        Wed, 21 Mar 2018 02:45:13 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r9sm5747436pfg.128.2018.03.21.02.45.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Mar 2018 02:45:12 -0700 (PDT)
Date: Wed, 21 Mar 2018 15:14:22 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org, kadlec@blackhole.kfki.hu, fw@strlen.de,
	davem@davemloft.net, outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extension: Constify option struct
Message-ID: <20180321094422.GA18335@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The struct of type option is only used to initialise a field and
is not modified anywhere.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libarpt_mangle.c | 2 +-
 iptables/iptables-xml.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/extensions/libarpt_mangle.c b/extensions/libarpt_mangle.c
index ec9b543..0d1f140 100644
--- a/extensions/libarpt_mangle.c
+++ b/extensions/libarpt_mangle.c
@@ -32,7 +32,7 @@ static void arpmangle_print_help(void)
 #define MANGLE_DEVT   '4'
 #define MANGLE_TARGET '5'
 
-static struct option arpmangle_opts[] = {
+static const struct option arpmangle_opts[] = {
 	{ .name = "mangle-ip-s",	.has_arg = true, .val = MANGLE_IPS },
 	{ .name = "mangle-ip-d",	.has_arg = true, .val = MANGLE_IPT },
 	{ .name = "mangle-mac-s",	.has_arg = true, .val = MANGLE_DEVS },
diff --git a/iptables/iptables-xml.c b/iptables/iptables-xml.c
index 49674ec..69c19a6 100644
--- a/iptables/iptables-xml.c
+++ b/iptables/iptables-xml.c
@@ -38,7 +38,7 @@ static int verbose;
 /* Whether to combine actions of sequential rules with identical conditions */
 static int combine;
 /* Keeping track of external matches and targets.  */
-static struct option options[] = {
+static const struct option options[] = {
 	{"verbose", 0, NULL, 'v'},
 	{"combine", 0, NULL, 'c'},
 	{"help", 0, NULL, 'h'},
-- 
2.7.4


