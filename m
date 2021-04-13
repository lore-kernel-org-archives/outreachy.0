X-GM-THRID: 6950618792247427072
X-Received: by 2002:a9d:550b:: with SMTP id l11mr7591882oth.369.1618326292386;
        Tue, 13 Apr 2021 08:04:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:638a:: with SMTP id w10ls78824otk.6.gmail; Tue, 13 Apr
 2021 08:04:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHEwrHatlDdg10hKZC9lOQc8zXCpIRyJ5dTSvYpop7Zqv8JI5AXzfsl4vfSt9LY2vGZnW9
X-Received: by 2002:a9d:a51:: with SMTP id 75mr1126176otg.323.1618326291759;
        Tue, 13 Apr 2021 08:04:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618326291; cv=none;
        d=google.com; s=arc-20160816;
        b=sQS+2ZuJTjkKiIYSLatE1F3rmU5QuoNiRoa5SI0I1XQeWYtpG7R3HCrv+x0UIKs+Zz
         fG979UQVOmV1mrmqZCbfhHMa5xzbEyWlne8xXiU0vlq1zpYIcelODdHagoQ4xw6i71WF
         kLbwARm6xxbk/N6zM1Mn3fGfj9hv5NsmKxxI4C5aaJ4jPurDzzRtBJ8DFPLYsBGX5Y2J
         rIrNGOxAKgoGsrHnOTj8nlJ4rPsVNxNjYxV5N0/qXQK0/e+h0PxBiHKLt0GiDCupDfjz
         qyf7dzVnug7ZQ4Bpc3xarG0csCFBqAn8D8cuqXaVSxP0Kn4uSeJHpPrCWe+f3JZNFq7/
         nX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=wJYNCvq5pGjysoWcENdCa3GQLYiUzjJmdeCWa7YSEcw=;
        b=jTgB1c48ThjtMG6JqXsYM76W6I50zfmmTGLoV4ugEPTs/dL9v/B+PoPMbBnGxiAFyW
         gBuLFE5kAmlyOKuV1gkzHpah9EKcZVobEci38zgXiZrmlAYH0/aCYmsZrqfJ24vbARkF
         QDRAkivpNAKle9/dbQK+FMIXxbh7h0stzD8Wdla7ic9zRmYAN7tycc6BdlyWRZlNPq3n
         jFj9swcXbU5mnttNOk8CBIkmuNVGrO3VbJPs8sEss1WIWy+gDFBgkOeWlQ7VX4qsaphX
         W0KsOKGpUy7I+QNPYPeJBa/+tI6gNA4i5IVC3eOYqJqvykuT/ByTzBP9HJbdm0rrrVUN
         +ySQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=jNKrStN1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t25si798370otc.4.2021.04.13.08.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:04:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=jNKrStN1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B3B1613B7;
	Tue, 13 Apr 2021 15:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618326290;
	bh=Zc0jTEgteZ4V3OV0BMx/XYPFzvMef4niL0JXkTqU9fU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jNKrStN1RP+hWMQ+71gb/B90IFn0pSqlxDsNKAEOyp20zDsIl/PEyItF3BdsoSYxm
	 HWdXRILUvQbkdfMBkqtzVDmBoPb7aGDwKjeiTR3FnktWL5Ef0FmwJhWgAsELyLmsL2
	 sDNJH70W4xgpL4PJpDZhxowFshx004YFnAJ78sok=
Date: Tue, 13 Apr 2021 17:04:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211:
 Replaced strncpy() with strscpy()
Message-ID: <YHWzENKgthTasHNO@kroah.com>
References: <20210413123041.24260-1-fmdefrancesco@gmail.com>
 <4666289.4L6Ep8XSK1@linux.local>
 <YHWZoY6B8sOiflwy@kroah.com>
 <5414987.Cp2PYjnBm2@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5414987.Cp2PYjnBm2@linux.local>

On Tue, Apr 13, 2021 at 03:24:31PM +0200, Fabio M. De Francesco wrote:
> On Tuesday, April 13, 2021 3:16:17 PM CEST Greg Kroah-Hartman wrote:
> > On Tue, Apr 13, 2021 at 03:12:02PM +0200, Fabio M. De Francesco wrote:
> > > On Tuesday, April 13, 2021 2:59:29 PM CEST Greg Kroah-Hartman wrote:
> > > > On Tue, Apr 13, 2021 at 02:30:41PM +0200, Fabio M. De Francesco 
> wrote:
> > > > > Replaced strncpy() with strscpy() because of compilation time
> > > > > warnings
> > > > > about possible truncation of output [-Wstringop-truncation].
> > > > 
> > > > build warnings?  What build warnings?
> > > 
> > > drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:1388:5: warning:
> > > ‘strncpy’ output may be truncated copying 32 bytes from a string of
> > > length 32 [-Wstringop-truncation]
> > > 
> > >  1388 |     strncpy(tmp_ssid, ieee->current_network.ssid,
> > > 
> > > IW_ESSID_MAX_SIZE);
> > 
> > That's implying that there is a real bug here, not that just replacing
> > it with a different call is going to solve this, right?
> > 
> > And how do you see that, I can't see that in my builds.
> >
> I see that with flag W=1 like in 
> make -j8 drivers/staging/rtl8192u/ W=1

Ah, no one "normal" builds with "W=1" :)

> However I also think it's not a real issue in this context.
> Just that strscpy() is preferred and get rid of warnings.
> You only can judge if a patch is worth.
> I just thought that gcc is (mostly) right in pointing out warnings like 
> that.

Check and verify if this is wrong as-is and if so, then replace it
properly.  Don't just blindly to a search/replace, as that's not ok
here.

thanks,

greg k-h

