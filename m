X-GM-THRID: 6661704407651975168
X-Received: by 2002:a63:8d43:: with SMTP id z64mr6139661pgd.52.1551077524460;
        Sun, 24 Feb 2019 22:52:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4393:: with SMTP id l19ls5599850pfi.6.gmail; Sun, 24 Feb
 2019 22:52:03 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYQKIUgmdrB0Yg8x1TtG/uoZG+9Z+E9XC0r1TNDCdngvWwBYq7zsTun+mFQ6nSV6DX3SZAC
X-Received: by 2002:a65:6099:: with SMTP id t25mr6060661pgu.51.1551077523921;
        Sun, 24 Feb 2019 22:52:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551077523; cv=none;
        d=google.com; s=arc-20160816;
        b=hMCpPePHtPmxtF5w33rPoDqlUeDFdAHeM/HKV2HXnS4kky0nxMfmnZKVTzWDlIvGS/
         hKVXEixmY09WBQiIZ4QYBFkok8zBq4AdDwEFi7ZiK08KNl4MVS7RHBlxccNotZf2twcJ
         wrfFBaKSbReIi2qg2ZFHRXzz3uWYpCQF39clU39hIQghb1/GOeyGtVW6X33h2yT76l5I
         AJgZx48g6rDYGyLWNLNhQdMu/akIbei056EgwNWF6wLiBXuIkkyIUAgjhStcq7ldDD3E
         Za00EUPng3+IVgWOwUehSOXaedb6H7fnmsX3Hp8rdEWtYJyebwYGDehINV2/uj+iD7mX
         N9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v9FQxOT4aWtWt/qgd//yJz/gyKoWE8h/lDFNd4g+1/s=;
        b=dPUbwBtVxvZ15XU/94tbL2NxHISd7gJ6zo8glCQ3oftm6lN1q6df5V8nLQOke3ZEUW
         WjNWwDryKiMaPACBZRXqZb83M+AoJGcrb3hddQSG8ioBorOKXvVZiJvImlxuxyux2yKm
         e+E+8JH1B9DXmmzyvY5E9eOc51wseA99g+XFzUNjjpwjPbkGaKLD8JWa6reBVFTAHTKR
         Y69P7+ztRaunCja6GV0rh/E0mQdFSkEs6KEKaD83SzYDd4MkfnHVY3VQWFwMduG93tWE
         bKRxG7jNg99Goy6PwrOF3L3k6jAwbZCUEW2E0ZPD7SnZr/enoGWS9qD85dxHqAbRR5WB
         iRSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w0PwsaWE;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si352312plz.4.2019.02.24.22.52.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Feb 2019 22:52:03 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w0PwsaWE;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D384720842;
	Mon, 25 Feb 2019 06:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551077523;
	bh=1ZCsvbe0F2lVWImudTOZoQle+fXqxsHwO/zmUwGxgbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=w0PwsaWETHXfdOUdN9g/DBA1j5uFKEmKk8XuYGsljtNFXDQ/YLHwW0bttSrvErOcR
	 0jeZHC2xO011mJA/lZ4HHo2CH3vzVC+oW07nfZYFblSDecGbHKYz2oSMMYcsFCEbks
	 e9d4Tu1OreBPAS9leLrv/iBO2MNxopT8LvQZnT0w=
Date: Mon, 25 Feb 2019 07:52:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: mt7621-eth: adds SPDX GPL-2.0 license
 identifier to fix checkpatch.pl warning
Message-ID: <20190225065200.GA16881@kroah.com>
References: <20190224225512.24332-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190224225512.24332-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Feb 24, 2019 at 10:55:12PM +0000, Jules Irenge wrote:
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-eth/ethtool.h | 1 +
>  1 file changed, 1 insertion(+)

I can not take patches without any changelog text at all, sorry.

greg k-h

