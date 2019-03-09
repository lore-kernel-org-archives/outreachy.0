X-GM-THRID: 6666118349921976320
X-Received: by 2002:a67:85c6:: with SMTP id h189mr14355539vsd.33.1552115276814;
        Fri, 08 Mar 2019 23:07:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7489:: with SMTP id p131ls2622007vsc.5.gmail; Fri, 08
 Mar 2019 23:07:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqysSECO/mfae4hbD0k5iljdbjaRs9mYa/1Bwvxh82TJ23H6SnF4xRMaa0Bxh9WUfTFqbkdv
X-Received: by 2002:a67:e10c:: with SMTP id d12mr14533137vsl.22.1552115276336;
        Fri, 08 Mar 2019 23:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552115276; cv=none;
        d=google.com; s=arc-20160816;
        b=DzFImipOwDn4tlcCP86h0jRGnDvL3xZfonlfbEWZtgbTOuXA7MOpjvrYIA1d39OUvJ
         /vzbVVfyNzajKJ45gBdQickwJDlk/c0qNln4fOymLD09lDA5Uo/LwnJcuXlNCsG3b+9m
         NqMlJt9SgwIE4RbS/uNtFyh24NVCV2WIvEi46C+SZ/8a9dC0Xr9EPPJfsFvHdyKWFjCg
         PkIm8UjaTiC4XGQlIOFtOL2CiT+lTEfkudvWvpe+Syq9PaAusHvO4jrc/g1wpL3vcHTI
         AOMKZsNS2UNTG/drmdcScIjoa5u7VN27AuSGRYC2wZYW9jz0RBTfzOhfN7hspKtdEwqC
         Ix7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fQroxgA2/DZPajpIjUSS+p/1dcY99ky9Rk88+vsqyvA=;
        b=ocn8gYN+YGdllNsLhrnKox28aXv71SRVNuFsOASlA2y1xuG2FACZ8W10H4itpFOlLZ
         LrcjcbKbbEnnUcKpjmLr9d0s3ff9ZMzUgo1YZIfKrOUFxU/9z0TWAwVzUE3C41wuv09p
         rEPXPHNMoF4Cg3ZkgkBJqYPnMR/iPQo8VKJ0xzgz4M+F1/a95ikWoNZo4poQr0sk1A3T
         IQVQbflEKnxeyZQjK2Kdfi2rrun44g5wqQSJ1laLZ5Z1myeMv0DXfFiISXgAfUXLB+uc
         O9PTud1SLlArZbFcxsGF5V5bEkC8OXqA6J7hul99coZSToyzb+e9C8i4L8nKbzzN7cTC
         fjOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CXsO9H8e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si580511vsp.2.2019.03.08.23.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:07:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CXsO9H8e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE1C120866;
	Sat,  9 Mar 2019 07:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552115275;
	bh=zCQyJurymLllrYZSJ4q2HHn8ls1it+nA2113q+sj3WU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CXsO9H8eHzvSkLud2y8hLplcIxGMjrrUU7gDxv/XXgA0ZmLy340cTeqeYaVg2mknF
	 30O2wqg6n2XX80ggnK5p/DsDHVzPC23RbHCnP72NKcwEF4wtX7DB/owsCp47iHqXLF
	 1I5Xmyuym3dLfNuiVjKqfSM5WyPyi1LnpZivTEvg=
Date: Sat, 9 Mar 2019 08:07:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: aacraid: add SPDX GPL-2.0+ license
 identifier
Message-ID: <20190309070752.GB2723@kroah.com>
References: <20190308202328.14042-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308202328.14042-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 08:23:27PM +0000, Jules Irenge wrote:
> Add the SPDX GPL-2.0+ license identifier to fix checkpatch.pl warning
> Issue found by checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/scsi/aacraid/aachba.c | 1 +
>  1 file changed, 1 insertion(+)

Wait, why are you touching files outside of drivers/staging/?  I can't
do anything with a patch like this during the application process :(

Please stick to drivers/staging/ unless you are already working with a
mentor.

thanks,

greg k-h

