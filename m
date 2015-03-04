X-GM-THRID: 6304088195072
X-Received: by 10.66.224.42 with SMTP id qz10mr3250039pac.0.1425450830005;
        Tue, 03 Mar 2015 22:33:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.165 with SMTP id 37ls467776iok.85.gmail; Tue, 03 Mar
 2015 22:33:49 -0800 (PST)
X-Received: by 10.70.91.67 with SMTP id cc3mr3197992pdb.2.1425450829787;
        Tue, 03 Mar 2015 22:33:49 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si373542pds.2.2015.03.03.22.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.43.162])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 56AF892F;
	Wed,  4 Mar 2015 06:33:49 +0000 (UTC)
Date: Tue, 3 Mar 2015 22:32:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fwserial: Replace NULL
 comparison with !foo
Message-ID: <20150304063247.GA21721@kroah.com>
References: <20150303181351.GA13380@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150303181351.GA13380@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 10:13:51AM -0800, Katie Dunne wrote:
> Addresses checkpatch.pl check
> CHECK: Comparison to NULL could be written "!fifi->data"
> 
> Makes the indicated replacements
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/fwserial/dma_fifo.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/fwserial/dma_fifo.c b/drivers/staging/fwserial/dma_fifo.c
> index 0279062..4c50e08 100644
> --- a/drivers/staging/fwserial/dma_fifo.c
> +++ b/drivers/staging/fwserial/dma_fifo.c
> @@ -106,7 +106,7 @@ void dma_fifo_free(struct dma_fifo *fifo)
>  {
>  	struct dma_pending *pending, *next;
>  
> -	if (fifo->data == NULL)
> +	if (!fifo->data)

I really don't like this type of change, as you now loose the typesafe
check for NULL and not 0, and it makes it a tiny bit harder to read.

So just please ignore that checkpatch warning, it's not that good.

thanks,

greg k-h

