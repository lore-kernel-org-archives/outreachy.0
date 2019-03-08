X-GM-THRID: 6665843056733847552
X-Received: by 2002:a02:3941:: with SMTP id w1mr10103608jae.7.1552028644651;
        Thu, 07 Mar 2019 23:04:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls2597824ita.2.gmail; Thu, 07 Mar
 2019 23:04:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqxCYvUj1YzVVtG9CdApCeSr2vcOXpI4Np8b8wkvhM520RUToYpBFqyjGtpBJRjQEWFYTyEu
X-Received: by 2002:a24:2ed2:: with SMTP id i201mr12156986ita.3.1552028644031;
        Thu, 07 Mar 2019 23:04:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028644; cv=none;
        d=google.com; s=arc-20160816;
        b=r+Zen0ZG1od/4K8IAtAsYRTWdXHcBMdQAHAxt2tqEMvuqM1UJXaLTWjwRmQrMWwpdE
         DB1g5vMsuz03aYEO4VzojrFaUwI6wboGJEDtFnpf6MlDwKBBuDD2leIpc91bjErBtPMd
         BjxbegOPEXHC3TfI26gs0/DYreal/qUl4Ymgbgje/ujtd99FmiUgvbj2+7lTwDlnJNNw
         Moq6VsJkruV1YAq5B4ENn9m+e5UMcGo4rIfdTjRRzQFNcZTk96oF4GANiTr03PhybcXl
         Nid6Bf9CRxn7ywKzCOdMHwMniyBgNxBFzlLJxnDJDOFaAM6PYoSn84kB14ZsJaV73DqZ
         NL+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hLK25InEe0hkpvwSTVnbQ43MgBPRd4ftYl0VAb73vS4=;
        b=d/2ZbBvfxsyCgEyWUcVzr1MfLrXfP3Fe9ApaoNl4E8yAqGc56SFOwR9RrlysBp2i36
         QiaWaFoenvdvbsyQMntSdGUBPkGLJ46k7z2qv4roJe8Jlx743FBj2B5WeeaSwAIEjISV
         I7x1401nEuSCBFAVyS17HvtBBNUmCXITiVCrjctztxrCGBmLeasvf1dFCCAOzxy67cHY
         NWaoIuox+WLAa/jyDyv4yO8intoH9dfPpQBW9xrhCFtCUjggSNK+sP774OLYav3k2P/0
         PyUoDuQGpepdbRvKETBL+fWg2vsY753vs3ThLabIENtNe2Qf8ata7CT9RkRWyXn39CI/
         RlUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="IAiig0/V";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c191si471351itc.1.2019.03.07.23.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="IAiig0/V";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CBD8F20811;
	Fri,  8 Mar 2019 07:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028643;
	bh=fEqf3vDkJZ77Xtqo4QPzDIJUq7pFCviROHhAO3jlXPk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IAiig0/VlvQX6vsQAsjwUbMiIj6md+STHrO7GTVJOyg34EkKRU2Y5lcmOoC/arQ5+
	 y2/jotdAb2eRMhqnPHX9qQndftvQFwjwyi3U4SY7CkVaHHZdqHr0CC9rA9OqhwwHmG
	 K4hq5VAFIFetstmW1+xsI3a3pUeVSO0A0IJdScO8=
Date: Fri, 8 Mar 2019 08:04:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/4] Staging: most: dim2: Fix SPDX-License-Identifier
 in errors.h
Message-ID: <20190308070400.GD17194@kroah.com>
References: <20190308031013.7952-1-etsai042@gmail.com>
 <20190308031013.7952-2-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308031013.7952-2-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 07:10:10PM -0800, Wentao Cai wrote:
> Fix the checkpatch.pl warning in drivers/staging/most/dim2/errors.h:
> WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/most/dim2/errors.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
> index 3487510fbd2f..cbbdaaf5c52d 100644
> --- a/drivers/staging/most/dim2/errors.h
> +++ b/drivers/staging/most/dim2/errors.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0+ */

You just changed the license of the file, not good at all :(

Don't do this unless you _really_ like talking to lawyers...

thanks,

greg k-h

