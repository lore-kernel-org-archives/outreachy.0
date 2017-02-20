X-GM-THRID: 6388359593872850944
X-Received: by 10.28.24.2 with SMTP id 2mr453600wmy.12.1487592038015;
        Mon, 20 Feb 2017 04:00:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.28 with SMTP id u28ls526997ljd.10.gmail; Mon, 20 Feb
 2017 04:00:36 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr2102168ljd.26.1487592036926;
        Mon, 20 Feb 2017 04:00:36 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id q4si877333wma.3.2017.02.20.04.00.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 04:00:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x241.google.com with SMTP id z127so6411006lfa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 04:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9ltuxytDcTK3gbALRhVZCIG+JPjuD8X26jaiiczsYPE=;
        b=kRbjEdTXUD8tWbgvJVoT8YXUAj04JSznxcHqCL0xSkeCLURjhUfe9QLSTzu5NWZBdy
         VMwiRJUlniPunzar4yIN7dOONceemSVNcViJyZcsLlZQLUtB3R3mmBcc+NMznYDWwWB7
         W/vUdEWND0IGYSL915NEHPRiybRvWTjb2+ssXQYrIoVxUOo8slmgJCfdyp4aDvBDRtXY
         Ep8LhvHYazGk6aClLh4jrtNU8PPTksFty4HAe5eD+2SXhYAmKAo0vuOCXajpcgEfNrCi
         9ofOIvF3FRRQur3PxU+4No/3F5btcQOn8+PFmP5FVwf0fr42epoSJ8oFvhPG7WUI0leQ
         V59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=9ltuxytDcTK3gbALRhVZCIG+JPjuD8X26jaiiczsYPE=;
        b=HLh4nOKqCxaOy1rz9HygCVcYQnN8xn+UwlIydt9CJvhK4WJa8HTSuQLXFSxnZ7KH21
         EP3Ouel0Ogip+DBEXsPCeiNVMBa4joqfWVILVMyaVkegKLmbjUD+jnrc8HVERYRa6CZM
         IZwLVw0LVpfNWopsy0vAk/+FXdqwug6j0i6pc1OgN5udrFQQX/N+TalwAtiYtuCpefNx
         WARjynJyvu8zd4bE0Vx0SHMMnMJKNkZah/VGMs+i18lGXKZxskg+djUBT3v04S5/LSc7
         hVJSm9vJ3I30D+ToQg6W6KUCKbDzSmXRZq4PQX/MsNmSCLKgxz6Mb9ANujvEHd/6S4zp
         i3Ew==
X-Gm-Message-State: AMke39nWczGN+H3geqWEHCr0qgUFaJiFeb0CXu7flowzLCddg9H1CQ55d7QluvoEFFo/Pg==
X-Received: by 10.25.21.205 with SMTP id 74mr5750503lfv.182.1487592036522;
        Mon, 20 Feb 2017 04:00:36 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id l133sm5169610lfg.40.2017.02.20.04.00.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 04:00:35 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cfmds-00059J-UF; Mon, 20 Feb 2017 13:00:32 +0100
Date: Mon, 20 Feb 2017 13:00:32 +0100
From: Johan Hovold <johan@kernel.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: greybus: loopback_test: Change array index from
 loop bound to loop index
Message-ID: <20170220120032.GC479@localhost>
References: <20170218081738.GA28504@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170218081738.GA28504@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.24 (2015-08-30)

[+CC: greybus and staging lists]

On Sat, Feb 18, 2017 at 01:47:38PM +0530, sayli karnik wrote:
> Change array index from the loop bound variable to loop index.
> The open_poll_files() functions attempts to open poll files of devices
> numbered from 0 to device_count. If the open() function inside it is
> unsuccessful for any intermediate device, all files with fds of devices from 0
> upto that device must be closed and open_poll_files() should return -1.
> The current code only closes the poll file with the most recent fd allocated,
> and in most cases tries to close the same file multiple times.

Nice catch!

You forgot to CC the relevant mailings lists however (use
scripts/get_maintainer.pl).

Also your patch summary is a bit too detailed, something like

	staging: greybus: loopback_test: fix open error path

would be better.

Care to resend as a v2 with a shorter summary and lists on CC?

> Detected by coccinelle:
> 
> @@
> expression arr,ex1,ex2;
> @@
> 
> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>   arr[
> - ex2
> + ex1
>   ]
>   ...> }
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 18d7a3d..2ee9a22 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -674,7 +674,7 @@ static int open_poll_files(struct loopback_test *t)
>  
>  err:
>  	for (i = 0; i < fds_idx; i++)
> -		close(t->fds[fds_idx].fd);
> +		close(t->fds[i].fd);
>  
>  	return -1;
>  }

Thanks,
Johan

