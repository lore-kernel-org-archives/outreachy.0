X-GM-THRID: 6808044843867045888
X-Received: by 2002:a17:902:bd89:: with SMTP id q9mr3193351pls.236.1585139942592;
        Wed, 25 Mar 2020 05:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls1516630pgh.3.gmail; Wed, 25 Mar
 2020 05:39:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vugEydUTseIDkDXupRfZTurE4FrOckBNfmPJPtppVMp/56Ui60ypP1oS//em+nxNdM/Jjrj
X-Received: by 2002:aa7:9a1c:: with SMTP id w28mr3325094pfj.16.1585139941163;
        Wed, 25 Mar 2020 05:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585139941; cv=none;
        d=google.com; s=arc-20160816;
        b=dEHMxM55gt1o8F9BVzBEcqfRKtFXZi6wLJ2Pcd03S8La+XVGxnGKzCI8ia74Ic8et3
         MLsWIqXWnhYE21RtqxlVXVFvwSNe8o5B+lfqre53/9yWmG0YhRffPhqJq6hedrU2iKZ4
         aBJIyUBE4kp1+RNubbND+eude0PjRi83QpUv+DzIBhg6vs/FE+lxfs6ioO1LI73Fr0Q9
         iUyo2YEEyDtPMX9iSpErfrT00MmjyrnWxO5nfxWOWzqDfX/ghpKJnrYkt08/b+8SHGxM
         cGg9F7ln72I37nrLvQ8R3hV5WJZvtb1jdekUemPzkGBA4xidyJdu/llah519A5ZKjkMG
         XKTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AryBc8GndhKd40kzhnaxC2XG5pg/XIvyVoWAeft8H2U=;
        b=kayFtkjett+zaPA8jHZOp7UXiIwEq+RhuZhp2VKyiFv8fZnHM03FMBCg9jSfIlGzGb
         eDpm0WeX9ejrpbwo6yz6rwECwmzLWiFsUmqtltiVIFfC1JhOvvU8sJIlCyaCUCvsZd/b
         nLg467XwJC7GUSPvzoVXPs0vrRUWGtsb7g+BVtVg0hlvcYMrUFCldrAgaelMLHYEclIN
         TUgw+ubQTlMIXO37KvNC8NBXgI5b48jbOX7ld1DajvFfpSJ6zCYPcejMqa9LeuhwShL+
         w4RfXcWW055ZnoeZ8Gqk9bzVYBgDjOUZ5uyRSxnTMBt20YFrwzbbPXWztpnEB36QuFV5
         aT1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VDYMlTBb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j44si269415pje.0.2020.03.25.05.39.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VDYMlTBb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 50E2C2076A;
	Wed, 25 Mar 2020 12:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585139940;
	bh=2h8wrA0rZ4czd72CFSuyhgl5xX+aUpN9jL5Nb5iC0/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VDYMlTBbMBZi8xymbDcfV2+rNnqkGK99RHAmelJMwzINZqkLvVNeEQxoIkYSK1Ao9
	 8nxYxiTjAeBhgp4q4yY8xJZfTXcfsgLI1mssB4la2plO4vX8n7hRLdnxassuTv7nh3
	 8Zrcf5O+1HOuNpF51pGRwgQOIfni3ZQncy+ITghE=
Date: Wed, 25 Mar 2020 13:38:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz, sbrivio@redhat.com
Subject: Re: [PATCH 1/6] staging: hp100: Properly indent the multiline comment
Message-ID: <20200325123858.GB3454907@kroah.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>
 <20200325072905.29066-2-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325072905.29066-2-debsoumyajit100@gmail.com>

On Wed, Mar 25, 2020 at 12:59:00PM +0530, Soumyajit Deb wrote:
> Shifted the end of multiline comment "*/" to next line.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 67320292d254..d421b2978ae6 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -262,7 +262,9 @@ static void hp100_RegisterDump(struct net_device *dev);
>   * This work *only* for memory fragments part of lp->page_vaddr,
>   * because it was properly DMA allocated via pci_alloc_consistent(),
>   * so we just need to "retrieve" the original mapping to bus/phys/dma
> - * address - Jean II */
> + * address - Jean II
> + */
> +

Why did you add the blank line here?  The comment is describing the
function:

>  static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 *ptr)

So it should be right up next to it.

thanks,

greg k-h

