X-GM-THRID: 1229525614592
X-Received: by 10.66.232.133 with SMTP id to5mr9649394pac.27.1424985232143;
        Thu, 26 Feb 2015 13:13:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.67 with SMTP id m64ls345259iod.86.gmail; Thu, 26 Feb
 2015 13:13:51 -0800 (PST)
X-Received: by 10.66.66.1 with SMTP id b1mr9501892pat.8.1424985231930;
        Thu, 26 Feb 2015 13:13:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si262803pbc.1.2015.02.26.13.13.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:13:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A7ACCB12;
	Thu, 26 Feb 2015 21:13:51 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:13:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Remove space before tab
Message-ID: <20150226211351.GA30009@kroah.com>
References: <1424431502-4155-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424431502-4155-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 01:25:02PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "please, no space before tabs"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_mgmt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_mgmt.c b/drivers/staging/dgnc/dgnc_mgmt.c
> index 31e9f45..ee821da 100644
> --- a/drivers/staging/dgnc/dgnc_mgmt.c
> +++ b/drivers/staging/dgnc/dgnc_mgmt.c
> @@ -167,7 +167,8 @@ long dgnc_mgmt_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		di.info_bdstate = dgnc_Board[brd]->dpastatus;
>  		di.info_ioport = 0;
>  		di.info_physaddr = (ulong) dgnc_Board[brd]->membase;
> -		di.info_physsize = (ulong) dgnc_Board[brd]->membase - dgnc_Board[brd]->membase_end;
> +		di.info_physsize = (ulong) dgnc_Board[brd]->membase
> +			- dgnc_Board[brd]->membase_end;
>  		if (dgnc_Board[brd]->state != BOARD_FAILED)
>  			di.info_nports = dgnc_Board[brd]->nasync;
>  		else

Your subject and changelog does not match what this patch actually does
:(

