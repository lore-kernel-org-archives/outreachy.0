X-GM-THRID: 6211053698454388736
X-Received: by 10.28.7.78 with SMTP id 75mr1773528wmh.6.1446151358072;
        Thu, 29 Oct 2015 13:42:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.13 with SMTP id 13ls424636wmr.23.canary; Thu, 29 Oct
 2015 13:42:37 -0700 (PDT)
X-Received: by 10.28.11.65 with SMTP id 62mr1168202wml.6.1446151357378;
        Thu, 29 Oct 2015 13:42:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t72si311871wme.0.2015.10.29.13.42.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 13:42:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,216,1444687200"; 
   d="scan'208";a="185093697"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Oct 2015 21:42:36 +0100
Date: Thu, 29 Oct 2015 21:42:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: media: bcm2048: fix code
 indent for conditional statements
In-Reply-To: <6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com>
Message-ID: <alpine.DEB.2.02.1510292141130.2027@localhost6.localdomain6>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com> <6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Oct 2015, Amarjargal Gundjalam wrote:

> This patch fixes the checkpatch issue:
> 
> WARNING: suspect code indent for conditional statements (8, 24)
> 
> Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index fb55e59..4948122 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -1001,7 +1001,7 @@ static int bcm2048_set_fm_search_tune_mode(struct bcm2048_device *bdev,
>  
>  	if (!wait_for_completion_timeout(&bdev->compl,
>  			msecs_to_jiffies(timeout)))
> -			dev_err(&bdev->client->dev, "IRQ timeout.\n");
> +		dev_err(&bdev->client->dev, "IRQ timeout.\n");
>  
>  	if (value)
>  		if (!bdev->scan_state)
> @@ -1616,7 +1616,7 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
>  			if (((bdev->rds_info.radio_text[i+1] << 8) +
>  				bdev->rds_info.radio_text[i+2]) ==
>  				bdev->rds_info.rds_pi)
> -					match_b = 1;
> +				match_b = 1;

This change and the next one leaves the continuation lines of if the if 
test with the same indentation as the then branch.  Consider also lining 
up the test with the right side of the coresponding (, so that there is 
some difference between the test and the branch.

julia

>  		}
>  	}
>  }
> @@ -1752,7 +1752,7 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
>  			if (((bdev->rds_info.radio_text[i+1] << 8) +
>  				bdev->rds_info.radio_text[i+2]) ==
>  				bdev->rds_info.rds_pi)
> -					match_b = 1;
> +				match_b = 1;
>  		}
>  	}
>  }
> -- 
> 1.7.9.5
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

