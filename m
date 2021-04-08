X-GM-THRID: 6948700002249080832
X-Received: by 2002:a17:90a:a395:: with SMTP id x21mr7810622pjp.95.1617881682710;
        Thu, 08 Apr 2021 04:34:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls2507923pjk.0.canary-gmail;
 Thu, 08 Apr 2021 04:34:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9K7vebH8cogRbaQxhWLF+qldCymbH+LYkMtDmBi1ZnuDQo2jLSl4Gdc+1gv0TsK+u8zRB
X-Received: by 2002:a17:903:31cc:b029:e4:bd48:c8e3 with SMTP id v12-20020a17090331ccb02900e4bd48c8e3mr7166754ple.40.1617881681592;
        Thu, 08 Apr 2021 04:34:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617881681; cv=none;
        d=google.com; s=arc-20160816;
        b=A5O7avATDMJRzI6fj3yhEPig0bjn+6kCfMgDcdo9if44MBx1k55f+OXLpV5akravN9
         YLk/LMBTf5xH4WgzCPeQi9qb95xV0eJYown4B30ahYEHPUpJ+vbIkNf3ZVaZPpCdhtzN
         LcmcZRBWUc86gVHgK5VUo+/mnwyqvYjHUyjw+jCXqyTJwlwtzbh/+IaNwyl6+97QQ7If
         sx7eIu+4Ot246a6CQONXNnrIPL5iIEqb2/n9DYm4H87d2W7AaeZunQvvVMP3gDzoky8h
         jm61u0PkavwoTcMgcJbr8+tu+YSofb9XyMUROWeX2ZrPqkxRC63KWyLriNOomnOL/pc1
         S/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g2gYBTGg0cykUHA72pXpH8qBqdT2fUALFG+aHqYMivg=;
        b=bEzCxggOWzxMsWAcz0um+IeHVYJbubtk4LN+hIIo2y+69z0VvIX6SaFWVVcMPhbuVE
         jUlf07FjNhaEYxI+DGIJuZAZY7lFAKICpC6xmcY/hQwA+ciVKUq0M0ucqI73IRyxpEpZ
         LR0ygXCK1cNkTqnSeAers6lQ9BZ0cprG605KKamkFGxpqfn9oQWnBkUF1PJN6Z3VGCix
         eOkz7z2EaKNhBiXhwMzp59dZklrCiDBrqv11E6nJXByw2qutLyjDOILYfJM6JBhgFJEN
         wFQSoRVdrJQbzQ1lItgqwOdSOdWEUHM+OeFIyA/6Bg6DlOn2S7zztQqR/H23HA7ixg+A
         BNLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=eV0F5TSU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si3028083pfu.3.2021.04.08.04.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 04:34:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=eV0F5TSU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B1C3661107;
	Thu,  8 Apr 2021 11:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617881681;
	bh=jyaO0qglGyFdhPEM06gVFnPGc0e+8xQPP2hnY0QpVqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eV0F5TSU2bp/hGiIrSd+oZHtY2de7+gdwSpPzqLCSWbVqhFazCZrzW0mcBwdtJOzT
	 rzZIHeDfuWFKff0fyM6vxueM7Q4kp47WjxOhQxPPd6UKleNDoAk58NEAtLySsj92b5
	 3+6CoL3sMCPAtDIZ4jRS7LhrDGicbvF9FjRBo7d0=
Date: Thu, 8 Apr 2021 13:34:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: added spaces around
 '+'
Message-ID: <YG7qTib76wKhQeoU@kroah.com>
References: <YG690ZIRdCEcjoM6@kali>
 <alpine.DEB.2.22.394.2104081027100.3155@hadrien>
 <YG7oOezBpYsi3Fr8@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YG7oOezBpYsi3Fr8@kali>

On Thu, Apr 08, 2021 at 04:55:45PM +0530, Mitali Borkar wrote:
> On Thu, Apr 08, 2021 at 10:30:09AM +0200, Julia Lawall wrote:
> > The subject line should be in the imperative, so "add" instead of "added".
> > 
> Ok Ma'am
> > On Thu, 8 Apr 2021, Mitali Borkar wrote:
> > 
> > > Clean up Check:spaces preferred around that '+' (ctx:VxV)
> > > Reported by checkpatch
> > 
> > Please try to rephrase to explain what you did and why.  "Clean up" kind
> > of states what the goal is, but your opinion about what is a clean up
> > might be different than someone else's.  It's also not necessary to cite
> > the checkpatch warning exactly.
> > 
> OKay Ma'am, will rewrite the appopriate commit message. May I know while
> resending this patch, what should I write in subject description, 
> RESEND PATCH or PATCH v2

"RESEND" is only ok if the patch and changelog text is identical to the
previous version and something got lost so it needed to be resent.

I do not think that is the case here.

thanks,

greg k-h

