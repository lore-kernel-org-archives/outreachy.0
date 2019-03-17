X-GM-THRID: 6669000631583244288
X-Received: by 2002:aca:b355:: with SMTP id c82mr7577416oif.22.1552818002451;
        Sun, 17 Mar 2019 03:20:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls1992992oia.4.gmail; Sun, 17 Mar
 2019 03:20:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx09+rFuCISNrS43UXF/qKlcvfwIza1FtATHxiScalD8LGMxgntXRb+AaLcsQfoBizEr+2c
X-Received: by 2002:aca:4203:: with SMTP id p3mr7242195oia.36.1552818001896;
        Sun, 17 Mar 2019 03:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552818001; cv=none;
        d=google.com; s=arc-20160816;
        b=G+KW9q+gk7Z3YEZiFE3ennZ3WacrcSMUCwrXjzcaeaJs1W/VTi7xDmZaXePC/g4pqR
         VDvIj29Ql/PKcKLCmUlux56L6S3lrCpRWtQuUC8ecDoqF/BAYhUGSKllVenBlbgDW7jz
         wvTMvixR/Q45AM1j3ZFEvx+2dhUCYANIJ+zPUATLfUQSkpPsitnky0+fhK1WdQe5OlZM
         U/7zDGV70b4kZ0ypcCvY5Wa+kWqXf6BY4p+C/c+iSSYu+sSShpiJuBRlbNW/dKyyzFZQ
         yRDi625Q8d9wh5E3yptz7bTe3NDoefhGk6s0+p5OHFBVQ/9WyVfk/aW5gNvRpjgoiNo7
         AhnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=athnWsVejoYnGVd70s8ttigFqIIk5HxHhfM9g45eXYg=;
        b=aGOyL8QOGyuF8xCx6T0tarFXEUYCcHwwqcK4zInYlSEwJOCNi4pQZK40a8iCPi8xaj
         n0dfqpb4uKbUXMND4zBfEuon3NYd2EqN/4Qc6PgX0vJC3l2bDgYj8ExN7uM6DsVvPyBy
         FCmKk3Dnv0AHY6m3/wEIIWlMgBmq4WRNstYgjeMFGIErj0to0uHiScwUgOy/gTgEmYx3
         w8yLeGhe36+WDYEcp3MoD+cesgobtkp87ZJy61GwH4H/5Bh7R7U9acQcyQyotAV50YB5
         uSyJF9IfvHnPVYHjbgkUWsKeRplx3FFcJkwfEZDAXcl9F1J8MQLveqMJI/f2l5Sz+wDL
         +oFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gn/E5BRI";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t14si74445oth.5.2019.03.17.03.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gn/E5BRI";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9BE6021019;
	Sun, 17 Mar 2019 10:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552818001;
	bh=5m9zA0PJ3py28LC3bHJgwQNxT+3SZBMuPXqUpyvaQ4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gn/E5BRI93NVfklB1GCxESSji2tlaxWRBmC8zuX+8mixRSY0Oc7mdF7HjlyE3NF+e
	 XmghcFibexBNzkD2jf/RrDPI4ytZ0X8EEGSqTmq+cE3ZIQPxpwDlqaAbkienmNIcWJ
	 7vgPrlgN/3irlNNAFrkIVxY+2YcPXIZbIEvPqacs=
Date: Sun, 17 Mar 2019 11:19:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v4 2/2] Staging: mt7621-mmc: Modify the return type for
 all possible values
Message-ID: <20190317101957.GD20773@kroah.com>
References: <20190317031331.11965-1-bhanusreemahesh@gmail.com>
 <20190317031331.11965-3-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317031331.11965-3-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 08:43:31AM +0530, Bhanusree Pola wrote:
> Modify the return type of the function msdc_do_command to static int
> as the member error of the structure struct mmc_command is of type int.

This looks good, but I do not understand the subject line.  What does
"for all possible values" have to do with the change you made here?

Please fix it up to match the changelog text here.

thanks,

greg k-h

