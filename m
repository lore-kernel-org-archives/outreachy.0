X-GM-THRID: 6808004693646639104
X-Received: by 2002:a05:6830:201a:: with SMTP id e26mr3887893otp.238.1585164847144;
        Wed, 25 Mar 2020 12:34:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:3345:: with SMTP id q66ls215254ooq.4.gmail; Wed, 25 Mar
 2020 12:34:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsrlwtrJq9KMr9FFSZxPvVQQkCWGsJ46rNEat+Wox+N6YNU+GW86+2F7ZSS/xWfz4yMva6z
X-Received: by 2002:a4a:4c46:: with SMTP id a67mr2573536oob.1.1585164845984;
        Wed, 25 Mar 2020 12:34:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585164845; cv=none;
        d=google.com; s=arc-20160816;
        b=vYX6Y3bFKeUYwDwKyMUxVcjrzTMXTuecouV0imyE//rnANJ3KGE0u4hMWoWAQg3HUR
         awLjpQa3eywfkaRCJsH5bkyD6VMTpJptRj7y0D3tDEp6EQNRGf1/gkZqB3mEA37EFY0K
         vp+rgi/ZzlhveKr1cJ5Fz5jgQhAPvfOkYMr3giU59exzNOP3LCShd/31ZHnV6+gTS6Vt
         od5kwmLvivAsphkz2RlNFGm+8bwLIsYnDD4fQIih7sho4F7x4kWxich8dQIfMKTCQQXq
         BpuQtCz64Ku4l5Iv5nXV/upJTgxxVl2I2r8lk5qn3SbLSB1eMbuHtrqg6fFv5mK5rWE5
         GxEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=D/N2UUFCnSi8sW0elLycDJNADMDfUqCQhB+tONy9G+s=;
        b=E1dmDuAZZsSu6nLX3WgDbDaAEAdnuLM8WRNz29htT3+H0tm/BJLAaJR28UcfqnTtXl
         cXSPKKfsoWOK0avHw9+CWfYE+/ZRJDTmAZ/nI6FE5ZKiWQ9qI7Fi9X/w9cgrodHLdHzy
         7pL5xeHybTALzZOj3b2DpWneG9GXWH21U48N4vgU5nM9gplHzV30yJ7Xtl80kB+wmD+A
         ovlU+jg5t255iFuk9NQ30Hbtr8jFaOq+caruZr60cpjodDxMnQiMZEqy+CLjNLir0JtF
         Ki78fkCN/HCqQMq9+xCLMvUoqfizGx/GZA9omINtDInkIN1twpm6VcYEZmyaz9L0FF2f
         Gp4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bDmc8F5p;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d188si5851oig.0.2020.03.25.12.34.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 12:34:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bDmc8F5p;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g6so1209739plt.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=D/N2UUFCnSi8sW0elLycDJNADMDfUqCQhB+tONy9G+s=;
        b=bDmc8F5pJiLEiVtVDMUnt6SmenGJCWsymUDCO0tgMqWvZ+dnIVGcXRSuLF7K5YHyxe
         YFUlsp0aM3MhGS9ACweoAL9iILgWjaZCQmSEwvU3OwHtv+w4POYNnhhMFbd5YI2u0mfm
         7sbtjhROn5guJJf7sHvSHtEqMILXgRDsE+A0/67i2kdWwNeoiuCm5uVigcW3RGFEHJK1
         E1qc0avVe9CvLMfGlAjlh9BMbuj3FyqO1llpKKcu5l1VxFkCrmpGRjb0MQ9xhM5zLDYX
         +G7sfM0zqrMW3xwrY8A1UgIxEckZkLRs2CifHoXZ4Unr8AGljVUFc4rweSSKX5/Qr/++
         o9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=D/N2UUFCnSi8sW0elLycDJNADMDfUqCQhB+tONy9G+s=;
        b=isbz5TQdj6ujGAWDRHi22mFS1Fv1g1uZVgOjJ82YJn9PzySVLtsON241h6WRGQn0by
         96AHfiOv8EnePYDCxQJzEPo0RX+GAwKs4e+FrZjQSKKoYURVbyGokpCUwVHPXCynTF2T
         abwWhKrOVtuJNxN3VrkMZUzDVnA+VWSHoNfvV9QC4ERYQMqxfNyndPxXW1nhWkzRpDIA
         cdUwRjv61KquV8ReNikzjoFPcv7J5AmmmO+ZelXBbe0io2S9+/s8xbd+JF3NYM3HucYc
         EYmWGW5QkqnYgITspoMLmXmFHyHlrPPot//BjtyoGru+qw1SKIlIbQws6ZW0LzsSyoHA
         BEig==
X-Gm-Message-State: ANhLgQ2hvJEMvuuJ9LzwXVGsm2H6X8kjXb5aJQg+Mm+nXh23sC38GN7L
	HFyBaeTXgHB/lXnj2owedlk=
X-Received: by 2002:a17:90a:bd01:: with SMTP id y1mr5632772pjr.129.1585164845470;
        Wed, 25 Mar 2020 12:34:05 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id q8sm47712pjq.28.2020.03.25.12.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 12:34:04 -0700 (PDT)
Message-ID: <f169195d7828a2f96c474e7c962d98bb15fa93d0.camel@gmail.com>
Subject: Re: [Outreachy] [PATCH] Staging: vt6655: Refactor switch case
 statement.
From: Briana Oursler <briana.oursler@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Date: Wed, 25 Mar 2020 12:34:04 -0700
In-Reply-To: <6bf0a790fb00ad0077b8283b80474e0ff1272bee.camel@gmail.com>
References: <20200325045500.88046-1-briana.oursler@gmail.com>
	 <20200325123545.GB3430583@kroah.com>
	 <6bf0a790fb00ad0077b8283b80474e0ff1272bee.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-25 at 11:01 -0700, Briana Oursler wrote:
> On Wed, 2020-03-25 at 13:35 +0100, Greg KH wrote:
> > On Tue, Mar 24, 2020 at 09:55:00PM -0700, Briana Oursler wrote:
> > > Replaces nested if-else within switch case with ternary logic and
> > > variable
> > > setting to limit returns. Exposes primary logic to aid
> > > readability.
> > 
> > Wrap your changelog at the same size for each line, don't make it
> > up
> > :)
> 
> Thanks, I will avoid wrapping them manually going forward. 
> 
> > > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/rxtx.c | 101 +++++++++++++---------------
> > > --
> > > ----
> > >  1 file changed, 39 insertions(+), 62 deletions(-)
> > 
> > Where did the "}" character come from on the subject line?
> > 
> > 
> > > diff --git a/drivers/staging/vt6655/rxtx.c
> > > b/drivers/staging/vt6655/rxtx.c
> > > index 37fcc42ed000..eb7b20286ae2 100644
> > > --- a/drivers/staging/vt6655/rxtx.c
> > > +++ b/drivers/staging/vt6655/rxtx.c
> > > @@ -240,6 +240,7 @@ s_uGetDataDuration(
> > >  {
> > >  	bool bLastFrag = false;
> > >  	unsigned int uAckTime = 0, uNextPktTime = 0;
> > > +	unsigned int len;
> > >  
> > >  	if (uFragIdx == (uMACfragNum - 1))
> > >  		bLastFrag = true;
> > > @@ -254,17 +255,18 @@ s_uGetDataDuration(
> > >  				return 0;
> > >  			}
> > >  		} else {/* First Frag or Mid Frag */
> > > -			if (uFragIdx == (uMACfragNum - 2))
> > > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > > byPktType, cbLastFragmentSize, wRate, bNeedAck);
> > > -			else
> > > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > > byPktType, cbFrameLength, wRate, bNeedAck);
> > > +			len = (uMacfragNum - 2 == uFragIdx) ?
> > > +				cbLastFragmentSize : cbFrameLength;
> > 
> > Ugh, I hate ? : logic.
> > 
> > Spell it out, be specific, this is just much harder to read now
> > than
> > before.
> 
> I'll remove the ternary logic. Would it be better to use a bool and
> if/else to determine the uNextPktTime? I think changing it to a bool
> instead would have the advantage that it would match a strategy used
> elsewhere on that same switch case with bNeedAck. Should I perhaps
> resubmit using that strategy? Or would it be better for me to either
> leave this one as is or go back to the drawing board on it?
> 
> > > +			uNextPktTime = s_uGetTxRsvTime(pDevice,
> > > byPktType, len, wRate, bNeedAck);
> > >  
> > >  			if (bNeedAck) {
> > > -				uAckTime = BBuGetFrameTime(pDevice-
> > > > byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> > > -				return pDevice->uSIFS + uAckTime +
> > > uNextPktTime;
> > > +				uAckTime = BBuGetFrameTime(pDevice-
> > > > byPreambleType,
> > > +							   byPktType,
> > > 14, pDevice->byTopCCKBasicRate);
> > 
> > You didn't wrap this properly?
> > 
> 
> Sorry, I'll fix that.
> 
> > >  			} else {
> > > -				return pDevice->uSIFS + uNextPktTime;
> > > +				uAckTime = 0;
> > >  			}
> > > +
> > > +			return pDevice->uSIFS + uAckTime +
> > > uNextPktTime;
> > >  		}
> > >  		break;
> > >  
> > > @@ -277,17 +279,18 @@ s_uGetDataDuration(
> > >  				return 0;
> > >  			}
> > >  		} else {/* First Frag or Mid Frag */
> > > -			if (uFragIdx == (uMACfragNum - 2))
> > > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > > byPktType, cbLastFragmentSize, wRate, bNeedAck);
> > > -			else
> > > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > > byPktType, cbFrameLength, wRate, bNeedAck);
> > > +			len = (uMacfragNum - 2 == uFragIdx) ?
> > > +				cbLastFragmentSize : cbFrameLength;
> > 
> > Same here, this makes it harder to understand.
> > 
> > thanks,
> > 
> > greg k-h
> 
> Thanks for the input, I appreciate it. 
> 
> --Briana
> 
> 


