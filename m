X-GM-THRID: 6661078107431108608
X-Received: by 2002:a24:64a:: with SMTP id 71mr1386884itv.13.1550908462125;
        Fri, 22 Feb 2019 23:54:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:688c:: with SMTP id v134ls2403455itb.1.gmail; Fri, 22
 Feb 2019 23:54:21 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZPgFXhVG09icIFhk05np5TRDmYvkyJU8VypEn5UNbREFnh4HtuXEsV/N1zIFUPET8PBg+0
X-Received: by 2002:a24:7488:: with SMTP id o130mr1402519itc.17.1550908461602;
        Fri, 22 Feb 2019 23:54:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550908461; cv=none;
        d=google.com; s=arc-20160816;
        b=NuEyDHmR25zIrkoPfCH8OFJ0h9sqxxZOpPyhybxjavlNKrObL2s6NqkHmOzue5qIPG
         dVDQoloZrAvs5bzNQQHotCmbSGTwOJD8l7pdIcmREPVbiaHtz7Hfc9AuVTDRsAIET2Z5
         oTXn1y6aNHsaFw63G0KTByP31DK6LbF/XYs7flFRFcsRtu9voe4Jd0vpqpJjp9hFhEuB
         Un2iKdtTsDjjRkoOlc4wcmOnsU4PuPhe1yfOoHPGXQu8wk+FStGu66rqolooyE1t/WO+
         zDNvVCOgjm8nEW6OE0jRyLf4WUNOlPfActeQITHEHN/F5ctlbGDn3YjdXWaP8zt0jERp
         irGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=IRI5v4jW15boG0Dq2tcFC2++2TiFI0qWiiIWzPyeqhU=;
        b=dwD8VjoQT5E9ILO/ESmSFL88rVdrqanPoIHn5XQ3Ae/Qf7M0PrdZfSi57fEmh+Pg+E
         7NGc5TFVHGBJDTW9dNqrubf9xxyCw0emvfPoO1XWNCWKJNySOiaFqGr5xLIGulUVL/k8
         jneiKz34GhsZy7aDydLUsSLaU/N4xNHOuxQhejXePpRMA+xfsRLTSHWPqGYdJvzxqluZ
         zrkoMS3k6kzCuLjJ9qNm6rp6wg9HnmbjBAPW/GJ5//2Ms+UAfZZhd3lzs0F6F7+Mm/21
         KpiHov0NPjPhs/++k3+6LHgT3m5OpY+rw1OGQSK/AcQw4obDBpGCqmkOeYdOcAiZdolv
         c5fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=h5+jdWqv;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c191si195179itc.1.2019.02.22.23.54.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:54:21 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=h5+jdWqv;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4AAC9206A3;
	Sat, 23 Feb 2019 07:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550908460;
	bh=8ECLlXGJCS1vNCwdqcTnz37+ckBC2unYbZQW8TVahNs=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=h5+jdWqvMlTV21W2bMbCG7pfypz4uyg6vqTIhg4hRuMSvpVJPpbPCuePydToTI3wR
	 0qDhYSu9xT7iY93Vj41w+FrI8l3kdHPJZFALzlGJrXJe4jYQL53B8GcJgHi76EkSYl
	 Lx+K/ZUV2uf2J9VXED5raQo2ykOA2V7NCR8fRJfM=
Date: Sat, 23 Feb 2019 08:54:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Bhagyashri Dighole <digholebhagyashri@gmail.com>,
	Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add
 SPDX-License-Identifier tag
Message-ID: <20190223075418.GA2640@kroah.com>
References: <20190223062455.GA11432@bhagyashri-Lenovo-G570>
 <alpine.DEB.2.21.1902230819090.2612@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1902230819090.2612@hadrien>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 08:20:27AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:
> 
> > Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which solves the
> 
> Where do you get the BSD-2-clause thing from?  It seems that Broadcom has
> made their own license.

No, it really does look like BSD-2, so this looks correct.  Bhagyashri,
nice work!

But, I would like to see this happen for all of the files for this
driver at the same time, and then send a patch that removes the
boiler-plate license text, so we just end up with the copyright lines
and the SPDX lines at the top of the files.

Can you redo this patch as a patch series that does that please?

thanks,

greg k-h

