X-GM-THRID: 6619077441472167936
X-Received: by 2002:a9d:490e:: with SMTP id e14mr8589123otf.43.1541169084861;
        Fri, 02 Nov 2018 07:31:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:abc8:: with SMTP id u191-v6ls7416775oie.11.gmail; Fri,
 02 Nov 2018 07:31:23 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cDjEU8DuND8keJI9+KevMk4dFUrqZP5Cjj27XbCzeneQ4MSvVdnqaO5eJKS+Og4GLUi9FB
X-Received: by 2002:aca:580a:: with SMTP id m10-v6mr8765063oib.19.1541169083895;
        Fri, 02 Nov 2018 07:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541169083; cv=none;
        d=google.com; s=arc-20160816;
        b=01h6qidsfnTCM/d62YfIYez/DaJEycalX4B4sg+32RBhoAwXRBAniIWHKASuo8Ompe
         zWebWUnLKDWDiGEEyK9i5//6Bdrg55kiuJAW02nIaYHFO13GhADtRubV+o7v8lAVZ2H6
         IHdm7cT8fXbzxZEHfcNF14Z4gihTQ903LXcDrMIIq4BdzhUN7sIBzfOcju9D7E/AKN6M
         5w3bbpwUIzFh31CKmr9BgZYuG2xww+0EXpwZ7BdePCnGi0b1qHKcHeIjYWUPhxNISV4S
         eXN0s52tT+RGv9/lI5mMJ94LTTMp3M+YiQO83XERdmuoyK863wQrNWoOXlACP0ClpVwg
         hnPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XIn4TMIPhuK73lL1+TFILSpW9hbp2daPoP4kO37KJ0k=;
        b=j7jOQ3PpNAhRH8tP9nfSUm4WH6dGz2pLwjarvg2yK2IT9qwULWm6WSPRHUly8YuUFa
         mNbKlO+WjPOg0v+L4SH7jNofRGNrw0wI58JMKxUUwi4kuRI/xIUrnyNcD7KCjp7fnNL5
         MSKswdKlcAw8FMyQh1yDFtxMf5MAIosaC0Xl9bUgm1SJTqBKCqEH9ESykdYEnNusEWSd
         NnIfmA9budAQkwn0hlF7eZFpgEs55cyUyLn0P5FH8sCbwEpPvpWLidoIlo3zoF+EZHid
         Jfn9RTf5VysSGM2cAg29bdd4yaZXV5yHRjMtCHlw4s9Hi5GeKTL5Tqjxl771h3p4xBuw
         0cPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Tn16vLNH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 25-v6si930100oij.4.2018.11.02.07.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 07:31:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Tn16vLNH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E03F2081F;
	Fri,  2 Nov 2018 14:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541169083;
	bh=bxxZ4gnZHXokbEcCztEQeBEjiZFR2YzgG8e9QG36/HY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tn16vLNHAyAFKqT/ERWdjjyCdZ2bPG/6UAg4B6QhYXfH4CX7Cx1DxclzL+SIjH8In
	 +ywuqhelxGY7VZ3DuoH+ZNGscKOSSJcXZVxQOyFFTqSg8I9L7zeqmW+pOE47phH7KM
	 lE748Ejs/TN0N+ZFjiLoVCei8yoaG2JT9C2UjI1Y=
Date: Fri, 2 Nov 2018 10:31:14 -0400
From: Sasha Levin <sashal@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ioannis Valasakis <code@wizofe.uk>,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 4/5] staging: greybus Match with
 open parentheses
Message-ID: <20181102143114.GG194472@sasha-vm>
References: <cover.1541123999.git.code@wizofe.uk>
 <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk>
 <20181102045300.GA11843@kroah.com>
 <20181102122539.GA1372@kvasir.local>
 <alpine.DEB.2.20.1811021343160.3863@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1811021343160.3863@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Nov 02, 2018 at 01:43:42PM +0100, Julia Lawall wrote:
>
>
>On Fri, 2 Nov 2018, Ioannis Valasakis wrote:
>
>> On Fri, Nov 02, 2018 at 05:53:00AM +0100, Greg KH wrote:
>> > On Fri, Nov 02, 2018 at 02:04:49AM +0000, Ioannis Valasakis wrote:
>> > > Fix the arguments by open parentheses
>> > > Reported by checkpatch.
>> > >
>> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
>> > > ---
>> > >  drivers/staging/greybus/control.h | 2 +-
>> > >  1 file changed, 1 insertion(+), 1 deletion(-)
>> > >
>> > > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
>> > > index 9c453e0b1b33..08a51c652a10 100644
>> > > --- a/drivers/staging/greybus/control.h
>> > > +++ b/drivers/staging/greybus/control.h
>> > > @@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
>> > >  int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
>> > >  int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
>> > >  int gb_control_disconnecting_operation(struct gb_control *control,
>> > > -					u16 cport_id);
>> > > +				       u17 cport_id);
>> >
>> > I don't think you built this code :(
>> I did built it indeed but I didn't include the module on the make
>> menuconfig, so I had the false impression of compiling. Silly me.
>
>You can check for a .o file of the .c file you have modified.

My local workflow for this is to do a 'make allmodconfig' to enable
pretty much everything, and then just do targetted builds of subsystems
I touch. In this case I would do 'make drivers/staging/greybus/'.

This way you don't have to worry about enabling the right things in
menuconfig.

--
Thanks,
Sasha

