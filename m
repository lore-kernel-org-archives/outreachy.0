X-GM-THRID: 6401875517028433920
X-Received: by 10.107.30.141 with SMTP id e135mr6156118ioe.55.1490552797794;
        Sun, 26 Mar 2017 11:26:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls10946149ote.9.gmail; Sun, 26 Mar
 2017 11:26:37 -0700 (PDT)
X-Received: by 10.129.109.81 with SMTP id i78mr6202672ywc.60.1490552797481;
        Sun, 26 Mar 2017 11:26:37 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si1327754pfb.5.2017.03.26.11.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 11:26:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so6617855pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 11:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qwhvJhnlg/dmJi/LVXYLTcmCDswfiPho1SD7LbOr+GI=;
        b=Trb76jq6rkNdWg0nLgN5MURzU86tO3G34tAFDAA1kOOCe90icZSB7PGe/KhwkE5OEV
         Sn0Lpn6N9csD9IpYOpBUxZYKRJlnVXdhQ3b2IeIsr6QJciUU9HivXGIQRc6pqg9QXLHi
         2Y4Jp7kotAmayxF3D9M/T+FjD9v//GnH4nyR9smYlmPLuI5pNDJEVz5EQmYWabcV+duc
         eKOEBMBl7Qmi7ThEpQ4o6ZYp+rTMQ6XBx540EHPJ+smMfhwtpYEwMdt8z8lMINQodhrg
         UCQsAGkWEOEixHmHZUqhwKEhtgcP2JTTQv93Wcy2+USpzuJnwHGby63On64v99bmCLaE
         QWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qwhvJhnlg/dmJi/LVXYLTcmCDswfiPho1SD7LbOr+GI=;
        b=dY7Y8LC7upaCWUpvHSTXbVcSuyYALN0mA1PZESWXJElg9YHBUpWA36UMbeqYMoP+Ps
         izD2QnSxtbyktRjzA3xb0EI2mzOIubgVLNAyY678WEpGwJZJHbMD631J0rzAsL4frqhU
         ZWlhp8FKGRHacEXJp8lXURrot4ufqdizkR66uzhAnWqP8CyCUfuquFFKOnyziz+BClXe
         bEak1qUq7CSPj2t9ri8xMexdDgfCjAvjUegk0M4rqOT4geXCkZsCB2IwfQ9Q0ftNTHk/
         n/XVGpl6k6DdXijER1bKWf+9WRNqricNtBWWE2736keSGBj3yp5/rYDveNv/yRNceBTX
         XO8Q==
X-Gm-Message-State: AFeK/H0EdaGKmo2ByatQF0RW++OOqoqzOql2/8Cf+ZYF6R8tJsSaxHZuQkfCkv2hMFfENA==
X-Received: by 10.98.35.146 with SMTP id q18mr20627699pfj.59.1490552796744;
        Sun, 26 Mar 2017 11:26:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p6sm16193336pgn.40.2017.03.26.11.26.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 11:26:35 -0700 (PDT)
Date: Sun, 26 Mar 2017 23:56:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] kernel: pid_namespace.c: Remove spaces before tabs
Message-ID: <20170326182633.GA7742@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove unneeded spaces before tabs so as to
follow kernel coding conventions.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid_namespace.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 850a87a1de2a..8ea1dc6ed25b 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -229,11 +229,11 @@ void zap_pid_ns_processes(struct pid_namespace *pid_ns)
 	 * to exit.
 	 *
 	 * Note:  This signals each threads in the namespace - even those that
-	 * 	  belong to the same thread group, To avoid this, we would have
-	 * 	  to walk the entire tasklist looking a processes in this
-	 * 	  namespace, but that could be unnecessarily expensive if the
-	 * 	  pid namespace has just a few processes. Or we need to
-	 * 	  maintain a tasklist for each pid namespace.
+	 *	  belong to the same thread group, To avoid this, we would have
+	 *	  to walk the entire tasklist looking a processes in this
+	 *	  namespace, but that could be unnecessarily expensive if the
+	 *	  pid namespace has just a few processes. Or we need to
+	 *	  maintain a tasklist for each pid namespace.
 	 *
 	 */
 	read_lock(&tasklist_lock);
-- 
2.11.0


