X-GM-THRID: 6802341212191719424
X-Received: by 2002:a9d:7458:: with SMTP id p24mr5025260otk.197.1583842374723;
        Tue, 10 Mar 2020 05:12:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:410e:: with SMTP id l14ls3568770oic.2.gmail; Tue, 10 Mar
 2020 05:12:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuIJh4PD+l3nVScVSLFIsp2FrdkwmpX354qK8B/oDR/Th+nOy8tvSrDGSN+N9SKPFqCtOVc
X-Received: by 2002:aca:b187:: with SMTP id a129mr888824oif.175.1583842373679;
        Tue, 10 Mar 2020 05:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583842373; cv=none;
        d=google.com; s=arc-20160816;
        b=Kvpn8tajd7XPTr4rfymCIJgb3FyWR1kvB8Elx09caa62UY/ob8HndjxJZgpAwLKsM9
         gS9N6Y2Y1fmnMbz/ZT77STAkrKN9DR9i7gh+nkcBUZDeeLOwl6yUA0B0m9YualndY7w2
         cfW5R1NFHEynqUpbmUWWiFrJsZsuhPRRXqqYGG+LppUewvKO9Kis7yNAXPd+YAzbz7xj
         jIFxJGXqDOhTIhADhLA4ZwPJxGKktxHmtDLEcCDbrhFN6M/EQZUvZJeqDVkDpErLU8Gr
         uSYtOV0zamY+VuJvAeEhZWJcmEsYldGS9PP7N3Ma8wHGGgv6SVFc7mf9TXtz9YcjwmHV
         MPyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=AT1OOcPeNIJ0qk9OsL2HEo20dOUWhQ0BLLXplE/xYG8=;
        b=L/dS2k4K5zmekhFX+J8tjqcqlCb0IMPsgUqc4RcSxHbgpxFrjqYqNVobbXiHPseyDj
         2hHD0gyiOSuAt24aXBAEbahiwwmdpHTOjqOqgQ9ZHEYPLnGrA+ctBo5I12Iwe3rJd3tt
         NG7XqWPUvuAgTZOxW4Pi5ACl44VxHpvS4QN7CneWBVCBLFrZpKLiv7fa/WV90bf7uz7G
         8wXNqS15s2gVHIJdIournzCo3z9hPygZNDAATt2dOriDtETBeAByr/gt5YiQZRceofj2
         47UnwgZ3uYGpETfsXrvYsHS/Vg8GMUWl3Hw3Sz6HWyKyVR8nrdGJwvuhpQS9N2nGJ0jY
         O41w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=dPfoeuUE;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id v19si231314oth.1.2020.03.10.05.12.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:12:53 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=dPfoeuUE;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x542.google.com with SMTP id m5so6235744pgg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AT1OOcPeNIJ0qk9OsL2HEo20dOUWhQ0BLLXplE/xYG8=;
        b=dPfoeuUEhD6Ny+zLiYUkMV/EeCpE4phUHMbIkzFBWRCM/L79rhL+ll9Smay8MT04uE
         3QdF6yvrUzkHX0Lp/mfeago2N7WV9fZ3iT37kLF00jzqMDAJj8RjsHoWtnUo0oR+fHT4
         rv1dYwr0puPL8NFa4prVLH4AO6uePpH7sf3lPWQhd2cCo/BfDiopjW6FQs+fStfjyDmL
         bFIpDcaPeAMBdkq/+C2McuUY8jN2/Ep4u1lHOlqMozMvU7kol5b0AMJ0crjLBhwfruzw
         3wdwvY/9wN7sPH756yAAFcnZlU3osyxuvpah6N1V/YnheaEKngkOaUEamVO4rUm4qUvR
         D5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AT1OOcPeNIJ0qk9OsL2HEo20dOUWhQ0BLLXplE/xYG8=;
        b=fw5u4kSBzxxHKxtf39FDSTgiNNT7PlhvxtTa3q3fGdgM7YA8brT4zM88SxKNTD39U3
         GM54Llh0nF6DIHm4wJYwmUgJE93vKCcqN4pHSgptwmOkDYs/MQTU3bE0/NBBTyJZcrkG
         yVqiSeuUNaDQqFFQwQBv/XPW3uLt0mN0KrVD+TkDqrQOLluv71o4lapIQYHJKOt5rNv/
         6At8mxucR8zq7eLWJagTK3iBa8XCTnJIMUrpCI0mlJnU7hGFDax89aiQrUY133Vn10GK
         kMlY2QxSLW9Gsfw5zc1AYwPsI/hCnt6UDEhgvcY/FvrLflHhVjhWntiiyYXWxtMiFf3n
         jQ6w==
X-Gm-Message-State: ANhLgQ0BmpfahKLwseM98D+pJvjYs0iiqB3LU090Y6Y9QhKXAR2E3Zap
	tqi+ta205lJurQQumJTMh6aUaw==
X-Received: by 2002:a62:1bd6:: with SMTP id b205mr1335072pfb.242.1583842372282;
        Tue, 10 Mar 2020 05:12:52 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
        by smtp.gmail.com with ESMTPSA id i5sm29307135pfo.173.2020.03.10.05.12.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 05:12:51 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 17:42:42 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/7] staging: wfx: change 1 to bool
Message-ID: <20200310121242.GB11048@kaaira-HP-Pavilion-Notebook>
References: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2003100824490.2455@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003100824490.2455@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 08:27:54AM +0100, Julia Lawall wrote:
> On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> 
> > policies[i].uploaded is a bool. It is equated to 1. Change it to bool.
> 
> equated -> assigned
> 
> As far as I can see, policies[i].uploaded is a u8, not a bool.  Have you
> checked that all of the uses indicate that it is used in a boolean way?

Yes, I got this warning using coccinelle, after which I checked a few
uses of this as well. I found them to be indiacate policies[i].uploaded
as bool. For example line 227 of the same file :

`if (!policies[i].uploaded && memzcmp(policies[i].rates,
			    sizeof(policies[i].rates)`


> 
> julia
> 
> >
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/wfx/data_tx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> > index 815fde0913f5..ef617347abad 100644
> > --- a/drivers/staging/wfx/data_tx.c
> > +++ b/drivers/staging/wfx/data_tx.c
> > @@ -227,7 +227,7 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
> >  			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
> >  				break;
> >  		if (i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES) {
> > -			policies[i].uploaded = 1;
> > +			policies[i].uploaded = true;
> >  			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
> >  			spin_unlock_bh(&wvif->tx_policy_cache.lock);
> >  			hif_set_tx_rate_retry_policy(wvif, i, tmp_rates);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309223751.GA5676%40kaaira-HP-Pavilion-Notebook.
> >

