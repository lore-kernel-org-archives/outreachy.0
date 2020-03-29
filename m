X-GM-THRID: 6808004693646639104
X-Received: by 2002:a5e:c104:: with SMTP id v4mr4936211iol.122.1585443930989;
        Sat, 28 Mar 2020 18:05:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8ac3:: with SMTP id e3ls2004573iot.10.gmail; Sat, 28 Mar
 2020 18:05:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvv85ZpY6Hf/wvrPcRpv6JiHiovYNHFYt+DDtIofDwq/8nrNwvt8ECEZWCiczoNGJZqsJpv
X-Received: by 2002:a5d:954c:: with SMTP id a12mr4893435ios.25.1585443929257;
        Sat, 28 Mar 2020 18:05:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585443929; cv=none;
        d=google.com; s=arc-20160816;
        b=IFwTrj4TK9/4X8dDwbfpdoGF0PyKD6jewPwPa/mMfqE1flSmmPMIOWUj+DnofaCNcO
         dLTp6Ux55AUL7JLiE/wCTks42k50PsKZqu2FPAi0KWF7tlOR+sHSAJP7FU/OgpQ/Yt43
         4PEiSDhLGFHdU711JTVI5SOStt4Jx/2sklr+hZZSXeE32qz+dJ5Cws6q1Sdz2kxndsXA
         T0TTcTViobYqkmN/Znkv5jDVJtAjXzADR4pDLKyjsOVn+t4Z4k/gGhpaV7CjtQdQX2oi
         WIUXSM9IvtHGHCmvCYakreHJOHRZm3c5v5+1A2shyYbE1zcPh0E8o/ChhrRLAYwR3uHM
         xe8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=IpoSawSIVMkF1TrVCaZ1Gm3cQqrODZMqM9fIObKCHu0=;
        b=Em71y9hpNESFhvI9JNxfAjIC/d5WdWvZAEQfkIIvzVmZwdgYM68s6Dq5hyr0o8XSrV
         6XCk25O6JVku5Cpv7PJPObUxTT38U5CWRTVyVLYQBCrkagDtOAy8gfYZLD+BASlWYDhk
         1D4dFdx884jGQkQ14WuRZTQplsZU81aSMzP8AzdmiuwBFKdtM1yDMTtzzSlggoGoc32+
         q7yCtVREfftwukg3Q+EzR8bzPBeAOEN5eb29Ovusf4s4I2nqiHNMxbBz/hT0Nu5k0Rzv
         yK+4S5GG2WDKt7Q2MXvLXJl7FkS0BuDxLUzucDMCAjRkMi3wQYgsqXaAXrvB7HNsdnk7
         g23g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVfolXXJ;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t13si477469ilk.5.2020.03.28.18.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:05:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVfolXXJ;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id h11so5139343plr.11
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 18:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=IpoSawSIVMkF1TrVCaZ1Gm3cQqrODZMqM9fIObKCHu0=;
        b=mVfolXXJiROBes+Lgye0k9Og5pr7aIkJm5Nk2SaxhzBOBIB9A0dUBMuwjpbhJT+8s+
         AybBwX8sdTq++mp7G/DAy8i/GJ4aZ7yMRC+MjLR/XZZciwDU7a7NvNj7DsdwzgReX4tG
         yZwxFgoYo2PosSo1+AYckoi1TnPZokvlSTeOiBAoV/nPfLRtb9FWx7Kr69XFEe4jgZrZ
         Rzkr8/OxLUGYuTfqpmaYETp/iR056BTaDw5NEjgLOHmDDi7fmJQa8gBpkYOMJRbAEnBx
         gQWpv+Gz3eKGudaqGvP8Ei1VoSA2JebKG2e6mgI9yMm54dfazDfjHgv7qdOmE2HeSLiy
         QERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=IpoSawSIVMkF1TrVCaZ1Gm3cQqrODZMqM9fIObKCHu0=;
        b=rTEfyO0Ty8Zv8ceJ7+wPAXfMRhX6R88T+Y52cTFo/zEd/+Z3roUBmnQ2gh8LlPaooN
         cn7jEkJgGJtgRzQmVZ5Aw2KRbiBzWcO0duPnffTwAyrS3DslZTWUwXj1TqHMrJRzZdcm
         lsOIvsB4eVJ6SqWITSxBd0bZbER2zvsJ6DneWc11hTb9QSRRYK3NbzJWSiD0Byj1zVBD
         +aFyK/+N2D9aEwHS5XuY6gzWRXLkdx/6vvryllHnjDBYAfirnbRkiKFvSvm6EPYuM7W0
         CeJAkUoutBFCZVerEssM/QRWOposSXjxA4kqrkt4HoTDZOr8lvBNiEWODSPgj1FSrOIb
         9sHw==
X-Gm-Message-State: ANhLgQ2g4yLcWkUbvv8qxmUrD1S6f+0o9sFLIJskry5flHQu9ev/8Xjy
	KgUuj9o2qZ+nzqrPlZJOI7s=
X-Received: by 2002:a17:90a:d593:: with SMTP id v19mr7454746pju.177.1585443928427;
        Sat, 28 Mar 2020 18:05:28 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id z63sm6649244pgd.12.2020.03.28.18.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:05:27 -0700 (PDT)
Message-ID: <a0480760f4ce51ac59fbbbdac41b7a43ef1317c1.camel@gmail.com>
Subject: Re: [patch v5] Staging: vt6655: Reduce statement complexity
From: Briana Oursler <briana.oursler@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, nramas@linux.microsoft.com, 
	forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Date: Sat, 28 Mar 2020 18:05:26 -0700
In-Reply-To: <alpine.DEB.2.21.2003281118480.3005@hadrien>
References: <alpine.DEB.2.21.2003272237070.2709@hadrien>
	 <20200328051004.40756-1-briana.oursler@gmail.com>
	 <alpine.DEB.2.21.2003281118480.3005@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-28 at 11:19 +0100, Julia Lawall wrote:
> 
> On Fri, 27 Mar 2020, Briana Oursler wrote:
> 
> > Move duplicated code out of nested if else statements and make
> > other
> > simplifying changes, shortening line length and improving
> > readability.
> 
> Should this really be multiple patches?  For example, does the len
> thing
> need to be with the rest?
> 
> A line is added under an else in the hunk starting with line 341 that
> doesn't look necessary.

I see what you mean. Thanks for reviewing, I'll go ahead and resend as
a patch series. 

Thanks,

--Briana
> 
> julia
> 
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> > 
> > Changes in v5:
> > 	- Update patch description to better describe changes.
> > 
> > Changes in v4:
> > 	- Remove 'flag' bool and return comparison to switch case.
> > 	- Remove comment.
> > 	- Update path description to better describe changes.
> > 
> > Changes in v3:
> > 	- Update grammar and meaning in patch description.
> > 
> > Changes in v2:
> > 	- Remove ternary logic in switch case.
> > 	- Introduce 'flag' bool.
> > 	- Move len definition above switch case.
> >  drivers/staging/vt6655/rxtx.c | 118 +++++++++++++++++-------------
> > ----
> >  1 file changed, 58 insertions(+), 60 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/rxtx.c
> > b/drivers/staging/vt6655/rxtx.c
> > index 37fcc42ed000..9a6abe8613e6 100644
> > --- a/drivers/staging/vt6655/rxtx.c
> > +++ b/drivers/staging/vt6655/rxtx.c
> > @@ -240,10 +240,16 @@ s_uGetDataDuration(
> >  {
> >  	bool bLastFrag = false;
> >  	unsigned int uAckTime = 0, uNextPktTime = 0;
> > +	unsigned int len;
> > 
> >  	if (uFragIdx == (uMACfragNum - 1))
> >  		bLastFrag = true;
> > 
> > +	if (uFragIdx == (uMACfragNum - 2))
> > +		len = cbLastFragmentSize;
> > +	else
> > +		len = cbFrameLength;
> > +
> >  	switch (byDurType) {
> >  	case DATADUR_B:    /* DATADUR_B */
> >  		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or
> > Last Frag */
> > @@ -254,17 +260,17 @@ s_uGetDataDuration(
> >  				return 0;
> >  			}
> >  		} else {/* First Frag or Mid Frag */
> > -			if (uFragIdx == (uMACfragNum - 2))
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbLastFragmentSize, wRate, bNeedAck);
> > -			else
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbFrameLength, wRate, bNeedAck);
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
> > 14,
> > +							   pDevice-
> > >byTopCCKBasicRate);
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
> > @@ -277,17 +283,18 @@ s_uGetDataDuration(
> >  				return 0;
> >  			}
> >  		} else {/* First Frag or Mid Frag */
> > -			if (uFragIdx == (uMACfragNum - 2))
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbLastFragmentSize, wRate, bNeedAck);
> > -			else
> > -				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, cbFrameLength, wRate, bNeedAck);
> > +			uNextPktTime = s_uGetTxRsvTime(pDevice,
> > byPktType, len,
> > +						       wRate,
> > bNeedAck);
> > 
> >  			if (bNeedAck) {
> > -				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> > -				return pDevice->uSIFS + uAckTime +
> > uNextPktTime;
> > +				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType,
> > +							   byPktType,
> > 14,
> > +							   pDevice-
> > >byTopOFDMBasicRate);
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
> > @@ -300,35 +307,32 @@ s_uGetDataDuration(
> >  				return 0;
> >  			}
> >  		} else { /* First Frag or Mid Frag */
> > +			if (wRate < RATE_18M)
> > +				wRate = RATE_18M;
> > +			else if (wRate > RATE_54M)
> > +				wRate = RATE_54M;
> > +
> >  			if (byFBOption == AUTO_FB_0) {
> > -				if (wRate < RATE_18M)
> > -					wRate = RATE_18M;
> > -				else if (wRate > RATE_54M)
> > -					wRate = RATE_54M;
> > -
> > -				if (uFragIdx == (uMACfragNum - 2))
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize,
> > wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> > -				else
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength,
> > wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> > -
> > -			} else { /* (byFBOption == AUTO_FB_1) */
> > -				if (wRate < RATE_18M)
> > -					wRate = RATE_18M;
> > -				else if (wRate > RATE_54M)
> > -					wRate = RATE_54M;
> > -
> > -				if (uFragIdx == (uMACfragNum - 2))
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize,
> > wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> > -				else
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength,
> > wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> > +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > +							       byPktTyp
> > e, len,
> > +							       wFB_Opt0
> > [FB_RATE0][wRate - RATE_18M],
> > +							       bNeedAck
> > );
> > +			} else {
> > +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > +							       byPktTyp
> > e, len,
> > +							       wFB_Opt1
> > [FB_RATE0][wRate - RATE_18M],
> > +							       bNeedAck
> > );
> >  			}
> > 
> >  			if (bNeedAck) {
> > -				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> > -				return pDevice->uSIFS + uAckTime +
> > uNextPktTime;
> > +				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType,
> > +							   byPktType,
> > 14,
> > +							   pDevice-
> > >byTopOFDMBasicRate);
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
> > @@ -341,34 +345,28 @@ s_uGetDataDuration(
> >  				return 0;
> >  			}
> >  		} else { /* First Frag or Mid Frag */
> > +
> >  			if (byFBOption == AUTO_FB_0) {
> > -				if (wRate < RATE_18M)
> > -					wRate = RATE_18M;
> > -				else if (wRate > RATE_54M)
> > -					wRate = RATE_54M;
> > -
> > -				if (uFragIdx == (uMACfragNum - 2))
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize,
> > wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> > -				else
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength,
> > wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> > -
> > -			} else { /* (byFBOption == AUTO_FB_1) */
> > -				if (wRate < RATE_18M)
> > -					wRate = RATE_18M;
> > -				else if (wRate > RATE_54M)
> > -					wRate = RATE_54M;
> > -
> > -				if (uFragIdx == (uMACfragNum - 2))
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize,
> > wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> > -				else
> > -					uNextPktTime =
> > s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength,
> > wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> > +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > +							       byPktTyp
> > e, len,
> > +							       wFB_Opt0
> > [FB_RATE0][wRate - RATE_18M],
> > +							       bNeedAck
> > );
> > +			} else {
> > +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> > +							       byPktTyp
> > e, len,
> > +							       wFB_Opt1
> > [FB_RATE0][wRate - RATE_18M],
> > +							       bNeedAck
> > );
> >  			}
> > +
> >  			if (bNeedAck) {
> > -				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> > -				return pDevice->uSIFS + uAckTime +
> > uNextPktTime;
> > +				uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType,
> > +							   byPktType,
> > 14,
> > +							   pDevice-
> > >byTopOFDMBasicRate);
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
> > --
> > 2.24.1
> > 
> > 


