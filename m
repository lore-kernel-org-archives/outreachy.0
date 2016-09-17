X-GM-THRID: 6331277743473295360
X-Received: by 10.13.215.207 with SMTP id z198mr11980803ywd.47.1474146915820;
        Sat, 17 Sep 2016 14:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.211.20 with SMTP id n20ls684178itg.12.canary; Sat, 17 Sep
 2016 14:15:14 -0700 (PDT)
X-Received: by 10.107.44.136 with SMTP id s130mr344275ios.11.1474146914603;
        Sat, 17 Sep 2016 14:15:14 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3710607pab.2.2016.09.17.14.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so4978545pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 14:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Tt53gjxY5rYT3yC2Q0lCaKR6NNJEu9zusBsxy2FqesQ=;
        b=Vdb+d6k3GWmynoU1U3YKSYoQHlKakDVx0YlgQakl9OuKGrFCkRFrVITR+w7vuDov8r
         qKrWwRbPTqY59P6XGa8vR48T785nBPRE8gpvFDXeOlHk9jxVZ70NPI0BVJdyPODHSqql
         hhcGt2fYfYScFbnkrZm+ULDUYih73+rzJ52t31N9wmhdA8FvjQ7YKJNa7EU+JkHJ/wYx
         U+yy1eG8L1EZ2dEY10GNFRl7HKCARI6sTfQ0lUES/Ojt77ZUs95FKLoFPnokx0giC6WK
         weE6dulqKBvtQQ/UZ7o5J3CVlJbxHOAT2uyui4bwAeggYUwY5lKl2oIoKxTlxh9cSdIy
         ZZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Tt53gjxY5rYT3yC2Q0lCaKR6NNJEu9zusBsxy2FqesQ=;
        b=gnntOcjceTG9fKHQPZGjhJp4MhOhMs30ufUKJj9mIz9SPFw6T6FDMAkecMihd/ziPG
         2BsEfAhsoqH1Nm7vh68VunZdecszjHc7NiX3Kga5GLL4MJASmvj+58I7F4O/wQand16Z
         rZd8xz5Ja62jPXGzV2rENnFTvRN6UklhjWlAHLok1H8Kt4tPcKcCzjYGWqfH1WEyF/tD
         AouIc7Hfl+cSL8ItUHLtsBGvWAN0qbbmAvEOk4iB9cU0amuWd1n71pv4iecbZYauYI3j
         Creqt8Kqk7Qb5Rn6gipAbWz/BcVfj0BalcdZGZGiEFUM1pR00d/pHRBjnUIzKTP4E800
         dCIA==
X-Gm-Message-State: AE9vXwOL9H2IxjLNY/rIz1l5rCm//etU+D9axyF4XIGu8/QoVqK0AECiCSSjJW8DxI0UaA==
X-Received: by 10.66.22.70 with SMTP id b6mr12337054paf.94.1474146914382;
        Sat, 17 Sep 2016 14:15:14 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id 22sm27579636pft.10.2016.09.17.14.15.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 14:15:13 -0700 (PDT)
Date: Sat, 17 Sep 2016 14:15:11 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i4l: Return NULL instead
 of 0.
Message-ID: <20160917211510.GB2854@d830.WORKGROUP>
References: <20160917071702.GA16260@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160917071702.GA16260@sandhya>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Sep 17, 2016 at 12:47:02PM +0530, Sandhya Bankar wrote:
> Return NULL instead of 0, if card with given driverId is not found.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Sandhya, 

Not related to this patch specifically, but seems like most
of the function declarations are not in kernel preferred style.  They
put the function type on a separate line, before the function name.  
(Could be that someone's already cleaned this and I'm behind in my
email)

alison


> ---
> Changes in v2:
> * Correcting commit message
>  drivers/staging/i4l/act2000/module.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> index 39a8940..6a6c911 100755
> --- a/drivers/staging/i4l/act2000/module.c
> +++ b/drivers/staging/i4l/act2000/module.c
> @@ -499,7 +499,7 @@ act2000_findcard(int driverid)
>  			return p;
>  		p = p->next;
>  	}
> -	return (act2000_card *) 0;
> +	return NULL;
>  }
>  
>  /*
> -- 
> 1.7.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917071702.GA16260%40sandhya.
> For more options, visit https://groups.google.com/d/optout.

