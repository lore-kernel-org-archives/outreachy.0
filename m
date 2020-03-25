X-GM-THRID: 6808004693646639104
X-Received: by 2002:ad4:4f88:: with SMTP id em8mr4977265qvb.156.1585165426632;
        Wed, 25 Mar 2020 12:43:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b3d4:: with SMTP id b20ls782314qvf.11.gmail; Wed, 25 Mar
 2020 12:43:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuQ+Xyt0GWNFe6uynuzxwE4I1ycxK3SQAWai5VRl2Yfoor0XfPB5a1CVO6BKHvy3HA7GupZ
X-Received: by 2002:a05:6214:10e5:: with SMTP id q5mr4732645qvt.245.1585165425377;
        Wed, 25 Mar 2020 12:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585165425; cv=none;
        d=google.com; s=arc-20160816;
        b=haSRwvxIrlSESyQghSLpEN5rRfM4acoLiHQfvuhP+oi4VMngtHzgE4KpIYhUaM5+Z5
         hKuaUNpRYo/1VLkQyfnILtXmzTZxcoIKEVRh9ch5zRqzjHlmJ26YNOY0tjpQfSGBpuET
         kmo9peH7Ea5uFuby9hyt1lk76yaNw+8bMJRlGR1zP7bNYoUCb9jBLqkDI65QI5ERI1FM
         sblPJ6+mHYNUv8phEt1dQ1YGDhjpegCh5wR5V/A3VeaTwHG7LZrGfGrQQJWdjz1yirdg
         homPeatYiyqvdG1rd5OyGvV3LYpsc7nGEC3w7S/PtvYvTrwQA07KzZkIhHpfHke8foG0
         dn6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:user-agent:date:mime-version:references
         :in-reply-to:cc:to:from:subject:message-id:dkim-signature;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=ESCmFZi3Jq9SXf+xVbGNZjMCsHlZCscu/EE92bkLRNsAWkt6FADcj8p27cC7Tk5QiW
         4TV65mM3DRcOOb0QdlxEibj1ok+gcRLeGPVdndoZmJHa+oCImvgfrecRR/I9wCW8aN9T
         hDoq0vTNtxmbxM9PeiiyrQU0zbH/4QWArsu/2Vn7jYsy2iwWYtZd4sCKrQ/X/MAZcdx4
         CRYkEN/0PzsSEd/7wwh0yMl3f2LNWrB6l+8QrlVzmv5O4b7s0BM7PQi33/9ZW+ZWEZX2
         Aa3yjYgB+Vg6AGAeyf/XZm7o8apTFtjnLkmsG6hpkh51fAUg4SRf4WO3V0YXiDpJuy37
         sGHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nbsnYnTu;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d34si8752qte.4.2020.03.25.12.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 12:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nbsnYnTu;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id e1so1202544plt.9
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 12:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:in-reply-to:references:mime-version
         :date:user-agent:content-transfer-encoding;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=nbsnYnTu+OSLVBJnpVUowS4u8CQS5slHhj+y3X0c4x7cRhB0zofM4Zp+O6QWzTBE1N
         3ly+G4bdbD6kR+dpCl/lYDzh4f4xKOSwg8Seal9IyePR+yNvanjN0cu1iBLidsZfKP0V
         z43u/kpZio2HDuuNgdLIPD8LhufbcNDi2ySNdAuiIM2ME4NhMlh918A4jhQ1QokrKJMy
         0TbjMlwwQhOWsKdm/VAPNMBJNJL164fweH/2vAn2hejncxUQ/vTHjIe3iZEYTAngMS3x
         /as7clYmex91wwbwy24k4CSAjf3ghP59aJ0mcSWjL12smkPpzrDKT6DgrAr2E7qKyeKL
         duHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:in-reply-to
         :references:mime-version:date:user-agent:content-transfer-encoding;
        bh=W3MrZ/cgV4uK9AgEALqDeYpoodHoJWh5HsfxQo+1ELE=;
        b=Ng22Sz8HBYk8teLlTNlTv+mAn4ErwYaU0Boh2uK0POyGEasfoj/mF0ZtE+QIbT3DPF
         k0yGahBXb+Sw0e/v8WwDF4tHJJu3xYKPYIBV0lygd5Eag3zwpn8djlFM2FU7ziKr6f1F
         eUN4V7Y9z3Wxx8sXFotP5Z7mm3ydaQbQkqR3leKzUBVc96iJm4OVcwKpixwNfcO1c3JO
         bozaJ6j1zKy9LW2tXcBlZ54FZh/6wIjaCpjVg+k0b9EAUyfYkqw6HZeJ8Jj2rE0XORP0
         aBBVuqLRho0qBTciOqqZw3xrnFVEt6NQvKil4FAZPIf7kKs8inkJCeFWLOZIuAF+OdKQ
         MVbg==
X-Gm-Message-State: ANhLgQ1Bjxy9N0hmd5RVxxiCIgf+Lj/IXTfQulfJ4fyYHX10XJPdPjJ2
	rAW8hzl8+0TyZujuIKD9m34=
X-Received: by 2002:a17:902:a603:: with SMTP id u3mr4778622plq.105.1585165424352;
        Wed, 25 Mar 2020 12:43:44 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id o128sm19535887pfg.5.2020.03.25.12.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 12:43:43 -0700 (PDT)
Message-ID: <f0cf864e7c5f4a4fc15956cfe17d4734fe2a72fb.camel@gmail.com>
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
Date: Wed, 25 Mar 2020 10:46:54 -0700
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



