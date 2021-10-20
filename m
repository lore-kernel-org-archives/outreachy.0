X-GM-THRID: 7021065776829300736
X-Received: by 2002:ac8:3d49:: with SMTP id u9mr5544955qtf.264.1634720107262;
        Wed, 20 Oct 2021 01:55:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5a0f:: with SMTP id n15ls846931qta.1.gmail; Wed, 20 Oct
 2021 01:55:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw0cupkOMHlx/53TayrMPNCy5SCuf1lg7iW8WEQr4TcaJXFmY9axm25zwzRukJe+cQVSq4p
X-Received: by 2002:ac8:4f14:: with SMTP id b20mr5571519qte.252.1634720106521;
        Wed, 20 Oct 2021 01:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634720106; cv=none;
        d=google.com; s=arc-20160816;
        b=Sg1PNka+HNajOWcz7V3ZbXmmBvV8whKEK7dIz/2LebP3IIwjK4Akm3gtEct/90LoBt
         FIoGc4yarin102iRonZPqCFPJF4DeybH6U+2ZYjlQLFwDMnjObsG06wYmmWoQF4atsiv
         nGwB3bIcjkhBeXPdX1YigmmvBLrQ/dvNcAH/h8Oq6zPfx5wV+Z4dzdIQfu+NESkVhP3h
         qOkEuhs35sckD1WxzdzpE3ZcsaL2dhZHbtu21R1D4VSAvUjxmx3hCFq9o3qOQlgVRGwS
         lPm941C2UMTBdbiJhLquDnCCOq1q+1zpWEi0TZ9l+oNxUXFKVVKZxEbJ7/wAdShl4Y5U
         QLlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U/sSZ8mX8debnLGodoq/GWfLouENCs0+NDFcoK33oMA=;
        b=HvDWdUUhqHbbveW0qAZjcTTHC6Ly5OfXXY8knzHOFbVY+I/oHjmwpv3obuY9xU88l6
         78iPwRYYwTUwCzIRxc7r0/vNVW3i8qRFAiGyNgTYj76xaVcbuklmje6xNiUJryMQ3KtJ
         ykbNhpD0KHEThgBKQm/u5Ah6YO9UCYCWXp9UEhOtuRBg9Ue6OnuJfKqrl2fHHeoYadbN
         0Ma7WK/Cdx7TmqP6xVeuGrGdMGeOOueqPfyf8HJYPtageYkNPiS+O/VvxrTvbmCA/3BG
         l+pjXTJedk1Y2ioJw/cN9BJApK7iaN0DGPlNHpgluPOu/RfBloZh9FOl818Gbp+lkj3B
         hg1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yyrrTIfk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m17si197532qkp.2.2021.10.20.01.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 01:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yyrrTIfk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECD4361004;
	Wed, 20 Oct 2021 08:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634720105;
	bh=PCVaDpH+mrpLD0GnvIKW+142iEL4rJTf3kGqaYnQ0Rc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yyrrTIfkiLCiG1EoFREEO6IG9ruiFtqAxzrmETyg6LcZUPtgzSCrjQhIbbwKJHunb
	 vSRM96Q3aHW14dqoxfdiUp2gzLk2NJz6nccOpRi3H3Pn/P+kNl8mWVD+nlVHT0jyz3
	 aW/gFSPAtSXQtLWkstyDBvrQwLIKkkP5GY6UkCFE=
Date: Wed, 20 Oct 2021 10:55:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6655: Rename `by_preamble_type` parameter
Message-ID: <YW/ZZho43B6tbys+@kroah.com>
References: <20211020084033.414994-1-karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211020084033.414994-1-karolinadrobnik@gmail.com>

On Wed, Oct 20, 2021 at 09:40:33AM +0100, Karolina Drobnik wrote:
> Drop `by` prefix in the first parameter of `bb_get_frame_time` function.
> As the original argument, `byPreambleType`, was renamed to `preamble_type`,
> the parameter referring to it is now renamed to match the new naming
> convention.
> Update `bb_get_frame_time` comment to reflect that change.
> 
> This patch is a follow-up work to this commit:
>     Commit 548b6d7ebfa4 ("staging: vt6655: Rename byPreambleType field")

There is no need for these two lines in the changelog text.  They can go
below --- if you want to have them.

But, as the above commit is already in my tree, there's no need for this
information at all, right?

thanks,

greg k-h

