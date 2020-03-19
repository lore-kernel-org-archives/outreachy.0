X-GM-THRID: 6805641341994795008
X-Received: by 2002:a25:1e8a:: with SMTP id e132mr2701520ybe.425.1584606921599;
        Thu, 19 Mar 2020 01:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls541254ybf.5.gmail; Thu, 19 Mar
 2020 01:35:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuEYk0eJgznd1N3yC0JUrIk4+HKWY/keFiaL85fHq9NasGRGP/QzOyYuFX9RPwBQo+6TDr4
X-Received: by 2002:a25:b49:: with SMTP id 70mr2966814ybl.138.1584606920187;
        Thu, 19 Mar 2020 01:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584606920; cv=none;
        d=google.com; s=arc-20160816;
        b=gPTyk4cRYQiBHFB0T7fFiZbf67/VnoWB9Ia2ogji+D6z4XvdmiB8XaGk0+GVngX+Ss
         j8IYvgURScp+YngwE3WQuNFMBGEvD4xFY1EK9W8+YJSuNbV7WkzEhD3pc1+12c9lRfgK
         yTowTGymKDIGzMMJ4lI0O3OSVjtDkbevXz2CbbWxuEBY85MhSUhmFlcbeVDA00VWhkMj
         41DdoJCt4iMZLeub9yDOx+914P8jqxoCpv9ic/vyEt5+jVgFIc/pFvc4kcmRCMV+XDY9
         D7kcyupJb3vLIse33AGA9B6r7JSMNpBvq1LfpttlsCZGrBo1rd/NJF7lB2eU3mG2wqAG
         x4tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qPres+guTyfbvzg4+ieIN7jW0wgSHgU0eJa9GkjGTUQ=;
        b=sElE0FOjhYpd/15R3luat7dVvtdr9862DVJI5VFOf1WGMm9RWE1I0lyxwKUm/MF/s+
         kA4rHVfxP6DrguyBqv77n39TKOB5Se6F34pU5oTX2ECdcLYBtBXAxBFDtHxqHEV3sB2Y
         jm6za2hjpyzDMGGgs0vdjYLCpMVsEM1myIWhA7BqcDPtDAJVWfqNQ1AHIRuzSC5QWEMU
         VQF8SJrEATBpmSUyWAQ/1AmyKq0sDn02fcDZNA6kVX0ssRdBe1xDo9JNbVxbHjPQ6D+d
         gpHaZf+iA4EgrPmo0IRem9JGsdGE6vg7U9lH2TTkjdniwrV59jtEW31pm7JyAP9Q8qCG
         /Gnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gODij/gm";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 207si53787ybe.5.2020.03.19.01.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gODij/gm";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C41AE20724;
	Thu, 19 Mar 2020 08:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584606919;
	bh=NC1jPSb9LQ03oe635JpPb9rtB8g1bcFlnhkc2ghHhBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gODij/gmCXAuDtb52Xtkgg8uww575PMlMtiLanjT4yjx1kzdc4I8DfEMZdlG3+dwh
	 eRDWzlY5dCpdvatqKEuDd1Qq48KJeDpohPHnsyxJDgPPQIcAeZzIR7Ce3olDsTYOyD
	 va50FFCpbR4BBVKnKhQFIY6KF4S1fxJ57sXAYCrI=
Date: Thu, 19 Mar 2020 09:35:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: qlge: Add a blank line after variable
 declaration.
Message-ID: <20200319083516.GA3492527@kroah.com>
References: <20200318200352.3497-1-jane.pnx9@gmail.com>
 <40b18761b15e8de56919b3afe61c7caa118f1391.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40b18761b15e8de56919b3afe61c7caa118f1391.camel@gmail.com>

On Wed, Mar 18, 2020 at 04:24:32PM -0400, Sam Muhammed wrote:
> On Wed, 2020-03-18 at 16:03 -0400, Sam Muhammed wrote:
> > Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.
> > 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > ---
> 
> duplicate :(, should i resend or revision?

I need a v2 of this please.

thanks,

greg k-h

