X-GM-THRID: 7018941118564794368
X-Received: by 2002:a1c:a5cd:: with SMTP id o196mr7812955wme.96.1634236809408;
        Thu, 14 Oct 2021 11:40:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6141:: with SMTP id y1ls4301489wrt.3.gmail; Thu, 14 Oct
 2021 11:40:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwff7pdtd6ecN51Vu57qIUq9ii0FNrPTpFlTOBxL61zpvqUP/XDzp2rgPXR4YYMhm0b3j14
X-Received: by 2002:adf:b31c:: with SMTP id j28mr8745332wrd.0.1634236807885;
        Thu, 14 Oct 2021 11:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634236807; cv=none;
        d=google.com; s=arc-20160816;
        b=bWtE4sjF1rRjb0aumpwO420s0rAphR13u20tEXkagxR5+zBYEuj6D3TsSk5VLqJgtY
         d4xKoq70j3ZFIFMvLwxdOZIQIcMxd2QI9bkn2kFrgYz33DfDsRdch4KXRYE0SH6kYbFe
         9uDc8+sOItLA4HjxumwVhuuVmjNxI8E/QtzwqTc5OvpqRT9qfSCZ1HeNwKqbxUF446BK
         AlKsMVqCnP3G97rNtdTb8j7yTwu3YvGYABHzYZcMPkhhxnpyfA5pmndCYUQSe/Y3UB41
         VlugCzcEkL5kfVaAJFZ5VGrmqFIkxkCmYDwxL+OEkjtazuNkxQW590sqD/n/dSVx0VyT
         NmpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=nj3MfGzbxenpViMHwjC3j1zi59ZQMPP0fY32UV1OiuE=;
        b=SDinPclAk1IXktj1IFjNcAiwVEEDKpBs6zJLdug+iPPe97QnqDM3fJoVe+9mrWrUup
         IzoG/xN8Ou9fbgpykXzhN7WP9T+MIb+LIOWh+AQMVdUJunm04yrkYL5mxdA9kjXEyDfq
         0TWBgaNCFGKW7vGEC8dpXyV+1UXwrLUMEbOY2plo5wPWQlTzT/K9olpK8iuPiBdv+LtR
         v2FAKwvnIqNR9Q+vGA6iXV+sWI4urGnX7+7cgY0d623FVj/6jYjfugbJrrqBcuT298k6
         jqeXm+uimA0ownUymmjUHIUZKNtsIZlsPZ/uJyrfEkkTWIw26U5zjqK0NYxDXVwFGsqN
         YqUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h11si185918wrs.3.2021.10.14.11.40.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 11:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AheJ6rK1If/BG01zTOhIDqgqjBMckLtp133Aq?=
 =?us-ascii?q?2lEZdPU7SKClfqyV8cjzqyWbtN95YhhJ8uxoU5PufZqzz/RI3bU=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="534015649"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 20:40:07 +0200
Date: Thu, 14 Oct 2021 20:40:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Rename byPreambleType
 field
In-Reply-To: <08596422a73e37833b431fd5b922e7a02f6e4c0e.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110142031470.3289@hadrien>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>  <alpine.DEB.2.22.394.2110141724560.3289@hadrien> <08596422a73e37833b431fd5b922e7a02f6e4c0e.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Oct 2021, Karolina Drobnik wrote:

> Hi,
>
> On Thu, 2021-10-14 at 17:26 +0200, Julia Lawall wrote:
> > On Thu, 14 Oct 2021, Karolina Drobnik wrote:
> >
> > > Drop Hungarian notation prefix in `byPreambleType` member of
> > > struct vnt_private. Change it to use snake case.
> >
> > Are you sure that it is an instance of Hungarian notation?  Could it
> > be that "by" is meant to be the word "by"?
>
> I saw that functions and parameters use it[1] so I deduced that "by"
> might stand for byte.

OK, I see your point.  I originally thought that doing something by the
preamble type might be true or false.  But it looks like the developers
have considered the use of booleans and that is not what they are using
here, so it seems that my original idea was off the mark.

> If this is not a case, I can revert that change
> and leave `by_preamble_type` name. What do you think?
>
> > I have the imrepssion from a
> > quick look through the code that it should be a boolean.
>
> Hmm, it really looks like it. In `vnt_bss_info_changed` definition we
> use true/false values but in `bb_get_frame_time` we have such a line:
>
> ```
> if (byPreambleType == 1)     /* Short */
> ```
>
> I'm not quite sure to what this "short" might refer to.
>
> > Maybe it  would be helpful to give it boolean value,
> > eg true instead of 1.
>
> This is a good idea but I'm not sure if it's only used as a boolean.
> I could add this change but I'd like to test it more than just by
> loading/unloading the module. Is there any way of testing drivers
> without an actual hardware?

There is also this code:

vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_SHORT;
vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_LONG;

PREAMBLE_SHORT seems to be 3, which is not a boolean.

There is also
vt6655/rxtx.c:  return cpu_to_le16(wTimeStampOff[priv->byPreambleType % 2]
which also makes no sense for a boolean.

You would have to trace through the code and see what values are stored in
this field and how they are used.

julia

>
> Thanks,
> Karolina
>
> ----------------------------------------
> [1] - For example in rxtx.c, lines 154-161:
> ```
> static
> unsigned int
> s_uGetTxRsvTime(                     /* s - static, u - unsigned */
>         struct vnt_private *pDevice, /* p - pointer */
>         unsigned char byPktType,     /* by - byte */
>         unsigned int cbFrameLength,  /* not sure */
>         unsigned short wRate,        /* w - word */
>         bool bNeedAck                /* b - boolean */
> )
> ```
>
>

