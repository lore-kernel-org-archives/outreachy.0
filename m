X-GM-THRID: 6809913191851622400
X-Received: by 2002:a5b:2d0:: with SMTP id h16mr11887351ybp.182.1586163806498;
        Mon, 06 Apr 2020 02:03:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:dcf:: with SMTP id 198ls5328024ybn.8.gmail; Mon, 06 Apr
 2020 02:03:25 -0700 (PDT)
X-Google-Smtp-Source: APiQypK4kc4Eu0a0htUpk2TEfZLXQ7PqelYEGOmH5nkCoyHcUBKdfu5CGHS1mj43Y6Bo05x39I/p
X-Received: by 2002:a25:c0c4:: with SMTP id c187mr36335338ybf.293.1586163805128;
        Mon, 06 Apr 2020 02:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586163805; cv=none;
        d=google.com; s=arc-20160816;
        b=dcqOvvE6tvENQdaNZAEvg/TXm4TLsRsofjgCjFURr4rNmI54isKcM0NOxiH3ubD+nu
         Q1AmrvK1hMjW+IXpMSVibsGT071lzzdyMEaqgI2qN+y0xC/NI2n/xCKBecn/MOL0D5QH
         Lr2ZSDJwnc70psC4Sc3I7P4rf6d8Tssq6e0EcRFPb3WqkCk1pM5EfQMqZEBRWtY6hgub
         J4PaFt5Y+K3yPPWlndNhmpfoA5UIA6MjdG3LUGd9nGODZSRJDO+maBeFO1u3f/QczwpL
         AIM51JAQNeg5S597lxG/ffdyuS9ax636RyPno1nZjOKSnP5SuJAeSl99SH4Jdyb0jxCW
         Ikcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=O2vZSa4+LvWF8hCkLxV/GZo17iN/rNhWaN7UypB6U3o=;
        b=GBDkTmVhiyRnL5b/3xp16EzU3rLSxWeDqAqKG1sMIdAayO2+mQz2NtAmxu4GfIXjaC
         nPqEpd4jTcprrZDcaCPoc7ZtAkhMmaW/L6twOUtGgcVvgTvHJZTcfSHWI13WctOp9jbv
         ODJ+Jggg8oi5NzT9uHTbuOaYZFUPa5tXGGnOaWz8L9bI4GN1FdlI1ZK0sdpuNoFSF62n
         uUnRJPGGPoFMHSt4NCVjyKL/t7JXRb9osiy2E+TE51wb90tx6NXwFcSxFaF8eBLNwCre
         XrgSYMd+bRUqretEPIsqm5Ea23MjFolg1rj1pPWbkDWapYJQU2f8kdYbYSpdzJbpbTKO
         6Gow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f1LgIdJ0;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l141si1129379ybl.3.2020.04.06.02.03.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 02:03:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f1LgIdJ0;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id kx8so6169757pjb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 02:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O2vZSa4+LvWF8hCkLxV/GZo17iN/rNhWaN7UypB6U3o=;
        b=f1LgIdJ0fxfHIPZGHSqW8Xuxnl7gV2SqzLOG79tw+jD15yHvApIRZUOJikcIzoJzhB
         mH0zr7z87yBUKFogBEBRy04MlKd1OKffymoc17MJVXFaLkcu1l335C6joFG4nQ3tgE5V
         Q3I66tB+RMtb+RGRPmBzxI7EFvyp0tnhm8sMfYT8Qz+k6jKvmxN77Dq22Os51Ia2mRfN
         NWSgpczpoP5GL4/QAK63872kCz+DypKqLqUILEFmxmshGk0ZZYKcOPXvvVCi843mB825
         FoqrWF5/Ze+kF9JmoEaSRKd9Qi9VjmKyfm9nf8LafqdDsqaZ7KdEwRfW4xO5O3fycXCQ
         xKow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O2vZSa4+LvWF8hCkLxV/GZo17iN/rNhWaN7UypB6U3o=;
        b=pu7WyKDB7Q/8wR5Y+w1VmfUCdcnRJtvEYnb7i0ZTMsdJZW0PwedFJkI84epCSU1r81
         Nb7YuXTvD+L/Wa6Azjc5QkcDmdntRR2L1pZQD90KnAL8ddRXohued+oqfsoA9XBpdw94
         AXnUdWFa8aiOELQdQ27q+WuJzQuAyw98uExn1wM2oxPIGliTLydN5nx8igbrcah1gw3h
         zNHtOxGiJV1htCg8ml2krt/78J01TILH/l3aQ+Zz+XxZm4puj9EcIUeyWgeqF1swnSOc
         eFG+zEeRhTl99IBZUEqLd3WBw5EtYY7QF02Y+2ODzfG+WMAO1gNw1ovyoVZXIOvaedPJ
         zXIA==
X-Gm-Message-State: AGi0PuaMXK4Yoey8ijStl+9YiozpRCY6rfZLLASv+ExfzU1glHrJ3JuT
	i4XMywfKOA0L55MmbhrOpBP4Ec2JJI/WVA==
X-Received: by 2002:a17:90a:c090:: with SMTP id o16mr11009830pjs.15.1586163804159;
        Mon, 06 Apr 2020 02:03:24 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([2409:4065:11f:6885:99b6:8ae:3f27:d6e4])
        by smtp.gmail.com with ESMTPSA id k4sm11415075pfh.0.2020.04.06.02.03.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Apr 2020 02:03:23 -0700 (PDT)
Date: Mon, 6 Apr 2020 14:33:15 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
	julia.lawall@inria.fr
Subject: Re: [Outreachy] [PATCH v3 1/3] staging: rtl8188eu: Properly
 structure the multiline comment
Message-ID: <20200406090314.GB20842@ubuntu>
References: <20200402182621.61694-1-debsoumyajit100@gmail.com>
 <20200402182621.61694-2-debsoumyajit100@gmail.com>
 <20200403073956.GA3466197@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200403073956.GA3466197@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Apr 03, 2020 at 09:39:56AM +0200, Greg KH wrote:
> On Thu, Apr 02, 2020 at 11:56:19PM +0530, Soumyajit Deb wrote:
> > Add "*" at the start of each line of the multiline comment to improve
> > code readability and to adhere to the uniform Kernel coding style.
> > Reported by checkpatch.pl
> > 
> > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > index 93283c7deec4..5b2b4d1d56f6 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > @@ -1226,17 +1226,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
> >  }
> >  
> >  /*
> > -op_mode
> > -Set to 0 (HT pure) under the following conditions
> > -	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> > -	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> > -Set to 1 (HT non-member protection) if there may be non-HT STAs
> > -	in both the primary and the secondary channel
> > -Set to 2 if only HT STAs are associated in BSS,
> > -	however and at least one 20 MHz HT STA is associated
> > -Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> > -	(currently non-GF HT station is considered as non-HT STA also)
> > -*/
> > + *op_mode
> > + *Set to 0 (HT pure) under the following conditions
> 
> Please add a ' ' character right after the '*' character, to match up
> with the proper way to show comment blocks.
> 
> thanks,
> 
> greg k-h

Okay, Understood. 

I will add ' ' character right after '*' character in the comment block
and resend the patch.

Thank you.

--
Soumyajit

