X-GM-THRID: 6399943776789331968
X-Received: by 10.99.62.197 with SMTP id l188mr13179518pga.34.1490112231977;
        Tue, 21 Mar 2017 09:03:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls4447003iof.27.gmail; Tue, 21 Mar
 2017 09:03:51 -0700 (PDT)
X-Received: by 10.107.160.135 with SMTP id j129mr9359675ioe.20.1490112231181;
        Tue, 21 Mar 2017 09:03:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si3421195pfb.7.2017.03.21.09.03.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so18801208pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zhfiaHRsaw0vBJQuUys0RVVDVYuNxELFbC9mw3g5soo=;
        b=hEQ9J7LzzvFeT64a2xOzEBpZ/8o51eGoE2I85E31arGS+U/WhOkqBsqRDDOsY6W15E
         bTOTV/GFfQNmS7CeOG8vZFXI5OU48o/BILgio9gqq77pZLRnqUzcxJV/441uYpmdX1By
         uTHs53mOEY4mvHqR2cJyi06oQIJTnBM63COJGJh3bVfW+BC/wqw5CXtYSaY0bvADcDim
         3xmwqdxAIJUAyXqDAftVMfKkM3oR7q3mFRtNNZ/N5nHixArU/QkOnz6YjM/JBLtpQ5ve
         a9d6nv1dL1RQlUhs0v6xRhXOkATIASVDBngGkfDkDEjQGP/pVSVBSMun6OCA+fN1faej
         Clig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zhfiaHRsaw0vBJQuUys0RVVDVYuNxELFbC9mw3g5soo=;
        b=fZNHy5PbbEkNx/5GDsGjICkcq93LboLELESzF1MzlR29PAKnHyGzKS1p41o3dozhZr
         P0unGsvdfOomDTx5igpdUTcaCOoGMMVfwJqM/Xm7Acp/olmAu1InPknqvOt8RuJtGJ7f
         9e/H1vZMRVFEOZrCB8MJ7olvwY+JG5qQV0+iYseLUW9EtLsjHGFNmio/IHgf93r4Wpcz
         YkaTJ1mqwdMHP/OLc6x9EFMm3EYHiuAZs4xEKW9jXWBUEanJMCOWWa1SkEdoxNvhKxJs
         qxEupp8y5MihVqSKWMxQzlNI6JBkV4EsnZ77IfASl2VmUU9qvoroq3ks/qe5GYLffd10
         LYOA==
X-Gm-Message-State: AFeK/H33ZDNgWTr4gsAlHviQhBlccGGlPAcGU1i0GPxwv69wMoiX90hOVfDP+6JpNYxNzA==
X-Received: by 10.99.106.5 with SMTP id f5mr37656100pgc.110.1490112230964;
        Tue, 21 Mar 2017 09:03:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id b10sm6678695pga.39.2017.03.21.09.03.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 09:03:50 -0700 (PDT)
Date: Tue, 21 Mar 2017 09:03:49 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: jic23@kernel.org, knaack.h@gmx.de, outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com, lars@metafoo.de,
	gregkh@linuxfoundation.org, speakup@linux-speakup.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] IIO coding tasks
Message-ID: <20170321160348.GA1859@d830.WORKGROUP>
References: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 07:00:17PM +0530, Arushi Singhal wrote:
> Patchseries of IIO coding tasks

This wouldn't be a patchset.  Although they touch the same
driver, the changes are unrelated.  See more below...
> 
> Arushi Singhal (2):
>   staging: ad7759: Replace mlock with driver private lock

This one is already been submitted.  If you have a v2 for it, then v2
the original patch.

>   staging: iio: ade7759: Move header content to implementation file

This patch is done and applied already.  See the Coding Task #1 notes
in the IIO Tasks page.

alisons

> 
>  drivers/staging/iio/meter/ade7759.c   | 56 +++++++++++++++++++++++++++++++++--
>  drivers/staging/iio/meter/ade7759.h   | 53 ---------------------------------
>  2 files changed, 54 insertions(+), 57 deletions(-)
> 
> -- 
> 2.11.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321133021.6737-1-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

