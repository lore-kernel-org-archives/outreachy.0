X-GM-THRID: 6808004693646639104
X-Received: by 2002:a92:cece:: with SMTP id z14mr4867386ilq.38.1585159412183;
        Wed, 25 Mar 2020 11:03:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls796310ild.7.gmail; Wed, 25 Mar
 2020 11:03:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuI2JMY+3NHeQ1YR7cXgVq1J+3gc7xonOA/bv88yHPaeg2CFH6EKA61xxj4AmtbxDQ2575C
X-Received: by 2002:a92:c88f:: with SMTP id w15mr4823108ilo.86.1585159380121;
        Wed, 25 Mar 2020 11:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585159380; cv=none;
        d=google.com; s=arc-20160816;
        b=F+9Pt5RwFKBwCkmUCWaELpI3EEiLeHgX+aWpw0pMmTL4/kmADHd3NXI/cuPMli7doq
         86bw6Wifhn/b3zgiYGwnPVxrhiXQTwqHMfSHhy1rbeLnesJqpAedB5VLP7XlLQ1tdp7r
         4qjdwMckOV7MCwc0THZ/yIeA1Xwj2OYO1edYb6YVxgvVYXEbQihlA++1KhhBZvrKaHSu
         1ovM+y6aPq2oQh1nZ6ZbOmZMp3UkRmTT6hv4nk6I1ByZjxwAiLWPI/DzBeQpB6V6Xeby
         GEuSpj81+fIzudO6sDHhDDAuXoQA8i2kQ9OFhMchBmmJSfafBesIgr70RFPH35dRudME
         rl8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=Au7fe6byTkEBVlnfmfzDAd6cYU4dr01ajCbHnfA5Pr9KMwlxJmHGErM9tHwJYiMnjo
         yy295brwopNWAF8GHZ1LJbVWDyyuhdl5DNUUjGOSjqEyiKQB7fEXrdr4GKCLgqSns/Vy
         yOW5ElCL9Sgl82KX6Zb+9M0nxCbQ+thB9zNsmnHrnXH09X8vf6TujonZp62YXyX4zNyr
         gQ2wA1kz4zjmkBbtUUDlPDNQab1xYLA1TAUqLZWVbR3sEnlsBmlZ7z7Roaw1wfQ300bM
         9oA1dFFjpl0PBCEof3OJwBAh2kqqFUbGJYEhw7ECu2U5sIeBWHts9R4dZ38iJYqZp/lZ
         8fPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D1Wz8PsQ;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t125si1512997iof.4.2020.03.25.11.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 11:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D1Wz8PsQ;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b72so1410119pfb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 11:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=D1Wz8PsQOJ2WLLa4o6EYdrOA/Z0A8CJYt3SAlJ0VYnYxWPVo9yLE0UcBj+i5IClJN+
         ixrbAwvnpB2sTSKMvcvlJWj1oEDTFxlCyvraGdq/9BMrmejjSBOLYjWVt8bLJ59zFUiE
         V0KUeXPYv3O2GOc5ctq+WHNAkVM4LOxByrGuiC1JCJqyQ66O6KzdTk2QWuK8eI8RK0ew
         LHWeRxkYMnu6C+JxLX/KYiaEcuxMPZqAwd2F4XDZ+6ZENkVcOX9NhJ6FgMN/mTnjjGI1
         vDcZVc7Yxvbmu0MpGbwD3GzluZJbhWxoAiTFV5TQgo9riQwHoX1I+q4aj2/lZ6seUrit
         +84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=HfMnd2Syl7pgo8Gfny22S0nCXhflV0W9V6E0fK/UxvtrlhmSZrB1WLGu9h+8jyM6O2
         S/VAboWLZHWFfVdeny89inisor3m6Quoo+UK/8rZYvGMH05R7nX1Q9Y5YEUU6g0AovPz
         jxTC1OBrINbXVbadfIiMLCyT3QgFSbR5dOiMPIKiBLMjOnB5c4sM/6BIqdgKJJSpX4e6
         uy/mfyl2ZZ5ISfN2bNbRBIrdce5dieeIfTpuG32fkA48KT+yFtI43Kx1jXbbiU7H/WHI
         DzSdM1E20SeluWgT0dxmykIp8yHHK6D1JoVJloXQLfYqz4qGaX3gu7X/tmw2k8jO1T93
         Mk3w==
X-Gm-Message-State: ANhLgQ0VvH5eSFtRbNI+VCV798agNG8RNQTHbMODLErw+OBDq/B/Ej+3
	V+CRCKgToKvs6ssIC7sxX2Y=
X-Received: by 2002:a62:160b:: with SMTP id 11mr4827919pfw.189.1585159379439;
        Wed, 25 Mar 2020 11:02:59 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id v123sm18908998pfv.146.2020.03.25.11.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 11:02:58 -0700 (PDT)
Message-ID: <6bf0a790fb00ad0077b8283b80474e0ff1272bee.camel@gmail.com>
Subject: Re: [Outreachy] [PATCH] Staging: vt6655: Refactor switch case
 statement.
From: Briana Oursler <briana.oursler@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Date: Wed, 25 Mar 2020 11:01:47 -0700
In-Reply-To: <20200325123545.GB3430583@kroah.com>
References: <20200325045500.88046-1-briana.oursler@gmail.com>
	 <20200325123545.GB3430583@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-25 at 13:35 +0100, Greg KH wrote:
> On Tue, Mar 24, 2020 at 09:55:00PM -0700, Briana Oursler wrote:
> > Replaces nested if-else within switch case with ternary logic and
> > variable
> > setting to limit returns. Exposes primary logic to aid
> > readability.
> 
> Wrap your changelog at the same size for each line, don't make it up
> :)

Thanks, I will avoid wrapping them manually going forward. 

> 
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> >  drivers/staging/vt6655/rxtx.c | 101 +++++++++++++-----------------
> > ----
> >  1 file changed, 39 insertions(+), 62 deletions(-)
> 
> Where did the "}" character come from on the subject line?
> 
> 
> > diff --git a/drivers/staging/vt6655/rxtx.c
> > b/drivers/staging/vt6655/rxtx.c
> > index 37fcc42ed000..eb7b20286ae2 100644
> > --- a/drivers/staging/vt6655/rxtx.c
> > +++ b/drivers/staging/vt6655/rxtx.c
> > @@ -240,6 +240,7 @@ s_uGetDataDuration(
> >  {
> >  	bool bLastFrag = false;
> >  	unsigned int uAckTime = 0, uNextPktTime = 0;
> > +	unsigned int len;
> >  
> >  	if (uFragIdx == (uMACfragNum - 1))
> >  		bLastFrag = true;
> > @@ -254,17 +255,18 @@ s_uGetDataDuration(
> >  				return 0;
> >  			}
> >  		} else {/* First Frag or Mid Frag */
> > -			if (uFragIdx == (uMACfragNum - 2))
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbLastFragmentSize, wRate, bNeedAck);
> > -			else
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbFrameLength, wRate, bNeedAck);
> > +			len = (uMacfragNum - 2 == uFragIdx) ?
> > +				cbLastFragmentSize : cbFrameLength;
> 
> Ugh, I hate ? : logic.
> 
> Spell it out, be specific, this is just much harder to read now than
> before.

I'll remove the ternary logic. Would it be better to use a bool and
if/else to determine the uNextPktTime? I think changing it to a bool
instead would have the advantage that it would match a strategy used
elsewhere on that same switch case with bNeedAck. Should I perhaps
resubmit using that strategy? Or would it be better for me to either
leave this one as is or go back to the drawing board on it?

> 
> > +			uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, len, wRate, bNeedAck);
> >  
> >  			if (bNeedAck) {
> > -				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> > -				return pDevice->uSIFS + uAckTime +
> > uNextPktTime;
> > +				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType,
> > +							   byPktType,
> > 14, pDevice->byTopCCKBasicRate);
> 
> You didn't wrap this properly?
> 

Sorry, I'll fix that.

> 
> >  			} else {
> > -				return pDevice->uSIFS + uNextPktTime;
> > +				uAckTime = 0;
> >  			}
> > +
> > +			return pDevice->uSIFS + uAckTime +
> > uNextPktTime;
> >  		}
> >  		break;
> >  
> > @@ -277,17 +279,18 @@ s_uGetDataDuration(
> >  				return 0;
> >  			}
> >  		} else {/* First Frag or Mid Frag */
> > -			if (uFragIdx == (uMACfragNum - 2))
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbLastFragmentSize, wRate, bNeedAck);
> > -			else
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbFrameLength, wRate, bNeedAck);
> > +			len = (uMacfragNum - 2 == uFragIdx) ?
> > +				cbLastFragmentSize : cbFrameLength;
> 
> Same here, this makes it harder to understand.
> 
> thanks,
> 
> greg k-h

Thanks for the input, I appreciate it. 

--Briana



