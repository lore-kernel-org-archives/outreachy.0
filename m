X-GM-THRID: 6802515514721566720
X-Received: by 2002:a17:902:61:: with SMTP id 88mr203085pla.313.1584473555539;
        Tue, 17 Mar 2020 12:32:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls12234123pls.6.gmail; Tue,
 17 Mar 2020 12:32:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvtUIYkaCkIfTPh2gJVi38Et3tmZEGT1f0WygBrqbXlfW34f7QLc//EwxG8P4y6KySEayvT
X-Received: by 2002:a17:90a:cf96:: with SMTP id i22mr880274pju.66.1584473554071;
        Tue, 17 Mar 2020 12:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584473554; cv=none;
        d=google.com; s=arc-20160816;
        b=j288qVx76ADqANMmuSbJao6lR7JJuxALty8QkoP3YGxyKlwZKxKbilgfl/xHrJ0qLj
         YaGuLWNWp4AfGiSsr2yw/OO67kgfJHHoLut9JT4WC5kBeblTS5LwIvLumelRov1NpffW
         ynlKdEZWY6JlB8ItFIA7owNtrpWCl9FXWPnMDMiKgUS2qfU1GdyDBqef8rDI2HEfbsoM
         bjQGYpEshZSWBjdQeBbrR3LjRVr7wnzCduiznupiVO3Q8COcjqzd6AOThNntlWyv0Kyo
         epECc/L4tYQjTBPswHxhUHkYwG5s2HqCuWj+FAlMZG79SbjpDgCtUJUjxraunumvOH4L
         MGhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HQ/zFRNlMsBPc1geUPcLswL6g1rje2Y6yKkzqjMG6fY=;
        b=POD+bjvFHSAOJrr42olpZssTXc0wImJli5r2V7wHdg8iZsFcP7QkYg2EBYnnqW6+D+
         QK4qE2iSiPbSbrFug4lgr+BDJZxxOaBlYSvkA/8C84W54qsz0whN0Yqoch5N9vEtevOk
         ZmJx6CEG1lMZCSMIcxvXV/jmAYFDI0HXRSjxHoHBpfwh+gGjt8euwtme1sYWNtdLzuYC
         F0WfsmnIz9WyxJNkiUn7s5+TZKnNk9z4rlVDnd9/ZoioY1n3V0BW1Nu5xNL3liT0akNi
         OZzgF0x0jN+9slDF9zA06d97w6up84Szq3HVHpJl55wvXPR0klq4UrFljfkmMrgGLctw
         DELA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=deeU1F74;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f29si204727pga.0.2020.03.17.12.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 12:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=deeU1F74;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 590BF20753;
	Tue, 17 Mar 2020 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584473553;
	bh=nXMjNXh1S1WOd3xTvjWOCnFnAKTorAaqG+4jXLocceY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=deeU1F74Cj97zYIhFFH6cg29kHne8RSgveL0saWGyFW6mKyDTh5SbRSXwlXRIqKFW
	 jlblJDF9KN1KWyyxguQ8rZtWEQTmQJ3U/ZnGpbapwOydKWTbnNTMeKMtg0zSxjgxv1
	 ABDXBcdvPFc1ytAC9K92SMFReLOYAXzJWFeoYSKM=
Date: Tue, 17 Mar 2020 20:32:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: DEEPAK VARMA <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200317193231.GA1566692@kroah.com>
References: <20200317140951.GA1362367@kroah.com>
 <20200317192530.GB22314@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317192530.GB22314@deeUbuntu>

On Wed, Mar 18, 2020 at 12:55:31AM +0530, DEEPAK VARMA wrote:
> > If you have not gotten an email from my patch system saying that your
> > patch was applied, consider it lost, and please rebase and resend it.
> 
> If we have a patch where the review comments by the experts were not
> implemented, but it was accepted by you, what should we do with those
> now? Would you suggest sending in a fresh patch with the comments
> implemented or a vn in continuation of the old patch?

Consider yourself lucky that I took the patch :)

You can send a follow-on patch, if the changes requested was in the
code, not the subject/changelog areas.  But as my tree is not rebased,
you can't send a "please replace my old patch with this one instead"
request as that's impossible for me to do.

thanks,

greg k-h

