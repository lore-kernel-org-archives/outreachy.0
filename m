X-GM-THRID: 6330624598541860864
X-Received: by 10.129.156.65 with SMTP id t62mr7317935ywg.16.1473963400876;
        Thu, 15 Sep 2016 11:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls1212014ioo.47.gmail; Thu, 15 Sep
 2016 11:16:40 -0700 (PDT)
X-Received: by 10.66.8.66 with SMTP id p2mr7727798paa.11.1473963400378;
        Thu, 15 Sep 2016 11:16:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 7si1426613pfw.1.2016.09.15.11.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so2409914pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 11:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vE8PAjLPOJfcz/EUBsokExfLYNZx0QN0TspYK33NAh4=;
        b=w0NNgZ81WrUL21FoS35RTamHph5KzqXin1+fE1sUZNQLKLa+eJyKv1oa5eub4kjB7V
         tGrD6ZDM7Wn0JR30MCZkQgv9jH9Nfe+rD/PZf+k2fPpWcg+7Y87aY8tILhR1Gnwq1C4o
         G0K0/EtK4huzo0i6yp2MS3I/itWKCzYjVF1ReqhNM6BmqePmLkLAjOKEGO/cADNCFBxz
         skFrF9yRJnmCsSfKVzpmDpuGYuKcmCV4WZaHmUYCsD5VziqTd2DosJ+4npoIsWh4g/tt
         KF3DtyT2fdOZ4L1APxEdYlvaoCJJYgLJ3gEFPG5JB8CJibARSefSodgeZl9IulhqonIL
         fdhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vE8PAjLPOJfcz/EUBsokExfLYNZx0QN0TspYK33NAh4=;
        b=IAtV/29ULeEitgi3t/9R0in9Edrl+RDQ5tQSP/gGqwZxb5wIDoR1bk2v79fhbbV9Mt
         7YINY1tO7TOkv3Jmv0cspQmXdKyjwgCaYT4mdWTM9exKr6osMg7DwJgvl/pFJPXhKK4V
         E/G5Nfxx8k/MLNjpH6N1hIUcI9zkfTxqi0yt41KGGaWytXj6ZZ9FCXZZ7rTXnJufdIGW
         QovImWAxsBYRjlm9jUcAtNbKivUrGbeP88V4GQL4C98Q1K7V6bESuQoDWYFkIIiOuf3O
         l1sfHdOgcdXf4cU/pFjO8a0F6SqOuVqDiLzSHEZkiR6mMg8qYtLuFmyg7jLIg73HlxgM
         xiNA==
X-Gm-Message-State: AE9vXwMw8qIk9ncfiSZm7/hBstmi4NxMXiw5oCXCoUX/G/85rUQcTgdkRJYqr6GgTxHjZA==
X-Received: by 10.66.150.134 with SMTP id ui6mr16783442pab.41.1473963400200;
        Thu, 15 Sep 2016 11:16:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p187sm46727039pfb.5.2016.09.15.11.16.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:16:39 -0700 (PDT)
Date: Thu, 15 Sep 2016 23:46:31 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: lustre: Remove unnecessary return capture
Message-ID: <20160915181631.GA32498@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value of a function call into a variable and
then returning it, we can club the two into a single return - call form of
statement. This change was made using the following semantic patch by
Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_request.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
index 5bf95f9..cf94926 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
@@ -2488,9 +2488,8 @@ static int mdc_set_info_async(const struct lu_env *env,
 		}
 		spin_unlock(&imp->imp_lock);
 
-		rc = do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
-				       keylen, key, vallen, val, set);
-		return rc;
+		return do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
+					 keylen, key, vallen, val, set);
 	}
 	if (KEY_IS(KEY_SPTLRPC_CONF)) {
 		sptlrpc_conf_client_adapt(exp->exp_obd);
-- 
2.7.4


