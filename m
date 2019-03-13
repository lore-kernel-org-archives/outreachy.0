X-GM-THRID: 6667588004037525504
X-Received: by 2002:aa7:8ad7:: with SMTP id b23mr16628940pfd.142.1552486810697;
        Wed, 13 Mar 2019 07:20:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls1000813pfv.7.gmail; Wed, 13 Mar
 2019 07:20:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxDlf+I6/W67vq9Q5Qlt5/l2KlhCz2/xVUBua397UQ/ejFTD8a2lqiQ+o6r3Iu7Cqq3W/yt
X-Received: by 2002:aa7:8649:: with SMTP id a9mr2928174pfo.134.1552486809766;
        Wed, 13 Mar 2019 07:20:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552486809; cv=none;
        d=google.com; s=arc-20160816;
        b=fg1ZbRBgPYEFYOZicVrOwmOodfRNmYZiiPFbPBWDYPxsxPz5vDdmpA6lBSnvCYtXOA
         H633RUrBDaAyasz7AlYYW5hp5lDVTJjXcZwjC+gvocLEB4q/u4HRTP6xOjwPFgvV0oJz
         GnsDg4S6yAvVmPhsvu6oJQUCLyIpE2lOdXK36ODvL9i3CI8E8VBU/of0U7k2JPMiYvtu
         QduEd9el7f4fCmGLmhwlP6xFrb2LqqL0zx5SA10a2kFobGyI8+M+RQqY08V1vReBRyUD
         FR7Fu8pfPfiu/4pOB8BGvnKWHizSV7mg9PftINl0AHYJrh4lXBkEkVaxVtdP0bKelNpK
         qwtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/9bFtBlQHCcPed43AfqaB3QnQvuFxzPMOeuC4ld/4PU=;
        b=wK0KdHqsNx/CcXtSOM0UsR5lvGKSJf3gbOgeX06O4U39eaAUdsH2Hnqvks7O4+sMcL
         utUhW/IzbWqTmZUHqxorMzZzhfF+hWs1eLN+OytPgLUDbbNje5twL2RissKJdRgehyEY
         iBUJVJgvtsKYDRSQEuXw2vv8Xj3aqoit26Dtxso8QhCG2XW1/FBv0NTqKiQVs0W2RhCt
         TD8MHWaj68HIZpkR3YMZFRkEIFbC82UpDliZuCn1IAUKngdpmNyqAk2tTP6ykAewjaVl
         rTSVhFJ2UTiO9t4HwD1C3DFp3CajEmwI616CU3C8oeNhL9Mx2rZFx1pSd9w68kGx2nXp
         gURg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vJvG5aJj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b19si503429pls.5.2019.03.13.07.20.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 07:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vJvG5aJj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.27.65.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 634B2214AE;
	Wed, 13 Mar 2019 14:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552486809;
	bh=c66Gc+mx5rQwxJH51DfCzorlw8tCUEE0908Slxla2m4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vJvG5aJjc7Nu4dEeTt5HtpCVhkCEcwVBfHsgyeFNd12ibyZ2TtnSbwGw8VvS+dutT
	 Q0ndUUUaiH3irbgCw3RohHF/jFV1A+QYCHzO+Gvh97wvFWHe5a6cpq1v56b63MedwF
	 Mnh8s62usWJSN1IVC1OhxGA0Py9vXkw5s4jlUCJI=
Date: Wed, 13 Mar 2019 07:20:08 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <Julia.Lawall@lip6.fr>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: rtw_recv.c:
 fixed a space indentation issue
Message-ID: <20190313142008.GC5328@kroah.com>
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
 <20190312194137.GA29260@kroah.com>
 <20190312194836.GB6580@kroah.com>
 <CAO-bXGBSvngtL5dF+njH3QpLZfme6UWxNkLdS64FETSXQ+cmJg@mail.gmail.com>
 <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 13, 2019 at 08:39:04AM +0530, Sanjana Sanikommu wrote:
> Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue

Why is this line in the body of the email?  It should be the subject of
the email itself.  Using 'git send-email' should do all of that for you
automatically.

> 
> Fix a tab issue in 2 lines which removed no extra space before starting
> a line warning. This warning appeared when I compiled checkpatch.pl in
> rtw_recv.c,
> 
> Signed-off-by: Sanjana Sanikommu<sanjana99reddy99@gmail.com>

We need a space after your name and before the '<' character.

> 
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
> b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 1d83affc08ce..cc6f1a23da01 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80,
> 0xf3};
> 
>  /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
>  static u8 rtw_bridge_tunnel_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
> +        0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
>  };

All tabs were turned into spaces by your email client, making this patch
impossible to apply.  Also it was line-wrapped :(

You can not cut-paste a patch into an email, please use 'git send-email'
to send a patch out properly.

thanks,

greg k-h

