X-GM-THRID: 6949308630417014784
X-Received: by 2002:a05:620a:22b4:: with SMTP id p20mr4791134qkh.14.1618056643221;
        Sat, 10 Apr 2021 05:10:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls6740820qkl.4.gmail; Sat, 10
 Apr 2021 05:10:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9qLmkAPvflTJKtNb+oAeNyF8LkLNhuBrUTi3+QRwPfYJxpZrEnnkdScb7TsqHRlwbbYBl
X-Received: by 2002:a37:a50c:: with SMTP id o12mr864392qke.252.1618056642352;
        Sat, 10 Apr 2021 05:10:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618056642; cv=none;
        d=google.com; s=arc-20160816;
        b=sCrl6jClhmN6GZVMBLhcKptGYcxO5EuQA9Xx39GIR+NhHqBpRQ3LI4dbQM4w+XZm+b
         0AzMPwpBdDVNmvxIMhP6ljQ95+lKI6/N6VmKtO1bwCX/cWKiUb34+//dmAG6uKUq+QJT
         Vqjk6QJu42OVaIsLmd6Szo3mXGnNmYeDmX0jBvJr7mHtySXOvYQXVy1Oh99aNm5a/If5
         TIEC9K1hPFqSe6+0kwfxcPpxvH0Ur+aw6GS2N5QtqkJAdzvmHAafSh80vAZzgmBo5AW+
         4jfbcOK2l9bzKCYzAokiU5aRBg5DMC4qkL3+Hsi8nfIgLIA7yBWWyxueCeq/NN6v2fdM
         ngTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0lEDxhZxwAbN2DBy1MiN8QPTC1V37rp0r23eR398p1Y=;
        b=Kztc6aPjQtXUaUsUwHSh3SiIs8emW6cPiM/GvLg2IQCnrxqsF5yeZvhOcEKrxYDmQw
         gr4AwpvKtNnIHWfQNQhMdQ+6FleAdkuiEBovF4/NybrL9IeRtM70OUx8NYuKMOtRb4ET
         up182wJz1nS1Vb7bbS8dLINsyIr+zuNTViKEhBWK6jk1NBuGyiW2esWFCHSINkHRhKcS
         WIXT1huSRezqIcadi5euBxYRLOUx+erXLAuOsGXxXuE1Bs37nFb0UzyiboCtfg0ukMT5
         o9f1Xg+G6iQiEWaozDnapZ6ie3SiTV48NKjwecuS6EbFqk/jBfKS0F+HhDALtu5qa1M1
         wQgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="dr/Ftupi";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h28si341877qkl.1.2021.04.10.05.10.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 05:10:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="dr/Ftupi";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D1C5B611AF;
	Sat, 10 Apr 2021 12:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618056641;
	bh=QuA4EydXG7LZzEytUN7b8Jvd71QrqnoFflurUJs9urc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dr/FtupipdisbBRRu+vyTZv4a2w2I2tvLoEG0CmGOBKXnsP9xjsOGM/TZlphzbZzz
	 6PG/1jeQ5Y5fU/nq5y1IkHOWYOZjG/Q3mq0nmPCx/uFsOzEZ4RX7jPYPn0VDqPAr61
	 gr//Nvu0O0NHlYxB3vjAotho7PofzN4aIf7I8aRg=
Date: Sat, 10 Apr 2021 14:10:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: replace comparison
 to NULL by bool
Message-ID: <YHGVvn8Yi0tWL3sa@kroah.com>
References: <YHDnWpWztxeZospi@kali>
 <alpine.DEB.2.22.394.2104101408100.2975@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104101408100.2975@hadrien>

On Sat, Apr 10, 2021 at 02:08:30PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 10 Apr 2021, Mitali Borkar wrote:
> 
> > Fixed Comparison to NULL can be written as '!...' by replacing it with
> > simpler form i.e boolean expression. This makes code more readable alternative.
> > Reported by checkpatch.
> >
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtl819x_TSProc.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > index 65eac33aaa5b..476875125e87 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > @@ -269,12 +269,12 @@ static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
> >  {
> >  	u8	count;
> >
> > -	if (pTsCommonInfo == NULL)
> > +	if (!pTsCommonInfo)
> >  		return;
> >
> >  	memcpy(pTsCommonInfo->Addr, Addr, 6);
> >
> > -	if (pTSPEC != NULL)
> > +	if (pTSPEC)
> >  		memcpy((u8 *)(&(pTsCommonInfo->TSpec)), (u8 *)pTSPEC,
> >  		       sizeof(union tspec_body));
> >
> > @@ -328,7 +328,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
> >  	}
> >
> >  	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
> > -	if (*ppTS != NULL)
> > +	if (ppTS)
> 
> You lost a * here.

Ugh, good catch.

Mitali, can you send me a fix-up patch for this, or do you want me to
drop your original patch from my tree?

thanks,

greg k-h

