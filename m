X-GM-THRID: 6801960387185999872
X-Received: by 2002:a37:40d2:: with SMTP id n201mr14927945qka.211.1583760370883;
        Mon, 09 Mar 2020 06:26:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls3608693qtm.8.gmail; Mon, 09 Mar
 2020 06:26:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt166M9UB5V2vAKOz9FIqtdN9uXBbJ0GlzPaBMKdnSzUddC+Ghv5blzIDj52NLr3VWwfiEA
X-Received: by 2002:ac8:1e8e:: with SMTP id c14mr13488712qtm.330.1583760369718;
        Mon, 09 Mar 2020 06:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583760369; cv=none;
        d=google.com; s=arc-20160816;
        b=ejs0Vx/KkktnHConzEay+lM+DUMjdpmiXcFuDTYUSs/g7f6wI4d7u0zWLj9w3sNDJT
         7ivmDj3XmNNTBaCvCtXDdzW/LhBg2gFqOJeY5arIjjyw7XFJRq7RdfF4XC0//3ctqutf
         +N0EV+nwzI6Ot1c3Ul0/UjWRIFIsAgYc3jS6HogH4Jo88YIemIsRAOObbhmW7SGXUJZX
         Ydl86/oCRCsI1EYJ9enqT8gHezPzRMneDezd2DXM6m1QRAgP3LaT8uD0jc2P79TeoQTA
         1NYHEAPNir56UxH7CSlmlSZHSS+VkkdRBngZKLtwGi9Rjc9CLflMQsziEp+ZbEb6oQXB
         k51g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=SN/uB0D2Yzk6crG8CckiI8AbJhkaIxgSVOsdNRCejtQ=;
        b=Rb76mzyuV9gTmdbselTXCW5Vvm7EMCEJLHvaCiuPMj86MtRWSUUz88wM4AA5ntR+ce
         DqueWOuWbM+qFEhFLf5TE2C11kdQunmdS/o0aTXmKY+QnNZDSyAZ2XTtQ9u7CxYE7BnK
         jOdJcac/CXjRXVEFB3YixzKnfEz3JVNHWty+YNcQ69Ghr8QER8yFxNoeyfOIT5c5X8rm
         QgWNaVw8l+O2v/M8zH91MaLPSHcXac0tjaxmActLlN0xeIjCp4SfuVTdlmVOWx3uX0UB
         VyBhCEabfkhgaV1Jf8VKc5opF8EfC50SQqprhtX9mkwfkK6pUQ5jofsryy4DPbr1EAER
         LkNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZN2XnYD;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 198si523174qkh.7.2020.03.09.06.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZN2XnYD;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id y7so992931pjn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 06:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SN/uB0D2Yzk6crG8CckiI8AbJhkaIxgSVOsdNRCejtQ=;
        b=vZN2XnYDJ42k+ninu6A+IqHKelBwH0M+hvsD+QV5C1ROyLTi2CL/HhhIyjJdutTh/1
         pm1NaWqdB3J+PCc/hmjN7jo8hHGJwXnBk4S+fbh5wZFbZ5jjP2Km+6L0VY7iMrY0L7aA
         Y7p+WwwdH8DtI3Lb4sE1zsFcv5tQrvN4g/xCdPryr+YFKoAy2AZ2fR72wC2pJp4GuQKj
         KcLsJGg4vKdABf8bMPdCfQuisRs+6A89s78laLH06lBhpeZBHPaDAyZYwR7gPXSVmw70
         p6HMEoGKYu041hKfHOxlPj7MIZzisw82/ECfEnov4ZOLA/1j4hFO+xgcM4dmYDOiHlkl
         EHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SN/uB0D2Yzk6crG8CckiI8AbJhkaIxgSVOsdNRCejtQ=;
        b=LcO9YGjaowsW3bLzC6le0+5qhl0yYCXaBDQNB2xWQhIQ1ZLPxo4fp3+IXWNC1Md/6N
         u/QMmgUR0iIncjG17+rY4sLECAQG8oPmWVHUdlbCRHoRvUUu+wxRgKJaTho4ilJb/n3+
         fFiZhBH9/DEKzMzo7r3GcooJv5wL+tVeJdwiZ8GIVzx7nGHup4b82gkwWiG0zp3cA5EB
         +1hrKCpfuBwqXOsyGzL36PAZgGOfv63XLD9Jq5L9LI2/m2+yy6kY8UaI1EOZ+xNsy/0O
         9TsmFWEOvi+q1UntuNsjzg95Hs4KRPsW0Cd/TcuIIxe4gpUjW2yLberWS+NhkNV007Dp
         5tvA==
X-Gm-Message-State: ANhLgQ2I+E83iDIwz5CCLdlHHELDULh3NQxvOMkS30ns7ZBBuh4dIOqG
	xEdwwpG0A94bvLz309ebBDc=
X-Received: by 2002:a17:90b:238c:: with SMTP id mr12mr3164241pjb.161.1583760368597;
        Mon, 09 Mar 2020 06:26:08 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([2405:204:2188:9cfe:18bc:a849:c699:3914])
        by smtp.googlemail.com with ESMTPSA id v133sm33700710pfc.68.2020.03.09.06.26.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 06:26:07 -0700 (PDT)
Message-ID: <b2db452217ced8bbd6f85121bf4c8fef3881d6ba.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Joe Perches <joe@perches.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com,  daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl,  Larry.Finger@lwfinger.net
Date: Mon, 09 Mar 2020 18:56:00 +0530
In-Reply-To: <alpine.DEB.2.21.2003090825280.2676@hadrien>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
	  <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
	 <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
	 <alpine.DEB.2.21.2003090825280.2676@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-09 at 08:35 +0100, Julia Lawall wrote:
> On Mon, 9 Mar 2020, Shreeya Patel wrote:
> 
> > On Sun, 2020-03-08 at 16:05 -0700, Joe Perches wrote:
> > > On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> > > > Add space around operators for improving the code
> > > > readability.
> > > 
> > > Hello again Shreeya.
> > > 
> > 
> > I have some questions here...
> > 
> > > The subject isn't really quite appropriate as you
> > > are not doing this space around operator addition
> > > for the entire subsystem.
> > > 
> > > IMO, the subject should be:
> > > 
> > > [PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators
> > > 
> > > because you are only performing this change on this
> > > single file.
> > > 
> > > If you were to do this for every single file in the
> > > subsystem, you could have many individual patches with
> > > the exact same subject line.
> > > 
> > > And it would be good to show in the changelog that you
> > > have compiled the file pre and post patch without object
> > > code change.
> > > 
> > 
> > I'm not sure how to show this. Do you mean to add the output of
> > "make drivers/staging/rtl8188eu/core" before and after the changes?
> 
> You are working on one specific file, maybe foo.c.  Compile before
> making changes, which will give you foo.o.  Rename that file to
> something
> else.  Make your changes and compile again.  Do a diff with the
> previously
> compiled file.  It should produce nothing, indicating no difference.
> 
> If this .o file doesn't change and you only changed this .c file, the
> whole compiled driver won't change either.
> 

ok, got it.

> > I also don't understand the meaning of no object code change. If we
> > are
> > making the changes to code and then compiling it using the make
> > command
> > then a new file with .o extension is created and replaced by the
> > previous one isn't it?
> > 
> > > Also, it's good to show that git diff -w shows no source
> > > file changes.
> > > 
> > 
> > And this has to be...
> > git diff -w --shortstat drivers/staging/rtl8188eu/core/
> 
> --shortstat does not seem useful.  What you hope to see is that it
> produces nothing.
> 
Okay.
I will send a V2 with all the changes required.

Btw Joe, I am working against staging-testing tree

> julia
> 
> > Am I correct?
> > 
> > Thanks
> > 
> > > > Reported by checkpatch.pl
> > > > 
> > > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++--
> > > > ----
> > > > ------
> > > >  1 file changed, 20 insertions(+), 20 deletions(-)
> > > 
> > > When I try this using checkpatch --fix-inplace, I get
> > > 21 changes against the latest -next tree.
> > > 
> > > What tree are you doing this against?
> > > 
> > > 
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel%40gmail.com
> > .
> > 


