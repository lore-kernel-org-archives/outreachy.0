X-GM-THRID: 6949544081527668736
X-Received: by 2002:a05:6830:2248:: with SMTP id t8mr18904141otd.211.1618125427563;
        Sun, 11 Apr 2021 00:17:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7456:: with SMTP id p22ls3250845otk.11.gmail; Sun, 11
 Apr 2021 00:17:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMGfzzs36DsLDNFGyyukZulDtpvi+rZJtZugzztF2ex/j8e4XuZ4NF+Xq1QcokhbbY4b1Q
X-Received: by 2002:a05:6830:308d:: with SMTP id f13mr11083997ots.60.1618125426968;
        Sun, 11 Apr 2021 00:17:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618125426; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXrHhOrkegdvnZ9FogRjXST2Dahq0AUMvfwnl2qU+wuHelpCLsFCtiH27llhtrLPZ1
         niuJ7xTiu+/0I4WWyGWZzNSxa52KP9EJOQzZjj22NBXsTyeyPhXQOEBH8muznM1iLcAL
         cJOqKCVEMdeVgRVr/p8t8OMNwtc6bJqEiwpftMWZ7CExIry2mhDxWSwIxs70QJ6zAnlU
         RWYZ32fhX1pw0Wc7LVhB5bJWTnQX7mWMDMxemkbLpVoHdI1F6ODMcD2SoADZc+rTyO9k
         2DnS+GU4F5QBRoS78/D3xZZhQaD8XHEN3zf292WfCa0H66KleWYRIfLpLzZquLd34+uA
         Lusw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ySDM845DKdMK4OChvc3GytyKvc15Gd2akWR/uz3xBRw=;
        b=ClxG9j/4viNoEjbdeYP5BRVkJaocl/uOiZDHpR63FrcLo6OaKlvfTYrz0r602Ih0Dv
         jgqz7wMi8FiNcaB6RG+qe7iQ8sVWg+5jasp5LOz+rSTvwGXmOWJmO7xW3+KLjpaE6YlA
         75A/p52t7WYomDHqo/vy9RfkIbpAqRi+XdXJLlvPWstbdNytJz0W7V27DX5xLzQhcCoh
         LoRxvIxHLqsiW/536fgRvgwprF7drroUZZTh81sqQVUdkx/hSySTDoj+CrcjLCL2pqkk
         lh3WIUX4w3AAgmkLR/ESM7I0pCTmCDf5ZB8evms6fhkswtNIEtRYEVxeShiSp/Rjilk/
         it0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NjDkBM97;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x38si587366otr.3.2021.04.11.00.17.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 00:17:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NjDkBM97;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 84C53600D3;
	Sun, 11 Apr 2021 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618125426;
	bh=p/UdKtXkSKul+gDd7EMlk5C+albZFshfM4t0+YC5LEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NjDkBM97UXnMXoxVuluVyo0vn8G6qIxIPAcfOcof3mnlYaMttr0Sa1H4Y1xY00MGN
	 e69OpoBma3eUgkz5Hg/XFQ6bL8LK5enMGpWgekmF2egnvD8W+UgZZfjvQujrLz+NaN
	 CPH5z7u1PIo0iXQyvaWbrl2IXm8/OaUG4AjUHgE0=
Date: Sun, 11 Apr 2021 09:17:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] staging: rtl8723bs: Change
Message-ID: <YHKib/h08kR/hsQV@kroah.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com>
 <YHKZlqFy15QC9Mzz@kroah.com>
 <3154849.IkRRYng9eG@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3154849.IkRRYng9eG@localhost.localdomain>

On Sun, Apr 11, 2021 at 09:11:43AM +0200, Fabio M. De Francesco wrote:
> On Sunday, April 11, 2021 8:39:18 AM CEST Greg KH wrote:
> > On Sat, Apr 10, 2021 at 05:00:03PM +0200, Fabio M. De Francesco wrote:
> > > Remove camelcase, correct misspelled words in comments, remove an
> > > unused
> > > variable, change the type of a variable and its use, change comparisons
> > > with 'true' in controlling expressions.
> > > 
> > > Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.
> > 
> > The subject line above is very odd :(
> >
> True. I've just read the output of git format in /tmp and noticed that the 
> line with the "subject" was broken in two different one. I think I had 
> pressed return while editing.
> 
> I'm about to send that series again with v3.
> 
> In the while I noticed you sent a note to let me know that the you have  
> added the patch titled "staging: rtl8723bs: core: Remove an unused 
> variable" to your staging git tree. 
> 
> I think this could be a potential issue because the same patch is in the 
> series that I have to send anew. I put that patch in the series because 
> yesterday you wrote that the message with subject "Outreachy patches caught 
> up on.", asking to rebase and resend.
> 
> However, I'm about to send v3 of this patchset. I have no idea whether or 
> not you will have problems in applying that. If you have problems with it, 
> please let me know.

I will, please rebase your tree against mine, which should remove the
one patch that I did apply already as you do not need to send it again.

thanks,

greg k-h

