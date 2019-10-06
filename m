X-GM-THRID: 6744763915639455744
X-Received: by 2002:a17:902:ab89:: with SMTP id f9mr25644933plr.295.1570388850731;
        Sun, 06 Oct 2019 12:07:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:345:: with SMTP id fh5ls2385505pjb.0.gmail; Sun, 06
 Oct 2019 12:07:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPw+uDZ8CmuY2AiA7HIeefHRO1CzDUcI/96M9V6airnJEStFZaU3eQx7hLMYgyl3b6/knE
X-Received: by 2002:a17:902:9a49:: with SMTP id x9mr26462761plv.324.1570388849621;
        Sun, 06 Oct 2019 12:07:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570388849; cv=none;
        d=google.com; s=arc-20160816;
        b=0BpzC3G8Op/YNt8ot1gO2cXnz8l7HsbcSPHTnD6lQlsB14tOoBIC0qkmrzXK/6cXtu
         wi18lwAez9+pGEnwd7621scXH7+9H1XSFeKg/P5uGxvBdcDPTo9e1Ki4X+klyV+D8cnG
         0U8DBBUY4C8lePWBggK3Y9G0F1+2Lj++ZaO6MV8ZPsLM9ETMtpe68uJ578a+uh105o0O
         c4HOWlzoxpqIU+x5EyW1kEIKIHd8QqYwG0jzVbwddjHVm2X/QYbRgolFPfKALaXnt/kI
         fYNZeGZGScCgjzMCM4RG+hRQZoV380dqhXAU6f5/3ulwsp/cMJZ2RTMsj59tsIkNnKvo
         9MDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eI8xkmrOE5MpOLp3GPBAck33EoNOP8/2olKW7ChDc6U=;
        b=Wp1E/7rJkPiBPb2n9TcDqhd45i1/CKkNYApvKn6Lya2MpsiqGBztBtVwSBXBQzJvZ+
         rWhhpu1rDRLO2VXrJZohc5WtnT0hde6Sx8oEuW5Z0L5N1eCPxCd5p53ufo0w9ojA+Me4
         iB7F4G0U/tKFx/vJE4RiTFzY9FM5F5uHA4O4AZhcWAI8eUqUqfoMge6QyVS1Tqp0oSld
         7s1p/M6eYmQHcG1GRyp8aifEmgyYg6XYv8YeAUshgan09o9ZwjQmb/uiNf9hD+YkogSM
         SxFV74cIy8xb4VTm7DIdHpp/yG+4RKtiSG9PBLoU/JGJX57k5kmbqst+vjyTmiYEOwEO
         770A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Ed/zLDbh";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i1si573888pfr.2.2019.10.06.12.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 12:07:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Ed/zLDbh";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D7BD02080F;
	Sun,  6 Oct 2019 19:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570388849;
	bh=1+a1P86vDBZFDcgIKM5nCAuEzuynge9LZ7okl9r776E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ed/zLDbhWVeyQY9RO4BBK/h/N8GZJEmTTwD0Y/+QDduhVITMdUtUHb8FISwMJVBPm
	 dn7jFIX4hJ2s5jnourG5SrVVORfn41maPTfyGQNim695z0TRstmE/wTepZDvZfaCF5
	 /ySNsv+pnLcJhEPFrJqPEQBiThOvR11qFg6YAlMw=
Date: Sun, 6 Oct 2019 21:07:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, abbotti@mev.co.uk, olsonse@umich.edu
Subject: Re: [PATCH] staging: comedi: Capitalize macro name to fix camelcase
 checkpatch warning
Message-ID: <20191006190726.GB237538@kroah.com>
References: <20191006184903.12089-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191006184903.12089-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 06, 2019 at 07:49:03PM +0100, Jules Irenge wrote:
> Capitalize RANGE_mA to fix camelcase check warning.
> Issue reported by checkpatch.pl
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h           | 2 +-
>  drivers/staging/comedi/drivers/adv_pci1724.c | 4 ++--
>  drivers/staging/comedi/drivers/dac02.c       | 2 +-
>  drivers/staging/comedi/range.c               | 6 +++---
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
> index 54c091866777..2fc536db203c 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -603,7 +603,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
>  
>  #define RANGE(a, b)		{(a) * 1e6, (b) * 1e6, 0}
>  #define RANGE_ext(a, b)		{(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
> +#define RANGE_MA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}

Did you send this patch twice?

Anyway, this is the units "mA", which needs to be "mA" for obvious
reasons.  Sorry, checkpatch is wrong in thsi case.

thanks,

greg k-h

