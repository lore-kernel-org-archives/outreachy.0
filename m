X-GM-THRID: 6805856323251470336
X-Received: by 2002:ad4:57a8:: with SMTP id g8mr3031586qvx.78.1584627037558;
        Thu, 19 Mar 2020 07:10:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls1116468qtd.5.gmail; Thu, 19 Mar
 2020 07:10:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuSC5pTT+4SzL2yuWYnZxWpeVEZyFqfo/GYKO3NKzflAOiKR/VV2TUkFu6MKmmsn2p1YGeE
X-Received: by 2002:ac8:4d97:: with SMTP id a23mr3155162qtw.176.1584627034718;
        Thu, 19 Mar 2020 07:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584627034; cv=none;
        d=google.com; s=arc-20160816;
        b=yppb6Y08cTqD24fq/GKztgVCDmdlHX8ZJHp8Jtw66sIrGFvpFah6t1qySwhKU25NlX
         qBz8yCkB0gZRR/0uN50FCAb+mM3ZpyCXgbQlTOUN4TFjm/+N+8CQ991u7SEw6a8pQyVL
         5jJr0fvzaQv0Plp9v5dzRJqS3FU3e4EyfhFzH4Fzu9LWtEc3x8ql89Ihwdmd3iEL92t7
         E/dwgGwxV5jmo+KIJYOvAfsrkogcA+5Bh3Vz5dtVK0yNH4er+X01Aaq+EqoR3+digOro
         Gox15l3EHlTonC1p4x0ogHK4MU6XfYrkLlJbWEv9lJh13RND/ONVju3Jn4rYSuPJqeD0
         fakQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zCWoXaE9CSIx1Fjr1ylz1D6qB6/9bGR/F957/IacbAU=;
        b=oqL3Z3IQGSF0BHyZ3fyvm/sC6Ntp+S3Cl8UOgnb1m0CbLAXpyel/772u0wogF3F7UF
         8Kgg+Ds4e1tT8Yt1+HwvPpETQPDTu9cFcZ16wUmc3kqN7R3jWyJ/JyVE1nW8/PadZqWh
         bJMMs1VWtLn+8+7pDexQaqFz5Hpfk+o+H977w1/F+yjy37PH9dCbn5atjp/jgc5ZDkvz
         HPHJThkdk98CZQhIQigBki7jhf94H8M03ad7QCOiAeiFSi1XdofvoCDGcBnRFaxZpaEY
         euj7AH9zW8iVsjH8x1XAmIzMV7522z1dl1Nebvhm1nYNfexT0mnxSEs0qsuSoMD8oOl+
         4ezw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c45QblMY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e89si194313qtd.3.2020.03.19.07.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c45QblMY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 24F862070A;
	Thu, 19 Mar 2020 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584627033;
	bh=yKhkUWOWnbbbm9QJQ/4MYfWciCB5avXwORs6prg5UeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c45QblMYSqls0jopjnq32hcgvmMOMwuY++hGBN8iAuzqqiiZOdyjeVJoWB+qqNfjK
	 tjniqG0GBAEIxC6BSJqQHrYKrAQ7sFSFtu8ep5+TGyMS5E2q7AnNImIkWFVhFhLm/i
	 rMdQEODhzqK6QFEQ4lht61HmGupeNqVZ9eurFzCQ=
Date: Thu, 19 Mar 2020 15:10:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [RESEND PATCH] staging: rtl8723bs: hal: Correct typos and long
 line comments
Message-ID: <20200319141031.GA24885@kroah.com>
References: <20200319095807.GA3243@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319095807.GA3243@tulip.local>

On Thu, Mar 19, 2020 at 03:28:15PM +0530, R Veera Kumar wrote:
> Correct long line comments to respect 80 character line limit.
> Correct comment lines as per kernel-doc coding style.
> Correct typos in the comments.
> Misspelling found using checkpatch.pl.

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

