X-GM-THRID: 6673122111994724352
X-Received: by 2002:a0c:94ca:: with SMTP id k10mr829152qvk.24.1553711772104;
        Wed, 27 Mar 2019 11:36:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls6115015qvc.2.gmail; Wed, 27 Mar
 2019 11:36:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQP2gjwL98DmeVN5Wh5LfgX6Ma25ibhiS8u4KxMFixME1zVP8lzvbb8y3b1rdBvS3vahw4
X-Received: by 2002:a0c:9182:: with SMTP id n2mr1711716qvn.13.1553711771418;
        Wed, 27 Mar 2019 11:36:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553711771; cv=none;
        d=google.com; s=arc-20160816;
        b=AFwglbj4kZvCWQjw8vGx+JLoQDSscgTKhpGn8hJ/vmxP5WmxvDiWSL3eMs1r6GKpsG
         3fevxBCL1c1SXTy2J8pkhBFhcXH/R9/xzOqbB+S7uXlPW7NN/UphAS4uUqIBJxqSoTeO
         dod+poLwe0OvlBAJTr8c7MVgjwo6qbFQITmTG1XLfAUx5y6Iw8J0WCcWP5d7WZuDWE1o
         +rtiEv8RAlHahnf2XUO6zvr6fC90uboZ3inWBXSZfaUzXjGAgKpDOl3fJJBzKUPJKKpn
         TexG7CV0SZ5u8D3wcYAO1Xm9EsVmK38FDFtcq/Vds2Wu58PEBVp/smLY8aggvXXgIF+4
         OoCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Hpg3gwD/leMzshdEOQLQ3Dj9GPHc08tBM6J30HHQSkI=;
        b=MVHFpuc9uidOHqaZf7BeU7rdGTA4kt9sLcUeDAosc4Zg7MvF4hWe51j44CUq6C+Mth
         J2HHl8QiG4XFR1RUtJydVGEy+bN1E42oB1lux4lp/Jjcb+b/u9VzKry+mbzO5BBzNhUJ
         MOeChuOuhzAOMbJbxUhTniI0YMo/9b+bTXPf39/hB8WfQqrx7maA98QydQ6r/IHqX714
         oSZ+nDkLMiaHrW+PbBRIDgMWxWWqMRT4nmy68abong8mcV0A4PVP/ORKiga62JEPrEjC
         Z1skaMFBiEOgZakUXC7mhSB6sVzbRZNf4+DyTCorIo6tuM6AtWxslkWKzLEEhKQykNo+
         QGAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s8+PMuA7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j35si1090606qte.4.2019.03.27.11.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 11:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s8+PMuA7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BCA6220651;
	Wed, 27 Mar 2019 18:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553711770;
	bh=d0dNj4SqTyBiqikV1BwkFwojBjJiIANmPBfv7MMB1yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s8+PMuA7tKKMSc7vAZDOj5MR57h29SYuH7QwJqAVjqpxsIhQ9r7TXYynkwtsMsT8/
	 k8pXO5nGUIqg35ZLqMR+rmUJJyAgERv8il7LXVLdJyi/Etcr9vjRpT7c0gTdmIujtX
	 ln1qum5dnAlW2CXGP5rgPO4eH3BoHFxy5wKJbiHo=
Date: Thu, 28 Mar 2019 03:36:06 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: media: davinci_vpfe: Remove unused macros
Message-ID: <20190327183606.GA9920@kroah.com>
References: <20190327172150.15319-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190327172150.15319-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 27, 2019 at 12:21:50PM -0500, Madhumitha Prabakaran wrote:
> Remove unused macros from kernel tree.

That says shat you did, but why?  What if someone wants to know this
information in the future?  Deleting unused hardware description macros
isn't always a good thing to do, as sometimes that is the only way
people can find documentation on the chips involved.

thanks,

greg k-h

