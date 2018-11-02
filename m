X-GM-THRID: 6619077441472167936
X-Received: by 2002:a5d:6112:: with SMTP id v18-v6mr1222304wrt.30.1541169240999;
        Fri, 02 Nov 2018 07:34:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c12:: with SMTP id 18-v6ls491264wmm.18.canary-gmail;
 Fri, 02 Nov 2018 07:34:00 -0700 (PDT)
X-Google-Smtp-Source: AJdET5edNgsUPhVlcYtsZcDZ6dcG4USe5LwcJnReNq39lJMaszCCDYvGtYVITAgJdciSR04tbNx6
X-Received: by 2002:a1c:f704:: with SMTP id v4-v6mr18950wmh.20.1541169240022;
        Fri, 02 Nov 2018 07:34:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541169239; cv=pass;
        d=google.com; s=arc-20160816;
        b=VdbI2d4kF+9LU2rKPCA0OJVaObPVZLlwkbeUBw+zY57GW0zsD8AouHVhlBu5c+xcvl
         qutiMxE+GSwLSZfdnJPQ7/PLhzDxncTnBZRQrKadZFicrVzPkjNWwALoXjMMHP4Ws7oX
         mOHf0k1Tazg+yOGAVQDmwiGrAAu+XKI+1NfMBNjTS7yYCCkpFn1l8Rphtp+FE7IiazCx
         Jr4n+CqeMfn71HD7nCIm32MFHr9+fosoq6SJhFcuhvWt7YkslAh7FR9k6OOccn3AiqN7
         mYzacP9iERDqfbDyPOkESXxlnEKETW1WEhpSiBWbjsCATse6u8nkSRgzAfIC58kzwuHs
         Shzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qe6r9/d36SreikXd1jwDUjDZdTat3IFG4eCVuLEqRX4=;
        b=BHxZ3QAhFxk4EJyQRVhyWhB3P5C5uA6qcpUJxgJPzqU2fvRRn+mAeXBdkncnodvVOr
         ZKWTosGkWOf2Fha59mjBUVX4xfYLWKtDnrkJQLAKpGHWm7bNyqfPDkVCC/GJrURvdoOd
         jyPzkafczI2ghIQ6/BIpb1MSCKyUT100J754pV21tf4dh6z/fKHeKpKDmkvYfBeorDDd
         Wmmc/ZIwZ8HnoKIZ7yvokAcp1Hbbpi5XCLbvPMoGFj5rNTDsi6ETC2gdv2XZ+eZQkGDT
         o1ASx0Z4ie47P7JbMXHgk3xbk2pVPFc19we5De6SP+7Vcyw5pRauYEVy6gDLKgC9KJ+g
         3j9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WfnMHgBF;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id h188-v6si870706wmg.2.2018.11.02.07.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 07:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WfnMHgBF;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541169233; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=eo4ihSD38ny/bftHZERtFoVDiyGN6os+mb9d2kzf3bzDbkFB0ZzZosCkcHC885sZOHNY3eppYBFiWScA2iJfamLd0WqnWHz0ilW/F+mp5FCkBNDKqhFvqpXdwsYG+efYFHvKIsy0jaMirsBd23Uhl2TeJ6CVbilU8i3TWYcs/ww=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541169233; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=qe6r9/d36SreikXd1jwDUjDZdTat3IFG4eCVuLEqRX4=; 
	b=gb1rtCDb5bs6LJha84DmhF61fb5a4VbkWYdcR2QWQglTN4y9lyaB79wdVSwB6VoO2oOZAVG0jy/v4C5h7s0bWUUA5HgG528Y2eruWws4YYEKVhxmApy0/WY6dFfI9Fm5d/vcCY7NC3P5w7JjHV/pIFZ6h1pt1Zxj41BNsJY0UnA=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541169233;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1944; bh=qe6r9/d36SreikXd1jwDUjDZdTat3IFG4eCVuLEqRX4=;
	b=WfnMHgBFJEVS2xoZcor5tdvXxnxQEHtw9MVMuSm8+ROSpv8EQVgDj1z/VGXxTCw2
	teXocc1AQEQhkvttpJbtNZR9ELFagG2Q9FWf1ZUKY38gnsyY8GrB8aiLlXBnmxpRThi
	/xIsTT8Myh8AETxJqTXaZNEDHSZrapaSoVaQvsYA=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154116923232710.359126237323721; Fri, 2 Nov 2018 15:33:52 +0100 (CET)
Date: Fri, 2 Nov 2018 14:33:50 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Sasha Levin <sashal@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 4/5] staging: greybus Match with
 open parentheses
Message-ID: <20181102143350.GB12871@kvasir.local>
References: <cover.1541123999.git.code@wizofe.uk>
 <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk>
 <20181102045300.GA11843@kroah.com>
 <20181102122539.GA1372@kvasir.local>
 <alpine.DEB.2.20.1811021343160.3863@hadrien>
 <20181102143114.GG194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181102143114.GG194472@sasha-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Fri, Nov 02, 2018 at 10:31:14AM -0400, Sasha Levin wrote:
> On Fri, Nov 02, 2018 at 01:43:42PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Fri, 2 Nov 2018, Ioannis Valasakis wrote:
> > 
> > > On Fri, Nov 02, 2018 at 05:53:00AM +0100, Greg KH wrote:
> > > > On Fri, Nov 02, 2018 at 02:04:49AM +0000, Ioannis Valasakis wrote:
> > > > > Fix the arguments by open parentheses
> > > > > Reported by checkpatch.
> > > > >
> > > > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > > > ---
> > > > >  drivers/staging/greybus/control.h | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> > > > > index 9c453e0b1b33..08a51c652a10 100644
> > > > > --- a/drivers/staging/greybus/control.h
> > > > > +++ b/drivers/staging/greybus/control.h
> > > > > @@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
> > > > >  int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
> > > > >  int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
> > > > >  int gb_control_disconnecting_operation(struct gb_control *control,
> > > > > -					u16 cport_id);
> > > > > +				       u17 cport_id);
> > > >
> > > > I don't think you built this code :(
> > > I did built it indeed but I didn't include the module on the make
> > > menuconfig, so I had the false impression of compiling. Silly me.
> > 
> > You can check for a .o file of the .c file you have modified.
> 
> My local workflow for this is to do a 'make allmodconfig' to enable
> pretty much everything, and then just do targetted builds of subsystems
> I touch. In this case I would do 'make drivers/staging/greybus/'.
> 
> This way you don't have to worry about enabling the right things in
> menuconfig.
> 
> --
> Thanks,
> Sasha
That is very useful, thank you! Noted.
-- 
ta
ioannis


