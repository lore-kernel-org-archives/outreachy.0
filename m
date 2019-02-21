X-GM-THRID: 6659981654376841216
X-Received: by 2002:a05:660c:7:: with SMTP id q7mr8362676itj.8.1550739114335;
        Thu, 21 Feb 2019 00:51:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:b648:: with SMTP id d8ls537877itj.4.gmail; Thu, 21 Feb
 2019 00:51:53 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbQB6/GcFwe782WRjfD42JGUjCARsAljGstbm0+YlNDXl53ob+N2HZlL8hxSfWqRVoZ6f2g
X-Received: by 2002:a24:4746:: with SMTP id t67mr8582381itb.1.1550739113589;
        Thu, 21 Feb 2019 00:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550739113; cv=none;
        d=google.com; s=arc-20160816;
        b=qwn11uxCxKJWTmJq0Qox/rW9QlFSb9FJRn13KzSIpenC4q2JAPu7DD6zicJghB2juw
         LzYflp1Hjcxe20ZVc17edTMkSrIInGtAv4tyZyRLoVSzNfuNc7300Qy7fC4CIHlV07+J
         CAuO3alXUQIJSmtYLVAKs6o1R13y6uzrH+j5LOeWjiI5yMfhb7S9DgzYq4p3u9MJVbTz
         +jtYyrqy/Vzq4IzeJZ2e0SiF6JjaDqKCHvtMbB5pJf7ClXhRvbhUkwI6NgndvD8YUgrp
         JkeTvf4uhhwofrCVfi8TMgTt6cWPvax/9Ts31m/FCmAWDCV6V7BH5ZppLKmYkiKYyO5k
         K2BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eQ5j7+9glCWFfJfUSXwXpx8If814x/DCINkhZz3D5Q0=;
        b=vob8tXs1TbAbnVcF9uMFudTABRRXqWfIkSJ5xiSVgsG7p6NiBmwMgbZcM7q0hYGvW8
         RAOZy4Wkgjf6e67YWwNPBky7cEZzNacNDK7KkXgkID0XFOvzhf00FMQtwhACJMlQafzK
         0wg7JpIsDryM3W+/6ZAOZ9KVwtNaJ/d35uzTQq1DjNQ+G9W6RkwdjyVv0eMn8UdPIhcf
         /Wy4K0KYFs0ox5JOX5wv6kE4uMQoLGkG7nGUQq4lk6F6MRri2xmFQFXxCkoqQesBD2jc
         +NKu4oROB9561vmAUNPn1XNl0mOvAcE7kG2pq7V/toKN+9hfEC9+IFljd5w0SMdxqTe/
         8IRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BuT8ZVph;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id 77si334656ita.2.2019.02.21.00.51.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 00:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BuT8ZVph;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id j135so798161oib.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 00:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eQ5j7+9glCWFfJfUSXwXpx8If814x/DCINkhZz3D5Q0=;
        b=BuT8ZVphGTRvrk6RnDkaBpx5peIzC2B/o/B/8EE1CwiJiKzA5HudoSdOERUIQeXozZ
         ywLdqqtDL7lIivuPKkpN7wxApMu2FCZkXW1I5S3a/e4zOwchrSTFP7P1GwUGw5/kRm9d
         Z0p+yHoIUVXKqIPl/5JfbCJOYj6KLwBKhNlPkOGoT1vfC8EasPL4KTGmB5PNPbC/oDBJ
         mIC1kxzbGU08w3a7cLNQDU3gASQeuMtkrxiiyeKdmbFbN01rf0ZvS3CUd1mji3MxOhTm
         7K3ySDenmTzhxbE4/Jsi1KLX2NcktSxekEIgdQNL7awCFvecjbGoN8AVEJs2o1cg/YeQ
         OGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eQ5j7+9glCWFfJfUSXwXpx8If814x/DCINkhZz3D5Q0=;
        b=M45TwBnvcCCnp1VtgJir6Cy3s+OfcPevTaleH5ldUIh9unUqiVCWHiPR140I3iEfJa
         mq5cPQfqt3j6tqw7n6kd3gSRh8wr/zv8fCTqTqW19relUnA9U8lzS/B8uy64UABQ6cFN
         ePimATLDba5tBPzXKv0lzQSGY3eh9buPNPXL4HGBR1Cy/mXqbVtHEp05DFD7R6/oZXyk
         sy7olvVOpz+MZMVSoQ03yCjhWqW6GUR85RRowI8GzFQnVuNA/9cydrNx6w5fGXJvNEEV
         OxbK4wxt81cvfzyxJ4wjzJbiLRCVerHjcCl/4ooIsl7LwyMLHU/ajJCifYqbIIUUBCWp
         Bhow==
X-Gm-Message-State: AHQUAuYTsN8kwlBqqaXUKa3JMJtkvOYbTHxhVe/6EXOYv2SET6aSlk5w
	pMLxVSy1j0QZbbChv5ozNETSy2/Lhf9r9wgltSuzyUMw
X-Received: by 2002:aca:eb52:: with SMTP id j79mr8195721oih.119.1550739113127;
 Thu, 21 Feb 2019 00:51:53 -0800 (PST)
MIME-Version: 1.0
References: <20190221074729.GA27093@bhanusree-MacBookAir> <20190221083734.GE6397@kroah.com>
In-Reply-To: <20190221083734.GE6397@kroah.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Thu, 21 Feb 2019 14:21:30 +0530
Message-ID: <CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc=WsqnpwPisvJA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Staging: rtl8192e: Avoid using bool structure members
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

Ok, thanks.

On Thu, 21 Feb 2019 at 14:07, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 21, 2019 at 01:17:29PM +0530, Bhanusree Pola wrote:
> > -Use 'u8' with bitfield instead of 'bool' to preserve space.
> > -Also bool size can be 1 or sizeof(int) depending on the macro
> >  definition given to bool
> > -inorder to avoid alignment issues the u8 bitfield is placed as last
> >  member of the structure.
> > -removes checkpatch.pl check:
> >  CHECK: Avoid using bool structure members because of possible alignment
> >  issues
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/dot11d.h | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> > index 6d2b93acfa43..a1d879d316ed 100644
> > --- a/drivers/staging/rtl8192e/dot11d.h
> > +++ b/drivers/staging/rtl8192e/dot11d.h
> > @@ -33,8 +33,6 @@ enum dot11d_state {
> >   */
> >
> >  struct rt_dot11d_info {
> > -     bool enabled;
> > -
> >       u16 country_len;
> >       u8  country_buffer[MAX_IE_LEN];
> >       u8  country_src_addr[6];
> > @@ -44,6 +42,7 @@ struct rt_dot11d_info {
> >       u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
> >
> >       enum dot11d_state state;
> > +     u8 enabled:1;
>
> Again, no, this is not ok at all.  I thought I said so the last time you
> sent this patch.  checkpatch.pl is a "hint", you do not always have to
> follow everything it says to do.
>
> thanks,
>
> greg k-h

