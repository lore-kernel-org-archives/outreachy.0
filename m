X-GM-THRID: 6264608921971851264
X-Received: by 10.31.9.78 with SMTP id 75mr24643300vkj.9.1458593054575;
        Mon, 21 Mar 2016 13:44:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.146 with SMTP id c140ls1351481ioe.76.gmail; Mon, 21
 Mar 2016 13:44:14 -0700 (PDT)
X-Received: by 10.66.141.74 with SMTP id rm10mr25763688pab.16.1458593054202;
        Mon, 21 Mar 2016 13:44:14 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si3711416pfb.1.2016.03.21.13.44.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x3so32046262pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 13:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MSqiSeNmwCowSSQ+gczwzwLpakVVabMlPXdvQwPZaIk=;
        b=W8NnYmmL5ndQazh9wBkQ6gSJsZ25OzthANKVz/1vOdEFw+SNPzymOlW8QqyAfV3Jy9
         zcJONeahbheIQsw4o68ePXybqjJxEVinbDuDpE0l0yHiH8QFNho0WlLR3SNd/O0Vo3zk
         PJkdmH7ws3Ox394ezCHRMSao49OSXZ8oZAsx6jo+evdqYs3shN/0fK9yK7eQUQyYON2I
         9JOxTmF3+dp3nUCupg52fIa+dlvdX+Vuw25oY/CQVrQ5ZxzpoNpTBcrJLr5SaG3vdbN4
         Y8645GpUZtFnNNe+LtEfxuzSJH0CHpO4RA8Bj9ZZri9il7ZD/4b/urTyuOASLDN8hfdD
         Lfmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MSqiSeNmwCowSSQ+gczwzwLpakVVabMlPXdvQwPZaIk=;
        b=dzOI/iLZvQgW5+jQSoHn4mFQHvnffEDH3TApW5TEIGibNhMbzBAtoP6Qouc1LsWWQK
         /TuHqvzFgpAxV0oIG0798pwxcdW8xA0usEo9zRB+1AUGDzIUujgC6D7Pfqzn3Um66KlR
         i/GNdFm9u43vbFfBM1TwAzBC4Qrlr2UHx+dixwEAiix7weOa8bhvSUZAFiQFd8+ZGfDa
         1qvyBTuZUxe+MbBAr1KQwFSHsNGUtCSlrP7TZNmoJvWbODbtbyhEB2gfGnkISXm0nWCp
         WV1DVr04VsBRDxUCw20tKeiCFW9uIbXGIz2uIoVcvfyXP7mm88hzjbKoQXI+QtmZnm6P
         kMDg==
X-Gm-Message-State: AD7BkJJJFtbOIVYzTFIcx/u+S1+syfkYR9DQx9v0BtaEKnNTaxcvadJ5LLYT7txbWaHESw==
X-Received: by 10.98.87.200 with SMTP id i69mr48004427pfj.63.1458593054059;
        Mon, 21 Mar 2016 13:44:14 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id r65sm42772987pfa.27.2016.03.21.13.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 13:44:13 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:15:24 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: lustre: socklnd_lib: Remove return statement
 from void function.
Message-ID: <25a621e5445915a97d9bd778448f98b64092ffea.1458567188.git.bankarsandhya512@gmail.com>
References: <cover.1458567188.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458567188.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove return statement from void function.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib.c
index 3e1f24e..acebc6f 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib.c
@@ -675,7 +675,6 @@ ksocknal_lib_set_callback(struct socket *sock,  ksock_conn_t *conn)
 	sock->sk->sk_user_data = conn;
 	sock->sk->sk_data_ready = ksocknal_data_ready;
 	sock->sk->sk_write_space = ksocknal_write_space;
-	return;
 }
 
 void
@@ -695,8 +694,6 @@ ksocknal_lib_reset_callback(struct socket *sock, ksock_conn_t *conn)
 	 * sk_user_data is NULL.
 	 */
 	sock->sk->sk_user_data = NULL;
-
-	return ;
 }
 
 int
-- 
1.8.3.4


