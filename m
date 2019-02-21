X-GM-THRID: 6660411047048904704
X-Received: by 2002:a25:4646:: with SMTP id t67mr17652258yba.72.1550748759969;
        Thu, 21 Feb 2019 03:32:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bb8a:: with SMTP id y10ls702985ybg.15.gmail; Thu, 21 Feb
 2019 03:32:39 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZx56S4DBmVjp6bnCn+xuabaueR23LC5bRyqP2uoUVV2jhlNDbHlCoZ4CHNPCvtlP2MLAUR
X-Received: by 2002:a25:4147:: with SMTP id o68mr20342193yba.3.1550748758994;
        Thu, 21 Feb 2019 03:32:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550748758; cv=none;
        d=google.com; s=arc-20160816;
        b=UHQ86vP70a+dy/vMWqUIwcOAjKF3qGQ/qTAPX/YWxmkUBfaqUJbmoyeImk39u25jF4
         /B80bI1igrtlXpN241HpMBSMe8uB6ojDg/fP7B7gOzUjTV8tTE8u1tLU3JtT0cktbuJV
         +0144btm9Fqb5c/ZuQ9r/9oDbv9pdTLknci9ScK1fqjiezVKgamASRILaVhsPJalv4In
         PlEJzd/EDftjawwUxpvhSmfYfoupIcOAuMTa6zDLIhLtf9N7aelnOku0XGwXg7mjL1l3
         Kida17NDjzRI+qoOEl6v8CJ8WWAmtAHiKh4dJQ1LOP9pgI5qPoigqaZ9nW90wa89YVGM
         Ktww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bH4FmK3UZvuYzxzCbodDzkHCY/mCJFb6BQs7rtaZ1v0=;
        b=cEeZ4UzMFx8M9BEVB+8KQjshgUVNwCM2ZiO2UipFPuCOb+WKdzPrfDHrYrGNQ+Va3u
         xS2f/JBVV82I5ZYqECv5m5kBsM5xpuxqzkq92nzqvWD1RCGWKoLLxFkUITwd9xZ6L+W/
         Xn/shWIsfIciS3+6Y9dcY7yfh/7+/rHajlLH54G77IkBa+hM2iMZ36icEmVicYWImEKW
         oaXhrjPHllJlM9AfOMy3/DC8Rz6KVo9n/VvsZAXOnsl9lwwbLofCJBMS0jMxzZl0a2H0
         BCbWdGlGOJerxNRuMWBAwksrrNCPW7BQ/DoGErK2fCl66N7ec0sqAOrqSnx2s7qtf09e
         RZSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wKEDF/qt";
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si715100ywd.0.2019.02.21.03.32.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:32:38 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wKEDF/qt";
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 681352147A;
	Thu, 21 Feb 2019 11:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550748757;
	bh=r1m9CMPsLv0U8bOxsp3yCOktOgIz9fXuvU5vBsdo0KA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wKEDF/qtrOKPHuVyTDVLdnmh4LyrW9vKZ3Qc2CnApEcpmtggkp1ZTIEeeHgHal5Wy
	 AEWJXYrLgqRDS2hSe3zY1YwniyZJwn4xuVY4qmtx9OX07RrrI9onTHxAad1+FOhD+4
	 J/3KUP9x7jtNjyLfG4Z3k3PHPG+maI7GpgKJjOHw=
Date: Thu, 21 Feb 2019 12:32:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/4] staging: netlogic: Add SPDX
 license Identifier
Message-ID: <20190221113234.GA18973@kroah.com>
References: <20190221111627.GA29041@bhanusree-MacBookAir>
 <20190221112455.GB17199@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221112455.GB17199@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 12:24:55PM +0100, Greg Kroah-Hartman wrote:
> On Thu, Feb 21, 2019 at 04:46:27PM +0530, Bhanusree Pola wrote:
> > adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
> > Issue found with checkpatch.pl warning:
> > "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> > 
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/netlogic/xlr_net.h | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
> > index f76e16cfd15d..de51d64c1f23 100644
> > --- a/drivers/staging/netlogic/xlr_net.h
> > +++ b/drivers/staging/netlogic/xlr_net.h
> > @@ -1,3 +1,4 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> 
> Wait, no, that is NOT the proper license for this file.  The text below
> your added line spells that out in detail.
> 
> Never mess with licensing information unless you _REALLY_ know what you
> are doing, as doing it wrong (like this), is much more dangerous than
> leaving it alone.

And, the reason that I didn't already put the proper SPDX line on these
files is that _I_ don't even know what the correct line should be.
Someone needs to do a bunch of research to determine that, if they
really want to fix this up.  Personally, there are many other more
interesting things to do in the kernel than mess with this :)

thanks,

greg k-h

