X-GM-THRID: 6670328284538994688
X-Received: by 2002:a17:902:6802:: with SMTP id h2mr7528753plk.6.1553064822012;
        Tue, 19 Mar 2019 23:53:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls826370plb.6.gmail; Tue, 19
 Mar 2019 23:53:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy32trHel1zxUz2btjK4y93n7/20YT6aG2TAhd7/9tbzB0X2F9hTA1XbK1yYhVLmwQmlDVu
X-Received: by 2002:a17:902:8688:: with SMTP id g8mr7622557plo.84.1553064821378;
        Tue, 19 Mar 2019 23:53:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553064821; cv=none;
        d=google.com; s=arc-20160816;
        b=tRBM74i+FbgcBRYbR8Dgi4X0eg4uGmLnwBUdUsx2VTbhkHMWG3hT6vuBPkFtJFxQCm
         7QtrwnLR+86zg+aaFGpzKh4Q4UP8McQw9Yq5cNnq3f4+KHdR2UPPAINATh40evonRB+W
         K7gDcfbtotVCnRP5qMlrEirTTvxFcn3JFUDLksVdrxD1hBXq44rtFf4W42dmHcj0L2Xc
         vw3SES90Yup0HdXmt34HKArsmTDKix3ESJH1hWi4ob360VqT22Rt3YX3JsCF61S1n8Fr
         kO9yVpCFjV1XaL/+4LjtIH3WJefesZ/KY9bMdarUW3QOWwr3kavEjoy8tRDnwv2XDma3
         XF3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hX5/DlgUHXGt3fhANJeSv7aTsTOa/LT4IDsxul+meaM=;
        b=aO5xjc0FCvthHYoTnDUBtsgyMo8xo2aUs5QMbLSSupgm7qaP5OCXtn4DB6hqrKIXua
         +3NjIyp7ks75la/g0gsw6CDk9q0vxj3tjdHtsxLd51E8eWXy0Er9gjRe06W1CVK1E+65
         CsTcHysZe48Zt153frK3V8ZcJBbaHIrgMLR4JZnoARPnILznEJVQfQQH6Esl6cWTLwX0
         ObwRoTSvpX+4Wnyvyiy+Jb250k/BuSJQj7ks4viM0Y141JZRvst8bd98tC2ZpG+tG0AW
         VxcVhjvtijQNh6/VGv7iiNV5PXM8OfhhNYNRu8zPOaq3Xf4zbtAvO8KwzOV/0eofPqT6
         2Rgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AW95jlJY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si47734pfc.0.2019.03.19.23.53.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 23:53:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AW95jlJY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8EA2B2184D;
	Wed, 20 Mar 2019 06:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553064821;
	bh=NlcgJ9NaaDwNdbpkR2mNpke3AjQYk8cJC4Pu5QwtmrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AW95jlJYWwhEUIAszHMqwsgSUb5wuuGAo1oGr+tvEuVTo5gXfg1CzzgFVpx7rV6w1
	 l+Wrp/a8Kv7i+PngwFaPDDPJoFSKy95ucrY3eEUFUqyjgL0AU/9p2OCTOuE2YwNdi5
	 B/GAilf0up9pTtLZTug8F6XJERNmgIkxCgXRFZKE=
Date: Wed, 20 Mar 2019 07:53:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: David Kershner <david.kershner@unisys.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] Staging: unisys: Correct malformed
 SPDX-License-Identifier
Message-ID: <20190320065338.GA27846@kroah.com>
References: <20190320044018.5233-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190320044018.5233-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 09:40:18PM -0700, Wentao Cai wrote:
> Correct SPDX-License-Identifier comment characters to silence
> checkpatch.pl warning:
> WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/unisys/include/iochannel.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch 1/4?  Where are the other 3 patches?

Please fix up and resend the series properly.

thanks,

greg k-h

