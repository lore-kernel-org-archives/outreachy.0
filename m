X-GM-THRID: 6888933426501517312
X-Received: by 2002:a67:f512:: with SMTP id u18mr6498582vsn.29.1604038371360;
        Thu, 29 Oct 2020 23:12:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:35ee:: with SMTP id u43ls400608uad.2.gmail; Thu, 29 Oct
 2020 23:12:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxhJpyY/Yog76LcRa3s/JuAj8ZXw2sn4qksvqWG1B+3dwi/RPnC/nqG14qnaoV/PkndEbPs
X-Received: by 2002:ab0:5447:: with SMTP id o7mr418687uaa.37.1604038369926;
        Thu, 29 Oct 2020 23:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604038369; cv=none;
        d=google.com; s=arc-20160816;
        b=QV1BJOU5R2n08lZGGoEdlWbBFysXa6KqnjVndbcPlYLRj0ch13KjVtStu46JOKklTt
         PyQVCzP/nyGe1VwHCMAAbsfSHFdo6rgiCAPb9Dfdt1XlrgycEiZu4r3H/s6aEjQsWRMT
         Ib698ocq+ga4iGiy+PNlWcl5fKg7j+gCWEB6vaM5Sv+nFWMQZVCamyrxMgQvbEqYUzx2
         6cV86iWUAHQi5qTO1SiTBvsRnOkLL8fw5hU/4p3uGt/c8wBNz5E41vM2tbCEyQ6Blfh5
         yFUcqr2BdDxnmQ8FvD2vOQ93o8aGlsxU6ouTt4wb8nIFPRafAFvz3dCD8bQrWQ7OKyyN
         2eIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+bt/mPjKa02uHdFCGhRd0Ddxz32OMcY7FMpU4H5Rph4=;
        b=cV9eTVgqtV3stAJFryjlvvVDP8NlsivE2r7u2TQeD4E5rIai4j+mJ+hfV2wv8tE/2b
         YGOVSwKQ/u+JGxg+AHnQQmbl+ElR/BpEo8wupFd5ehGNSRQjXuaSK8xGPLgjlhmcsU2E
         L74c6kAt9RDdBuZQv+DaeYvwWRHloXXt7WY1/I9hOf9ls/YzY1rHvuWWC1oksEvHRHnC
         ytrSuUeC0fUfUApsr9AqGLsCwkLvh9y6HXMZhm/XZsps0Nf+oE5orlNpbXKxMW1b479V
         ObWjZ9N5kUSpMvscRtncaP7hPtMqQ3FYj2JQ5wLaZzLt9/3oS6nnRURgZ4uftpb42Zj3
         F9vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MwKigbEd;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e7si394275vsr.2.2020.10.29.23.12.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 23:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MwKigbEd;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id r3so2475974plo.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 23:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+bt/mPjKa02uHdFCGhRd0Ddxz32OMcY7FMpU4H5Rph4=;
        b=MwKigbEd2v8bw1pwi5c0T/B+9SyMupSUG2ejUuURo8dLk7extjIikyppM1bgczgDnm
         oQvK9IEPvXiMm7B9WBj/S6S7SQcq/+ywFZ6L7UXuRCI3ZwIghmtXFikeHJFy2N1nxLim
         Y5yeDoGLd/LRhS3yqui2eZxCNKnwqdp8T9by30fRVjl648MrnfoF0+e6AeJc6UmRlMpY
         dAdnZ63cd2/UMOddxrVY0r3Ht5UkY5R74ru61kVnRwAZXOwf2oqOYYOOibseD4NK9J8x
         55SThJbMWHxsp0GZhMudhmLwDZvZ6proDWT27WgP99JUS0zGFwYDsMz2/HOwpHWE60RD
         45rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+bt/mPjKa02uHdFCGhRd0Ddxz32OMcY7FMpU4H5Rph4=;
        b=Xbc3cbhQ4/UVaayVDPpbsE6nW74JgdQYBIzj3Swcl2okHRUrY5nM/fcllAENCQr9Tn
         zPDXepdLmkJF8Ia/ktQdzn3oL8MKizgGsPbinaGlJYidGiJDISnpe9BbyQ6Af4eL1OHJ
         JHjG3bqGD23WjQX5qyWH4MOPKz6ZJsCbBFckntYgb8m5rMKp+9Aq6Osyf5DAqI38n5es
         A+6GuLGc1AqaikQDBjMvtQJhbB97yS7gDGCm6C6iaiuVsYCTUcg0nWC7wmbMK8H8cp74
         0iiOTFxQ0GfKrCpERvoHkRr9ZeQnE1eV5b5zF/ZqI9Wq/L/xtlTXm5ThApNeKmEkqgel
         ZFww==
X-Gm-Message-State: AOAM532M+V+Hbd5ucZQeelNxsujCkY2StcNP6P/RniJiHgSyBQ+OsaHJ
	sbxDQkBjff464lFpwIBh4GDjMcfVFRGQvdGM
X-Received: by 2002:a17:902:8343:b029:d5:b4f4:2a10 with SMTP id z3-20020a1709028343b02900d5b4f42a10mr7770369pln.46.1604038369432;
        Thu, 29 Oct 2020 23:12:49 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id gk2sm1868690pjb.14.2020.10.29.23.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 23:12:48 -0700 (PDT)
Date: Thu, 29 Oct 2020 23:12:29 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Forest Bond <forest@alittletooquiet.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Remove useless else
Message-ID: <20201030061229.GA89419@Zangetsu>
References: <20201029065958.GA5259@Zangetsu>
 <20201029070723.GA3063205@kroah.com>
 <20201029080924.GA2011@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029080924.GA2011@Zangetsu>

On Thu, Oct 29, 2020 at 01:09:45AM -0700, Marcos Antonio de Jesus Filho wrote:
> On Thu, Oct 29, 2020 at 08:07:23AM +0100, Greg Kroah-Hartman wrote:
> > On Wed, Oct 28, 2020 at 11:59:58PM -0700, Marcos Antonio de Jesus Filho wrote:
> > > The else statement is not useful due to the presence of a return
> > > statement on the if block. Remove the else statement and adjust the
> > > indentation of the code. Reported by checkpatch.
> > > 
> > > Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/rxtx.c | 36 +++++++++++++++++------------------
> > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> > > index 477d19314634..978efe81077a 100644
> > > --- a/drivers/staging/vt6655/rxtx.c
> > > +++ b/drivers/staging/vt6655/rxtx.c
> > > @@ -519,28 +519,28 @@ s_uFillDataHead(
> > >  										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> > >  			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > >  			return buf->duration;
> > > -		} else {
> > > -			struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > > -			/* Get SignalField, ServiceField & Length */
> > > -			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> > > -					  byPktType, &buf->ab);
> > > +		}
> > >  
> > > -			if (is_pspoll) {
> > > -				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> > > +		struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > > +		/* Get SignalField, ServiceField & Length */
> > > +		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> > > +				  byPktType, &buf->ab);
> > >  
> > > -				buf->duration = dur;
> > > -			} else {
> > > -				/* Get Duration and TimeStampOff */
> > > -				buf->duration =
> > > -					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> > > -									    wCurrentRate, bNeedAck, uFragIdx,
> > > -									    cbLastFragmentSize, uMACfragNum,
> > > -									    byFBOption));
> > > -			}
> > > +		if (is_pspoll) {
> > > +			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> > >  
> > > -			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > > -			return buf->duration;
> > > +			buf->duration = dur;
> > > +		} else {
> > > +			/* Get Duration and TimeStampOff */
> > > +			buf->duration =
> > > +				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> > > +								    wCurrentRate, bNeedAck, uFragIdx,
> > > +								    cbLastFragmentSize, uMACfragNum,
> > > +								    byFBOption));
> > >  		}
> > > +
> > > +		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > > +		return buf->duration;
> > >  	} else {
> > 
> > You do the same thing here, right?  Shouldn't this else be dropped?
> 
> Definitely. I did not do it because we are instructed to solve one 'Warning' at time. I was going to do it in another patch.
> Should I edit this patch and fix it now?
>  
> > 
> > thanks,
> > 
> > greg k-h

I notice that after removing the else statement I get the compilation error "ISO C90 forbids mixed declarations and code", because we eliminate the scope of the else block. Should I leave as it is?   

