X-GM-THRID: 6663862445889552384
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr542450wrq.18.1551556395804;
        Sat, 02 Mar 2019 11:53:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:81cb:: with SMTP id c194ls1034803wmd.14.canary-gmail;
 Sat, 02 Mar 2019 11:53:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZZb1sxe8ZRul+8wWg//9YJ040eVeuaMnZzUbyUTe+5e71MjXS5Vofp0AvEGjYm3CbySwyj
X-Received: by 2002:a1c:f107:: with SMTP id p7mr684887wmh.12.1551556394944;
        Sat, 02 Mar 2019 11:53:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551556394; cv=none;
        d=google.com; s=arc-20160816;
        b=oqRXYYMVgXjozpnr2lldL43+FpWx7629y6dggOZStpJMo4r9WBpqFddQXFG/l47StR
         GtEHUpUsr7zsbGMFAcU4/MDUPQLVGHpoJ0hyAVoC3IkvAMvrIvaXwPKjac6tf92XY+d5
         dwGsFBu1n85RGyJUmYeXNF1LsBnFMFemCu/KmaOE/SmkkJ3w8FGS9BikdJMnLGLDWfac
         nkdi3g4YM/Vy1s2OnogzFzGxejyj5TcZWJMeOkjBigF2uv+U5CPUBaz2uzI2HknkhngP
         PPoWXiv7jFOTjx7RzObMvDIHeWmnX4QoZ/BvRUnFaugDL4AwpfKw03UQbwFjBk1IEozy
         HYaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=KKpfAtw9J4Gqd03ELHfCZAaivCvLjMN6yR3aXlzzovQ=;
        b=t7QwRHRMVzVnjuvtfjOyk9WOuFFau9dmz0zHW0mOsmEhQbRHtNOcoSY1vypduidEj7
         rrnxyawakGXEszB49ErK0R4pGCCWP50kAMCd7L7jIdZj4nGNcRWAYNL5zdq9qLkiTmYx
         dgHkrV6+aYZEiJQLqGyZEz+Wbosg9J3UOuAJl+VRaazxzZWG0bOUT3srXVVv/KIzMrNT
         xDpD/vCl69h60atx5bsvUzFHcXQqvXONGt8EEno3HZ31orEBqEhhSdBLz0FiAkD6Ow+A
         b8pTW5S4px+U3cdHQIfTbB9IdwazIcUws4uoxLfKnjcvZXvfNokMqtCK7HuAflTwbIKt
         FzJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g10si86586wmk.1.2019.03.02.11.53.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 11:53:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,433,1544482800"; 
   d="scan'208";a="371637144"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 20:53:14 +0100
Date: Sat, 2 Mar 2019 20:53:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: idebleenasen@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Fixed Warning: line over 80
 characters
In-Reply-To: <1bf62906-43a2-4233-90c4-0bc8cc53f0eb@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903022051060.11898@hadrien>
References: <1551551350-111229-1-git-send-email-idebleenasen@gmail.com> <alpine.DEB.2.21.1903021937500.11898@hadrien> <1bf62906-43a2-4233-90c4-0bc8cc53f0eb@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-73724498-1551556394=:11898"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-73724498-1551556394=:11898
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 2 Mar 2019, idebleenasen@gmail.com wrote:

> On Sunday, March 3, 2019 at 12:10:55 AM UTC+5:30, Julia Lawall wrote:
>       You need a log message.  Even if everything seems obvious from the subject
>       line.  The subject line and the log message should be in the imperative.
>       So that would be Fix, rather than Fixed.
>
>       The log message should say what you have done and why.  Fix doesn't really
>       do either.  You have fixed something, but one doesn't know what change you
>       have made nor why you chose to make that change.
>
>       Presumably you found this issue using checkpatch.  So you could say "Issue
>       found using checkpatch" to make that clear.
>
>       julia
>
>       On Sat, 2 Mar 2019, Debleena Sen wrote:
>
>       > Signed-off-by: Debleena Sen <ideble...@gmail.com>
>       > ---
>       >  drivers/staging/pi433/rf69.c | 3 ++-
>       >  1 file changed, 2 insertions(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
>       > index e19b9ce..0c189a7 100644
>       > --- a/drivers/staging/pi433/rf69.c
>       > +++ b/drivers/staging/pi433/rf69.c
>       > @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
>       >  {
>       >          switch (flag) {
>       >          case mode_switch_completed:
>       > -                return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
>       > +                return (rf69_read_reg(spi, REG_IRQFLAGS1) &
>       > +                        MASK_IRQFLAGS1_MODE_READY);
>       >          case ready_to_receive:
>       >                  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
>       >          case ready_to_send:
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551551350-111229-1-git-send-email-idebleenasen%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> I'm sorry for not adding the log message. This was my first patch and I was a bit confused about the process. I'll keep this in mind for future.
>
> Yes I did find the issue after running checkpatch.pl on pi433/rf69.c
>
> The checkpatch.pl warning was: [WARNING]: line over 80 charaters #566
>
> So I reformatted the line to remove the warning. Is this a valid patch?

The change looks ok.  You need to send a v2 though to address the log
message issue.

I wonder also about the ... in the Signed off by email address.  Did you
do that or was it generated for you?  It could be nicer to have the
complete address.

julia
--8323329-73724498-1551556394=:11898--

