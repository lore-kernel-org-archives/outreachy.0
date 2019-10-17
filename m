X-GM-THRID: 6748759950692974592
X-Received: by 2002:a92:9fcb:: with SMTP id z72mr3892327ilk.85.1571320746363;
        Thu, 17 Oct 2019 06:59:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:385a:: with SMTP id f87ls583231ila.14.gmail; Thu, 17 Oct
 2019 06:59:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMNtWMngOvr8+VrVbU297/PXJOU/XC8k7hgCMa4aulCFqLa8PZU8kyAUsQtiyrTZ/E+ONj
X-Received: by 2002:a92:8d1a:: with SMTP id s26mr3871276ild.146.1571320745228;
        Thu, 17 Oct 2019 06:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571320745; cv=none;
        d=google.com; s=arc-20160816;
        b=wjixel5eyzYAPNQiflVkH8ZemxygvEaNI+TWC/g3RlEii0Jjlv5KI19WdGThAh78LY
         2SuA7rMzG5CAT/SqWtcW+usHaXTNoxXAYPw4rfXkcJ5iYzQIrnW1xsnaKsPTPbxiCv4D
         TUyhVcL5Vb//Ot7aR0mBEYQfO1/NfnEe7xyVud3BKaEf6qmEGQ5nHlan2xGz4Nx9blzP
         ur4a73qlNuRMNKLWwxa29rODhPqD0zAGgG++U/sscFLXRVBUnYZTB9KqsJIbNkhult+y
         bBWqjNEMOWAsmPl/wlk+41EA/VpQuNxJ/JtFTwUT0+SJYk8AfAQR8wpfroPs6FG2TnC+
         R4Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pCWgz5NAVDHzE70HJzpzQdjXfFtBJJbLxvCMGQQJEIM=;
        b=FfeGPHL+k4skQqe7uyxJh5LXFAn9wnMP6zuFY/Ig+x729lltuxU5Kfnvc/ggQ77bcH
         XJsDyLJz+oadoSuj5FXcCzPXu9EDOQrgQmt0S6hMzN2GQ8O8jyuzzT20alKCtLrY3XDJ
         6MD6juGvF1AeSYb1scxUpNbKhzzw4RVPQVaDvcMadIftcPoDH+eVTkLylCY5iqoFrpb4
         iAOLlTntnmyBkOh+DNCjQmZu8JcJSNM0DldRGRJqtUxmClTEQRhNp2wC+/DYU88cc/J9
         P3kYU1XkgAPybogpe4QWAQHj1YSr/RXk4cTrThSarN5kN/BQ0BhOOn4XjtR2qkiE8Q2M
         xiDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aRIHuPI1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h14si92839ilc.0.2019.10.17.06.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 06:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aRIHuPI1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [209.136.236.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 514052082C;
	Thu, 17 Oct 2019 13:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571320744;
	bh=x3JQmpHWsrXyMjTm18ouHMPvN0w37bNxBmYY3fWYb8Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aRIHuPI13iDDwfhwMDWob1qS4StMZt+3dAa3NiKu4kwPVJepHRBCYoHz6ntdqcLNl
	 Er+xzu95Xp13PP4VlFE78ZRZuleDcRnRe93jBhX3sy4XTbdEa8jCA+kWwENhXCH6TC
	 gjDz2FCwmPHsZuQOeRll2Ov+2FarAmE2E6TdGIUQ=
Date: Thu, 17 Oct 2019 06:59:03 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: vc04_services: fix warnings of space
 required between operator
Message-ID: <20191017135903.GB1075080@kroah.com>
References: <20191017131457.13102-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017131457.13102-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 17, 2019 at 02:14:57PM +0100, Jules Irenge wrote:
> Fix warnings of space required between operator and variables.
> Issue detected by checkpatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchi/vchi.h     | 8 ++++----
>  drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)

Why is this a "RESEND"?  Describe below the --- line why you are
resending it, otherwise we have no idea what is going on.  Please fix
up.

thanks,

greg k-h

