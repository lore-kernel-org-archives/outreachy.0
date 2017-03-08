X-GM-THRID: 6395175452406710272
X-Received: by 10.129.145.65 with SMTP id i62mr3635295ywg.151.1489004867730;
        Wed, 08 Mar 2017 12:27:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls4460803oth.13.gmail; Wed, 08 Mar
 2017 12:27:47 -0800 (PST)
X-Received: by 10.157.63.98 with SMTP id m89mr3558929otc.82.1489004867385;
        Wed, 08 Mar 2017 12:27:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si823983pfb.2.2017.03.08.12.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 12:27:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so4408551pgy.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 12:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hUrevM0wQ+Vq2irfh6DO85NFMOWeSEH1BYsvATeFzxA=;
        b=furPoShQ6BuMsHaMHuT+HA3eI5do61SoeYrE+JCuGjFnVxBIHpfkqGQii5MJvhX3J1
         goRhJU2tzZaNx0zMX3hSY7ISSI7kAoqCWbZUHzjJsjmfrgGffASCk3nUGb4aLC798YeJ
         XuxfFMSm92lzBoGWM5Nn7+sc3gfmH2xAS8wZ2R0CyCJXYL1ajE/wWV3f4B5vBlMUmWtM
         sZjLXC2rmmcPi/G1aToB7PyPNzrSnhlnfvD5SUeEXRgEKNDGYsBVdytsL58ytUR6wwbh
         K2ETn+byr9kxqoI3P8R7rpAuIKSkgllDWPdDMVdj/JSn9R0rqWxKrqes4V/G79xgAUUM
         EQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hUrevM0wQ+Vq2irfh6DO85NFMOWeSEH1BYsvATeFzxA=;
        b=aBrDv48oaErOBKsxo2nUOLzUhS4EZ4hyiiwSeYCZEA6IqC82DrffHw5PcyWSUHGQrk
         apMYOOUdAHRxoAVUls2RB43zL1jE0ydNfGi9MYFgXvoocmxNP3HkKVSyhmnEfDd/reGB
         x4u1B041DZxisfktdU5qSI2Ffnvcz6DofZe1NlSlCar8zqe2hcbuZLHWPLUha0lMyy8R
         xf9kOg76iKfakBmMF5jX2ogRCiqw+qA4pMUxznGgeKIUKYazAcOeaApR9xBMV6vzXV2M
         ykH2MoIYyYOMb6EHb9X4R/s5wibP8zLthVe5Vsa0R53Plrqgvfcnq5nNRd30pbsdax0C
         2IkA==
X-Gm-Message-State: AMke39lvg5U/8y2HINAelIr4dOT55fbMsWjR3ZC22XqZm7WjMwvJDimqoc0u+a45mtiUAA==
X-Received: by 10.99.129.200 with SMTP id t191mr9505899pgd.41.1489004867120;
        Wed, 08 Mar 2017 12:27:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id d10sm7837820pfl.59.2017.03.08.12.27.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 12:27:46 -0800 (PST)
Date: Wed, 8 Mar 2017 12:27:45 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: wilc1000: wilc_spi: Add
 blank line
Message-ID: <20170308202744.GC2787@d830.WORKGROUP>
References: <20170308170652.3996-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170308170652.3996-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 08, 2017 at 07:06:52PM +0200, Tamara Diaconita wrote:
> Add a blank line after a function.
> 
> Fix the checkpath.pl issue:
               ^^^^checkpatch

Hi Tamara, 

This one looks good, but since you're going to rev the
patchset for the others, I'm going to be picky and ask you to
update this for the checkpatch spelling and for the subject line.

I did a gitpretty (alias gitpretty='git log --pretty=oneline
--abbrev-commit') to see what is customary for this file.
Just the driver name is customary.  I see that one submitter
before you, added the filename also, but let's not continue
that trend ;)

Dropping the .c filename from the subject line applies to 
all patches in the set.

Thanks,
alisons






> CHECK: Please use a blank line after function/struct/union.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 4a4b8c3..82d162d 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -1146,6 +1146,7 @@ static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
>  
>  	return 1;
>  }
> +
>  /********************************************
>   *
>   *      Global spi HIF function table
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308170652.3996-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

