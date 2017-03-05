X-GM-THRID: 6393902542586118144
X-Received: by 10.129.87.3 with SMTP id l3mr5192886ywb.0.1488737687954;
        Sun, 05 Mar 2017 10:14:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.193 with SMTP id j184ls1384780ioj.1.gmail; Sun, 05 Mar
 2017 10:14:47 -0800 (PST)
X-Received: by 10.107.169.103 with SMTP id s100mr4358280ioe.84.1488737687204;
        Sun, 05 Mar 2017 10:14:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si157952pfb.2.2017.03.05.10.14.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 10:14:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so1046200pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 10:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PAX1iqizW+dm/Mdie0wQu9vg8P1yhhSThOB83pNAce8=;
        b=WNGHNERIIl6eRshKm7HByF3JUXcMEAuUTyyw29afnYH73n6OYzYerMNZ0xAH4C7WMD
         So/MFEsdSjeRtx8FyZfvnGhJ7fRSwGDwVEw5yn+RpsZ2bm5dWV8HbUzXU3LhtXRlPkrG
         XKczmjrEsL+1bE5apr9IljkPMfkms5FZ0C5hBT2N0xKBOwomro8sjWi+fbXhBglcYDP1
         Fo4ioniE/C6FMiyGM2BCF94KmooJy16NBxjHLaN5OMNsJxaoTZc9nU3Ns8ZeLp/Lsbj6
         v9IWTM4TchogkYtefPd/co8DsANT9N46X4zUVWVQnJnQMd6SQlYy4FVCqUxbvNbreVv4
         Echg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PAX1iqizW+dm/Mdie0wQu9vg8P1yhhSThOB83pNAce8=;
        b=JD8j/+nvkpZUupWuNSxWH2YWqjhIwnR3OhEnah5O9tI5W4Ni7IOBkmBYaKxq4zb753
         61bOLxM7sYnkjX0SLq1OD80m9SRaJNfl9FIbQK9WG2wzPDdYFrxDEcYOzgAxSpl2Q1vG
         Va87Vygi+LI7t/zQ1xQc4LxnXeo8gfX7THOQ6UEf9pUsLndyVOOjQfU1bE9ZB2kHGG4A
         4x6fbH4oIkVnEkC3I2hiqV1I9ICVxnugEg8zyYizvHOaOiG0yhbjL4qDpgb6KAUOsJB0
         kxNeDm709WTdQ/Ok/ooLl1C4LWpLTAGyuAlE029Qo12DkU9/F5J7llprggtPTBUmxi8Y
         geOw==
X-Gm-Message-State: AMke39nTx6xWyNHzM2gmk3VZeepva7dpILQHZajqvU9bP7Re2F8EVahmEmEmmaQH7O9pGQ==
X-Received: by 10.84.213.16 with SMTP id f16mr20410071pli.156.1488737686974;
        Sun, 05 Mar 2017 10:14:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 197sm34665429pfv.19.2017.03.05.10.14.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 10:14:46 -0800 (PST)
Date: Sun, 5 Mar 2017 10:14:45 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: Remove unnecessary
 function and its call
Message-ID: <20170305181444.GA2094@d830.WORKGROUP>
References: <20170305064721.GA22548@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170305064721.GA22548@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 05, 2017 at 12:17:21PM +0530, simran singhal wrote:
> The function atomisp_set_stop_timeout on being called, simply returns
> back. The function hasn't been mentioned in the TODO and doesn't have
> FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
> removed.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---

Hi Simran,

It's helpful to state right in the subject line what you removed.
ie.  remove unused function atomisp_set_stop_timeout()

If you do that, scan's or grep'ing the git log pretty oneline's can 
easily see this without having to dig into the log.

(gitpretty='git log --pretty=oneline --abbrev-commit')

Can you share to Outreachy group how you found this?  By inspection
or otherwise??

Thanks,
alisons


alisons


>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c          | 1 -
>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h       | 1 -
>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c | 5 -----
>  3 files changed, 7 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
> index e99f7b8..66299dd 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
> @@ -1700,7 +1700,6 @@ void atomisp_wdt_work(struct work_struct *work)
>  		}
>  	}
>  #endif
> -	atomisp_set_stop_timeout(ATOMISP_CSS_STOP_TIMEOUT_US);
>  	dev_err(isp->dev, "timeout recovery handling done\n");
>  	atomic_set(&isp->wdt_work_queued, 0);
>  
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
> index 5a404e4..0b9ced5 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
> @@ -660,7 +660,6 @@ int atomisp_css_set_acc_parameters(struct atomisp_acc_fw *acc_fw);
>  int atomisp_css_isr_thread(struct atomisp_device *isp,
>  			   bool *frame_done_found,
>  			   bool *css_pipe_done);
> -void atomisp_set_stop_timeout(unsigned int timeout);
>  
>  bool atomisp_css_valid_sof(struct atomisp_device *isp);
>  
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
> index 6697d72..cfa0ad4 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
> @@ -4699,11 +4699,6 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
>  	return 0;
>  }
>  
> -void atomisp_set_stop_timeout(unsigned int timeout)
> -{
> -	return;
> -}
> -
>  bool atomisp_css_valid_sof(struct atomisp_device *isp)
>  {
>  	unsigned int i, j;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305064721.GA22548%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

