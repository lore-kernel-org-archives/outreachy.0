X-GM-THRID: 6949457058068430848
X-Received: by 2002:a1f:bf02:: with SMTP id p2mr6548579vkf.20.1618062954073;
        Sat, 10 Apr 2021 06:55:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac5:c2ca:: with SMTP id i10ls866791vkk.5.gmail; Sat, 10 Apr
 2021 06:55:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzhk1GNpr2hEDzFikZdrVxRdvKYuz4uavZRpKvG39XlKdkWceM7MjhEcSQfYhRsszUHWiF
X-Received: by 2002:a1f:3d57:: with SMTP id k84mr9942923vka.12.1618062953157;
        Sat, 10 Apr 2021 06:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618062953; cv=none;
        d=google.com; s=arc-20160816;
        b=QxVzOsHRgTgIGG9xs02aJug36OH1WyU2/W9mWlsjZ1039T2zna/DHoTmj9AaaHWr/w
         63aWfDsYUoOs/m0xbcuhn0ZjfmoZTLcBnFDLAtMlIjIB9zx8qvk52henoogYOYwhV89+
         N6Fu9aqAqxCzwwgFmzH7kMsgZrrrkDUQdQQkZw4MSWHaZxpiCWS75XIFUAOHxUVaibrK
         gKiX6Y/ExKn1pgubCxaBM8r0nV4jbdmIgk5U211bXGgFKRmVSxgjis8arY465cdfBAWc
         bvWEXPQTvxVAf1J2XUSIETvkXPAzjomMpA7LAK8QhVhKvYK7ji5CBIpeGcCtrhYfq75g
         S50A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YaPmc+6BKod+TSxHGfVMyU0vXSBXIdSkJ+hQBaHxPko=;
        b=EpSLPPswQMxH+daap7e/LZTW51STFVdh/KxNKQ6500CRLzvSnLvQzuElcZ66FzSZup
         hH07GjQ4LZnw37InBeGoy6S75pmDs/Y1wOMAz3VqI0MmRGAzRZ/BjgvS48yUScK8wPE2
         Wja1+9X6ZNxyrmNm69NmnPotQf2U8OMc2eyweKDomYI7gbY2FtvQF7cEvqJSO4cepS2X
         VWc0PRWw3LEr2eNzzw0jKXszIk3DAnMSp1X6HEI/ljHtbl57U5T3aD7ADD343PU1UtHt
         +rDiEutucpKeFprfCIJ23ifWpY8Tx0Xfk7pAZPOROlQuuDRVpK8usb3AvvXYuuSTZQxs
         9Rcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=SuO8zKbv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si427502vkm.1.2021.04.10.06.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=SuO8zKbv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B0E986115A;
	Sat, 10 Apr 2021 13:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618062952;
	bh=+2oaVVdSbdeETRDIulQvK38BCijkBUmD2tjAHcVSdsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SuO8zKbvO6RmTwaHb0OVkUNRTEQSLajmyzw7ginW5ncqdCFJnCduejDHqprdlDtoC
	 HGDMmSwWpnWrrHi8QZIa2lqxCvXGF/DX4b1YtyuABQJIaTfpQZHqqfb8VZ190JwQDs
	 TK+6OJP6gPcLizksUywX05PLggLetJaCeIe1zXAM=
Date: Sat, 10 Apr 2021 15:55:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
Message-ID: <YHGuZc2G/DVB8ZvE@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <2186059.xkuF2sVEJi@localhost.localdomain>
 <alpine.DEB.2.22.394.2104101524260.2975@hadrien>
 <3114102.qbl0ZuBMXl@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3114102.qbl0ZuBMXl@localhost.localdomain>

On Sat, Apr 10, 2021 at 03:53:38PM +0200, Fabio M. De Francesco wrote:
> On Saturday, April 10, 2021 3:24:43 PM CEST Julia Lawall wrote:
> > On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > > On Saturday, April 10, 2021 2:12:28 PM CEST Julia Lawall wrote:
> > > > On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > > > > On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > > > > > > That variable has global scope and is assigned at least in:
> > > > > > What do you mean by global scope?  None of the following look
> > > > > > like
> > > > > > references to global variables.
> > > > > > 
> > > > > > julia
> > > > > 
> > > > > I just mean that fw_current_in_ps_mode is a field of a struct in a
> > > > > .h
> > > > > file included everywhere in this driver and that the functions whom
> > > > > the following assignments belong to have not the "static" type
> > > > > modifier.
> > > > 
> > > > OK, but a field in a structure is not a variable, and this is not
> > > > what
> > > > scope means.
> > > 
> > > You're right, a field in a structure is not a variable.
> > > 
> > > > int x;
> > > > 
> > > > outside of anything is a global variable (global scope).
> > > > 
> > > > int foo() {
> > > > 
> > > >   int x;
> > > >   ...
> > > > 
> > > > }
> > > > 
> > > > Here x is a local variable.  Its scope is the body of the function.
> > > > 
> > > > int foo() {
> > > > 
> > > >   if (abc) {
> > > >   
> > > >     int x;
> > > >     ...
> > > >   
> > > >   }
> > > > 
> > > > }
> > > > 
> > > > Here x is a local variable, but its scope is only in the if branch.
> > > 
> > > And you're right again: I needed a little refresh of my knowledge of C.
> > > 
> > > I've searched again in the code for the purpose of finding out if that
> > > struct is initialized with global scope but I didn't find anything. I
> > > didn't even find any dynamic allocation within functions that returns
> > > pointers to that struct.
> > > 
> > > Therefore, according to Greg's request, I'll delete that stupid 'if'
> > > statement in the patch series v2 that I'm about to submit.
> > 
> > I'm really not clear on why the if should be deleted.
> > 
> > julia
> >
> I'm supposed to delete it because of the review made by Greg. In a couple 
> of previous messages he wrote:
> 
> "If this is only checked, how can it ever be true?  Who ever sets this 
> value?"
> 
> and then:
> 
> "Just delete the variable from the structure entirely and when it is
> used.".
> 
> However, like you, I'm not sure yet.

I don't think any of us are, try fixing up what you think is right and
resend and we can go from there :)


