X-GM-THRID: 6620096919809032192
X-Received: by 2002:adf:eed2:: with SMTP id a18-v6mr233956wrp.27.1541399089600;
        Sun, 04 Nov 2018 22:24:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4302:: with SMTP id h2-v6ls5280422wrq.8.gmail; Sun, 04
 Nov 2018 22:24:48 -0800 (PST)
X-Google-Smtp-Source: AJdET5f5WBBDJI5DEzCdmrLp9GkN38UAbyjJ3XFYIoyZev9ffdL6bdUoGkAdkL+w30prFuAXshVE
X-Received: by 2002:adf:eed2:: with SMTP id a18-v6mr233953wrp.27.1541399088860;
        Sun, 04 Nov 2018 22:24:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541399088; cv=none;
        d=google.com; s=arc-20160816;
        b=FKbTwOzJnkG+9myrT8m8ekKsH3y+kAa2p3fwhlMtuc0QPf2aEax6QJA+bimz3nqan3
         eyf6xoHIJ3Gp3B4Pv0SSv/qMYLUcT1PueejawrryrYC14hf0OBaAgURjKvTxLnoVY1ZN
         wXQm2qyWLxJ1iX5/WAN6OwbHs5WYMoe+Jr6qGFiFhVyJliblS7fOBMml6yLdnxcZYV2d
         o4gZTaC35rsJGSptT0BCJDtrudzp8nizZJoad87dfDDTnDlF7LWbKqFagTZMBv0PVSCc
         07jwLjHPQLEX9Iryx03u80YkGXOYetNggG2Le5a0zpCWuE0S9AzEWMm0Zm36bruVGS3d
         3hPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YImfyKgoYL11LxAWh2qEBfRncUkYo4DQTiMkDyXmFvg=;
        b=H33KUZmYuo2WfdfQU1FgYhL+dy0FdmKCUzAMcbEI7Pdo7UjJbHAk4clWB3iqAt8WPe
         Lpq7E3x5+8EPt9OqBAftGW63bLiO1x91kDFkWjx27vBote8945GXUA7GLOJ7qOE2XnkS
         jJ8p33OUanc7AmaxnoN2nlR9X0D4zlSw5BUgB0rbngmRzd6srxaeMimxl+Ndv8fAr0M8
         oN8WxqEdcgGX5J081GkohbXf0OI+MJkiZlTFKukVUqlPeOZZJ0cupinJuTHuswF9msnC
         JsEvd47HngYOx+pBZf5iTKJUvKxvk98CnccIS9RKByFTYXQJNCY3RNRqC1+y9TbuZ1r2
         zqgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n6-v6si761336wrj.4.2018.11.04.22.24.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 22:24:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,467,1534802400"; 
   d="scan'208";a="354084881"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 07:24:26 +0100
Date: Mon, 5 Nov 2018 07:24:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
    gregkh@linuxfoundation.org, Sasha Levin <sashal@kernel.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>, 
    linux-erofs@lists.ozlabs.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: erofs: Modify
 conditional check.
In-Reply-To: <CAOMPgjjF3_JYc6H8FuMXXmNHov30uxy2N+ZtTTtVhSxzmbsnFQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1811050721560.2654@hadrien>
References: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com> <5d7fc290-08ad-0c83-d030-de255de81c47@huawei.com> <CAOMPgjjF3_JYc6H8FuMXXmNHov30uxy2N+ZtTTtVhSxzmbsnFQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-421853641-1541399066=:2654"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-421853641-1541399066=:2654
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 5 Nov 2018, Bhagyashri Dighole wrote:

> Thanks Gao. As per discussion in previous mails, I thought we need to submit
> one change at a time in a patch that's why I modified accordingly. As you
> suggested it makes sense to fix all similar issues at once and create a
> single patch for those issues. I will update patch accordingly.

Sorry for not being clear.  It is one kind of change at a time.

julia

>
>  Thanks 
>
> On Mon, Nov 5, 2018, 10:58 AM Gao Xiang <gaoxiang25@huawei.com> wrote:
>       Hi Bhagyashri,
>
>       On 2018/11/5 13:13, Bhagyashri P. Dighole wrote:
>       > Found issue using checkpatch.
>       > Use ! for NULL test rather than explicitly comparing to NULL.
>       >
>       > Signed-off-by: Bhagyashri P. Dighole
>       <digholebhagyashri@gmail.com>
>       > ---
>       >  drivers/staging/erofs/data.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/erofs/data.c
>       b/drivers/staging/erofs/data.c
>       > index 6384f73..a671ad4 100644
>       > --- a/drivers/staging/erofs/data.c
>       > +++ b/drivers/staging/erofs/data.c
>       > @@ -240,7 +240,7 @@ static inline struct bio
>       *erofs_read_raw_page(
>       >               bio = NULL;
>       >       }
>       > 
>       > -     if (bio == NULL) {
>       > +     if (!bio) {
>       >               struct erofs_map_blocks map = {
>       >                       .m_la = blknr_to_addr(current_block),
>       >               };
>       >
>
>       Could you please fix pointer comparisons to NULL all in once?
>       at least for a specific file (eg. for the staging/erofs/data.c
>       only)?
>
>       It is somewhat weird to just fix one place only of data.c +243
>       as above,
>       this is my personal suggestion...
>
>       Thanks,
>       Gao Xiang
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/5d7fc290-08ad-0c83-d030-
>       de255de81c47%40huawei.com.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOMPgjjF3_JYc6H8FuMXXmN
> Hov30uxy2N%2BZtTTtVhSxzmbsnFQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-421853641-1541399066=:2654--

