X-GM-THRID: 6805826308521590784
X-Received: by 2002:aca:171a:: with SMTP id j26mr540829oii.111.1584605350040;
        Thu, 19 Mar 2020 01:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls472264oih.8.gmail; Thu, 19 Mar
 2020 01:09:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt7xBSg+krP7HXMzY9nXr3LFm0EEbMEEFQvPQmu4LD4Vb50SfaiAthk85knYNGufZCsBVAk
X-Received: by 2002:a54:4396:: with SMTP id u22mr1457009oiv.128.1584605348847;
        Thu, 19 Mar 2020 01:09:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584605348; cv=none;
        d=google.com; s=arc-20160816;
        b=YizjAeXYMji6D4Q8hbyCi9gS0E+OTdn1KIbPEHMqNpydj7EDEwzGbzmpLspxdBAXah
         PO374HwcwzGbmewyy1Ux2DFGt7C80i+C6J8UDYJ3yfXjz91e97zYVD73WNTmJjXZlAHR
         Liwn/EY4yymQX6pCbK5nnnL/wAZe0j7AqBiZZtqgKsegSbIPmExXeCrB32MLtD+93H3p
         ClEeNzs7d4ergPEwVTVm3lOqWaek97kHSYLCey80XyJlvGvT7fDG+gZkajcb6oh+vFg9
         jbqL1GhYnSDuxMF16Vm4fwhVadOwVvdIuJfTyYKRn3w6DyjGwfl6DD+PdGqSzD70xzNr
         IaCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VVA+uDuue2pPEaiQLDSqzOBKYe6KyNeFGB9rqPDujA0=;
        b=OxT2+rgQJR9wkuaJZ7OaMUisB/FXsykT5mf1bPMSKE50jBRUXMkfrImZIevYpC1fCv
         /4S1UczLUJwEIuMoxGeGgoH6zm+NlJ2XsVUg8FtK2YK4CFAIi1wc94VbbaBHef7W4jYM
         2Pz9IrZ96fhv3MeMiggJAnYMd+rde2Lem+3/ov4oDHJkdYd3Om+siPkbum0KObpovC3O
         T+LZVm3okhzUfsA+t2053LNx9Tgo6rJr8lgp/vOxMx35Lt6YlSGtS9wZtc0xw/mrmbVF
         C5aux5BsT++Vi+VplVehWJWGEq08FAKiD9xMLzvU3GU6AnpQS/1K+Tt5I5nJP/eCVRNk
         SeQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pkzYAD3d;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c24si95166oto.4.2020.03.19.01.09.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:09:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pkzYAD3d;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 740E32072D;
	Thu, 19 Mar 2020 08:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584605347;
	bh=ZLWKdTToF9BWi2WVJ9vuVyYAqo7Xxj1ZkZdBqH7LpQE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pkzYAD3dYLLGb0W/X7iW6jSzoLNcgVFLZjka925Qdxpbn2pAIXzdI2tDuvwGAARb4
	 IRyZGth4EEIvqLt2jYTh4dN3tsln7ht95pgJd7f24W2b0Qso3YdRLvG3N/PFlOL6d8
	 1SyNBW9sPgwvSZRD3AuMA4VNzmXAvKbYAIe+b5hE=
Date: Thu, 19 Mar 2020 09:09:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: I need feedback on my posted patches
Message-ID: <20200319080905.GA3489391@kroah.com>
References: <20200319080144.GA1723@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319080144.GA1723@tulip.local>

On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> Hi,
> 
> I posted patches on Saturday. But I did not got a msg from Greg
> about they being accepted. Yesterday Greg posted that he has
> seen all outreachy patches upto now. And if we do not get reply's
> for the patches we should resend. So I resent it yesterday.

What specific patches did you submit that you did not get a response on?
I do not see any, but I might have missed some.  What is the message id
or subject lines?

thanks,

greg k-h

