X-GM-THRID: 6620100063939002368
X-Received: by 2002:aca:6cc4:: with SMTP id h187-v6mr15456397oic.15.1541362700088;
        Sun, 04 Nov 2018 12:18:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3d88:: with SMTP id k130-v6ls4885759oia.2.gmail; Sun, 04
 Nov 2018 12:18:19 -0800 (PST)
X-Google-Smtp-Source: AJdET5ddq+Ukg6al6FSqjTqrZY8P51DATj27KzzxyLDl4p17tQo0l9W8lTyx9GkQ1cEew8gKZ+pA
X-Received: by 2002:aca:6815:: with SMTP id d21-v6mr5245101oic.21.1541362699307;
        Sun, 04 Nov 2018 12:18:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541362699; cv=pass;
        d=google.com; s=arc-20160816;
        b=exTTeqx0EjkQ1qSB0T2Tcjcx5BgtxjvOkITGRld7pP93r7P9D/xfZyYBQSI3ulH0r4
         RawUWnVittKQXrY+mlCJl8uHDqgJZi3PELVOADS7W9p/y4llfB3boQ4ysE4ikKp+rJ31
         DN+7oWTh+oq4SKETNR1IJGzGunxmRF8lhts26/S/67hWWwE0Vv9TEAdvmxoT6MiZpDdK
         uAzWOKEL3atgGcOKKqKU3YeQX6oJFcT+f56DJtBqYTn5mlSbOJbDCSmcf0B3yT0sb/kG
         2mdPJghu39N3ZzuGaFD7YwLSVZi3nAsrgbLw8aza5MzqUXy1jS9LbzQ2B+pqLud42NPe
         s64w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+Cc1dCxAWLROfLN/roMrSoQdl7CiYcufdOlz9OdApc8=;
        b=zYudfpy8Lca4yo96DNg1HBvJ+D72o+J8yu4D54FNRPPT29QmIOCVwM7btHhGMaijaR
         prrQ5+apk8XueCKjpPe12o8v627ioQhh3c6rRvyKpXCAybQC/blpF+dyx0VCpNh9PTd6
         I3Sonxalm7IvMoZxyvgwtVNHZRvEbRqWtAvBLREmDs6z48H0VtiayL7zl1U5AzikxVrb
         E6Oy1bzfdJUK6g3v2Vr0s5aQ8T1iXujK7N/OCshJ8I7mjYDvw7M5c26wbDcH3TZVxzIf
         u5Yc7C18T0wSxdgzu1NNEklQkf5mB7iV3n61u3KkT7Ma1i3NxHOLeRP889pGExNY+NSq
         hv6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=efN0NlvD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z84-v6si543891oiz.3.2018.11.04.12.18.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=efN0NlvD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541362694; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Am9SVA/cowq3wX6uF7wtrWb4w8WnkjfDtWZux5hfFhtbY+D9mfod2D3ZcScZ89r2HIOEsjvh4wgbpRcfZ7iyR4CrVpzW6lRIsBh3rAJBOEPu+12DUOZ1cAZ40vY10soCU2FJSKnBgjd3T+urCqn+4ww+TIP20M5MTx8wGW1rGMo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541362694; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=+Cc1dCxAWLROfLN/roMrSoQdl7CiYcufdOlz9OdApc8=; 
	b=K/1bYKI5HmUGlCgUwoHpvGryLqem9/aMokXle0DSixL79SzLuc3EUX6oThs39suFB/zlF1oayu4yAnPrMD3dN0ILXTAMfbvUtyhN7Hez5yin2kU72+ZowrPM8RxqYQl8gF2UkpNAdzfWl3Z/eAWnftIOXmh52lAURSQPIqmjMCg=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541362694;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1286; bh=+Cc1dCxAWLROfLN/roMrSoQdl7CiYcufdOlz9OdApc8=;
	b=efN0NlvDNMSwyNcXr5jFgerV9qE/kns6dN9/h/0BEgI4bi300Gj+vak9WmBXR1Sr
	4VP5kbVPvKK2y1Q9cfikSk1ctQS2jZvj941qHycvw3WsLXeXe2tPARY0m76MlBsp994
	Xfa4rCTUpagW15RnHr/vewj1f+UDXDo9H8CrtkBI=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541362693208531.8881884533682; Sun, 4 Nov 2018 21:18:13 +0100 (CET)
Date: Sun, 4 Nov 2018 20:18:11 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
Message-ID: <20181104201811.GA26434@kvasir.local>
References: <20181104200908.GA26807@kvasir.local>
 <alpine.DEB.2.21.1811042112160.2360@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811042112160.2360@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Nov 04, 2018 at 09:14:25PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> 
> > Any idea why if I try to run coccinelle in report mode it fails? E.g.:
> > make coccicheck MODE=report M=drivers/staging/speakup/
> >
> > coccicheck failed
> > make: *** [Makefile:1650: coccicheck] Error 2
> 
> What version of Coccinelle do you have?  You can put DEBUG_FILE=cocci.err
> on the command line, which should give some more information about the
> problem.
coccinelle is in version (1.0.4.deb-3+b4). After running with the debug
file I am getting this "Fatal error: 
exception Sys_error("pool_zalloc-simple: No such file or directory")."

thanks
ioannis
> 
> julia
> 
> >
> > Thank you
> > ioannis
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104200908.GA26807%40kvasir.local.
> > For more options, visit https://groups.google.com/d/optout.
> >


