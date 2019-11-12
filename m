X-GM-THRID: 6758464167600979968
X-Received: by 2002:a62:4d43:: with SMTP id a64mr431230pfb.197.1573599618699;
        Tue, 12 Nov 2019 15:00:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:59c7:: with SMTP id d7ls36906plj.1.gmail; Tue, 12
 Nov 2019 15:00:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqznENC5XnCeN6a7GF80TR3Gy48begZ7JFkc6Go1mSeRo06fF4Pt3mGGIWPTmEWIW7Q8mYoc
X-Received: by 2002:a17:90a:a898:: with SMTP id h24mr403422pjq.48.1573599617406;
        Tue, 12 Nov 2019 15:00:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573599617; cv=none;
        d=google.com; s=arc-20160816;
        b=h5lNj5UkQwYQSUnSyduuDnpPV7E30eDDC/GEC+pFlkssQE/FTqLkaha/u59cQI76XS
         Ab+Z0FV6WrvatOK/vxxo7N2isFAWwmMmdDlAq/sVTl576+xbcmKX3/nRtNLu9V6IPn6f
         SrKDfetvrIZEPwcig2pdsOczunFDlkYIKu1kdI0CG5/fmD/NvP6uQ9uClFpqKdPALTWF
         oQ+e416De+2SdXBKWKj/jkL7F2tSHf92rd52Ayl58o/s014z5+tPKxY4Yoq0NTtQ/KrV
         ixw6YAkDw88lbj1CCWxlCp4AAUVnrXJT7Xy/YyfHpyw3kgtd7xeyfhOviviHsCovboEY
         bxcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=YqcrXvyrUhEeGGCBTq1/xcdd+m/MFp2jfaMUakDcF9E=;
        b=ElNWEMMIWihhuKt/tl/oh/I/wOSn5RuCPOT12FvFwmIC7C9SY5KsH2Vzf9FKm7Ul6P
         4XcmBpbNcVJG4HIhY7k94/IWcBVrp38ez441WwmHvHBpa5yglqa97gHGMb93omlWcy0c
         LCC4yuo23JJchHRY5Y75sCBvxjrFKHZQJigi4ERfRZ3XNtS2sHryqWYHUtV8AozJz9dT
         aGUHIz3muWDxK97qD8lY0bZ96+GVg6uF0zawgxyEEFecZZ020vxqgLUl3xPNXdeg5eLG
         8B85OWMtWfYWLasHKj64QSMnNem1F7m8HkrWjDWb4jvRIvxp9vC8OOq3/XIT6Ho03P1f
         T+vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5PeEuZk;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id k6si166217pjp.2.2019.11.12.15.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 15:00:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5PeEuZk;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id y18so182868ybs.7
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 15:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=YqcrXvyrUhEeGGCBTq1/xcdd+m/MFp2jfaMUakDcF9E=;
        b=L5PeEuZk/YnUneg+xRE3pQop1ItlOqsY/HUOGV3RnDGEIqfDSW1NZGYHQsZsnC7JF1
         PtdH/5NC4prhjbRrQ+NU0rNcW6Bq55KWOq6NNRLIXMBm8Nc4A8PgnS308VY7m2ohdu1L
         IB0KKqRvg6kBMAcmyMMKbxPrOzOV5ia8w7cv2U8aaWLLKbjyMXIc3M3h/s1HJ6GBpvUS
         Z+U60/Vv19GAezky7tW4zEcTF/xxr2tH31nA3gr6Qs1nAKxnIUwxTZyy0dXBhAdNzWDw
         oQvlMN+8ifSVFAgGHfBs5/MlviSuehxi2tIxJsw7B5qlpTvddhQaRXAWOFCz57uApXCF
         DF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=YqcrXvyrUhEeGGCBTq1/xcdd+m/MFp2jfaMUakDcF9E=;
        b=T6qR5/mt9k7TOuKJHqTayBTUMQEhKa8d0UuL70YwYS+c4IEdvbYpOXo2oXNyEU1QbF
         eo3mZ9HiW91cUNiG9mFLiW9piLN6c1GTqQs8V2G/Fbmw1ao3BwU0JLGv8dAh5DgzDLcd
         +WwKgw3mmjqVw+zu48osfTtLnsuApLz8q4c9+eyZmHI9MJrcgjmMHOubfjSGHL2l6Kdx
         KktRxZ55XmrKQEoVHBeLIX+7skxWDz05p0nfFsFTPgkWcoXkoVkWUs0WIPy3WTd625B4
         FWuqmaiXUomdFnUQL0IcYDW6eDKuEBYjrpOP1ekGWeTqHwO9PhPhHVptGVgrRaofP8ZW
         x6wg==
X-Gm-Message-State: APjAAAVETkfIcc/wp1cgs8Q7uVWKXP2adEY43nkAwtT60mPGOqVQAdt3
	HJ5XlHM+7r28GK5t/ZEOXtJU1dbErFhcpA==
X-Received: by 2002:a25:3d83:: with SMTP id k125mr380091yba.226.1573599616522;
        Tue, 12 Nov 2019 15:00:16 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([196.247.56.44])
        by smtp.gmail.com with ESMTPSA id h138sm122994ywa.68.2019.11.12.15.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 15:00:15 -0800 (PST)
Date: Tue, 12 Nov 2019 18:00:12 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 7/9] staging: rtl8723bs: Fix
 incorrect type in argument warnings
Message-ID: <20191112230012.rl7z3sbde5vtahcm@gmail.com>
Mail-Followup-To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
 <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
 <c243860eeabf9406d166deb6204a69255c51867d.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c243860eeabf9406d166deb6204a69255c51867d.camel@perches.com>

On Tue, Nov 12, 2019 at 09:11:42AM -0800, Joe Perches wrote:
> On Tue, 2019-11-12 at 11:55 -0500, Javier F. Arias wrote:
> > Fix incorrect type in declarations to solve the 'incorrect
> > type in argument 3' warnings in the rtw_get_ie function calls.
> > Issue found by Sparse.
> []
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> []
> > @@ -83,7 +83,7 @@ static char *translate_scan(struct adapter *padapter,
> >  {
> >  	struct iw_event iwe;
> >  	u16 cap;
> > -	u32 ht_ielen = 0;
> > +	sint ht_ielen = 0;
> 
> more likely the rtw_get_ie function should used u32
> and not sint.

Thanks for your feedback. I'll update the patchset and CC you as
I can't send anything else to the Outreachy maillist.

> one day a sed of 's/\bsint\b/int/g' would be good too.

I'll probably do this on a couple of involved files.

> 
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c243860eeabf9406d166deb6204a69255c51867d.camel%40perches.com.

