X-GM-THRID: 6753896393761357824
X-Received: by 2002:a63:1e13:: with SMTP id e19mr7183356pge.97.1572537272083;
        Thu, 31 Oct 2019 08:54:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:d355:: with SMTP id i21ls943462pjx.1.gmail; Thu, 31
 Oct 2019 08:54:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9SZKXWOpWF5biN3VRt4TBUesWg9jXVUHsxk6E8mMEuA50iC2F6bZsfRF/1GYmFAxI5wGF
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr8106508pjq.83.1572537271076;
        Thu, 31 Oct 2019 08:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572537271; cv=none;
        d=google.com; s=arc-20160816;
        b=davV42a0EhBaT4A4F5oIbBlRngDixjcsKUmIm2b2bNLB6Bwi8PRNmkmAbBV3N/2vjQ
         NF+p50MdrZxjlHmGZ/0rFQLizr8gtzZgb55A4beYIIFje2Tb4QTPaRxjwxnBA4HxGZJG
         pcf5IbP5/NTyV/DUo5VpJ8vq5PrAniVFVUWbiAALPnQJ+XTI4mD0aIsU+7Z4ZIQYyKF0
         1Ua5sm/Sm5WRTNRR2aedYZSIGEVJjeFnCpDxpS0AFO+YEVob4cMivK90z/Fdqk2Cq9CB
         4/IoIoBw8VVPQzUyqswe4XKhZ9EzCs2U39m0CYKLcSwp60yT0/zrnj9K7TuEH0lyQ0Xm
         fgcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gYsgYXRFxBstnh8XKuIVyvGjoJC5vmYH8Ek+9aecIek=;
        b=Yzuw067538W7Mad7d0AweZwSsXO33xJMTtia3g/JXRvPm0ihSCmYXoQ6GX5rbjeZVl
         RsjF1ZS3k/135jnneB8Gbf5Ca/PRsI0oM/dmCbQ/rkEQvIKvVTpHeq8cNZNfrl53IxF+
         F8miAGLgniFuvIY47edVZfD2V16f9+EBOXDOgXnqTKpLu7mNWtkLob0qMsE93vTTVtoA
         Wjk+CCDR6DoRUg44A3N33Pnd/ZZi4gdXjBgFDyygWBUe/Fi1vlU5ceRHird6pE6DYwZY
         Ei7QzqSetTjzoSbN2Y7ZKUwKMnTV3DVKtsroEGMHQhbTm2yIHcGsYC1pTkoK0lue/iU/
         merA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f79HOdBf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si316737pgk.3.2019.10.31.08.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 08:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f79HOdBf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 555AA2087F;
	Thu, 31 Oct 2019 15:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572537270;
	bh=8bR5o0oSpLJUf4Jh8P+dY24VoY0w2kkXRlL/vYwWOGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f79HOdBf+Jg0hFTSs7lrg9fS1B1RPq42Xe1hjeuodYBugXd9R68aLvHrauzVh/Q5S
	 bIBpnlsdsU+VtbAyGatIzVRTxHceiuAfHWpAR+8PZtx5i16IxFucW92xvKZbxJYq+B
	 Svp7t6R8pZSuFIY7j15McuIyBytEkC2CFedIKY5Y=
Date: Thu, 31 Oct 2019 16:54:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	outreachy-kernel@googlegroups.com, eric@anholt.net,
	wahrenst@gmx.net
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services: Remove
 vchiq_arm typedefs
Message-ID: <20191031155427.GA748425@kroah.com>
References: <cover.1572513863.git.jamal.k.shareef@gmail.com>
 <6f517792d69d3af032b10cc71310cd95c819e26c.1572513863.git.jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1910311030310.6010@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910311030310.6010@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 31, 2019 at 10:30:47AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 31 Oct 2019, Jamal Shareef wrote:
> 
> > Removes typedefs from vchiq_arm files. Issue found by checkpatch.
> > Typedefs included enums, function pointers, and unsigned int type.
> 
> Could vchiq_instance_struct be shortened to vchiq_instance?

Yes it should, good catch.

thanks,

greg k-h

