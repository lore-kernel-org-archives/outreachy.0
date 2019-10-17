X-GM-THRID: 6748460099030745088
X-Received: by 2002:a17:90a:fa0d:: with SMTP id cm13mr4238751pjb.114.1571316876394;
        Thu, 17 Oct 2019 05:54:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b413:: with SMTP id x19ls574479plr.10.gmail; Thu, 17
 Oct 2019 05:54:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAV8LeXWA53ie2xUbPQ5jLTovQv+I76hrFcy1vutd56aakZBC6pJ6iqQSYifzIRHheUW+Q
X-Received: by 2002:a17:902:a5c3:: with SMTP id t3mr3865917plq.335.1571316874970;
        Thu, 17 Oct 2019 05:54:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571316874; cv=none;
        d=google.com; s=arc-20160816;
        b=1EycrY+TbmSLZ62/sm+wd3Gr9B7h7kQVpG6CL1X/S5RBPcFQNDuOsdFibVd422Olje
         Bs0VHknP7wo0bgYK+ih6Q93O35HlDQAh8SezGI3cjBZG57DJSZQ9xvy36Lnj8Bx/tNqL
         y0tPmhI1X+iNLDMWII1oKrl0zUw/PA6ErTaMhoJ6sL2eQpfYzjxsLasEjsR4uw+Hb+cV
         oXgT8rpmhaRh+Jxo3OQc3KSURyDm4r1gK22JDQKDAxyRxrgQy9KBLbcpGgsVIJ3RmFSY
         a84vfh8IDvBrw1WPHGH1/10B9jg3TIBbCyysWI8KZGzp+GfYMEPPy4yUE0I/CuyW1Nul
         MVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5dVrjgPKdMVaSC9CMcUlBk8grVqxMIXu/EwHBLwCYVA=;
        b=B8xPTJn4PU9SDP2bpLFimGANS3/2BsFkYj6+W15pwBzBbFkZbfwhX8f0I8aRdvsO1p
         dsnqZ9oBctipg3pWmkPEEJa+yqmhZlgtijSCy16M8OTkTS2YdSk5kYJh8H4guYv9VIlq
         KabnRWo+j29hG1MLU/4fyicLLreuhmLZSTADjiFz9ahkUE2yOB2I7l3cXbIMViBFD4W5
         Jn1xdu3i2gVGA/ThmaMfB5PbGklXr5ET7mWIQ2pQR+Z9y/3sQKJZ26sgPI3OCb0kPp6P
         U2Ofk7nmt8DBtcKpP37+e7WrMRlDFUQUKTkpoWRMtlv1hhHtIOxVm7XG0dWal6v99sJ+
         S21A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a4A0+w1+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o23si149338pjt.2.2019.10.17.05.54.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 05:54:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a4A0+w1+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [209.136.236.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 74DC620854;
	Thu, 17 Oct 2019 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571316874;
	bh=l9vnZxyjcf2aSgJT3J5UweMD0AcLakKAG05OvdfpYKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a4A0+w1+2/rAPOwmrACPPDs5sj/0atI1q5ktI9WmVxrGFYt3cupF95NET0ruqDMfH
	 P3RFwHv8me9QmzaPO0AJbVewlalbEH4XWkH6JrLED8MIbtI+x3WiWNtYXpL7XzteO/
	 4U1u29IJREIUhx/5X/NdpEprdVsUf8sBosRyKeXk=
Date: Thu, 17 Oct 2019 05:54:33 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vc04_services: fix check warnings of line over
 80 characters
Message-ID: <20191017125433.GC1029242@kroah.com>
References: <20191016175132.7947-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191016175132.7947-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 16, 2019 at 06:51:32PM +0100, Jules Irenge wrote:
> Fix warnings of line over 80 characters.
> Issue detected by checkepatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  .../vc04_services/interface/vchi/vchi_cfg.h   | 141 ++++++++++--------
>  1 file changed, 81 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> index 89aa4e6122cd..464334332e3c 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> @@ -4,13 +4,16 @@
>  #ifndef VCHI_CFG_H_
>  #define VCHI_CFG_H_
>  
> -/****************************************************************************************
> - * Defines in this first section are part of the VCHI API and may be examined by VCHI
> - * services.
> - ***************************************************************************************/
> -
> -/* Required alignment of base addresses for bulk transfer, if unaligned transfers are not enabled */
> -/* Really determined by the message driver, and should be available from a run-time call. */
> +/*******************************************************************************
> + * Defines in this first section are part of the VCHI API and may be examined by
> + * VCHI services.
> + ******************************************************************************/
> +
> +/* Required alignment of base addresses for bulk transfer, if unaligned
> + * transfers are not enabled
> + * Really determined by the message driver, and should be available from
> + * a run-time call.
> + */

That comment block should look like:

/*
 * Required alignment of base addresses for bulk transfer, if unaligned
 * transfers are not enabled
 * Really determined by the message driver, and should be available from
 * a run-time call.
 */

thanks,

greg k-h

