X-GM-THRID: 6667904381849960448
X-Received: by 2002:a9d:5a09:: with SMTP id v9mr129336oth.17.1552601665619;
        Thu, 14 Mar 2019 15:14:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls818676oth.10.gmail; Thu, 14 Mar
 2019 15:14:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyJVMuXbFSplXi4fIHe6exDBePihKdOcOOgimJ/S8a+x5sua0xZqBzKP/mc91VEhjtgojrR
X-Received: by 2002:a9d:73cf:: with SMTP id m15mr117900otk.63.1552601664307;
        Thu, 14 Mar 2019 15:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552601664; cv=none;
        d=google.com; s=arc-20160816;
        b=eN/N4hkk7rf66bJ6yNRVW0HNvO2+ySM1xWsvqxwmYwLt2MYbhEt/CxNipRq0stX2Sv
         kLgkKpRCc0XgtuAF4CLo+gswRlwSSCA9l2ZgyKASWCWlz1NCjVeIEWKM1+BdcZ8IXoo8
         2HSaQcYEDFSbuhVVxa4q8sCaZI9UKFcU+srY3u+dCf4H4/yOrC18c3PD451em8b5JDzt
         z2x20ASz4NG9JKZeeCVdyJU5N5VZnf/O0koAZBgMBItK9HpjJRoZnpBPF91ukYUWj1JJ
         al3T+yCz2jbr3yTPCphicMRvHhaJv7J+KdPTF+OzWPjj6bmKj3Y9Py88aiW/s6RRr2GI
         taFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=lNlWwAMqdprCvSn5lWMDuk3DaWd7XsSW4GfkIhzA7Dg=;
        b=luF8LNwh4j2IH4IgHEZGQ0HvqxJ0/nZWgMh74yWUZKtqndCbdb1HMJOpVsNShvCeXl
         5KeO86TS47AxP2htlIMLUVr8lUHfViMnw0P1ocYwrZf1xQU0qMGgfkyWA8c3fGbwhavD
         2HIlpfH1hs80acg9gbYkEQjJK2CwI8btLKZzx3nA2m0Bf0pErx30+jNTFCMXiDC+Bmms
         m6KHAGs9fBIslrumqaR0eDBqb5ImP6rYQCGoguObR+/Jhxpsf55a3aDb00wVKPpy/WXO
         fKy6ipOSnUGnT0MjvNJjPwHJ8/v28rdLLyiJXbpTgJJDdLllCnLTsjSq6oqoGGTzVauL
         md7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jmjf2O7z;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id l6si2589otn.5.2019.03.14.15.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 15:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jmjf2O7z;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id i5so6611073oto.9
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 15:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lNlWwAMqdprCvSn5lWMDuk3DaWd7XsSW4GfkIhzA7Dg=;
        b=jmjf2O7zZwJbMzVPKfKbzf3J2jpb10H2O25cZ9g3dECBHVc8h8/lj+hoqCwoNKabHs
         YzvvhbIu/UqTlXEq8Krk/feDajPXguK6WfHYi8co5PEYqiFBK22FTpuIgn1ie08emeqP
         gDJaroQRCdbDW418GlzNqRamcXVhSu5Ir/zmi2tctf9PKsbsk2flaIXBm9d0ezrsSC3G
         D2Qi+0+8sccZJ8DbSlYyYL5BJkOYq+bzP4h3U9aS4yQHvMC0tIcSXkTCtsPqpBZqVOXE
         /KIqnpnAA0Zzric+CViDKMEjIYA1lAoH9NdIdYqqhFuS+4msZjFbC41Zog8RlUZoxCD9
         E4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lNlWwAMqdprCvSn5lWMDuk3DaWd7XsSW4GfkIhzA7Dg=;
        b=RjzWmDU+ys3hLFMTTNK+ZxZckUcQ7TH+RGqVNbC0sxMBuQpImI4/Sm8Ys55+3fMkOf
         x/b/PiU4wKVrh/48oWNtSd0dm6RN5KJ6ZTMZbyCD52QEYBRVsvhNKE8vvcxppOqVM417
         2Wbb5rfv+47PoGSyvHXcTKyAR0NZlSr2X3PQX9s8LeeGxD48h9d7w2ATWtpmLH+ShcT7
         ttOsJApE74XiziYgwUupAMtg7ZTPBAlVH8uAivniIkYoYqxj9J+Fipme/4GZz+hRNa5h
         /kFjDKCukzzfJznxdCXcx5Yr646CVmio0iFzU/WomFX0565cw9X5up1lSaqczVDmHQcV
         8y2g==
X-Gm-Message-State: APjAAAVFz1U+kZKNOAHZ61zS2/uOupRF5xzxIEK62OVoZpTQmsIdrYS0
	uVOkVY3Z6omxiYNQHh680O8=
X-Received: by 2002:a9d:470d:: with SMTP id a13mr172056otf.241.1552601663909;
        Thu, 14 Mar 2019 15:14:23 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:206e:2013:2a4b:1043])
        by smtp.gmail.com with ESMTPSA id h25sm53068otl.29.2019.03.14.15.14.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 15:14:23 -0700 (PDT)
Date: Thu, 14 Mar 2019 17:14:20 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
Message-ID: <20190314221419.GA3606@madhuleo>
References: <20190313155425.5548-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903132045230.2515@hadrien>
 <20190313214945.GB5065@madhuleo>
 <alpine.DEB.2.21.1903132304420.2515@hadrien>
 <20190313223559.GC5065@madhuleo>
 <alpine.DEB.2.21.1903140708190.2814@hadrien>
 <20190314160338.GA14192@madhuleo>
 <alpine.DEB.2.21.1903142050180.2749@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903142050180.2749@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 14, 2019 at 08:52:01PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 14 Mar 2019, Madhumthia Prabakaran wrote:
> 
> > On Thu, Mar 14, 2019 at 07:15:45AM +0100, Julia Lawall wrote:
> > > > The change need to be made in two files -  drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > 1) drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > 2) drivers/staging/rtl8723bs/include/cmd_osdep.h (to remove extern from function prototypes)
> > >
> > > If you change the .c file in the first patch and the .h file in the second
> > > patch, then the first patch will break the build.  On the other hand, if
> > > you change the .h file in the first patch that will not change anything,
> > > because no one cares about the declaration.
> > >
> > > Still I think it would make sense to do the whole thing at once, in a
> > > single patch.  A function definition and its prototype go together, so if
> > > you change both it would make the most sense to do the whole thing at once.
> >
> > Will fix as a patch.
> > >
> > > > So that's reason why I asked whether it has to be send as patch series or I can submit it as individual patches.
> > >
> > > Not individual patches.  Either a series with the .h file first and then the
> > > change in the .c file, or a single patch.
> > >
> > >
> > > > In rtw_cmd.c, along with the change already made, I will change the
> > > > return expression. i.e.
> > >
> > > Your message got broken off here, But you don't want the change already
> > > made.  There is no point to have a function that has the only statement to
> > > call another function.The two functions that you changed should just be
> > > dropped completely.
> >
> > I will drop the patch. But the function is calling same function with
> > different return type. I never encountered this type of function in C.
> > This is function overloading in C++. Based on Brian and Dennis, only
> > change I can make on that function I can edit the return type with
> > return (u32) _rtw_init_cmd_priv(pcmdpriv).
> > Am I thinking straight for fixing it? Need for suggestions?
> 
> You should get rid of the functions that you previously modified.  Remove
> the _s from the names of the functions that they call and change the
> return types.  Check in the function body to see if changing the return
> types causes any problem.  I haven't looked at those function definitions.
>

Sorry I missed the _s in both the functions and assumed that both are
same functions with different return type. So I can't able to think
properly. 
Thanks.


> julia
> 
> 
> >
> > >
> > > Again, please put your replies inline after the text that you are
> > > replying to and not at the very end of the message, after the list
> > > management information.
> > >
> > > julia
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903140708190.2814%40hadrien.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314160338.GA14192%40madhuleo.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903142050180.2749%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

