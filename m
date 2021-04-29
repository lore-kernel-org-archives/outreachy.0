X-GM-THRID: 6956170409670606848
X-Received: by 2002:a17:906:d81:: with SMTP id m1mr33666001eji.105.1619682291047;
        Thu, 29 Apr 2021 00:44:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls2334378edw.2.gmail; Thu, 29
 Apr 2021 00:44:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMGmmDNOROTawEFS9i8GyBK3xCoIEI2wDcp79bAMZK7hbDi89mrUCJmpj/W44KsDUwbKdo
X-Received: by 2002:a05:6402:4370:: with SMTP id d16mr7007943edc.185.1619682289583;
        Thu, 29 Apr 2021 00:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619682289; cv=none;
        d=google.com; s=arc-20160816;
        b=ThBQoQ/lrNi9xY6Rdfl5WMKpmjdGbrJJNrxg9R+ObvyVZpNwTmBNDBHjps+hilbeJk
         BybTxLn9+ZWsUNauoeXwrPK4QYvUJ2OGX5UwcDuk8CumZosqFJdFpO4lk+qWNKyMSGVq
         eDZbYWLUCS6KE6AE4UAsYPKYDBZBV7KwE0zCwDQsKZykrfwZarPDZzRC95SnhxPBlSch
         X8ma3HardL8cDf5MQYXJVaxG+ff3c+PTtCDV4Cfg2IbZGeMRrY2Y9nxCAbwhuPXQfXe5
         CWqgzIKC6m+rxRq69nkwodoip+h1g33d0CQXMf3W9XPhFDV8ILn90xA3U/VwtD7E36TB
         JHAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xtVs7TfEmRwzWAmFYNn/1ie8SKDyEvQHZvznz6h8vCk=;
        b=ODbcxDaKK8OMGmQlHy0wJ4pNG0L+twm8AquEabcXHoPIMrXEVA5lvhbqiCMlKwR2Ht
         OjDDZdzFaoqmUacSDzZgy6Qsyb/4ndAYUjhKw12p+N6qhX/7u/OCsyuE9CX+hw2VtqsD
         5eUfaAgoGtGHnp3wPEL0DqBIpwcpC5bAHHtN/USnzQWrlfiz667CkQLCmGHjrGPHa5Z9
         gaioWV2NztoddlNjIfcWJ8CBk3wbJuCeD5wnyP4Cu0g7Fi7/d4WjPyyo6Z8wbR/bvo3n
         hEeW+q3jtby/4Qr6BUkDnNfKzVjmErEm7c5xDVEdxaP+kV4VDz522ZBWq0Vcd12hfLTP
         u+CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y909H3kA;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id r21si189178ejo.0.2021.04.29.00.44.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 00:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y909H3kA;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x532.google.com with SMTP id g14so17688596edy.6
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 00:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xtVs7TfEmRwzWAmFYNn/1ie8SKDyEvQHZvznz6h8vCk=;
        b=Y909H3kAJY9TbcLOqwZb+b99Qt94slgkmDVCFE5B9rjyqVApOqWz24sjWpYXtfrC/8
         /5+GjpCs40X15b4cjR6xJBgya95knjs9b4E81MUep63ejLOxfpc/oWeVX9uT/9j+U3x+
         v8itdaKF0IlnXED/AZjbsodSj/1FNLuFw+vBUDYtO3qmecnhw3woArEgakKkrRtZi+sl
         NlM1PkpFGrrNRprNx3T+ykjtw09AzTWkHXNisXK79cS730tTnnssQHbyES34DIP08Swv
         /VrcliBYYCeZINaVvDLTRVqgVJP4FGgDxtiNnwVjJfIFShau1MepNYJXsxp542cLSpup
         SM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xtVs7TfEmRwzWAmFYNn/1ie8SKDyEvQHZvznz6h8vCk=;
        b=Yaj0Atr/goEH/Qch55W4g525v/X3VtRWqna1+JOaIrH1prThoDBO88WAq62LHCw5KX
         ynh2L7NTaPgwxLIkVaOVY2yKw8v2AaC36Ji8vwPXknqh8h6JlbnFEVk6PyoYVFwB7uBh
         aRBTMdxkthjXTVHqCvlZsCN8c16jr8Vk4yPaVwtm2SSD4JKMZFrLDrGTcJ04rn4PBq7f
         Ldfx3SXxeC5HG7mTOxDPRy0sYfP+sl5oyHtOU+ya2vixVMopkxqIk937ZQ+367RptZil
         mDCPw0ZPr+ypAGU4s0V0PsfgRlUXsotNuhObWVEPU05bCNoLCL/x+I9w5hN7zl0QOPmX
         pWdw==
X-Gm-Message-State: AOAM532gwTkeVvlTNOsDH/bwpk+T/30Ja4yvpKdXgOqQnpO+F/9YDAj1
	FOgsSZWEkdfkToR6i1UmAnw=
X-Received: by 2002:aa7:c454:: with SMTP id n20mr16907847edr.138.1619682289384;
        Thu, 29 Apr 2021 00:44:49 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id j7sm1731173edv.40.2021.04.29.00.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 00:44:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove set but unused variables
Date: Thu, 29 Apr 2021 09:44:47 +0200
Message-ID: <8266064.IJzC9MfcRG@linux.local>
In-Reply-To: <20210429072619.GB1409@agape.jhs>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com> <20210428113346.28305-2-fmdefrancesco@gmail.com> <20210429072619.GB1409@agape.jhs>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, April 29, 2021 9:26:20 AM CEST Fabio Aiuto wrote:
> Hi Fabio,
> 
> On Wed, Apr 28, 2021 at 01:33:45PM +0200, Fabio M. De Francesco wrote:
> > Removed four set but unused variables. Issue detected by gcc.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
> >  1 file changed, 5 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c index 
082448557b53..96cb4426a0f4
> > 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > @@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter *padapter, 
enum
> > hal_def_variable variable, v> 
> >  			u32 cmd;
> >  			u32 ra_info1, ra_info2;
> >  			u32 rate_mask1, rate_mask2;
> > 
> > -			u8 curr_tx_rate, curr_tx_sgi, hight_rate, 
lowest_rate;
> > 
> >  			cmd = 0x40000100 | mac_id;
> >  			rtw_write32(padapter, 
REG_HMEBOX_DBG_2_8723B, cmd);
> >  			msleep(10);
> >  			ra_info1 = rtw_read32(padapter, 0x2F0);
> > 
> > -			curr_tx_rate = ra_info1&0x7F;
> > -			curr_tx_sgi = (ra_info1>>7)&0x01;
> > 
> >  			cmd = 0x40000400 | mac_id;
> >  			rtw_write32(padapter, 
REG_HMEBOX_DBG_2_8723B, cmd);
> > 
> > @@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum
> > hal_def_variable variable, v> 
> >  			ra_info2 = rtw_read32(padapter, 0x2F4);
> >  			rate_mask1 = rtw_read32(padapter, 0x2F8);
> >  			rate_mask2 = rtw_read32(padapter, 0x2FC);
> > 
> > -			hight_rate = ra_info2&0xFF;
> > -			lowest_rate = (ra_info2>>8)  & 0xFF;
> > 
> >  		}
> >  		break;
> 
> rate_mask{1,2} and ra_info{1,2} seems to be unused as well.
> 
> thank you,
> 
> fabio
>
Hello Fabio,

I'm not sure about it: rtw_read32 calls a pointer to a function. I'm don't 
know drivers programming, however that function looks like an implementation 
of a read() system call. So I wouldn't be so sure to remove those calls. 

Could calling a (*read) method have side effects on subsequent read()? I mean: 
could it update some internal data structure? If not I can remove the 
variables you mentioned above and the calls to read32.

I'm looking forward to read your reply.

Thanks,

Fabio




