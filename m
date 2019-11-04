X-GM-THRID: 6755177272483774464
X-Received: by 2002:a25:764b:: with SMTP id r72mr5639681ybc.173.1572862653938;
        Mon, 04 Nov 2019 02:17:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:990c:: with SMTP id q12ls95260ywg.2.gmail; Mon, 04 Nov
 2019 02:17:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqzcYXnleEFpkGruDjWSSSANcun0+Ko3ZrHxoFh2s+hX3Un/yKR8OBayZKBW60vf0lh9jjts
X-Received: by 2002:a81:6f04:: with SMTP id k4mr15226851ywc.293.1572862652452;
        Mon, 04 Nov 2019 02:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572862652; cv=none;
        d=google.com; s=arc-20160816;
        b=mfO8vtb4EdzYHauwFdxGr7EBBTStJXVvFHPdsFAWQSMhsFN/qM5nN6elsxBVlgCDLr
         AK6i/pg3FOnLbMGII30rZ+tbiLDfMHcjwD6abwYZ0OXDe/kFW4ibey9yRX97klxUp6VH
         //Drl9kwhUybUz2AQOSZ4vTJUzexLwd7vhIdPoX/GWbsPHuMGokemFo6W8qS3PgLvbpw
         uyNH2DdYGHkVWZR0/EQf2tj4u/1kYSYmI3kjiHwJgIoN7FNEX/LsWI/gAhP4BU3im8T3
         waJronfFJL/lm353M+l9X9gW5KUvS+6PkNlhZT8fiQsFKjnJXOsqrUz9W9tqxb4Vvjhc
         RWxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R2n3e9y5kDCY/dNzRD9r8W3GSGQdOhkPAzGMO4mdkhg=;
        b=AvTDbE7fy/gpD1WhF2pUQ9Se5hxyGrB/hH5KwWlaYPRABWdMsW2+b5Eho23IqYag1G
         YD0ZkfvEXIBwCvevaoJY2gE3LJGdhGqka5/WrA+EiuDdXt00i2RdEl2JNf3Ju/m1jz1I
         5KW4qZJD/jbio+jmGpyJ46eYdXaRB83Scvjj4GEWlzD6BhAtn4MfkT2NrX1A9W8MDoYb
         wyc+L4sJ4duceCctriD7sZ+tb0lXJwBFeivIGUFJW4zdPRShtvXMEgBtG0PABB/M2XR0
         0etW2yDkwr6BpjlCT+GNOC7qB1Ge6cp7El0P38v+L+/vPk44+KkEk2S9h6g3b32SJ1hV
         tg3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Vefgz9SS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u8si1087774ybc.2.2019.11.04.02.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 02:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Vefgz9SS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E97E12184C;
	Mon,  4 Nov 2019 10:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572862651;
	bh=i7k1gJl7siV1A2FbJxoSc7ySJYfFIL/4m3aC6n9LLig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vefgz9SSTSle+JTY+OX6CVQu2rcRqcDlLBEIcPBd4kFIeqtByUHcs4gt+IB3AsH+s
	 ztKan3HIOu1w2LMgSTORf/y6uA3zyF3cBPblaRc+TBtDLsO/dNRhx4WsJ0MdzEmw0y
	 bymcnoDswX1SETTOvIKjzlYgkSacQVDr/f6A+jFA=
Date: Mon, 4 Nov 2019 11:17:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [PATCH] staging: comedi: rewrite macro function with GNU
 extension
Message-ID: <20191104101727.GA1718484@kroah.com>
References: <20191103201740.25415-1-jbi.octave@gmail.com>
 <20191104062309.GA1119067@kroah.com>
 <alpine.LFD.2.21.1911040958270.23730@ninjahub.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.1911040958270.23730@ninjahub.org>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 10:03:07AM +0000, Jules Irenge wrote:
> 
> 
> On Mon, 4 Nov 2019, Greg KH wrote:
> 
> > On Sun, Nov 03, 2019 at 08:17:40PM +0000, Jules Irenge wrote:
> > > Rewrite macro function with GNU extension
> > > to remove a possible side-effects of MACRO argument reuse "x".
> > > Issue detected by checkpatch tool
> > > 
> > > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > > ---
> > >  drivers/staging/comedi/comedi.h | 6 ++++--
> > >  drivers/staging/wfx/queue.c     | 2 +-
> > 
> > Why are you modifying the wfx driver in a patch for the comedi code?
> > 
> > :(
> > 
> > greg k-h
> > 
> Apology, the mixing will not happen again. I will try the same patch on 
> different driver as this one has an LGPL license and seems not likely to 
> accept any GNU extension.

That doesn't matter.  The kernel is built with many different compilers,
clang and gcc are both open source compilers that can build the kernel,
and there are some closed source ones as well.  The license of the code
has nothing to do with the compiler involved :)

good luck!

greg k-h

