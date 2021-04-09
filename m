X-GM-THRID: 6948788358969556992
X-Received: by 2002:a63:d309:: with SMTP id b9mr12536876pgg.96.1617969228011;
        Fri, 09 Apr 2021 04:53:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls4480882pjb.2.canary-gmail;
 Fri, 09 Apr 2021 04:53:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxf+LxTBesJN7rHs9x7d8T4lx6nCLdYv+4G2SA3hji2NURKwAhSGa6yV7wVfcR3jssP7aI/
X-Received: by 2002:a17:90a:34c:: with SMTP id 12mr13329759pjf.100.1617969226822;
        Fri, 09 Apr 2021 04:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617969226; cv=none;
        d=google.com; s=arc-20160816;
        b=yWHJ16uZC9goo9SodW8EgR6ML2h5PSGfPFX23BKC6BsUrAeW5qMUJ3oB718p31Yt7g
         +yMR/DHWqLOeKvarrcNViR1L1iByVTgfS3jVlzkF6iI1Qpd2/W1YdMrjMkZETVqaW0Ba
         8BvDjJTtTWjAX+WxTYV0mdobZh4h1CNDtra4sV/+JD8jgZlukW4mYTRqm3RRQUIBlraN
         nXMdbkiXuOFmRv1k3GdbpmtBQ9G3UC+nJliBqKlDz4eP/K2NL871MYaxJ3UVkApkm0WY
         kuJK4IJ0r3euYTi2ispftG7Iy0DqyIXLRL2nvHPQRIU06GUZyRCfslm3UQa5mlbkTNUl
         noVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=rfY7/TSIGIzzxtfqlFd7sY3b3y7+bcFeCK0VpNZPuRY=;
        b=l4uJ8akXkOu7CmN8R7Rmhp7Bw/fmUk3EzEYV80Ub+2HEPEQpv1QLzKX7HxIC4aqVza
         xXzRggMpWbZTB1US5XyPW9Jl2qg+Y0ZGz770dfHTtjOclHcdu9qmEEPH1PUa00DJk8rY
         G00ncrS7l5OU6FfuvRyZ9Q7qzp/sirsfOraY9x3t1KsfNUrF6OCAd9smkRQF/a9Vr1zX
         2rqNIaZbLZKwf75GyqfkyUO3k++WcPVopC5OW26Gt7G45JNKN/3AAkwqbWmD5TpZlfoX
         ldgaFj/8n3pbmVqGKy2g0TnVLnyy/9jfzlGDGbb1jLKT1sbflQlNWWpq7M0yo0lWCDRM
         TV0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="So/hiCRV";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id ls15si748218pjb.2.2021.04.09.04.53.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 04:53:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="So/hiCRV";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x830.google.com with SMTP id s2so3895485qtx.10
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 04:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rfY7/TSIGIzzxtfqlFd7sY3b3y7+bcFeCK0VpNZPuRY=;
        b=So/hiCRVkiAtxlGQG51g2yW+Xox7jax6ey2w20HtiXYP0FCYqoMaZ5jwIxylUFhemK
         LSm7y5ib+lLnn9iEqIG7kuRdnfK7s/8QRZLTbzOI2v0b1w/95xKKXjAZy8ZBtxX83bPf
         ZvT/6PSNUzVEQ/7Z3ufBzk3VV+5JCznM3AmQj/x/UPR+S5jqe6EIiCtebgCqGo7p7XUe
         kq6NfjcH0Zs6eVLxq7E3BEn6NpCMTJBpmrKu1lJZap1YKbEp+fELEP1miFBl6DT0WXaW
         4h7fQW6RFVkHkta7cI3rgf1y0uC4PTeVkbU6yOjQzr4ZmKhd+pihVR82b3vo1LPY7ZC3
         cuoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rfY7/TSIGIzzxtfqlFd7sY3b3y7+bcFeCK0VpNZPuRY=;
        b=gyRWnY7uH/pq99+uVAmGa01mTNbDOjLP001duWWhcMgR8fZkgcqvQxCxt9DmHPEiA9
         xWfTUD/SZ+/SNv/hJcw8ZTQNrt5m4gcxDd0+cr5g7SMZMJrWknXXy+lG8tbJt7Kwmf8t
         UnLgImlw09QtxMI6rf1LZebUABtoXEE3E68S8K35cEqKXBo+nedd9f8o+OQJh7W3w62c
         BTdK2OaGOEZUnTaaJS8bmL82BWk5PJ/c4D7+ZxcQvp8WiPbEPsQMYhFyHrrK3IjEKE03
         rek0coUfujJQUX/PiUJ2o6Iy7R1J1+71Hw2NAhCjClzcF+Xw0Hhlvm7GS6eSZO8LD2tV
         bXUw==
X-Gm-Message-State: AOAM532OJi/Okqu/aZSRR2kSRS8tH674dqm3/PSV5Rk5rcz4SoNEvEpk
	IWjmTTCSCeKvfM1xai4mXqs=
X-Received: by 2002:ac8:46c5:: with SMTP id h5mr504198qto.180.1617969226014;
        Fri, 09 Apr 2021 04:53:46 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f013:b099:8056:1dc0:5a27:acd7? ([2001:1284:f013:b099:8056:1dc0:5a27:acd7])
        by smtp.gmail.com with ESMTPSA id a8sm1627222qtx.9.2021.04.09.04.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 04:53:45 -0700 (PDT)
Message-ID: <bd3d8a6b231ec142e420b622c1fd72276256c77f.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2 v2] staging: media: hantro:
 Align line break to the open parenthesis in file hantro_hw.h
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Outreachy
 <outreachy-kernel@googlegroups.com>
Date: Fri, 09 Apr 2021 08:53:41 -0300
In-Reply-To: <CAK-LDb+L-hXpVgFpAz95921p6JOPZ8=BSYAiqjRpYv0oV=YK2A@mail.gmail.com>
References: <cover.1617890467.git.alinesantanacordeiro@gmail.com>
	 <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617890467.git.alinesantanacordeiro@gmail.com>
	 <d4000598fddcf45e578462aa04b556c0ca057091.camel@collabora.com>
	 <6bba0e0a5768e902ffec4bda563d4ca810412f84.camel@gmail.com>
	 <CAK-LDb+L-hXpVgFpAz95921p6JOPZ8=BSYAiqjRpYv0oV=YK2A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em sex, 2021-04-09 às 10:25 +0200, Vaishali Thakkar escreveu:
> On Thu, Apr 8, 2021 at 7:41 PM ascordeiro
> <alinesantanacordeiro@gmail.com> wrote:
> > 
> > Em qui, 2021-04-08 às 13:20 -0300, Ezequiel Garcia escreveu:
> > > Ola Aline,
> > Ola Ezequiel,
> > 
> > > Welcome to the kernel community. Hope you enjoy some of this
> > > Outreachy adventures.
> > Thank you!
> > 
> > > Normally, when you submit a v2, we want to know what changed
> > > between the first submission and v2.
> > > 
> > > If you are subscribed to linux-media, you can read some
> > > of the series with a vN+1 and look how it's done. Examples:
> > > 
> > > https://www.spinics.net/lists/linux-media/msg190043.html
> > > 
> > > https://www.spinics.net/lists/linux-media/msg189923.html
> > > 
> > > I'm sure your Outreachy mentors can tell you more.
> > Thank you for the examples, it won't happen again.
> > 
> > The reason for sending a v2 is that I sent my very first patchset
> > yesterday and I sent the cover-letter together, but (I think) I
> > wasn't
> > supposed to, and as the patches weren't marked as [PATCH 1/2] and
> > [PATCH 2/2] in the email - since I commited all the files with the
> > same
> > message - I tought it was wrong and sent again today.
> > 
> > However, I just realized that I've changed just the subject of the
> > e-
> > mail, but I would've to change the commit message, right? And then,
> > it
> > would be a second version, am I right?
> 
> Your next version should be v3 with information about changes since
> v1 under --- . If you send it with v2, it'll still be confusing for
> people
> because then they have to manually find out the difference between
> two different patchsets with the same subject line. :)
> 
> You can also check 'Revising your patches' section in the tutorial.

Thank you, Vaishali!
You made it clear :)
I'm going to correct the patchset and send v3.

> > Thank you in advance,
> > 
> > > On Thu, 2021-04-08 at 11:07 -0300, Aline Santana Cordeiro wrote:
> > > > Aligns line break with the remaining function arguments
> > > > to the open parenthesis. Issue found by checkpatch.
> > > > 
> > > > Signed-off-by: Aline Santana Cordeiro <
> > > > alinesantanacordeiro@gmail.com>
> > > > ---
> > > >  drivers/staging/media/hantro/hantro_hw.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/media/hantro/hantro_hw.h
> > > > b/drivers/staging/media/hantro/hantro_hw.h
> > > > index 34c9e46..a650b9c 100644
> > > > --- a/drivers/staging/media/hantro/hantro_hw.h
> > > > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > > > @@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width,
> > > > unsigned int height)
> > > >  void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
> > > >  void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
> > > >  void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
> > > > -       const struct v4l2_ctrl_mpeg2_quantization *ctrl);
> > > > +                                 const struct
> > > > v4l2_ctrl_mpeg2_quantization *ctrl);
> > > >  int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
> > > >  void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
> > > > 
> > > 
> > > 
> > 
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/6bba0e0a5768e902ffec4bda563d4ca810412f84.camel%40gmail.com
> > .
> 
> 
> 



