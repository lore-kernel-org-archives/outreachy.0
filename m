X-GM-THRID: 6663088716189270016
X-Received: by 2002:ab0:6504:: with SMTP id w4mr2167940uam.4.1551427234771;
        Fri, 01 Mar 2019 00:00:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4247:: with SMTP id p68ls1350111vka.3.gmail; Fri, 01 Mar
 2019 00:00:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqxv5zLOlme6mGJGjac9KLxJr2zzVW4e7I0QT8eDdsGgh/PBus923zz38N9DCX4k/aXW837+
X-Received: by 2002:a1f:aa03:: with SMTP id t3mr2409878vke.21.1551427234097;
        Fri, 01 Mar 2019 00:00:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427234; cv=none;
        d=google.com; s=arc-20160816;
        b=BJogGULVchggohHdIaBCTEPFVeGgO9+msT+aPnhcPd5wgm5o29M2nS+0vs4Vgz0IM2
         VURT3dPZD5HdviV2800OizmTkaB8VfN+cAUYsJqkgNHCG9TP+WZu2j1naKr3FogroiJ3
         j4mk90Hetvu5SyFXBTrJ2uQzqD96TQsRWxb6XrZMXIwtdh20qOoC3u4p22LhlZHSgoO8
         yo+AjaAYoyyhtFYYxdJiL+atCQdN+Ix4kZOvQ27Cv+5GSM47RVPfKts+GwWpbCSwbMNB
         SSntySI8pqUm68egEzKDzSJ0RQzpvNrysr+vnL3Jqs0GgUW4G4FABgkUH4O7JRhiGDX4
         ceEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=daAUaOi6aH8TIEoa4jyV1q64oP4yppicxt/helCKwAU=;
        b=SR/czCDel2S4SI34PrsgVs205er25fvZ/c9zjyA/s2LDMiwTaeg9rr4M4MymynQY3B
         f4doXNIt06Lcd02loIl79T/5/T/1MvZXrEsxHhEe3FufSgnvvHaIPy+aUYUNLOLzWyTO
         0yZmPvZCTflqKpCB9gqtrnUUhTU4nedt2zU92RFWkDnrtWjmbEfx1wKqaIS7RmFtDCGw
         JJdCBPO3Qfmoef9bdL+mPJKStUiOraG2AB0jbh+xn+JDhHRcsj1c29+op3xHazwKIEi6
         f2Z4DZO+NBW8rOIcS/5EreVOiH82PvQbksPPp4XrBJoFM9/rFgNV1jWx/qeXghoLXrl4
         kdfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="TftSW/SJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k19si1252741vsm.0.2019.03.01.00.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:00:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="TftSW/SJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7FE232087E;
	Fri,  1 Mar 2019 08:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427233;
	bh=AxEHA1bpkQ2M/feOcHZBS6oLC1V3d5sodFoxSnxn6Iw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TftSW/SJYcZ9ronzaMmgV2frPPnzz+9+M4twRvYzaP/82rSD5J5sDvnYqf+LQwPus
	 8vfnNm+vuGtGuz32+kwanxbX8XX6b14RubTDb3UZsywbcryaGGkqyoGG8sSK/5i7rE
	 vnJjbL7zWRdbUtD99hTaDd+mBWktB/hsRjd20DP0=
Date: Fri, 1 Mar 2019 09:00:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Elisa Tsai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fpgaboot: Delete newline at
 end of file
Message-ID: <20190301080030.GD13643@kroah.com>
References: <20190228162703.14828-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190228162703.14828-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 12:27:03AM +0800, Elisa Tsai wrote:
> From: E-Tsai <etsai042@gmail.com>
> 
> This patch fixes the checkpatch.pl warning:
> WARNING: please write a paragraph that describes the config symbol fully
> 
> Signed-off-by: E-Tsai <etsai042@gmail.com>

As Julia said, use your real name here and for the From: line.

Please fix up and resend.

thanks,

greg k-h

