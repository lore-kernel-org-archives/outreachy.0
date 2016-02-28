X-GM-THRID: 6252584121027002368
X-Received: by 10.98.74.203 with SMTP id c72mr8961595pfj.8.1456666471541;
        Sun, 28 Feb 2016 05:34:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.5 with SMTP id hg5ls294293igb.41.gmail; Sun, 28 Feb
 2016 05:34:31 -0800 (PST)
X-Received: by 10.107.10.217 with SMTP id 86mr14406465iok.6.1456666471244;
        Sun, 28 Feb 2016 05:34:31 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x241.google.com (mail-ob0-x241.google.com. [2607:f8b0:4003:c01::241])
        by gmr-mx.google.com with ESMTPS id iq8si674904igb.0.2016.02.28.05.34.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:34:31 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) client-ip=2607:f8b0:4003:c01::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x241.google.com with SMTP id wz1so8500172obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QHIgeufZvEmtJ9qJd4QCZIKh080K9ib+Kyba7ckghOg=;
        b=h6i5Of5fjUB+7yOi66Pc2yeqFoyJXy25iNqts8MyUCOsgVbecP1WV5AFGb1vgkCXQq
         lL+JwS3ZwnmKTaavEBP4bLaRydZGkDuX+YqLfl7Ng0ySMv1lhwsIuh8gHgbgTLIVQIIu
         P3QJ/CBuxof1JnS2kPX3VIu+y6Us0OQ0SkB+WwJUrwRYDDerdk5jAv//j5WpPt+zJSez
         sCYHRlZVJA6bXYBLm1iQxvk+Rnh0AwUljMj3Jj/cn/zKa+f8fLk1bKThuOcFgWszEq9A
         R8nQaemfd8KDbRM7WuniZOIpshsycQFQ1vrT5sFs70DlorstlBEJAVCp8ttZBlUxZBpv
         TWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=QHIgeufZvEmtJ9qJd4QCZIKh080K9ib+Kyba7ckghOg=;
        b=fA12Nc5T1cwAZkg7jkue3FM8eT7jJH7DbL6wTT3ynfq0hryD2BPku/F3tQuBHt9OB0
         uldp5h3YA3fEl0oA8Pqn5lCf1+HxWPdcN6vFAbVEUB4kUM141bbJg6QqKtDo5ikz4JUD
         llGkVY4ZcD1xkYwcG0mVkJlb2gNuulCTDJWHKWmyfmJM786EqUifnXLwXiNxIUbSTm0U
         IaBBiOWkaOtpYLaOWKCEYjgbJr0xQFBIiVwgRfMgMQ+rD84QDMixjzbsvwK21HpcJ/A1
         cUpzyYyJ+w3ZbZQjkVdgWPWIVU+qqLhm6T4G9OYpNiotEm4no+Vne0OydKPdbnZyw1OS
         7GRg==
X-Gm-Message-State: AD7BkJJyGQsvnqBBCxNyykRwQLXmZDrtOzPs8WkSOP1UkfiDs+4mXE2jKywAVIyC7mop3g==
X-Received: by 10.60.233.193 with SMTP id ty1mr8611629oec.0.1456666470938;
        Sun, 28 Feb 2016 05:34:30 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id n6sm14737907obv.0.2016.02.28.05.34.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:34:30 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:34:29 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/7] staging: iio: resolver: fix
 coding style issues
Message-ID: <20160228133429.GQ3965@htj.duckdns.org>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 06:59:32PM +0800, Eva Rachel Retuya wrote:
> Address checkpatch checks on iio/resolver.
> 
> Eva Rachel Retuya (7):
>   staging: iio: resolver: align to match open parenthesis
>   staging: iio: resolver: add spaces around operators
>   staging: iio: resolver: use blank line after array declaration
>   staging: iio: resolver: add missing braces on if-else statements
>   staging: iio: resolver: delete space after a cast
>   staging: iio: resolver: remove unnecessary blank line
>   staging: iio: resolver: fix comparison to NULL
> 
>  drivers/staging/iio/resolver/ad2s1200.c | 12 +++++-----
>  drivers/staging/iio/resolver/ad2s1210.c | 39 ++++++++++++++++++---------------
>  2 files changed, 27 insertions(+), 24 deletions(-)

For the patchset,

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

