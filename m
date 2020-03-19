X-GM-THRID: 6805922771293437952
X-Received: by 2002:a5d:56cd:: with SMTP id m13mr4784874wrw.236.1584630958869;
        Thu, 19 Mar 2020 08:15:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6802:: with SMTP id w2ls1117309wru.6.gmail; Thu, 19 Mar
 2020 08:15:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtpyBlPZNNWTCsa6p4k/0GG6zu42Sh0sqGqxqKftIksNxtx6wCrnNjT9wTLym5Mre1zL9eg
X-Received: by 2002:a5d:6ac3:: with SMTP id u3mr5106547wrw.358.1584630957375;
        Thu, 19 Mar 2020 08:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584630957; cv=none;
        d=google.com; s=arc-20160816;
        b=DZ1zEfVzYljo1Ar6tZRe1ptPdbAVe7yD/utRJfpWVsCprKzU6VonWanKVyWmZaNdLV
         34TQQhaSti4g/C5J8RO9DAMHLVNcB9yUSa6uw2RfrWXPZb1gsPw4qTtXfptWRPS6dTSx
         DX+DaPXelaUv3lUHSwp7qcpIDFyUQvVRxzyUj0+Xeg9v9inERgH7EE317Tp6nXGBCVc8
         S7EafrMdFTblo18cH2DVY8jJGhAozk+vE7XR/A8BtNFNG4eQO9Xn525hrH7owgALkScX
         XO4vgzNYebZcDPvJdxsmjTr+APzbLYMRazHRqDPiq5vi7beGKs0oNHkUeyFE7bq0hDgi
         2bYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8+bCyfEfohpwHPA3/KeJ7pKMDQ2APjX95GIGaH43BLk=;
        b=YRJT56jS53Y1KM1hcwfpEifRfGBGe15fN2xOIAjnIN2tGxI6ciuJnI6oePPfyqb1SA
         MZi0RaiY1e3Dq/CzK8cyhpmnT2mxTkIS+26FeWkEz3GUPAo2e8fr1v0wT9nlaSBB9MlB
         X+LMb5aL/lelRX/ktF8eDooFLBjON4IQGckzUHVW2U6Y8B2DZtF89npvttghYkFXJ4/N
         hD6TMIqpYtSgVNUUle2lU9wPVZWbhkaC9gLeKG6b+T0ByqEuRZCEF2iZqQCYeYI95gLu
         zMliDUBTZ+pgnYM2vofMfU2FbRlqEnKdZP5xqFoEs215b9GOWPhlS4l3AMDuIuzRQRZ+
         zEjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w17si147626wrn.3.2020.03.19.08.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,572,1574118000"; 
   d="scan'208";a="441208632"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 16:15:57 +0100
Date: Thu, 19 Mar 2020 16:15:56 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: rearrange line
 exceeding 80 characters
In-Reply-To: <alpine.DEB.2.21.2003191610430.2312@hadrien>
Message-ID: <alpine.DEB.2.21.2003191615250.2312@hadrien>
References: <20200319141612.GA11981@siyah2> <alpine.DEB.2.21.2003191610430.2312@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Julia Lawall wrote:

>
>
> On Thu, 19 Mar 2020, Gokce Kuler wrote:
>
> > Moved to the bottom line after << operator for it exceeds 80 character
>
> The log message should be in the imperative.  So something like "Move the
> right argument of << to a new line to stay within the 80 character limit."
>
> If you found the problem using checkpatch, it is nice to mention that as
> well.

Greg thought the code was ok as is, but maybe you can use the comments on
some other patch :)

julia

>
> julia
>
> >
> > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750_cursor.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> > index bbbef27..b67c545 100644
> > --- a/drivers/staging/sm750fb/sm750_cursor.c
> > +++ b/drivers/staging/sm750fb/sm750_cursor.c
> > @@ -116,7 +116,8 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
> >  					opr = mask & color;
> >
> >  				/* 2 stands for forecolor and 1 for backcolor */
> > -				data |= ((opr & (0x80 >> j)) ? 2 : 1) << (j * 2);
> > +				data |= ((opr & (0x80 >> j)) ? 2 : 1) <<
> > +				       	(j * 2);
> >  			}
> >  		}
> >  		iowrite16(data, pbuffer);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319141612.GA11981%40siyah2.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.2003191610430.2312%40hadrien.
>

