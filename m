X-GM-THRID: 6251470557563322368
X-Received: by 10.13.227.133 with SMTP id m127mr18897624ywe.1.1455597714778;
        Mon, 15 Feb 2016 20:41:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.45.161 with SMTP id o1ls1688600obm.27.gmail; Mon, 15 Feb
 2016 20:41:54 -0800 (PST)
X-Received: by 10.182.46.201 with SMTP id x9mr19584331obm.43.1455597714300;
        Mon, 15 Feb 2016 20:41:54 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id yd9si491558pab.1.2016.02.15.20.41.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 20:41:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E7A4A1059;
	Tue, 16 Feb 2016 04:41:53 +0000 (UTC)
Date: Mon, 15 Feb 2016 20:41:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lmv: Remove unneeded
 do-while(0)
Message-ID: <20160216044147.GA28814@kroah.com>
References: <1455533899-17270-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455533899-17270-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 15, 2016 at 04:28:19PM +0530, Bhumika Goyal wrote:
> do {} while (0) wrapper in a single statement macro is unneeded.

Are you sure?  You can easly break code by changing this.

> Also its ok to keep empty #define here to avoid "statement with
> no effect" warning.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> index 733222c..7a31bd6 100644
> --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> @@ -2147,7 +2147,7 @@ static void lmv_adjust_dirpages(struct page **pages, int ncfspgs, int nlupgs)
>  	LASSERTF(nlupgs == 0, "left = %d", nlupgs);
>  }
>  #else
> -#define lmv_adjust_dirpages(pages, ncfspgs, nlupgs) do {} while (0)
> +#define lmv_adjust_dirpages(pages, ncfspgs, nlupgs)

That's scary, please leave it alone, unless you audited all users of
this call?  Hint, think about if this call was used as the result of an
if() statement?

thanks,

greg k-h

