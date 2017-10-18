X-GM-THRID: 6473410411176656896
X-Received: by 10.25.35.87 with SMTP id j84mr466093lfj.23.1508333038366;
        Wed, 18 Oct 2017 06:23:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.99.220 with SMTP id s89ls619926lje.14.gmail; Wed, 18 Oct
 2017 06:23:57 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RTNsnRshEbrFyFoy+UnV51FdOOpgsalIISp4jdSlPigpia+s9zlbEgO0NHM5nsbkL8Fvya
X-Received: by 10.46.65.140 with SMTP id d12mr205072ljf.4.1508333037062;
        Wed, 18 Oct 2017 06:23:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508333037; cv=none;
        d=google.com; s=arc-20160816;
        b=DAU+0QA2kMrEZj3FyTowbfl3t2IPMzIfzzUsUmzlpUT5TDhjggvqW+n7EYwG6qAcd4
         sSZ5mRWzcBA9h8v2V6niqOCq7nnElb8mVLU+CV/sE1YgmhMgc7CJbDzLEjwKtcQg0eBb
         Y6oGP1rCFHRYi/++vf2GkwyrqEQlEov2kh5xoOPAkCdchQc7Kfr8LnCPE215W0T/EEr8
         GppM/qJ1tm64SSzo0M9cALucEWN3zxc416b6Sq6XKzmkpe+WLnnSPh1D78qoACMsirs2
         5hDKeLU1rawGAj8bGPAUaUro8x6RtCTVLOaUd7bJ9xPzN5F5CNyWgnLViztTC9VXBo2m
         F0OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=FQfhtoRrXQoMX0/M+KepVLYLnVvSyHneniyO8B4Kn88=;
        b=bPShd0JzvVwddjIYqY1wsdJMWbGH9QKE7zA4gK7Mn4aFmOkEtEiYxW5nY8hPSA7QwM
         7rPD2I6fYd89u56raKi1jheI5m4JrayB14FkzycRiZ7tBgldQ68qEGkmqJTgzqt4TOGW
         8iujM/UH2Kt9qDbIuiataULtFMeoHSVqMx4HbjUrvVh0UwrOxjMwc9heR/pNMPHQPn8L
         pu+6B3Htc9CD2vgj2m6fcTC0sfzpDbJaYMMxmXC6DUGjnEDDDYd3xUCO352NaYBJw6iY
         YzfrXK4jrHKnGnNzy7okPDQrHpODhOYFw99mfs+aDr42ts1Pf8E6bhhWAXPr14eHPD5v
         wJuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r17si616919ljb.2.2017.10.18.06.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 06:23:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 048FAB78;
	Wed, 18 Oct 2017 13:23:54 +0000 (UTC)
Date: Wed, 18 Oct 2017 15:24:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH v3 03/10] staging: lustre: fix macro definitions warnings
Message-ID: <20171018132403.GA2934@kroah.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
 <1508328870-9416-4-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1508328870-9416-4-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Wed, Oct 18, 2017 at 05:44:23PM +0530, Aastha Gupta wrote:
> This patch fixes the checkpatch.pl warnings related to macro
> definitions.
> 1. macros with complex values should be enclosed in parentheses.
> 2. macros with multiple lines should be enclosed in do-while block.
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

This is the patch that breaks the build, again, always test it before
sending it out.

Here is just one error from the build with this patch enabled, there
were lots and lots of others:

In file included from ./drivers/staging/lustre/lustre/include/lustre_net.h:63:0,
                 from ./drivers/staging/lustre/lustre/include/obd_class.h:37,
                 from drivers/staging/lustre/lustre/osc/osc_dev.c:40:
./drivers/staging/lustre/lustre/include/lu_object.h:1226:1: error: expected identifier or ‘(’ before ‘do’
 do {      \
 ^
drivers/staging/lustre/lustre/osc/osc_dev.c:159:1: note: in expansion of macro ‘LU_TYPE_INIT_FINI’
 LU_TYPE_INIT_FINI(osc, &osc_key, &osc_session_key);
 ^~~~~~~~~~~~~~~~~
./drivers/staging/lustre/lustre/include/lu_object.h:1231:3: error: expected identifier or ‘(’ before ‘while’
 } while (0)
   ^
drivers/staging/lustre/lustre/osc/osc_dev.c:159:1: note: in expansion of macro ‘LU_TYPE_INIT_FINI’
 LU_TYPE_INIT_FINI(osc, &osc_key, &osc_session_key);
 ^~~~~~~~~~~~~~~~~

I've applied the first 2 patches in this series, so please fix and rebase and
resend the rest.

thanks,

greg k-h

