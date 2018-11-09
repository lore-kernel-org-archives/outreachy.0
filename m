X-GM-THRID: 6618737831817773056
X-Received: by 2002:a24:5c92:: with SMTP id q140-v6mr1456867itb.29.1541758536813;
        Fri, 09 Nov 2018 02:15:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:8b46:: with SMTP id n67-v6ls399226iod.6.gmail; Fri, 09
 Nov 2018 02:15:35 -0800 (PST)
X-Google-Smtp-Source: AJdET5fWTo1kPiOLM9kVGyAN3mv1EZTMQQ3bOz8pgfiBHRPXgRuXFllrLRM7ugI0w5qyGwJ1B+qx
X-Received: by 2002:a6b:e908:: with SMTP id u8-v6mr6448031iof.9.1541758535801;
        Fri, 09 Nov 2018 02:15:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541758535; cv=none;
        d=google.com; s=arc-20160816;
        b=LT5WSMlDyQ16j7+U3J7VBBhF4I9SAHlA01vsMdD+OWD7cQnPhzgcWmQCVLPnIqphAA
         r+cKEiS3cOe4OBO4QTKFhW/8c4ocrrRqNIh/Kr/ZbK8veuQkQzfN4+ADnryx0aqVo60u
         uCwPWUbzTG57Kh5ZQ9EsgeHB6O2YLUpKxn2H63LIPZI3DRXHVwnwTRW2jDKiEA/DgDYC
         uRKIA4G3Hy4VouwK70VIbmdQ+QP0+QLKKvMozVV5U++MaWzZAhlqvVR7BrWMgT4T8COr
         2UYlWgwe+IssMd3FixLI9CoM/jtC2M+NUYR6alatNA4i80k1H2+/jxvYgVVrIvBJ2tZT
         IDpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Z0/1e57C284GnFVIml8ERRhIooEyUrNEZJZv2ut3tIo=;
        b=fE37oG0oe30o9dFmrjCuXCIWv5CJHDVmtMpcn4nl5YCHHkvMhsvZXdQm9cu3z/Mw4M
         OZ3NVoNwqQb02y4jsE/RT4jZNFX1RQiJTAEtWTMfzxhSGyFruWLi8gBVjoM+CsbDCYzA
         A2m98zRnDElicj8YzIx1vx/w8scl/oaEDlDHb1P9xb3q+tsEyDh6yh7PEofClDxVCAwW
         +Lo2FVsDl0o5hAYMOPyjfR0U0xD9jvyuLvM0X36Z9oMxKDPNxl2zstm+E0hvdD4/AgX1
         4gumeyrw2NcmPvyNWXEq8uT6M9Sfy6zB9u15w4eoqXt4Le67Km8AX88BbCBtj9Evuhvq
         tvAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NBYvQhEt;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x130.google.com (mail-it1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id z137-v6si299970iof.2.2018.11.09.02.15.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 02:15:35 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NBYvQhEt;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x130.google.com with SMTP id v11so2457558itj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Nov 2018 02:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z0/1e57C284GnFVIml8ERRhIooEyUrNEZJZv2ut3tIo=;
        b=NBYvQhEt64Es0pOZb7RkCFF7OTh/nCKUwH61OiPhuRoZ18SGpXjXYNa5hOxnX+ukw9
         kxdLzrgTsVjsioPGgSz4TCpyQUK6e+jbA2kfucqfY+NJ98ZZoPYKT7KJ+BHqcE2uJBNv
         DDEcYmizH3q38cifZOTMpLedmRda8xF4OLGCk7WU6T2lVvZbUYamccStAd50YTAthOyv
         FGe9pdYKWhSMqUibxShvYZQBVx2Rl1YllKz4Q5TQrek+OQM57XSU1LOBVFOqfBbTDXGg
         S026yKGugmM4wop21vNhQTCxCrCuzEqkQicUTRGH1PK9Acc/w1PSAGHCwNZ+JfsLDZNr
         4G4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z0/1e57C284GnFVIml8ERRhIooEyUrNEZJZv2ut3tIo=;
        b=ZkN2e64KnG3AqmSTAZx5qz79RmuNFQE86dN5NDKp/KROCoZW4VZt/XEREzzbu8RhTv
         V+Dcwsc0dwZeturGud6ohei3xI8oGJPtppYWtrfC+kTNduU7N0DeXH8Z3c3aGl4Zf1Pa
         LP3wTz+7LO6sGtZUyiEgTdzlsup2mGeaVLFl4nCU0tgg/fol4Q5+oC5mZiJj9+vhMOf/
         WtG9pHDUhThbc3HJR0i89kAqlOzjNwk6MhZFL4QUL/P4tNeqCWCXUfCY3bcDNDhnfluB
         rReTr5mnv4j4inV4LPFj3FkbxynpuaG69YGyIfw/friNHtLQbfqVkwzhcGakv8D/06Za
         l2yA==
X-Gm-Message-State: AGRZ1gIO/SgEGH9h0RfjOgowUKCwNynW6nYne4msTYVKxxfTE2pKfve4
	UUKhSsftp3YtoTWBCGBHM4z2U603
X-Received: by 2002:a24:7c81:: with SMTP id a123-v6mr1715318itd.29.1541758535141;
        Fri, 09 Nov 2018 02:15:35 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id r14-v6sm467082ita.22.2018.11.09.02.15.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Nov 2018 02:15:34 -0800 (PST)
Date: Fri, 9 Nov 2018 02:15:32 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/4] staging: rtlwifi: Add blank lines
Message-ID: <20181109101531.GA121437@m-hyperV>
References: <cover.1541660015.git.m.maya.nakamura@gmail.com>
 <9082236333474f4af69913c7e3e3566729d04181.1541660015.git.m.maya.nakamura@gmail.com>
 <20181108112857.GB23141@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181108112857.GB23141@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Nov 08, 2018 at 03:28:57AM -0800, Greg KH wrote:
> On Wed, Nov 07, 2018 at 11:23:07PM -0800, Maya Nakamura wrote:
> > Add blank lines after if statements.
> 
> That says what you did, but not _why_ you did this.
> 
> > 
> > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 1 +
> >  drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 1 +
> >  2 files changed, 2 insertions(+)
> > 
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
> > index 7eb54d2e48f3..7d578241326b 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
> > @@ -563,6 +563,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
> >  				PHYDM_SSCANF(input[3], DCMD_HEX, &var1[2]);
> >  			else
> >  				PHYDM_SSCANF(input[3], DCMD_DECIMAL, &var1[2]);
> > +
> >  			trig_sig_sel = var1[2];
> >  
> >  			PHYDM_SSCANF(input[4], DCMD_DECIMAL, &var1[3]);
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
> > index ded6642bdf64..c0da601be6cf 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
> > @@ -357,6 +357,7 @@ bool phydm_check_nhm_ready(void *dm_void)
> >  			}
> >  		}
> >  	}
> > +
> 
> Is this one really needed?
> 
> thanks,
> 
> greg k-h

Hi Greg,

Thank you for accepting three of my four patches in this patchset!

I read several examples that use if statements in K&R and didn't find a
blank line between them and the next statements. I thought that it is
easier to read with a blank line, but it is just my personal preference,
so it is not necessary. Therefore, I won't resubmit this patch.

Maya

