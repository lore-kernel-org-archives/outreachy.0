X-GM-THRID: 6209280550027395072
X-Received: by 10.182.126.47 with SMTP id mv15mr35940972obb.44.1445930852146;
        Tue, 27 Oct 2015 00:27:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.229 with SMTP id p92ls3744684qgp.46.gmail; Tue, 27 Oct
 2015 00:27:31 -0700 (PDT)
X-Received: by 10.129.145.71 with SMTP id i68mr19578337ywg.1.1445930851525;
        Tue, 27 Oct 2015 00:27:31 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si3974623pab.1.2015.10.27.00.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:27:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id z6so213886545pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Q4G/fdgXSEkgbMNibkhob73EXGQf/7bJEv3pdmn7VII=;
        b=UHrSkVyQtq2lqOKDqUAEYMzh5/wCaXjGfQGrzWUkLahbQdEHdTTDQuXYhFINkHeOhH
         qBlwxPZw57QBIL3jxJ9vaql92pz++8Z5H3MHFeNyu7ssiVpbjPHJEPVOTcmUwlxQhpm6
         5Pwsaf0gyrYUhT89FQ+5uidBrQmmGA1ImCvmPwsY6N2qklBg2SHDez+dtqowyuh6Z2j4
         oLvTMn7KAqb30QbzPPWyHfLUcvU0XQlCSgCKHZnQ25813VlzfuwjgmqbwNTEN7vJg+PH
         YFSx75fQGAke4UBnFP9vAPxCaS8sCao3drgL75FG5kYUsvbSCSso3nTi0pe+SoVAWqgr
         srNw==
X-Received: by 10.68.252.73 with SMTP id zq9mr26951860pbc.130.1445930851332;
        Tue, 27 Oct 2015 00:27:31 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.138.117])
        by smtp.gmail.com with ESMTPSA id pk2sm37760434pbb.21.2015.10.27.00.27.29
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:27:30 -0700 (PDT)
Date: Tue, 27 Oct 2015 12:57:11 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] staging: media: lirc: lirc_sasem:
 Replace timeval with ktime_t
Message-ID: <20151027072711.GA15572@sudip-pc>
References: <20151024181942.GA2306@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151024181942.GA2306@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 24, 2015 at 11:49:42PM +0530, Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038 by replacing it with
> ktime_t.
> 
> This patch changes do_gettimeofday() to ktime_get() because
> ktime_get() returns ktime_t while do_gettimeofday() returns struct
> timeval.
> 
> This patch also uses ktime_ms_delta() to get the elapsed time in
> milliseconds.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_sasem.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
<snip>
> @@ -584,10 +585,9 @@ static void incoming_packet(struct sasem_context *context,
>  	 */
>  
>  	/* get the time since the last button press */
> -	do_gettimeofday(&tv);
> -	ms = (tv.tv_sec - context->presstime.tv_sec) * 1000 +
> -	     (tv.tv_usec - context->presstime.tv_usec) / 1000;
> -
> +	timestamp = ktime_get();
> +	ms = ktime_ms_delta(timestamp, context->presstime);
> +	

Trailing whitespace.

regards
sudip

