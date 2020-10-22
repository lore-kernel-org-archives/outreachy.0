X-GM-THRID: 6886436790360604672
X-Received: by 2002:a05:6638:2208:: with SMTP id l8mr1923579jas.22.1603374861388;
        Thu, 22 Oct 2020 06:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:a157:: with SMTP id v84ls364358ili.9.gmail; Thu, 22 Oct
 2020 06:54:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCopmNa6I2KwMldO3iuEcqRSdEgcabfqT8/SxPOVcOAixS6R4Fch3WxoPGesI0gM7vzMyz
X-Received: by 2002:a92:c88b:: with SMTP id w11mr1953534ilo.56.1603374860226;
        Thu, 22 Oct 2020 06:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374860; cv=none;
        d=google.com; s=arc-20160816;
        b=IGogSr3IxRBn4GoSCWuJOebtvaqEX3yfKzyyvxMlyNotsVkl3VsxTIMtIPKgz3Vnee
         4WXSzhP5riQb1CCRzeAy61ruyc4+dPDzXt6ZDyFxlyP4Twjrjb2YAggTgv1lo+ZsGip8
         Yzcs8SetFDDzWBNEku58jq6oFoIGtfgrY3g/ufnoK+EqD1GF07uZpjcmoPIrmhsVxiNb
         fPNeAtzDAacQY5d/dI+OH4lWt/1+Qt5EL6TdPWS/zJ+rG/qwqUpu09qWmf75OjMI10j2
         6ECiFaAuiZ6d/YCG5p+OvzfrHWfH1gWfGZlsZjfn9OjuVJmjPsP50PZeccjQ87MHKRof
         ctmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=67j3g1tf0vI2lJQeE3skwbiU83QZeuDhLbp0tXHL0eM=;
        b=qT6hJKeWlZymfBMTNFXqstU1vbACE+VTvqXx2n0a1AtsACms2uRUWSz663iQNPsiG2
         fmKL/beN8kdjyDGJROuDYPhqlW/T7BKif3HPkvz3cNoJmZUrruucWoKpePOPm1FiY8No
         RJ0W80i+kqSM+Fp29qhm+H16IEQ8kI/APSjpiYhX/ixSbLyr6QzCXKVjfl5zNDtR3swH
         Bn3ua3+yMziOdk4n5Xd7HZkwEWVX+kfyNaaUGKCMHMjYcEYuIIuSn4Zt+Xtly7/5LyH5
         IyKFRPVGALjKsREI0sl36eqALz15lRqFp4PYpxnhnQPpnl/eQr71Xh2JTN8SdoHke6ku
         6Y+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JfhNMyMo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d25si97350ioz.2.2020.10.22.06.54.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JfhNMyMo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7D64E22275;
	Thu, 22 Oct 2020 13:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603374859;
	bh=k/96McXBUQrMgM4y/fJNrw43hXeNtSxVU6BUe2aasrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JfhNMyMoeo79vFKGh2kPdEK6Z9KBVoCnHEiWkZoBbSOYVIyDiVjzohSe9tyINoAEu
	 oQ0dY0PKFot074Qy8U0+2w1ZtMNyp1HRdU4TTmBWVu4+9DC+f2dCt3amempuKh7ErT
	 xcK5tj42W5UNWipPg8217GvuzCo3QQf1TRVGoBfQ=
Date: Thu, 22 Oct 2020 15:54:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	alexander.deucher@amd.com, christian.koenig@amd.com,
	airlied@linux.ie, daniel@ffwll.ch, melissa.srw@gmail.com,
	linux-media@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/5] gpu: drm: amdgpu: Replace
 snprintf() with sysfs_emit()
Message-ID: <20201022135455.GA1788090@kroah.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
 <f6107f3e467f1906abdcc33d35f13cf54f7e5a96.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6107f3e467f1906abdcc33d35f13cf54f7e5a96.1603371258.git.sylphrenadin@gmail.com>

On Thu, Oct 22, 2020 at 07:17:56PM +0530, Sumera Priyadarsini wrote:
> Using snprintf() for show() methods holds the risk of buffer overrun
> as snprintf() does not know the PAGE_SIZE maximum of the temporary
> buffer used to output sysfs content.
> 
> Modify amdgpu_psp.c to use sysfs_emit() instead which knows the
> size of the temporary buffer.
> 
> Issue found with Coccinelle.
> 
> Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> index d6c38e24f130..4d1d1e1b005d 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> @@ -2621,7 +2621,7 @@ static ssize_t psp_usbc_pd_fw_sysfs_read(struct device *dev,
>  		return ret;
>  	}
>  
> -	return snprintf(buf, PAGE_SIZE, "%x\n", fw_ver);
> +	return sysfs_emit(buf, PAGE_SIZE, "%x\n", fw_ver);

Did you build this code?  I don't think it is correct...

thanks,

greg k-h

