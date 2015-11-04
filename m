X-GM-THRID: 6212186880400687104
X-Received: by 10.182.120.129 with SMTP id lc1mr26906679obb.30.1446616571559;
        Tue, 03 Nov 2015 21:56:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.39.135 with SMTP id p7ls288721obk.72.gmail; Tue, 03 Nov
 2015 21:56:11 -0800 (PST)
X-Received: by 10.182.221.196 with SMTP id qg4mr26123946obc.23.1446616571271;
        Tue, 03 Nov 2015 21:56:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si2942056pab.1.2015.11.03.21.56.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 21:56:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (64-21-211-131.static-ip.telepacific.net [64.21.211.131])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E6B5F8DD;
	Wed,  4 Nov 2015 05:56:10 +0000 (UTC)
Date: Tue, 3 Nov 2015 19:40:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: selftest:
 Remove extern specifier
Message-ID: <20151104034051.GB29832@kroah.com>
References: <20151101141744.GA19046@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151101141744.GA19046@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 07:47:44PM +0530, Amitoj Kaur Chawla wrote:
> Functions have the extern specifier by default, so extern keyword can be
> removed.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/console.c   | 2 +-
>  drivers/staging/lustre/lnet/selftest/framework.c | 8 ++++----
>  drivers/staging/lustre/lnet/selftest/module.c    | 4 ++--
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
> index 024aaee..2b139c8 100644
> --- a/drivers/staging/lustre/lnet/selftest/console.c
> +++ b/drivers/staging/lustre/lnet/selftest/console.c
> @@ -1984,7 +1984,7 @@ static void lstcon_init_acceptor_service(void)
>  	lstcon_acceptor_service.sv_wi_total = SFW_FRWK_WI_MAX;
>  }
>  
> -extern int lstcon_ioctl_entry(unsigned int cmd, struct libcfs_ioctl_data *data);
> +int lstcon_ioctl_entry(unsigned int cmd, struct libcfs_ioctl_data *data);

Why do we have extern function declarations in a .c file anyway?  These
should all be moved to the proper .h file, not put in a .c file.  Please
make that change instead.

thanks,

greg k-h

