X-GM-THRID: 6809167002234519552
X-Received: by 2002:a25:c7c4:: with SMTP id w187mr34574213ybe.326.1585721938726;
        Tue, 31 Mar 2020 23:18:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:5cd:: with SMTP id w13ls8190580ybp.10.gmail; Tue, 31 Mar
 2020 23:18:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs2m4ZE8b86YW0lk7oEMw0Go2/9nLfRCxCE11IG7v8qa13LQYcsE1+zDq0Z5j9o2wk+rooo
X-Received: by 2002:a25:814a:: with SMTP id j10mr36642268ybm.262.1585721937324;
        Tue, 31 Mar 2020 23:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585721937; cv=none;
        d=google.com; s=arc-20160816;
        b=YWVawWIDmDPR5hwYxbQ6AOeX2c/3X05J+77LIjD6wks93DkS4gHzSi2sPEonMlQKa7
         PBkD1tl+hysECniYyvio9mSsRdELabnDYBqM7+uB4vuIXcphRy4ZCT+aGz73Oka7YS+z
         HEwoam68oZo4QtntdHa7Sa+4EZeSkZYr5Bs2dR6juIvME+kww4jFb1FBJV9B+QHfsxOP
         z+mLKUzp9E6vQv0m8DXzeZqbbDp1ZeAhTXmunrHgeostqBRkIEAYoiYpUkwrNVAf1mcw
         IoYZp42+7qxgLG0D+pqqYfg6AX4Q8CX5z66b/iAY/qynT9B/mB1OwBezIj1Vos2wC+8Q
         RJGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=npPrbBnFOZ2MKSG+1Gn1lPDRWtT3MAIz8NNZ9URv5JY=;
        b=Q8IANYa2pQgTmEg9xIp9re5Fbo6hObeGmK2mAsWwmh3zUhhnaczSjX3M5jTpH1MgYp
         1ydc5T40cyy0dlRD2VEoNsNeiyNkDLi9875uORzee4LpXFTiL8VViT7TfRecRcHPDKDB
         vzeSKoCpKFiFdH4YIkC6nvzjOlDlPpDejLo7Mn7lZEG/S9+G/kFZ/2qawI+lnpX4zqAn
         xeKUqmrzYoNt81Ovn/D61Ae7iPooLqmkgsjfniSUBEr8de3Fw6FsNSpI8WTUKQ98D6qB
         livjpYVGdvl5Wqfg4eIsuqEKLzlXaHZy82xVM/0RP+TpxixF6waykop3W/wl6rELHsNq
         HScg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YbGksNjr;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d72si81607ybh.5.2020.03.31.23.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 23:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YbGksNjr;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 23so11635601pfj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 23:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=npPrbBnFOZ2MKSG+1Gn1lPDRWtT3MAIz8NNZ9URv5JY=;
        b=YbGksNjrLVbLKhE6beOtxSROgoNHN3EgAawg1ySAHBZGBwuH1VdnYXF+v656Cgvk7V
         id1QkMwS/GykKNSsuiLMeBQTVvttibCWhlKqFyTTJj1U2wFToCPCn+C2HId9eH/DdmzI
         dYxifpbF/I+6RuZ0K/LAeTC4xyuZWVRsoNH9J0hbcz4SZVui39LtXo7Z4xB4GJLw4Hgm
         VS5P8jeI6TYBaOXV7zIcwHA6iGCakCKFVXvB8BOMA2U5uDrimUe/MnJ9yfvHeSebEW2X
         frzE0UtBe0LvYyAa4J8gS5gWOhXWF/TEWEhqIlQCyk8Ddit8Z6EuZM3YXZU2lTExhVDc
         8xwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=npPrbBnFOZ2MKSG+1Gn1lPDRWtT3MAIz8NNZ9URv5JY=;
        b=hdyzvf/vfTe/eJYEuh9SKd4EGJgQAbeKTuqC+sZIIBmh0zxy5+xz5Cah9eNilPeuUg
         ngkJwJmECpKk1YUBNj6aDUIsJZK8/jGbEsFQ+Faippl4lwIAmF5A0NFqVHgHnIOqKOvV
         BMZed04P82rv83lgytDVmk1JpuxbTzvyUoQXYMU8xptPl+0UnxSC46qlOIIsx9ONR549
         5RAI4i7Z2uNFoVjNcHFrdRBfXmVecd1sIeMJr09QobxtwIXBM7M7rAcTcHbV3GCKP6ne
         6+tlUFQSQ+j6veuGj89NeQutEnUf7x0Qkbv2/ef4On0pi3lmWXXliR32goBLzZm2Bxcn
         xItQ==
X-Gm-Message-State: ANhLgQ3K0I21JpI7Ac+hxZPxN+/Tblk9VvG+ILy4vDLdgCF/Iv6HtA+x
	F/X+4yw3XkcdxX6FKyZDpICWlLAPK7NX1Q==
X-Received: by 2002:a62:2a8d:: with SMTP id q135mr22932992pfq.220.1585721936400;
        Tue, 31 Mar 2020 23:18:56 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.224.231])
        by smtp.gmail.com with ESMTPSA id v38sm758952pjb.1.2020.03.31.23.18.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 23:18:55 -0700 (PDT)
Date: Wed, 1 Apr 2020 11:48:49 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH] staging: qlge: Remove
 extra blank lines
Message-ID: <20200401061846.GA16412@ubuntu>
References: <20200330051343.7841-1-debsoumyajit100@gmail.com>
 <20200330200724.1ad30b76@elisabeth>
 <20200331190721.GA19185@ubuntu>
 <20200401044948.345a7327@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401044948.345a7327@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Apr 01, 2020 at 04:49:48AM +0200, Stefano Brivio wrote:
> On Wed, 1 Apr 2020 00:37:28 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> 
> > On Mon, Mar 30, 2020 at 08:07:24PM +0200, Stefano Brivio wrote:
> > > On Mon, 30 Mar 2020 10:43:43 +0530
> > > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> > >   
> > > > Remove unnecessary extra blank lines to improve code readability and to
> > > > adhere to the Linux Kernel coding style.
> > > > Reported by checkpatch.pl
> > > > 
> > > > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>  
> > > 
> > > This looks good to me, but why isn't it in a series with the next patch
> > > you sent? They touch the same driver with similar purposes...
> > > 
> > > -- 
> > > Stefano  
> > 
> > Should I resend this patch along with the other patches concerning the same
> > driver as a patch series?
> 
> Yes, exactly -- it's just another invocation of git format-patch, you're
> almost there.
> 
> -- 
> Stefano

Okay, I will send this patch and the patch after that as a patch series.
Thank you.

--
Soumyajit

> 

