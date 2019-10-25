X-GM-THRID: 6748810538213441536
X-Received: by 2002:a63:af13:: with SMTP id w19mr1468853pge.189.1571973130018;
        Thu, 24 Oct 2019 20:12:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls2430877pfb.6.gmail; Thu, 24 Oct
 2019 20:12:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2QieBP+MKzT7J2Y2EZ4SnY423AVqFZXkJthuqunKYjJpKkV3zxibgNrQwXputugl1M6rr
X-Received: by 2002:a63:4c57:: with SMTP id m23mr1574372pgl.207.1571973127379;
        Thu, 24 Oct 2019 20:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571973127; cv=none;
        d=google.com; s=arc-20160816;
        b=fj2ELn5+s7LSOZXlWndO3l04QI9DUCGBigp8jw3kByaNPEtv9HkelTvrPSTiMX2+Ko
         ikafAzqWFEPgbwertHgGiA7SxBr0YbPgzahvCds8GLlCElJ5rvRF8wLFpKhk86vdHrAi
         07BCnqJmrqVkDthKTP9FT2UzMOiWbD5CqhAXGEtRygtBlIBxU3AAlhNPD4dAnvaxF1cZ
         bwq0/KXqEl0wM229wkmIGwZKmfctoLMcB/o7oJ9s43J3aQurnLQDvFiLWndppnWE7JFV
         OsEn6cyMgCxZzbYlLQ3llfRa53ZoLWcTTpqU3tMvIajcXakScyz5nfWqEl2SQ0G9VECz
         xv/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yKNKH86JULmZUbByElHs78nT7idMg40cS1yr1cfrAzU=;
        b=eBdQHUSoC3CDogoEPMHIaA9uUGoE3hlppaWHhSvVLgCaPd7byrj4txM8B2nedYk9eH
         dnYOgdvtM4Xwv7ZhhzFbu1J52rnQ8TsYfz7DomyunCcRB1YCNxKmfhrP/zC9Xno8eAEP
         5MYtBCsOlGp5nOenXjN6SZXBSqKk7bma/997IuBDuCJ9mBjsGhWm02AyVDtGjqtNp6HG
         EhilxXryya9k3d3tUEJKx6TmybQqiGkQaCHtaysvA6qvac9xf3X2T5255Q+V7Zwv3CjO
         n36YnGLd4XC79QuY5ixtHDd53Gf3+BPlGDDwfXV0SVaMq+iFlOHZoXjswtddFHH0Lnwh
         puIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=esddVurM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h3si37440plk.3.2019.10.24.20.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=esddVurM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DD08020578;
	Fri, 25 Oct 2019 03:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571973127;
	bh=nEFxLkJ9A/ft3PWmcN1p9W+1P/Lo07C8wq8kzEC2VCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=esddVurMgnp5W/f/2ZtmCVRwiAcSwIaCFPT+PQ750NWYGvfSR2vThbeFqiRHD1IOX
	 BLrJYDDCBml8M0hxEFkqnU6B8m2H2Hj7IB2IwNsn+ZT5kvezfag+ZnRse76HdwBomD
	 Je6QnJ+Pa4Z4fooHalD80mPRlJ7B+h8g0VgbeRcY=
Date: Thu, 24 Oct 2019 23:08:02 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: vc04_services: fix warnings of scpace
 required between operator
Message-ID: <20191025030802.GA471372@kroah.com>
References: <20191017163126.23992-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017163126.23992-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 17, 2019 at 05:31:26PM +0100, Jules Irenge wrote:
> Fix warnings of space required between operator and variables.
> Issue detected by checkpatch tool
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> This Resend patch includes fix for both vchi.h and vchi_cfg.h files
> Previous sent patch had onlyfix for vchi_cfg.h file

That means this is not a "resend", but a totally different patch :(

Please make sure to get this correct next time, I'll take this now...

thanks,

greg k-h

