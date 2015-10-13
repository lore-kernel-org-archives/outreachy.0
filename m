X-GM-THRID: 6205157797691129856
X-Received: by 10.182.107.162 with SMTP id hd2mr30362605obb.29.1444751594720;
        Tue, 13 Oct 2015 08:53:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.149 with SMTP id g143ls1840801ioe.30.gmail; Tue, 13
 Oct 2015 08:53:14 -0700 (PDT)
X-Received: by 10.66.132.69 with SMTP id os5mr29208321pab.12.1444751594301;
        Tue, 13 Oct 2015 08:53:14 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si377034pbb.2.2015.10.13.08.53.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:53:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ve7so25258595pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=MZaeBIV2bTY/nCsrMQ7L8oyPCEogxLlt+4Ip087ITJc=;
        b=FQD+pkM3Yvltdm6RYg8vUI8ie7jEhbgoH39E5VehABNAY/PWWKNKgzF08vfUhN6x+g
         iI1AfW/mjWlJ0amx13tfC9PA76kcJqlv2lsw67f/9Fd/EG5rLqXoQAa68W1vEDYw6Wea
         +UGEH8FOR/s7Y8UhFFpOGBDvolQFIkGfKQ08wPC3DYAMV+TIwhLfBCvLh6YkXNMnI4Be
         Gu1xk67aOZn2Kk7VDnWPWjot4sMXEvV/5wwjAY1KJ6Pmwl8VyklVGns7QUSZDf+0NavY
         g5aW+HpyqptQF7u9jkpWTDLnf2nIL62Gzgn6NVZm811RwLTbNV/HTanUz+CZVLZN2Uwy
         H8cw==
X-Received: by 10.68.129.231 with SMTP id nz7mr41112305pbb.53.1444751594065;
        Tue, 13 Oct 2015 08:53:14 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yi8sm4643842pab.22.2015.10.13.08.53.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 08:53:13 -0700 (PDT)
Date: Tue, 13 Oct 2015 21:22:43 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: visornic_main:
 Replace kzalloc with kcalloc
In-Reply-To: <20151013154113.GA28785@ubuntu>
Message-ID: <alpine.DEB.2.11.1510132121200.15426@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <20151013154113.GA28785@ubuntu>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.561D28E8.0105,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:

> Use kcalloc instead of kzalloc for allocation of array as it prevents
> integer overflow.
> Semantic patch used:
>
> @@
> expression E1,E2,E3;
> @@
>
> - kzalloc(E1*sizeof(E2),E3)
> + kcalloc(E1,sizeof(E2),E3)
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> drivers/staging/unisys/visornic/visornic_main.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)

Hello, this has already been done.I think you should update your 
staging-testing branch

Shraddha
>
> diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
> index 85c9fec..6db74de 100644
> --- a/drivers/staging/unisys/visornic/visornic_main.c
> +++ b/drivers/staging/unisys/visornic/visornic_main.c
> @@ -1797,8 +1797,8 @@ static int visornic_probe(struct visor_device *dev)
> 		goto cleanup_netdev;
> 	}
>
> -	devdata->rcvbuf = kzalloc(sizeof(struct sk_buff *) *
> -				  devdata->num_rcv_bufs, GFP_KERNEL);
> +	devdata->rcvbuf = kcalloc(devdata->num_rcv_bufs,
> +				  sizeof(struct sk_buff *), GFP_KERNEL);
> 	if (!devdata->rcvbuf) {
> 		err = -ENOMEM;
> 		goto cleanup_rcvbuf;
> -- 
> 2.1.0
>
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151013154113.GA28785%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

