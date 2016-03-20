X-GM-THRID: 6264136808663089152
X-Received: by 10.129.83.85 with SMTP id h82mr13492882ywb.18.1458483215023;
        Sun, 20 Mar 2016 07:13:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.134 with SMTP id 6ls3279304qgz.70.gmail; Sun, 20 Mar
 2016 07:13:34 -0700 (PDT)
X-Received: by 10.140.167.7 with SMTP id n7mr19471598qhn.19.1458483214430;
        Sun, 20 Mar 2016 07:13:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2920440pfb.1.2016.03.20.07.13.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 07:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so25508361pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 07:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uDHshUYnDBrj/1OUUA3oh9Zo5QeiX0kaqrQXJsf2av4=;
        b=OYBIOaQw8O+F09R9URdYaXEn5CVp7Ud9Ma0ds6FcF/i2XTdsGfSUyW8aGmBN/uWxV1
         AeU83qr9DAPTAKW7DAUmg42RqjWPgYLfnMVvHqlMSBPgltb7j55sCNim4ZAZllat6On3
         uQuiihuYpxOtOMmqvT3XifcH+tYzLgw6h+WrjbBIFpz6JSN1HF9tedSMPrhozC0+CqQi
         nDP0b/AXwQZIa2aoGw3gWeeNE5sTPPMUiyNo6sPFgdyW12YFsllVhd8lvKkRqam5Ndi8
         XrmiDVsfmgfUcIAhOWb3HnFeBU6gyYEvPfLRm2sRMfRsa4CixAnE/EGi7zaslyuAX3FN
         YZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uDHshUYnDBrj/1OUUA3oh9Zo5QeiX0kaqrQXJsf2av4=;
        b=gkgxXgP7AovzoWuszs9ZYwzhZ2PDm0rK6RMlE1ubY9hdhVSgBuNuHcSg/Sq+vkjeI9
         9n7veGvUt2/R9xizEctN3w/yJdutZ7ra2gkdDYXh9zcpmOLm7B26k/6BerE6qfgBub4V
         GbBEYa7F3IL/q+SbmDfovWwD83x+6drhd8ukd9D3YvC5HpaflPZO4XLsvvyg5ToqjouQ
         MTB5ZqILi7Oguq5MvoqGbTj8tK/EZb50acZC6q1mD1EzKCorlL7TvFjqWZKz9IIhcpRU
         OtX/YNEvbmpL+7D1TQlIvwRDVFc0qq1fPN9Yi0rfUQ+WHuweOYYXfsCV/yh4USw1hZlu
         sdOg==
X-Gm-Message-State: AD7BkJImHbnPJYgFYmLkXfvDRhRXdGlRb+wsnMmbx3yAK7rycOQzYbixwVnKWwalbo6ImQ==
X-Received: by 10.66.141.11 with SMTP id rk11mr38674480pab.75.1458483214272;
        Sun, 20 Mar 2016 07:13:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id ux2sm33928790pac.46.2016.03.20.07.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 07:13:33 -0700 (PDT)
Date: Sun, 20 Mar 2016 12:44:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: lustre: rpc: Correct the argument of sizeof().
Message-ID: <76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458454678.git.bankarsandhya512@gmail.com>
References: <cover.1458454678.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458454678.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Correct the argument of sizeof().

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/rpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 69be7d6..563827c 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -256,7 +256,7 @@ srpc_service_init(struct srpc_service *svc)
 	svc->sv_shuttingdown = 0;
 
 	svc->sv_cpt_data = cfs_percpt_alloc(lnet_cpt_table(),
-					    sizeof(struct srpc_service_cd));
+					    sizeof(*svc->sv_cpt_data));
 	if (!svc->sv_cpt_data)
 		return -ENOMEM;
 
-- 
1.8.3.4


