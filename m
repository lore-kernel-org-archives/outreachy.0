X-GM-THRID: 6802842925013139456
X-Received: by 2002:a17:90a:1b22:: with SMTP id q31mr2034906pjq.106.1583910723937;
        Wed, 11 Mar 2020 00:12:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls495851pfn.2.gmail; Wed, 11 Mar
 2020 00:12:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vufQKN7Vx9auggeWJ7UOE+oKqauBlCORoZfziFrGYQ4m1mS/bKUzoaZqxQVfLoQPUOxDXgs
X-Received: by 2002:a63:7ce:: with SMTP id 197mr1561028pgh.429.1583910722419;
        Wed, 11 Mar 2020 00:12:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583910722; cv=none;
        d=google.com; s=arc-20160816;
        b=RB3/e0EMF3bj5NxHLibHOry3BMpTb3dJ9zDvojJ1Mj0wG5AuGaoTHNOleZ+RrmJ1qW
         0VrPnwgMyD1RNS2DHCEddnF3pkKtmX5uAmVIbYovBocKpHU+Ya5N7zMRmkcyF3at+QfR
         bugiA6TcGz0bUJVGJPvDhtcawwfXd8zP49advlIfDdWlmAmzxbOOX5iP5GgmoYCSES6A
         Lmr/TkeivrSMN5GpQlqmwHrlyPCu5CX+GUcvUgIdfFAAxG4JFf0zzWtdxfp+oK3IhBim
         G3z3DVglitnOFkzC0ktVMGwBRe4wbrP/H2Y83ZVbwG2ABg7HvbZcUIjPCGiM4RhS5IVf
         6+Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PHg/uX724OnQlI8t5cw/i8d+QS9uBthnpkl2UrJC/F4=;
        b=JpDlXlcN802ly82CRWOZNU3Of3ZQflh/nw2wPUBZQurBSRDQP6OHoaWH2irDRHi1X/
         cx6+ocwrV+NdBMTxGT6rBGFZLgWOwnhFaz4eQ3MKMS/x4zK0Ld86iNpWoinoIUkVKbdQ
         dIAIZLLxKTOg6GUy52TIMpbbzmjKxLYfH7A7p7+ldiF0AY7x0dH3CSMAsckACbJQkIkn
         OxAFWiKkVkwtEOMFro6P9qnw8SzfjhBn0nJymuc6dLnTk7WQhLf3+7eIlTqNFuzuayH2
         SDxWsvwApbd2oRchHaqEWJ3/Iba2UyZP6qDbr2zDxXTtRBMo2faVnSaWo3zh1C3eyjAY
         CO5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HAsYsrjF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ng10si89479pjb.2.2020.03.11.00.12.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 00:12:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HAsYsrjF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ABDBD208E4;
	Wed, 11 Mar 2020 07:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583910722;
	bh=PHg/uX724OnQlI8t5cw/i8d+QS9uBthnpkl2UrJC/F4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HAsYsrjFC1cP7yywgHfQTy1DIq7DQ716OFHYQH/4r9GZ//Go3jLsqZrjiV6KuH16z
	 aExIVNP4WJJiX7f5mrMmQDENHD7/lsOlvTACxJRZz3oRHR2w+Ln+ba0r54LuqNuuii
	 vPkuTuVeBAH1GV1zltWuRJwFM3Qkrw184hg7GQGQ=
Date: Wed, 11 Mar 2020 08:11:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: Larry.Finger@lwfinger.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: rtl8188eu: hal: compress two
 lines into one line
Message-ID: <20200311071159.GA3618653@kroah.com>
References: <20200311070447.6909-1-payalskshirsagar1234@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311070447.6909-1-payalskshirsagar1234@gmail.com>

On Wed, Mar 11, 2020 at 12:34:47PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle, compress two lines into one line and remove unnecessary variable.

Please wrap your changelog text lines at 72 columns like your editor
suggested that you do :)

thanks,

greg k-h

