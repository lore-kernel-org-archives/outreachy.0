X-GM-THRID: 6255184254546739200
X-Received: by 10.67.13.228 with SMTP id fb4mr23756246pad.39.1456467556020;
        Thu, 25 Feb 2016 22:19:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls845391qgd.6.gmail; Thu, 25 Feb
 2016 22:19:15 -0800 (PST)
X-Received: by 10.129.87.73 with SMTP id l70mr43566092ywb.13.1456467555508;
        Thu, 25 Feb 2016 22:19:15 -0800 (PST)
Return-Path: <bounce-md_30481620.56cfee63.v1-3fd10d4a5945467d8d05f3195a630dd5@mandrillapp.com>
Received: from mail132-22.atl131.mandrillapp.com (mail132-22.atl131.mandrillapp.com. [198.2.132.22])
        by gmr-mx.google.com with ESMTPS id q187si748843ywf.4.2016.02.25.22.19.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:19:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cfee63.v1-3fd10d4a5945467d8d05f3195a630dd5@mandrillapp.com designates 198.2.132.22 as permitted sender) client-ip=198.2.132.22;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cfee63.v1-3fd10d4a5945467d8d05f3195a630dd5@mandrillapp.com designates 198.2.132.22 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cfee63.v1-3fd10d4a5945467d8d05f3195a630dd5@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=psgVHMmPIq0eqbx51vCtVGnYGIs=;
 b=I1tW0ylVHWUEV9LtYdWuSKH3FMs9qEbYkfIwf+qhMWORdRa3y/zSBwkN7dyfE1V8L6K7zUoT/xt0
   fDiskVD0ttfP22keARqAANOL0GUBgAdP71gvBwvXA5IFdsG6yJA3d77wImhDQRSrqa9jKSWYT4fI
   pE6r7k0VJN5kLUqoyeA=
Received: from pmta02.mandrill.prod.atl01.rsglab.com (127.0.0.1) by mail132-22.atl131.mandrillapp.com id hpvn661sar84 for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:19:15 +0000 (envelope-from <bounce-md_30481620.56cfee63.v1-3fd10d4a5945467d8d05f3195a630dd5@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456467555; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=fKv2VOMZzZAOJRyMC3fwoICG+7ev9IhH0wAkRMCdP9s=; 
 b=HYn2PCmjph0vIDyQUAwxHWXFsOa1W3CzJRcmpLDsdMs8cAmGR5IEjR+10gw8NNVwxz5ybB
 dtaG9k4aKWuh/ahlMzXN61RH+QcemRkDA3pF1bXN00Js27DIcYPPGLQ0y+nHHJVr7GMVOU72
 5ffmASnvlM1fv/x/ciyovbhulLwzI=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: Fix unnecessary whitespace warning
Return-Path: <bounce-md_30481620.56cfee63.v1-3fd10d4a5945467d8d05f3195a630dd5@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 3fd10d4a5945467d8d05f3195a630dd5; Fri, 26 Feb 2016 06:19:15 +0000
To: Anchal Jain <anchalj109@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226061914.GA2729@kroah.com>
References: <20160225110955.GA3905@life-desktop>
In-Reply-To: <20160225110955.GA3905@life-desktop>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.3fd10d4a5945467d8d05f3195a630dd5
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:19:15 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Thu, Feb 25, 2016 at 04:40:03PM +0530, Anchal Jain wrote:
> This patch remove the warning detect by checkpatch.pl
> WARNING: unnecessary whitespace before a quoted newline
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_pack.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lov/lov_pack.c b/drivers/staging/lustre/lustre/lov/lov_pack.c
> index 4d8abb9..c65b950 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_pack.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_pack.c
> @@ -183,7 +183,7 @@ int lov_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
>  			return -ENOMEM;
>  	}
>  
> -	CDEBUG(D_INFO, "lov_packmd: LOV_MAGIC 0x%08X, lmm_size = %d \n",
> +	CDEBUG(D_INFO, "lov_packmd: LOV_MAGIC 0x%08X, lmm_size = %d\n",
>  	       lmm_magic, lmm_size);
>  
>  	lmmv1 = *lmmp;

Someone else already sent this in before you did, sorry :(

