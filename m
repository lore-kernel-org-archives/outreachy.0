X-GM-THRID: 6661153650381946880
X-Received: by 2002:a25:900b:: with SMTP id s11mr2963254ybl.70.1550994958349;
        Sat, 23 Feb 2019 23:55:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls3239097ybb.12.gmail; Sat, 23
 Feb 2019 23:55:57 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZXo/PPURW8lenGHohUrL9zCy1fCsgopHD+FojnNHcxvT18mtuGRHglgOq9aBYrB/h6tRBH
X-Received: by 2002:a25:1902:: with SMTP id 2mr3356680ybz.7.1550994957478;
        Sat, 23 Feb 2019 23:55:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550994957; cv=none;
        d=google.com; s=arc-20160816;
        b=uadQ/gEFTYzTJrB5HMOkOiomqj0qrP9psDTcWRg27OFxJ7LMKwGc4LnG5ABujcBE7J
         YaP0ANsscR1tDJIRUOBYTKjs1zoBnPqhs5lpHatKo5stG/yNktb/EoujUZzEoLff7d9H
         3OehmPuFhgoW7qiEeWGBf7EnlXaw/d7EuqLKz5TKslW8V2bCdnIVJDSb0hYTeJ/A5McE
         AKpYYKYP9vy1D+y4uykRSeqz0WFb1f/ek3IUBzT7O0ii1hgzqLG4FOpj73pSai7yCFaA
         bSw1wP1hZVR8fmTqNdzvFhcqjzLZ6EdkP+lj8EuaFjELnTN08gegy98LQN3REfrnQabB
         Wcpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=CGYlz/vv5hP81ts62qRXAQgvl5eDonQa7UeMsm+mUPE=;
        b=QHDTQrDGnRg9NsaX3NY6rrZLniDdPvHPkFEcEQKzEPl1v4OIewjPCKDoZLpW3bqb5N
         Zsmva1oJIcZEdaLXUB02O4vjrZfv5C626W5YunlS5w+V1qn4S04qycppWy7Dsw8szRIm
         hz1D5Uepmpn30HCav6LVudwif/7Ao74wHw2LuqlpjvrxEV6I+T1Tl1/3nuCb1OkiLfHK
         zpHiE+BddE9ouPDhCF717DDlzA1jmi77nHur6dUT9Nxz5+6VjeeeGwx87RHw9q9PAtzI
         th2TFwprHZKl6LSKFmaNnaKRp/75KsUngGTA7zxCEf2zNBu4MRdxs42XLK9RoYc/2mD7
         uJGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=R2VLPG8f;
       spf=pass (google.com: domain of srs0=lpv8=q7=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lPV8=Q7=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=lPV8=Q7=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t128si331875ywa.4.2019.02.23.23.55.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 23:55:57 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=lpv8=q7=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=R2VLPG8f;
       spf=pass (google.com: domain of srs0=lpv8=q7=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lPV8=Q7=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 107342063F;
	Sun, 24 Feb 2019 07:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550994956;
	bh=CGYlz/vv5hP81ts62qRXAQgvl5eDonQa7UeMsm+mUPE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=R2VLPG8fVjuNz6R27WMDiJrhUvWCBMpDc4DT+0a3Z48mEMOc2hSM9u4migh2I1jB0
	 qWU2bBMD5sSMjpj12u240zylrycRqy28DaKcpOZNhSELsvt0iX4ORp20FhhxJcuE0M
	 d1jTGtNYrQdoOgZktGXHqYD52RW722RHuxLlU+t4=
Date: Sun, 24 Feb 2019 08:55:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: ax25: Fix multiple blank lines
 warning
Message-ID: <20190224075553.GB31123@kroah.com>
References: <20190223111751.14620-1-jbi.octave@gmail.com>
 <20190223125932.GC16686@kroah.com>
 <CAAaskFCUXvPjTZXY_k1zohpVc-ij6sUoB4EcrsYRKU+ortXf4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAaskFCUXvPjTZXY_k1zohpVc-ij6sUoB4EcrsYRKU+ortXf4Q@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 04:17:36PM +0300, Ivan Ivanov wrote:
> as usual, Outreachy is doing stiuupid almost-useless commits like
> remove two blank lines or fix a tiny typo. They are trying hard to

<snip>

To let those of you on the outreachy list that might have received this
junk know, the poster has been now banned from all kernel mailing lists
for doing this type of nonsense.

Very sorry about this, this type of behaivor is not ok and is not
condoned by the Linux kernel community at all.

greg k-h

