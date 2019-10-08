X-GM-THRID: 6745542225820647424
X-Received: by 2002:a19:488f:: with SMTP id v137mr20966966lfa.26.1570569853156;
        Tue, 08 Oct 2019 14:24:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:48c:: with SMTP id v12ls418785lfq.13.gmail; Tue, 08
 Oct 2019 14:24:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3iSKjeqVoiSNxh1Mqog074DjGGw1XYZDKKqk1yebZHpSCT1UPsfhn4xugahYhuaab5bD/
X-Received: by 2002:ac2:4c8f:: with SMTP id d15mr23190315lfl.74.1570569852240;
        Tue, 08 Oct 2019 14:24:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570569852; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJNXaJFT/HxtYQvBsVr8tM1k6WRdNLnR+78Dx02vZ6bM7lmSoUUyh84vnFvKcPBhc4
         B42M909ulozpBlZQQCr98xw3QKpJLerOMkPFoZ4g/+5ndwaIDhZoRiga7fHUe72RT2ct
         gdBrKVqp/xRnO2ZOa1F6T/isgBWxXvckpB/koCAn8f2FhbVojB76+50F+it1mrD6dWy9
         +9yuasLul4dNGQFcEbVyr8Y1IrYtqB9nIAM/9cCJxZY8DNxBgDNNWRkQhTRxHSplXZIb
         vvZeOZl8COVXC4IyzG0Cs8AgulqLYs5FC34SQARIM8W3560TND7+k7LVN85IzoiOdMbI
         qk2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PbK+Myoj49RXl/sVrQ3zGZTLvgXOXk7v3DHEO4cd4oM=;
        b=vS1d+4s0jxqWLBNgrcuM493Mh3QnI5ZxhZMZxMqnwCI8V389k/WNOJ6hkdUveFps/K
         eo6nTI+Mdl+4at8azAVCxKTAvzjby5EslGTojhsPRZ4WvEXM+m9nw8xLWE8D2tM3wESx
         jUvoziwlbL2SA7b0sixbFSHdyG88mffllgMicYSExGDpXc7lwYKvFQw6DeTZMMr6hEHI
         Q7mNli0/ZBb7TsnZYfMla7xwNVhBtSWJhG3M1bXiFJl6IZKC2MEtowb2JE9E+AxXxm4V
         VZRVeVPYwCoQKezBf3hnoVeWi3BUYoFM14NirxEGjMTQUmxXvWzAL1H5hGIuE8HSJeEx
         5bJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q25si10721ljg.5.2019.10.08.14.24.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:24:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,272,1566856800"; 
   d="scan'208";a="322067415"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 23:24:10 +0200
Date: Tue, 8 Oct 2019 23:24:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Javier Arias <felipe.ariasf@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Fix line over 80
 characters
In-Reply-To: <c9163826-7e60-4668-8ccc-04ce37106e4f@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910082323210.2704@hadrien>
References: <20191008210850.ldgx5n3sahpdauvu@gmail.com> <alpine.DEB.2.21.1910082313180.2704@hadrien> <c9163826-7e60-4668-8ccc-04ce37106e4f@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-560599138-1570569851=:2704"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-560599138-1570569851=:2704
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 8 Oct 2019, Javier Arias wrote:

> Hello Julia,
>
> Thanks for the feedback. The first line was originally like this so I just
> split the last argument. Should I fix that issue in this commit too or
> create a new one?

You could make a series of the two kinds of changes.

If you send two independent patches on the same file, Greg will be unsure
of the order in which to apply them.

julia

>
> On Tuesday, 8 October 2019 16:13:45 UTC-5, Julia Lawall wrote:
>
>
>       On Tue, 8 Oct 2019, Javier F. Arias wrote:
>
>       > Break last two function call arguments into two separate
>       lines.
>       > Issue found by checkpatch.
>       >
>       > Signed-off-by: Javier F. Arias <jaria...@gmail.com>
>       > ---
>       >  drivers/staging/rtl8723bs/core/rtw_ap.c | 3 ++-
>       >  1 file changed, 2 insertions(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c
>       b/drivers/staging/rtl8723bs/core/rtw_ap.c
>       > index 6d18d23acdc0..43af76b9fa49 100644
>       > --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
>       > +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
>       > @@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter
>       *padapter)
>       >          #ifdef DBG_EXPIRATION_CHK
>       >          if (phead != plist) {
>       >                  DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n"
>       > -                        , FUNC_NDEV_ARG(padapter->pnetdev),
>       pstapriv->auth_list_cnt);
>       > +                        , FUNC_NDEV_ARG(padapter->pnetdev)
>       > +                        , pstapriv->auth_list_cnt);
>
>       It's not normal in the kernel to put the commas at the beginning
>       of the
>       line like that.
>
>       julia
>
>       >          }
>       >          #endif
>       >          while (phead != plist) {
>       > --
>       > 2.20.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sa
>       hpdauvu%40gmail.com.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c9163826-7e60-4668-8ccc-
> 04ce37106e4f%40googlegroups.com.
>
>
--8323329-560599138-1570569851=:2704--

