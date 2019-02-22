X-GM-THRID: 6659981654376841216
X-Received: by 2002:ac8:2e8d:: with SMTP id h13mr1526137qta.62.1550822662347;
        Fri, 22 Feb 2019 00:04:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:dc42:: with SMTP id v63ls2263798qki.3.gmail; Fri, 22 Feb
 2019 00:04:21 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZKid7eKyiFf7fFnQ81iU00j3sEavco2MQAR89d2NQImnEFrXyppCqyFfIbrJ4mM8XASkSQ
X-Received: by 2002:ae9:e508:: with SMTP id w8mr1512293qkf.8.1550822661704;
        Fri, 22 Feb 2019 00:04:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550822661; cv=none;
        d=google.com; s=arc-20160816;
        b=gIjd+OBwcFtLiyrDYlXejIwl75NlHpyt8gf+PcDHBnbHYywNN2Bw4iWtKG/XDVRzmR
         6Hpt1T6sbBeZY879LMzgknRjRP1inhTUczVKjlkpQObVgbAHmNGvonI24JSIPz2GAnVS
         n9U21CTV+01W5iT8v5IgljDTtQGKK2MRVRxOz+uisVFNnB2wk6kkVZYgW2pug0gVgumj
         euhXkOlEdaKZAJjgo8Jm5f1YbVdluo5uDY0HeIWbjtg2n/vKBdKsydkznNEYNBIudRk1
         eWoq6M31ESB9XiEpoGiVrQFmhvc6eLaXOT9Yn1lbnGppngRQeHGG7xROuxT5ARNxQqYa
         82pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=w4ePtgX9XUFcAYXSylYFTxB6DYXsEoI3s7kq1cExlbY=;
        b=uSxgc9KJyWWuHQ4GwkwV2JNeiEJvDQE5AbhxLvgMnChi8svVv8MG+Fe56jJJweBMRU
         HL0oek51zbR7Im/+Q99FQ2BnnXHn2yEnZEgGdrX4ekD8FfMIaEdCoxnVdi/eSSvmudtO
         1KrxaH3xkE5kpk6bhdkcJXwmeQ0XyUnsBB5w4tJy39uMSQXWhu6x7VPXlkhQp29GDAMo
         o17wY39bxDtcmCjU6B9u2I+tVQz7Oy/bdNGinL2+1C4yDT5h6gQekBKs0H90BdyPsk9R
         CK+Ixv1aLqjgz3gj2OdTuIazpGrX6dFq8G0M794Ap8sQkcpfcV3Lwi8zfpBfb+e94Qom
         hTBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MQAe28n9;
       spf=pass (google.com: domain of srs0=n372=q5=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n372=Q5=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=n372=Q5=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e12si28912qtg.5.2019.02.22.00.04.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 00:04:21 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n372=q5=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MQAe28n9;
       spf=pass (google.com: domain of srs0=n372=q5=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n372=Q5=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0D7E720818;
	Fri, 22 Feb 2019 08:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550822660;
	bh=g3vD2C5A/kCzAvyHyx0q6Y910zzoKLTccKB65ALMRDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MQAe28n918KaNbVgNIF04TJSWuzu4AcWS2vdA4X+r41KBQLriNCwvqZMgwGu4GGhR
	 W6Tzrdoge9XoCpTXNvQkMvhkZFjkyjJZw0vo9JxuzXcHEKK10DF7U9acuBu6SruA9V
	 4QuySaD9E1ZnW8ggpg+Uo1FIhPuFkFjB3yxpHShs=
Date: Fri, 22 Feb 2019 09:04:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] Staging: rtl8192e: Avoid
 using bool structure members
Message-ID: <20190222080417.GA3213@kroah.com>
References: <20190221074729.GA27093@bhanusree-MacBookAir>
 <20190221083734.GE6397@kroah.com>
 <CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc=WsqnpwPisvJA@mail.gmail.com>
 <CAK-LDbJ178gRu7qU9M0DGD1-JG0to06-mjqMkOOUwuuMzWPL8w@mail.gmail.com>
 <CAB0Mk-P291ijeuBcUghOBCVOS4+CFsf9oq0h872yu7gsncZE2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAB0Mk-P291ijeuBcUghOBCVOS4+CFsf9oq0h872yu7gsncZE2Q@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Feb 22, 2019 at 01:24:05PM +0530, Bhanusree Mahesh wrote:
> On Thu, 21 Feb 2019 at 14:32, Vaishali Thakkar
> <vthakkar@vaishalithakkar.in> wrote:
> >
> > On Thu, Feb 21, 2019 at 2:21 PM Bhanusree Mahesh
> > <bhanusreemahesh@gmail.com> wrote:
> > >
> > > Ok, thanks.
> >
> > No top-posting, please!
> >
> > > On Thu, 21 Feb 2019 at 14:07, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Thu, Feb 21, 2019 at 01:17:29PM +0530, Bhanusree Pola wrote:
> > > > > -Use 'u8' with bitfield instead of 'bool' to preserve space.
> > > > > -Also bool size can be 1 or sizeof(int) depending on the macro
> > > > >  definition given to bool
> > > > > -inorder to avoid alignment issues the u8 bitfield is placed as last
> > > > >  member of the structure.
> > > > > -removes checkpatch.pl check:
> > > > >  CHECK: Avoid using bool structure members because of possible alignment
> > > > >  issues
> > > > >
> > > > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > > > ---
> > > > >  drivers/staging/rtl8192e/dot11d.h | 3 +--
> > > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> > > > > index 6d2b93acfa43..a1d879d316ed 100644
> > > > > --- a/drivers/staging/rtl8192e/dot11d.h
> > > > > +++ b/drivers/staging/rtl8192e/dot11d.h
> > > > > @@ -33,8 +33,6 @@ enum dot11d_state {
> > > > >   */
> > > > >
> > > > >  struct rt_dot11d_info {
> > > > > -     bool enabled;
> > > > > -
> > > > >       u16 country_len;
> > > > >       u8  country_buffer[MAX_IE_LEN];
> > > > >       u8  country_src_addr[6];
> > > > > @@ -44,6 +42,7 @@ struct rt_dot11d_info {
> > > > >       u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
> > > > >
> > > > >       enum dot11d_state state;
> > > > > +     u8 enabled:1;
> > > >
> > > > Again, no, this is not ok at all.  I thought I said so the last time you
> > > > sent this patch.  checkpatch.pl is a "hint", you do not always have to
> > > > follow everything it says to do.
> 
> This clearly says that use unsigned bitfields instead of bool in a structure.
> https://lkml.org/lkml/2017/11/21/384

No, it says that "maybe" the developer should use a bitfield instead of
a bool for that structure.  And that structure being talked about is a
very core, and important one, where every byte and access counts.  That
is not the case here at all :)

> Please, let me know why exactly am I not supposed to change bool
> inside a structure?

Linus's complaint is that "bool" is an unknown size of a variable, so
for structures that really matter as to the layout and speed of access,
using it can be "dangerous" as you do not really know what the compiler
is going to pick to use for it.

So, if your really do care about the size, use something like "u8" which
you know the size and accessing it should be simple and quick.

When you use a bitfield, you too know the size, but accessing it is not
always fast at all (the compiler has to mask off the other bits).  So it
all depends on what is needed to be done.

For a structure like this one, nothing needs to be done.  There are no
size requirements, no speed requirements, and nothing important at all.
So I recommend just leaving it alone and ignoring the checkpatch
"complaint".

Again, remember that checkpatch provides hints as to what might be done
to the code to make it better, it is not always right, and sometimes,
flat out wrong.  You always have to use your brain when using it :)

hope this helps,

greg k-h

