X-GM-THRID: 6619077441472167936
X-Received: by 2002:a5d:4d4f:: with SMTP id a15-v6mr1136911wru.5.1541161544544;
        Fri, 02 Nov 2018 05:25:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f40c:: with SMTP id z12-v6ls475690wma.6.canary-gmail;
 Fri, 02 Nov 2018 05:25:43 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fUzWR9ZfuW28KkPX42t525eiyGPp8L/VOM8X1IV3+7j9susxCH1XlbcUsRPUo+pBgBf9MG
X-Received: by 2002:a1c:7305:: with SMTP id d5-v6mr76118wmb.1.1541161543519;
        Fri, 02 Nov 2018 05:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541161543; cv=pass;
        d=google.com; s=arc-20160816;
        b=agxE/6uKVZnE6AyPxeNpYDbrmAwZDJEf+HiGko/BiuMf6hqSfunJEtMMeYfhd/TLkd
         MIYsDwBcg5Tg9ezFszPKis//sr8YKf5sb6K4fJjjeY/PCdKHOOJw6jg3yJ+1P1DRyKlV
         J+5DbpJWH0MdwmkAvCuA/55Nj8fLZAZQV16kXTnSPJTOEDSjRuEr1gAbbx1uyor4HnXm
         PSPhh2oW9Iav5BzyBvLHk21dwc69LyIyFmcm5LCuMSsEmgReql9YaUSY5/2NTIn5OaWX
         BrHfIU+ppozcihjyWS9KXztcGobDHOSAj1pun+twWgyCudPwk52vQXM8XwVxwIbhGlb5
         rdmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f2iqEnDUW4gL3VCCpOzGMGr5YssZyqsuMabRrLcpfYA=;
        b=Pn0gGZPVae9S++6NO0ES0051G7QBQlZ4q+Nj34AOO08IZd4l+RXg+XKQS3NnPgGE9Z
         gFYoN8NQ5zUeUTu0EphBGz6R89LuRPJ47FPSPeboIfOdrlqBS5htQdT7vw/Rak8IiCL4
         BnODfvUztLg+h6ertYp4SinPLftuqLTvYLAGBT0VEpnY4xxPTLOaITrzXdanpueIQHsJ
         tZ3aWXCY2xpXoXA/ygKJK5ySABZ2Z/rPc+NRpJS0r93wmYdtVhCurNmWaRZCPK0y5YCD
         eFa/tUi/BAGhK+k7kzTDSJIxZxQAVbM667S59Qh0UTeAONBNqDCAZyJnRMPp6HXtMKZj
         7vGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=X0gkqizT;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 191-v6si48599wmv.0.2018.11.02.05.25.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=X0gkqizT;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541161541; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Xzv/JfrqRzKU1IMX5E0sTJl8fCx0NkcF2iWRfyqWdMD+O4YCEj/vcNAs77MQu8j6VvvoQ1CfTLUxebpH/hRQOq9l1RUN9Jpj7NxKtK/D0twFiVSfcvqje21LM7QndXIt3wbrm6izSVC6rcgnmVxMpyHIVJxXXr8pL4v3BYOt+00=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541161541; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=f2iqEnDUW4gL3VCCpOzGMGr5YssZyqsuMabRrLcpfYA=; 
	b=bTWwav6Y8wT6eV+xoe1WAwWtAyUc6BEfYKekuSXlTsSBUsvZTaWCxe2IjxGd68Uv6LhKkL47erXkA3GwitFDm9QYq9xyS4LjLl6zhSC/0ZnpbCctcYLyWfmp02hPU9x46rxPJwRgNucYm8V/CFhF8id5DnfWrxwdVEIS1B/vM1g=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541161541;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1192; bh=f2iqEnDUW4gL3VCCpOzGMGr5YssZyqsuMabRrLcpfYA=;
	b=X0gkqizTCSt1bfSVup+QYiBAMj8cdgS5nu99q1yYqtjmwPtS9gqbj0Oi8X760TAb
	aa1te0wEGEYL8p8IgdZRGR51O8AW5CRlkOnRLIVN6HZ9mvhXxNCFSczAyw3cHi6WV/g
	xs7q9OYnIwaJsfve5oSQ1i/R8ig9qLCNwOoTGkg8=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541161541023157.9977332608837; Fri, 2 Nov 2018 13:25:41 +0100 (CET)
Date: Fri, 2 Nov 2018 12:25:39 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/5] staging: greybus Match with open parentheses
Message-ID: <20181102122539.GA1372@kvasir.local>
References: <cover.1541123999.git.code@wizofe.uk>
 <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk>
 <20181102045300.GA11843@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181102045300.GA11843@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Fri, Nov 02, 2018 at 05:53:00AM +0100, Greg KH wrote:
> On Fri, Nov 02, 2018 at 02:04:49AM +0000, Ioannis Valasakis wrote:
> > Fix the arguments by open parentheses
> > Reported by checkpatch.
> > 
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> >  drivers/staging/greybus/control.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> > index 9c453e0b1b33..08a51c652a10 100644
> > --- a/drivers/staging/greybus/control.h
> > +++ b/drivers/staging/greybus/control.h
> > @@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
> >  int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
> >  int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
> >  int gb_control_disconnecting_operation(struct gb_control *control,
> > -					u16 cport_id);
> > +				       u17 cport_id);
> 
> I don't think you built this code :(
I did built it indeed but I didn't include the module on the make
menuconfig, so I had the false impression of compiling. Silly me.

Thanks gregkh for the node.

ta
ioannis
>



