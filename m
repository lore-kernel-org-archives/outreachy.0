X-GM-THRID: 6885049612383551488
X-Received: by 2002:a62:7b90:0:b029:152:ebe:828 with SMTP id w138-20020a627b900000b02901520ebe0828mr16037966pfc.38.1603108202500;
        Mon, 19 Oct 2020 04:50:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1884:: with SMTP id 126ls3532145pfy.8.gmail; Mon, 19 Oct
 2020 04:50:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRhrDDG85hz75Gj/Lw3uoYcvq3OsT/dijOenUooSHVXhiwg4OJlb81dQGZ5JihymfL1ss2
X-Received: by 2002:a63:cd51:: with SMTP id a17mr14224719pgj.167.1603108200803;
        Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603108200; cv=none;
        d=google.com; s=arc-20160816;
        b=XT/L5SNr6JNUl5S5gsc/P96W5m6OqHevShRiWq9enI91iE1VCZEGo7rBQKXKxxWkZs
         cXM/m2tvvAg1VvWvz7C5gOtUFih4jfhzYlOCCVWKcC/BdLF8mKzoR79JugoFCNnoF7eu
         nOttYYyFsOSZdXwb6Fe+gSxSQ3YYeZJzmcTPXWCkM3e9dkylw3Qspe+J6et62W/pUhtU
         Nl36Ce4PL1Oix5oRs7vccMK6Q9DYiyrynHK6OF+NmANufqkSoayuXrUoK3TOZfpoy/r6
         mfqwLJVxxo6Zalz5giX1vI37Qregjgc9ZUg4oQ78mUM7rEvBLc2MXYjavZ7x/P/njmXh
         oR4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V/2GFKcJK393SUy8Gwnz3mzd804AQcK60y3/BwlCjSI=;
        b=DivH+Fg0ezpeMQOj2JRBBEohSlTeloz4A7HFeBALwxFEkvuA5dQPMIzJPHW0t5CVUX
         GFRyVwJ02RMNUeAU+3h9QyMEI0VOzqIs/rJlpNgT5xjOJgfs1lDz6HgCaUjkqZlMcIXM
         GTxBw2uqrdtrS0lQbdDJgfKSMXAoVuk2qLzOxCckuntTPo5wycC4yWzSNoyElmiGuSUX
         vThPTPhDF6npbN6G8FIIV5/Lb3F6dQqmECaSWuVTQizhmTbGQm4nAC9Pwns4Y5hk+JrE
         Fa/1kW6TmGJ4OOIs2NrOl28ubO36+EXsUUmY1uJsxIV0G0V8Lx9+rpon+AelinM4ItWR
         hC5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f3e1GQwA;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id v1si749677pfi.2.2020.10.19.04.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f3e1GQwA;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id a1so5565719pjd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=V/2GFKcJK393SUy8Gwnz3mzd804AQcK60y3/BwlCjSI=;
        b=f3e1GQwAAmlJHgeD39pk+wkjhg9xz3AUquuDSkQ6PZOOhYTbTV77fqAJblBb5HFJDp
         uafLt5atFDg6Pmkz0AspMvCVxJN8is09Y7Mp+37N+oyOX+UpLFA+HDxAdTb/Wyg6TwOR
         eOR7M5De7lWNgN0RrWNWqCaEsd5FbW7S7LUpqZHpXLAtfkbkjr6b9JESOh0SFYZVLsSX
         1tyRuwsb9XMX1SM/IZDkLZDsVqAjUJiaU7Iw8MeMDl0FSkoXM9Wjuz1CSebPCN0SG/1z
         9y/yO7kKJy+YeIKItAr3VpSdID9eFRsD/5svhCzzY5UbGj0gvEJ+Vcyn/a09fJSEFxgs
         Wh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=V/2GFKcJK393SUy8Gwnz3mzd804AQcK60y3/BwlCjSI=;
        b=H59t9ciwx+6Ih47KGeqfSFErspPvxd02DBP8/ifcaj2bO7NgVYpYHArpOKTEqWd7Z4
         GP6E8I9hx6pQGH6fk60dJzNDyznxsbE0REoE7qV8hBAekXjxbw9YNIhRECJQ6x8EcnSY
         hdj1lpA4xk2tf+lKVTB8flHFUqpc+/DuSvBLDkiZiYssA/sOqIyNpaKuGaPdTNCBQrwE
         GmbMbcT43JPaeRrqmlVstqnGfgtU6G136axnT3l8CNT8OgdpwqeK2cM1kJxLJxmbabgH
         aHk4k9h6L5D/IY2RNrwZnXLm2uZbDM4zTGUU7ipZRvp4HC/PbP9D9kFZvNOmt0g5kme6
         x4kg==
X-Gm-Message-State: AOAM5324Fp/UYxKJC0BSC5S1hXVmbx8wABvQvVQ2NgPZPYxen1+GkiTu
	NVa3YqQkI6T08P8anbAeByA=
X-Received: by 2002:a17:90a:cb86:: with SMTP id a6mr16418234pju.161.1603108200557;
        Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id gg24sm11642544pjb.44.2020.10.19.04.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
Date: Mon, 19 Oct 2020 17:19:54 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine
 split lines for improved readability
Message-ID: <20201019114954.GA11996@ubuntu204>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
 <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
 <20201019105731.GB9681@ubuntu204>
 <3bcf050c-97e4-666a-20fd-44585a913a8d@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3bcf050c-97e4-666a-20fd-44585a913a8d@mev.co.uk>

On Mon, Oct 19, 2020 at 12:34:15PM +0100, Ian Abbott wrote:
> On 19/10/2020 11:57, Deepak R Varma wrote:
> > On Mon, Oct 19, 2020 at 12:41:14PM +0200, Julia Lawall wrote:
> > > 
> > > 
> > > On Mon, 19 Oct 2020, Ian Abbott wrote:
> > > 
> > > > On 18/10/2020 20:49, Deepak R Varma wrote:
> > > > > Instructions split on multiple lines can be combined on a single line
> > > > > for improved readability of the code.
> > > > > 
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > >    .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
> > > > >    1 file changed, 4 insertions(+), 8 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > index 7db83cf5e4aa..a3b1be623861 100644
> > > > > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
> > > > >    	const struct ni_route_tables *T = &private.routing_tables;
> > > > >      	init_pci_fake();
> > > > > -	unittest(!route_register_is_valid(4, O(4), T),
> > > > > -		 "check for bad source 4-->4\n");
> > > > > -	unittest(!route_register_is_valid(0, O(1), T),
> > > > > -		 "find first source\n");
> > > > > -	unittest(!route_register_is_valid(4, O(6), T),
> > > > > -		 "find middle source\n");
> > > > > -	unittest(!route_register_is_valid(9, O(8), T),
> > > > > -		 "find last source");
> > > > > +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
> > > > > 4-->4\n");
> > > > > +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> > > > > +	unittest(!route_register_is_valid(4, O(6), T), "find middle
> > > > > source\n");
> > > > > +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
> > > > >    }
> > > > >      void test_ni_check_trigger_arg(void)
> > > > > 
> > > > 
> > > > Is it worth breaking the 80-column limit for this?
> > > 
> > > Deepak,
> > > 
> > > It was much nicer before.
> > > 
> > > It can be awkward to break eg a + operation at the 80 character limit.
> > > But function argument stand by themselves.
> > > 
> > > julia
> > > 
> > 
> > Hi Julia and Ian,
> > I wanted to take advantage of the relaxation of 80 column limit to 100
> > columns and hence proposed combining the lines. Are you saying this is
> > allowed only in certain cases?
> > 
> > Please confirm and I will handle it accordingly.
> 
> Hi Deepak,
> 
> 80 columns is still the preferred limit.  I think the relaxation is mostly
> to avoid the need to split sub-expressions across lines in really ugly ways
> to keep within the 80 columns at the expense of readability.
> 

Thank you Ian. That sounds good. I will just send the corrected patch 1
and will scrap patch 2.

Can I just send a standalone patch as v2 instead of a patch set of
single patch?

Deepak.

> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

