X-GM-THRID: 6808004693646639104
X-Received: by 2002:a17:90b:368e:: with SMTP id mj14mr4897068pjb.107.1585299648325;
        Fri, 27 Mar 2020 02:00:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls7031601pjb.2.gmail; Fri, 27
 Mar 2020 02:00:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtW6mwhD6QeURRRpQsfuSk19iIWlFpYA9lL3fujdQRGT9svWSReOSdMBpim3bCfaCQjlFIs
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr12377986plz.269.1585299646659;
        Fri, 27 Mar 2020 02:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585299646; cv=none;
        d=google.com; s=arc-20160816;
        b=Ys5KfNV76wnV7HwmPV4ggHHpXdTRwMxlisUoLqpMRBM+oPoDyLjXLQnBmnOV2b4Jp1
         POloRHuDC/J3yNiZNWlleI6Gu34ANb0wilGFiSy757u8Nea2VN27wI6i88LuGQ65FSJp
         loHZJ/h8nU72ItynuFfmhC61PeXHTKPcdkD/g0rHQU0gwqnIYm2InJ6Be/eDqY3DpUP3
         wehr0YA8llr8EjISSCG+pcMOxHE5ocmst8apa8RKs+fOVi4fa6wdEX6+S/zEJe03ZNoT
         IhNAE+SH4/6nb0sG26+HDVxS/hamQa2b3O+YxHIedAH3uNBqe5tUNMSOsVSv5RQSWSx3
         hi3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NHuHfnEjFbDCkfLGhdKYElZqbtd1nYisVj/razrVuVk=;
        b=ssAWoEtLtAaqo+jKqD/XvkwRix4C+GO+ag/NSX0A8VZQpYaX7OaScRZ9kwoMVi5Ds+
         P2R78sG1DQ49fE1c6Y6yyIxmPcP3dDp1mGatccCZl8J++/tXqu4Dg01hQallN/MQCgEM
         ZqOk8nwubuEEsnudEOIjJW3b1vqXPN3FWovEqgyYFRvZ8XbGyp0FB7T+JALI1ilAdr4+
         mI7IF37C9WzTcfLjgqvJ+zujLYt8+Uxq3CcNZt4QQXPtacJQqOrl6CWfjTICNH/Ug1Eb
         Wm99hHFQFK4h1Odst+SJjrHpfxHxxWjOG/1VCe8jmrsKdB1mHPxkBL0EwiZ4w0SjgKwS
         Zbew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qkon8WJT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c16si423700pgw.4.2020.03.27.02.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 02:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qkon8WJT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE0ED20723;
	Fri, 27 Mar 2020 09:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585299646;
	bh=0+vRvKNBYrwKBZdf5uT9EQ9SHyKuu75imqsriXY4HiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qkon8WJTzvhTLw9jkquKJ/0BFzvWaO94ksXpRXn04Usel6WLgO6MHCg3E4rxp3JUk
	 FQmao8E47hHRttuBmtMgNunbYQJ35e7GVbmyPykY6FXG0QsWi9KrmqCjXo7ojHnqCz
	 x8KbdAoULUPJtSxsNgAFSTyDn5Hkf4JVth8KRUmA=
Date: Fri, 27 Mar 2020 10:00:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: nramas@linux.microsoft.com, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy][PATCH v3] Staging: vt6655: Refactor switch case
 statement.
Message-ID: <20200327090043.GA1663713@kroah.com>
References: <584c79ff-3022-5b4d-e4e3-05a2a29befab@linux.microsoft.com>
 <20200327025301.74819-1-briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327025301.74819-1-briana.oursler@gmail.com>

On Thu, Mar 26, 2020 at 07:53:01PM -0700, Briana Oursler wrote:
> Pull some logic branches above switch case. Create variables to reduce
> code duplication and improve readability.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
> 
> Changes in v3:
> 	- Update grammar and meaning in patch description.
> 
> Changes in v2:
> 	- Remove ternary logic in switch case.
> 	- Introduce 'flag' bool.
> 	- Move len definition above switch case.
> 
>  drivers/staging/vt6655/rxtx.c | 128 ++++++++++++++++++----------------
>  1 file changed, 66 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 37fcc42ed000..5b45d66b7f39 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -239,11 +239,21 @@ s_uGetDataDuration(
>  )
>  {
>  	bool bLastFrag = false;
> +	bool flag = false;
>  	unsigned int uAckTime = 0, uNextPktTime = 0;
> +	unsigned int len;
>  
>  	if (uFragIdx == (uMACfragNum - 1))
>  		bLastFrag = true;
>  
> +	if (uFragIdx == (uMACfragNum - 2))
> +		len = cbLastFragmentSize;
> +	else
> +		len = cbFrameLength;
> +
> +	if (byFBOption == AUTO_FB_0)
> +		flag = true;

"flag" is horrible to try to remember what it really is for.

You already know this, because you say so in your code change:

> +			 /* flag true if (byFBOption == AUTO_FB_0) */
> +			if (flag) {

Why not just test for the == statement here?

Also, your comment is indented incorrectly, didn't checkpatch catch that
when you ran it against your patch?

> +			 /* flag true if (byFBOption == AUTO_FB_0) */
> +			if (flag) {

Same goes here as well.

I don't see why adding that new variable saved any space or logic, it
only made the code harder to follow and forced you to write the logic
out anyway, in the comment :)

thanks,

greg k-h

