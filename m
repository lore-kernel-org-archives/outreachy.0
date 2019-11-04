X-GM-THRID: 6755490770490228736
X-Received: by 2002:a0c:b91f:: with SMTP id u31mr22735372qvf.190.1572886018433;
        Mon, 04 Nov 2019 08:46:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:ee02:: with SMTP id i2ls4911637qkg.8.gmail; Mon, 04 Nov
 2019 08:46:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqyPFUO26O9QeFANR4C4IJRJx/sQDZykvt4FyvQtLwKz1hVIBW/w0ulEdrk5IruPMMk9ceUd
X-Received: by 2002:a37:e10e:: with SMTP id c14mr4329564qkm.408.1572886017185;
        Mon, 04 Nov 2019 08:46:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572886017; cv=none;
        d=google.com; s=arc-20160816;
        b=qiB7GxDKi2lTAzVJpVh7FJojr/LeUmw8rkRTB/WYw4DojKgp/h7Q0VHw37mpYvmVxd
         4KdEnhURVE8pcTgduRBstWNm0IQ+Y/2eTSjiTLbttHWywPjroCmfcHuIzhM/AQ1v2QtY
         w8hRPUN7scYVQLseMQ30AHc0HJWruhEu6m/8Webc2J8Qn5pmYyWHKrfk3p7T2SXP8ve0
         L9FzJr8x6NawPOKdhoPgYe0vOJTyY0lpErDipDDsVkbgHj70o9El56TGGmJ4aNym/MIw
         dpY+ldHAvZhmtwnOFsPvXy3bhi52egO9gcvjc+im2U2T0bxKVy6zNvEXYJCHGzGsMRK9
         CE1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=a1Rkuvm+89MeQF+DEewRnwTF/OTZVy/NSHZMyBQDlqE=;
        b=Ak5cEMTCP817IZtc3i65hvp9ajz5GIu+u8V6lgq05bUbw+YzW4AUvE+JpcZrz4JEnM
         k2zcDTNCUYaKcfQ9aOhbVp3iGGa2rXUKnOd8WCG4HrH01vrWb+xpmYEcuHRw53UNdspU
         8kGhPz2D5lrC9zSKJ3k9vvFNWti/6lpqgKRExBCJuTbIUVOoo6GdwYZc9HEdPa8vVABu
         mOI28Ag+niXI53KEDR9S3KrowBknZeYOArIRwJSkBWVWKR/+JwCh2RZ0SJppH/68VorH
         l2jDY0GWxD7XK8KZ5emB2tQyT+YYrq+n3XVJcprPmyWKdY9j3W6KBOd27H7ZBD0CgsqK
         2kzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dTD9s701;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t187si949445qkd.0.2019.11.04.08.46.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:46:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dTD9s701;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A96272084D;
	Mon,  4 Nov 2019 16:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572886016;
	bh=sYcDK73tFZoyMTCPD69+QGP17PeoJr16f74gTN3ha84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dTD9s701LlwjQ8YBFR3DBhM4ey5e2rsTqm6aoJbfy/OYQx1JtWJ1SjnK0yLjgK13C
	 VXHASmfPa5h01/kOkHPwg3CfoqDTFWTzeSWxo9uC9ZDNPUbiEPlrDz3t4R/JtBa+70
	 p3Wevx6vzSuIat6qt3sRrEvlwllcQt7PjE46P99A=
Date: Mon, 4 Nov 2019 17:46:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, abbotti@mev.co.uk
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
Message-ID: <20191104164653.GA2281588@kroah.com>
References: <20191104163331.68173-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191104163331.68173-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 04:33:31PM +0000, Jules Irenge wrote:
> Rewrite macro function with the GNU extension typeof
> to remove a possible side-effects of MACRO argument reuse "x".
>  - Problem could rise if arguments have different types
> and different use though.

You can not just get away with a potential problem by documenting it :)

You might have just broken this.  Why are you trying to "fix" something
that is not broken?

What is wrong with the code as-is?

thanks,

greg k-h

