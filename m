X-GM-THRID: 6805840770446131200
X-Received: by 2002:a25:7208:: with SMTP id n8mr3139781ybc.234.1584608520000;
        Thu, 19 Mar 2020 02:02:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7644:: with SMTP id r65ls571621ybc.1.gmail; Thu, 19 Mar
 2020 02:01:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu3X6jdH2lCISrEcwDrPZ5rj4ocx1eiCls7FEZY7aiwYkeVsAoXAHCXWAkNJItK6gPlsNsN
X-Received: by 2002:a25:3187:: with SMTP id x129mr2933322ybx.397.1584608517524;
        Thu, 19 Mar 2020 02:01:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608517; cv=none;
        d=google.com; s=arc-20160816;
        b=m8qalHrb7bZeGI6zmJaPjSHmxwSATT1MUVd/Pll+aIM+m26hJuUHsZPcLPvN5vmFjf
         VeqiTzStqYu/EOicmFY5V3TNg2cK42X8yn/PWAmAszbb4w3ltv7Nt1GHDab36cZ35eEk
         Av2j73k96YUpJZEePAAarmERm6St3VdeTGeVJfvNGhFMqO/eh1eNh4/FhfkjcWY7shSI
         3/dfTMnBMI+x3TC6qx45vrX4sgldfPqzK/CX6doS/7FBPylMmQ1MNkHj71wQcjwVqzkb
         akfuk8ypaZxJ0ynAAKOcAoasURNyQh3z7S1A2bWHzq9yjDlDnjoICIXUPDSBIDLRUEl9
         aU6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WgIZns/idK67o/vmYPpSjVpeyTbQA2MYIf+SXWDcK7U=;
        b=TGye4enalOpSm87Aud1QWXLzoR4zr+WJcycQpXAYuE+vIQrf+3BkO2aNTtuWL5hB5v
         ff0n6xYuS1aoizLaCANLsXGrTnB98kqlsk5qd4hFU3EpSNiOXyuYAy9wJClX+f/vHIq8
         +1ddAHhc2WUhlbSSjAvRV64tATwMfcgd91LFqFIjuUK46Qi7kZwGYmaZKMq5NLRO28cN
         Q+BEuGS+HJO3RD5pdqrUBMF9MufRyj8Gl2oAlYx1RTwFr77Sugy4J1rJ+AyBqRZ3IjyJ
         dTfk8DbpMu+/myrzL/rtQvZgWtJNhBBdCNMmyAjRkJCHm58aCE0wQCyPTdqrEsm0dgJW
         h7/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nIV43y4b;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si54158ybt.2.2020.03.19.02.01.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 02:01:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nIV43y4b;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 281312051A;
	Thu, 19 Mar 2020 09:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584608516;
	bh=ALMyxdLiw+qXKnhMFljSnaDN5Fwps8d9J7freIjvu1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nIV43y4bWkdGbyDqJj37nWjR+aHbRoyi6/gXnOSbeU9AA0+h5TIq//yeRxmxtH4dm
	 irDpsklX5VHybQYhunBAZsKMElitOOqHuZDfqtaqekpL99wUrX2tcxT5YOwcdW9NMu
	 5LSxSTq3cAvhB5H4bZfgPSpW5LvhthYzV7Offv4o=
Date: Thu, 19 Mar 2020 10:01:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	David Kershner <david.kershner@unisys.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: unisys: Documentation:
 Correct a long line in doc
Message-ID: <20200319090154.GB3495501@kroah.com>
References: <20200319085751.GA1928@tulip.local>
 <alpine.DEB.2.21.2003190958530.3010@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003190958530.3010@hadrien>

On Thu, Mar 19, 2020 at 09:59:14AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, R Veera Kumar wrote:
> 
> > Correct a long line in documentation to respect the
> > 80 character line limit.
> > Found using checkpatch.pl.
> 
> I have received this patch.

I got it too.

