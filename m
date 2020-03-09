X-GM-THRID: 6801903865933332480
X-Received: by 2002:a1c:cc11:: with SMTP id h17mr20960209wmb.154.1583756620678;
        Mon, 09 Mar 2020 05:23:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls5660646wrq.3.gmail; Mon, 09 Mar
 2020 05:23:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtb58vcsTW2ykuwoMkOz/mdsIBiMV8j18TWqJ98POJgwD9XVp+yzpxi6GaYO0RkUKYNFHqV
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr21837165wro.115.1583756619387;
        Mon, 09 Mar 2020 05:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583756619; cv=none;
        d=google.com; s=arc-20160816;
        b=VN4W25sJsmnagEEXtWQpH/C4spf7+ap4aAAdTzH6em2Orao8I9KUhUu+VnWyUN5kkL
         WEE4fqHKUMnpPsTL5hGnrsNIE6DPY4nGE7B+cRX7+eq8epk3KM6SCTc/M7968AFvQ90C
         TCD6I2ZnH6VlZ4Cqa8dWf+a8Hytuoj8iINiS09Kh4kJroSFzlnNzU4GGG0BKzWa4AwdG
         2CDX44gzJ6CkosJ5S/cziHMlVBA4E/D6bQ5eEYqaeTCyY1NEesPvnEdeUHRaYwPsZBgw
         BAMEJLsRsfNK5Vaq8N8q/ysnRzPQAlKL3XY5WHvubDQFnSmufkUeFdmP7vtbH9nNBgiY
         QDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cDHQXPEwOTZgR/0Mx/+u9vwsT6DOUIm7Mw+7jnxde7k=;
        b=RdYu2E/KNn9Ijo3pAv1xTx2BtMYO4uYTxmgzSD9XFP6oJ7pEXafbBEoA6lSzFVOPZG
         QNU6P1ljJkN1DMVBz7+7LrWvZtmOVz87AzSbvaJ+2cP3HX3cPGMOwLUF3GOcsxSjZMJm
         qBbdzrmv+7GZTB5zcUn2960zw4EtHV48rd1lGu6cVSM0Y7wCE9hiapgpdPnXlFcfA4s/
         Z15+UJnHyCpyY2osCqWjYiqMUgIxu7RP56sGsrTehdyPUS/xe109nIIejvgPuZQClzVj
         Z3nCIueZsLKHcKzGJb1gX3Xyner0BlaKfAN5z0fD9ZSa43xTmLnobR4J/W5ovAlnrtT8
         6e0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f1si277331wme.1.2020.03.09.05.23.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 05:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,533,1574118000"; 
   d="scan'208";a="439480438"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 13:23:39 +0100
Date: Mon, 9 Mar 2020 13:23:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: exfat: alignment should
 match open parenthesis
In-Reply-To: <20200309124025.3b8d039a@elisabeth>
Message-ID: <alpine.DEB.2.21.2003091323010.4721@hadrien>
References: <20200308182046.4402-1-payalskshirsagar1234@gmail.com> <20200309124025.3b8d039a@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Mar 2020, Stefano Brivio wrote:

> On Sun,  8 Mar 2020 23:50:46 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > Align code to match open parenthesis.
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/exfat/exfat.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> > index c863d7566b57..341c9192f7e8 100644
> > --- a/drivers/staging/exfat/exfat.h
> > +++ b/drivers/staging/exfat/exfat.h
> > @@ -716,9 +716,9 @@ int multi_sector_write(struct super_block *sb, sector_t sec,
> >  void exfat_bdev_open(struct super_block *sb);
> >  void exfat_bdev_close(struct super_block *sb);
> >  int exfat_bdev_read(struct super_block *sb, sector_t secno,
> > -	      struct buffer_head **bh, u32 num_secs, bool read);
> > +		    struct buffer_head **bh, u32 num_secs, bool read);
> >  int exfat_bdev_write(struct super_block *sb, sector_t secno,
> > -	       struct buffer_head *bh, u32 num_secs, bool sync);
> > +		     struct buffer_head *bh, u32 num_secs, bool sync);
> >  int exfat_bdev_sync(struct super_block *sb);
> >
> >  /* cluster operation functions */
>
> The change itself looks good, but as Julia mentioned, you
> should use get_maintainer.pl and send these changes to more people. In
> this case, adding exFAT maintainer and linux-fsdevel@vger.kernel.org to
> Cc: would be nice.
>
> Note that this also depends on habits, lists, personal preferences. You
> will find that some contributors Cc: the whole list from
> get_maintainer.pl (which is fine by all means), some contributors might
> already know who is actually interested in changes (and not Cc: all
> results). Depending on what subsystem you're contributing to, you'll get
> familiar with practice.

A lot of options are suggested in the Outreachy tutorial that can be used
to avoid sending patches to everyone who has ever touched the file.

julia


>
> --
> Stefano
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309124025.3b8d039a%40elisabeth.
>

