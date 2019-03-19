X-GM-THRID: 6664599067170963456
X-Received: by 2002:adf:e7c5:: with SMTP id e5mr386544wrn.27.1553025083728;
        Tue, 19 Mar 2019 12:51:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b458:: with SMTP id v24ls4336541wrd.2.gmail; Tue, 19 Mar
 2019 12:51:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxyk+yJg5I9jF6NJrFOX9B6NkCjQA8efkQ+EytKiLHexdpo8WVmZ57qcjpWhZWEIcXEV6wa
X-Received: by 2002:adf:e551:: with SMTP id z17mr1331038wrm.11.1553025082844;
        Tue, 19 Mar 2019 12:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025082; cv=none;
        d=google.com; s=arc-20160816;
        b=WmF28Un3dRzIK4TyoCEvuBRGgrQ/rVl6HBrA1BwPKMvcJiEt5OIDLHWXGc/RaQ9J+l
         j0AZS0jXZkDzdd3H1xXB8+NruCtUWADoTTxVzBeRpiYDXYIfF/SwxsJ6TjCvYc3VAy87
         xYYUSsZ59riFPAY+0Rr8nurEfFirPUc5QbaFi3w3OXYo9AlJUnrERMxNrrfhV5iV8v6j
         tV73HNL8wRC0cvWWkvbYi8azAfwFilvktWJwBZaSeyO6kG8NxxzskfGCVL+Pm/70JGS2
         iYQzs+X4kR8zvNdiPY+OrPwy569i2QW2N4aXGQJXerhhEFVJfx6TPKGK7At5xXZkiRrD
         Cx5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mQieC82DL41J+/XuAmqYyCmB+UhcVNCDu3hHj9l6AgI=;
        b=ZC2g6X5ptNF38VpeEhQmu76bD7jxUxXnhBVaAIB07BB6ZFCKaq8JnfHhyfIz6HzBr+
         zrz8qxXrYOd/oSy/dhzyOGPMeMOcuGbJ1og+Ef+nSuZtM/AyY1NzSmVlJO5uYDx2tSe3
         +Vxd/BQ+flxSJqRRKnFIGFcWUNUInUZFvUlOCZjuTfcJg3q4td6pFo7LzW7GSG6LUubb
         yFzQIVb1SHX2j3eZZmV9+oVcwjRPS+xofkYPVRoFFr+A40aKetlwUo008VlWP3up+gY6
         dJvdKONxJlFPgdfJz5m9QwPRCmXT2MwlmlztXywKoRtI3i+pSlKnRBASmggGl3wmYjFa
         +o5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p4si190wmh.0.2019.03.19.12.51.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:51:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300007885"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 20:51:17 +0100
Date: Tue, 19 Mar 2019 20:51:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
cc: Johan Hovold <johan@kernel.org>, elder@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: greybus: Change NULL
 comparison to Boolean Negation
In-Reply-To: <3cecf381-0230-400c-d0c4-5aed1134e62d@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192050460.2460@hadrien>
References: <20190304174315.30222-1-nishka.dasgupta@yahoo.com> <20190319093119.GG6124@localhost> <3cecf381-0230-400c-d0c4-5aed1134e62d@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Mar 2019, 'NIshka Dasgupta' via outreachy-kernel wrote:

>
>
> On 19/03/19 3:01 PM, Johan Hovold wrote:
> > On Mon, Mar 04, 2019 at 11:13:15PM +0530, Nishka Dasgupta wrote:
> > > Change NULL comparison to boolean negation. Issue found by Checkpatch.
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/greybus/bundle.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/bundle.c
> > > b/drivers/staging/greybus/bundle.c
> > > index e97b2b87ba47..376ca53f0d83 100644
> > > --- a/drivers/staging/greybus/bundle.c
> > > +++ b/drivers/staging/greybus/bundle.c
> > > @@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct
> > > device_attribute *attr,
> > >   {
> > >   	struct gb_bundle *bundle = to_gb_bundle(dev);
> > >   -	if (bundle->state == NULL)
> > > +	if (!(bundle->state))
> >
> > I noticed Greg already picked this one up, but there's no need for
> > parenthesis around bundle->state here (cf. state_store()).
>  Okay, I'll keep that in mind.

Since Greg picked it up, you can send another patch that fixes the issue.

julia

> Thanking you,
> Nishka
> > >   		return sprintf(buf, "\n");
> > >     	return sprintf(buf, "%s\n", bundle->state);
> >
> > Johan
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/3cecf381-0230-400c-d0c4-5aed1134e62d%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

