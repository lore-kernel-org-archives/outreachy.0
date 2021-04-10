X-GM-THRID: 6949457058068430848
X-Received: by 2002:ac8:4811:: with SMTP id g17mr16908619qtq.114.1618050729766;
        Sat, 10 Apr 2021 03:32:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls4956315qtp.2.gmail; Sat, 10 Apr
 2021 03:32:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwY1DyvNvK94xi6C5pwV/f+YMcuy/6RcXidL70/TdhnS4Ew+inEuHq8VoKrBVXtFVoEx7nv
X-Received: by 2002:ac8:6913:: with SMTP id e19mr16955498qtr.78.1618050728948;
        Sat, 10 Apr 2021 03:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618050728; cv=none;
        d=google.com; s=arc-20160816;
        b=Kc9Ti++OZzaFbFVQTd1+hyqSxxxiD9OK6Muw4Jh2s4xpv66okZ+lPpovAyefbhCUHR
         Kd71rnErN8XILM/Qans1pdLHyj5qCIPH8+nA2mIYP5cFRmtKxrb+2QmU/AdlR108erYN
         L56XwCkox+WKX5+ipOzdLY7DiZuKGOpJpD6SW5As5YelaQHvsvchhnNAfQeiTOiKc8Rq
         cxiRDuVYUXQHSrPyLxCWbqHmg5nHljD6EIiNxIxDXUxilv9gNqUYsHUCck7Ki0o9jJsy
         uPr01/WQC1bHgiIazTLZBFQdV2VfwXqxsrHqM1dHolrWiUEOchN4giPPdhWS31FGicve
         dGOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HsySccxUrGndaFt2ZdEafyH9SYv0HPGk+ZGi/mFzho8=;
        b=p89IOhtBL+59BGBpHDwRGyWsnaTLG8s9uhrFl+nG9jmdEgHqWuJz+JixsPEW1Vy/qA
         tpnap6YO+jsh6VI2u7nKRi/0vt8Fr0U5ozwW7n53jtK7iJ1WnJIQO8z/kQXHEt0E8gNj
         QMHYRml2dxKtNi7zC+pd7CD6Iz+hp0sH9Q91fSzk3mSpzY5sZm1bJWpU+c8L4LDocNLc
         1cqdaeqDZBmchkaG+ZvWrt0y/BuUTu2QHN1ADTotfP+9CWUTqNFdIPNfzLEO7J1QWnbK
         xvUdkQiq48HBW875J15q1Cf3EV8UpObgdGklNsaIrjCG/zEQRGG1F6MjF6Wqh3KrPmkc
         ut/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=pcysymlK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si279920qkp.4.2021.04.10.03.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=pcysymlK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F2AE610E5;
	Sat, 10 Apr 2021 10:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618050727;
	bh=ADmiV9I77wzT2I1XBSip0xU3FgQtVLa5Di2DzT5VLD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pcysymlKeAJtnv1ymoiiHOaMSISEK5BUham88EuM+oT9e/jX0jWG1a6GM+6/Yn2t6
	 tla+NGER//MLHDBUIB3qRm1c5ykJ/CjXCtqdqUpD3qaLEiDeuXl3RGlQRUlGmhChwk
	 j3+qscQpp4XLVCSyzlOKsiinhDiRCGV+ezDFT8wg=
Date: Sat, 10 Apr 2021 12:32:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v7 1/3] staging: rtl8723bs: Remove
 camelcase in several files
Message-ID: <YHF+pQ7cWDbXvNWT@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <20210410092232.15155-2-fmdefrancesco@gmail.com>
 <YHFwkJlTNxQwPyN3@kroah.com>
 <3026831.3QyE5GyAct@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3026831.3QyE5GyAct@localhost.localdomain>

On Sat, Apr 10, 2021 at 11:45:18AM +0200, Fabio M. De Francesco wrote:
> On Saturday, April 10, 2021 11:32:00 AM CEST Greg KH wrote:
> > On Sat, Apr 10, 2021 at 11:22:29AM +0200, Fabio M. De Francesco wrote:
> > > Remove camelcase in bFwCurrentInPSMode, a variable used by code
> > > of several subdirectories/files of the driver. Issue detected by
> > > checkpatch.pl. Delete the unnecessary "b" (that stands for "byte") from
> > > the beginning of the name.
> > > 
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > 
> > Why is there a "v7" in this subject line, but not all the other lines?
> > 
> 
> It's v7 because only this file (and not the others in the series had six 
> previous versions that you dropped. Please remind that it was already sent 
> alone (not in a series) several times. The changelog is in the body.
> 
> Should I drop that "v7" and the changelog, and the send the patch series 
> anew?

It's a v2 series now, right?  :)

> Please, I'm waiting your instructions on what to do.

Don't "wait" for anyone, least of all me.  Do what you think is needed,
after waiting a bit of time, there's no rush here...

thanks,

greg k-h

