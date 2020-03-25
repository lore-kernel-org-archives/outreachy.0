X-GM-THRID: 6808004693646639104
X-Received: by 2002:a17:90a:ad45:: with SMTP id w5mr5430158pjv.179.1585165425146;
        Wed, 25 Mar 2020 12:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6542:: with SMTP id d2ls2354884pln.2.gmail; Wed, 25
 Mar 2020 12:43:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvO/EZoAz/mWlULg0qOL3UH7F4sM6EJJVWaNtymfbqatsy4F7BZPzYXjMjof3OxEKmH61XQ
X-Received: by 2002:a17:90a:928c:: with SMTP id n12mr5578275pjo.45.1585165423691;
        Wed, 25 Mar 2020 12:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585165423; cv=none;
        d=google.com; s=arc-20160816;
        b=R5T69WZCWc9Bg9y7+Oh1yhH9EP84A5uqqJKK+sHA72WUJU0ydCNE8nyyJAyPogcD64
         sr1Ow8XhWZw/IFpx1RdiwdfCixOSDFzeLRqTVEAgyVfTe2Bbqgk3f7E2WBJzolElHExo
         zAJy4Wqzu2wOgcVbR8xLbPPdr4l/xi/hiGvIrCyt+YEEJG33WukE8qit5f4lqIIpEuHb
         wIQiAdXn4eDWRMPBat404Q0mH5HQdHs7sD4b1u6qe/tmQ2S/QCs0Hxz7jhQZX/CSg8Hi
         XNZxeTFCiyF7UkRnjaeJziuMRMgvPAoRVP1gEIccOvde/uq2UYFrBpG89/OwVqxknf8i
         IykA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:user-agent:date:mime-version:references
         :in-reply-to:cc:to:from:subject:message-id:dkim-signature;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=ejXyJVKztQXQk78Wy3H26Y58aqikBYb5BKqufSV7YlI7MGQ089EI+OaSX8WnvzaDAD
         Qd+c2UhgrMvXl2a+XGmBouJ5xpvVJ+DHpJ5APEQpbICo8hyemDVyjdxwntco6wWStOS5
         QHef3qZijhjonq15aRbOGQ7PBLokAXNuTB7kX9lhJD4R6QVl5y2hHX5I02606SF/Vh+7
         hxvBU/g57FeaQUDU5VOlCphfzyfGowvvMhFuHL7lL0RddaMETNp3x913G31XNkdVb9Bb
         /yLTF8xjI3+0hBQQEIDhJSy2doSAFEUzyVHbHKPps6Dxs/+hp/2cpDGpos4CnlgsueUr
         8Abg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rLsJDa/z";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id f8si495820pjw.3.2020.03.25.12.43.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 12:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rLsJDa/z";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id mj6so1467755pjb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 12:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:in-reply-to:references:mime-version
         :date:user-agent:content-transfer-encoding;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=rLsJDa/zY6miAtI19gQpb+oJQc+di99vMA2Te7SW8OOXcQ+vRN8IZFbF9eXkae8bb/
         rRxBl2IuuedMSocwYgh0MDkr8ilwpNsSGEB2bhDeMdhBmjCFEhoGu4rXa2PJ/XAQl2Xe
         TA77m7QeouIw5JHNQFq456RdxMdyh+Q0tIU1Hz06GMdJngtG5VnQ9WkMBDjq6NrXwIdb
         eHLBQKAYD6KhQIIR/sS49gstVq6NJVAq/Dfbc1Y+laLl9SE1nW+vCPlMxHa0sWCj4xeA
         iW7XDdfEOX9WVXu7QRdMdykDuM5Oq7g0E8pMaT3VEZlP69zb8TF4flcH1a+EmyiFqNKy
         QJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:in-reply-to
         :references:mime-version:date:user-agent:content-transfer-encoding;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=Y2u9V+ZZTg+1ZM5ak8MckQU/iTb3hMZyM57XrkE67tR4t7VCxcv/j7MRSFrwkiEfat
         t9V7BRV1F93Sf8BHo9JrvI/lKq8XuPBLA3/mwDv+YqW/hL8sP/N2JJuqjgFk/FxxOB4I
         4uAHPbzg158xk/v2gbv721HC5e0cv1z8LlWlXqoTbFG6CcQ8AXHzhyGitPz83svh1xjy
         3lwJfuNImVcAZcXvKKNp9BRXhmjulmwo80s5CCK9YXh5aabXYecOIeakkz5hC9Xi4OFp
         6QTYVvDPgPrH5FMCWxg+Tr/m3JtMBxrFwXw90XxSjSH6Y6SHyCwaqVaSyZqGc/xCG9/y
         Nhdw==
X-Gm-Message-State: ANhLgQ2XaOWatvzraI7iS0/7J+uJab03PvUo6G0hySbdfzIo8thc62O8
	cUOVpcfVeAW2psKLd9DbN1Z5cNGiwS4h4w==
X-Received: by 2002:a17:902:8542:: with SMTP id d2mr4829084plo.200.1585165423288;
        Wed, 25 Mar 2020 12:43:43 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id d7sm19324502pfr.17.2020.03.25.12.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 12:43:42 -0700 (PDT)
Message-ID: <95fcd61840d450509a885d3be1a8d312cf9bcf29.camel@gmail.com>
Subject: Re: [Outreachy] [PATCH] Staging: vt6655: Refactor switch case
 statement.
From: Briana Oursler <briana.oursler@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
In-Reply-To: <20200325123545.GB3430583@kroah.com>
References: <20200325045500.88046-1-briana.oursler@gmail.com>
	 <20200325123545.GB3430583@kroah.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Date: Wed, 25 Mar 2020 10:48:47 -0700
User-Agent: Evolution 3.32.5 
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



