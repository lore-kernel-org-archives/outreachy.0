X-GM-THRID: 6620120308618625024
X-Received: by 2002:adf:fa82:: with SMTP id h2-v6mr1473496wrr.18.1541426351737;
        Mon, 05 Nov 2018 05:59:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8d95:: with SMTP id p143-v6ls1263537wmd.3.canary-gmail;
 Mon, 05 Nov 2018 05:59:10 -0800 (PST)
X-Google-Smtp-Source: AJdET5fjbnh+ekpCiTOLcvcxWR1eiab9x+SiyqkjTkmU/v/jEivTXwsVkVfcTDi26Sv1bRadOKBE
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr828702wma.12.1541426350869;
        Mon, 05 Nov 2018 05:59:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541426350; cv=pass;
        d=google.com; s=arc-20160816;
        b=ac6482oM3YRMphw4FVUYhADZJ+NBhXitmXjeCmIA7ifpdZPsFHw9uqcV0iiYlpsekI
         k+IKQlAg2yE7eBNPO3o8TZC8NuWxgDt/1EIGONtEOcbllTIIm7+IObcJJRPnxCQsQWjV
         jXE6m7WmHBxdgj7GMS2JTACR/fq8vAwVZFPH700C5idj1lXhhnvrSVZtiIyekhI4KEWV
         0q2TsnaKdfw+zPOFaZMJmM6X2M1hgI88Al4GzXXuU0WYa3/qzSJMCPPYrXNIwovWmPJ5
         28OKmJlgpwD7XsYAafQwJdOvvT+MvwGUquoP/rHhv7ECwrA7wLkw4GKjt/9jZGSAWbAH
         PVbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=d8veCmBEc5fRSj1RdszW2zxsGpe09PCoDtIjndAeWWg=;
        b=ypWMVBeU7iUoFkP+4Hnh1APiziT6zC4isZIvBNt2giHSI3zQgdeEEIh0PMUYEHclGV
         iXyosno5rXksGrUlrYiJliZ5Qm1sIo6Pqs+Q12rSVbOQtHCjk6UfPTRMTiN2+fB2a6jU
         XUF+/C5ehHMaYH3cO9DgSVClaRc1Kmybs6oBV235Y32bDW/WrkxfZu2d4jaaH09YHhoC
         /irALYbmHlGk/lJbShX2vgXYIMxzTQafuTrBZG+oc563VRWzKzhG9L/xZirAhEIu7smb
         1l7qQX1QOJsGdizGSme4BulO3/Av2e5t0YJi+UTGvZ3KJCgxpxP9YZFPz11JcQ6rYbJh
         a7UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=VwALzV42;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l15-v6si271798wmc.4.2018.11.05.05.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:59:10 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=VwALzV42;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541426348; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=dtQ5oIE9WoHu7Y1wK/FJlUlWUpUpbKtf6555YNGr4cWN7wlW9ZvtI5PJyC37oeJ0KC/Eze4l0advdLe3Rtumsj/AVaVoW4aXawsMQsmJ9gQH3PR4KoDPO1UCC/eaQw0g+gVVu5N9ffdrCgAPrQKN1e9yQwxgXYtht/H1DMx5Ong=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541426348; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=d8veCmBEc5fRSj1RdszW2zxsGpe09PCoDtIjndAeWWg=; 
	b=GAX6i/JsD3GxvQ37zeckg+lXsqn89wlrzdGGrnHEE/Mk+x6XtbZ8/cKSFpuS2oim/ZmixmSYwUS+3McdpD0A3iLYH6qUHj6x3YqlmTU9YQWAhVLEsMi6l4fJfVBL8XMixcZOQmv56auRx1LX9Fhnoi4JdpNawUX0rjOXrNyu2ik=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541426348;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=604; bh=d8veCmBEc5fRSj1RdszW2zxsGpe09PCoDtIjndAeWWg=;
	b=VwALzV42lyfjaT3Zh5CCFvzb8ncx28yTmdcxL2I/DcONgLy5jHlHxis5LK1MFtsp
	ms5Pnsj8iC4p9twShWZNtZT39uB9WC5mWEBPL28Myv3Spab/A4Cj4psoeEqEeX/KIu4
	1deVL4YIHY3ZHck8eqFcWACKSdhEbt9H1KUe89yk=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541426346576851.2131169089197; Mon, 5 Nov 2018 14:59:06 +0100 (CET)
Date: Mon, 5 Nov 2018 13:59:04 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: graybus: match open parentheses
Message-ID: <20181105135904.GA15852@kvasir.local>
References: <cover.1541366816.git.code@wizofe.uk>
 <03e7603e693aaf17879365814b2be3e5b9765eba.1541366816.git.code@wizofe.uk>
 <20181105135314.GC9626@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181105135314.GC9626@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Mon, Nov 05, 2018 at 02:53:14PM +0100, Greg KH wrote:
> On Sun, Nov 04, 2018 at 09:28:06PM +0000, Ioannis Valasakis wrote:
> > Match open parentheses by indenting.
> > Reported by checkpatch.
> > 
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> >  drivers/staging/greybus/es2.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Ah, this is the 2/2 patch, it didn't show up in my searching as you
> mispelled "greybus" on the Subject: line :(
Oh, I am sorry about this! Do you still need the whole series of greybus
to be send as a patchset? thanks 

ioannis
> 


