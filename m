X-GM-THRID: 6608897994052861952
X-Received: by 2002:a62:5d16:: with SMTP id r22-v6mr5674545pfb.31.1538763058292;
        Fri, 05 Oct 2018 11:10:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:258:: with SMTP id 85-v6ls2138203pgc.0.gmail; Fri, 05
 Oct 2018 11:10:57 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61AF1zsRwfs8qKhw322Qf0EtNOX5XgPpy33SDMS5fRmLyMcIYMLQWFCJuxc8Q3sMnBb571F
X-Received: by 2002:a63:4559:: with SMTP id u25-v6mr5040249pgk.62.1538763057613;
        Fri, 05 Oct 2018 11:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538763057; cv=none;
        d=google.com; s=arc-20160816;
        b=ki/kd9NZNXmxD/nq4rl8fYhXkM/5n4iG1P1bHYy4TJjwzZt4uY31zxJDGeNoucXU/P
         mbuvkj2ogJoppbWpOJT8gN71slXqgT1HCCsKeVzHiZs5dMJUcHWJL9uhffQLSGToqXSM
         y8muW1a19wKuhyWzVRS9DmxcYyExepBpReMnceYLY6wyPLV8+QgCatswEKK/B58Y022E
         i2tULiLCAM7Gwshmc2LHOYOkeVo7zoe6plp4sVVSgz0RgMTzutQhhQwWazz5Q+b/ghL9
         9piN9KAM3BDCLE21UxJANL7WJLiPIJjYDrDcqFjxZB4LHDbBokbrqsElGoqpbUSteOBH
         IeVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=B78RGtcYNsPM7z0rQsUKOeB/ul100K7y1i32+j4aazQ=;
        b=cQJtTvYk+EGP7L2voV6j0VgnMdobDEPbZuHXtoB43qjb9O3phdPaCinkwBjCLW5VWe
         9MKWYUXnV4q0XEyT5Qcv8C2KwWuNbDTMRkzo34W5xwK9oS3FE7W/9XjwuPiOQt2N1u4m
         BErWcYWVruhjzU1TWaKK2F18OYd+2pK5/M2FzJnU/cF6nLGSqxHV4AQTbQ63atfnDtHO
         DsRJ6YFo0+OjchJ5u20qlyIkgTxTmwkU5MICL/U8wOBKk08OM1w8Y9/mzqkQUjyYtf5D
         Fn4UEWCiQp6DsEQ3pD+JPfQ5Wj0jlWLV7ZGR1SVakc8UYFX45pK9BWzvRvQ4hmaIWtqG
         oTOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vfUCanpG;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s138-v6si450867pgs.1.2018.10.05.11.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 11:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vfUCanpG;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id l81-v6so361965pfg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 11:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B78RGtcYNsPM7z0rQsUKOeB/ul100K7y1i32+j4aazQ=;
        b=vfUCanpGI2FDSRpNEyFAlNVlgNjXAcmVOWp9wHaC7pYXGe89AXzlpEzGTYKi09wa+c
         8kuqiQDK1/HJVEjLNA/Nfod8zO5Zc0PjsWftPVifVEf7cXBlICiCvBpeazI3QBxhqUiS
         aaHTAkvZM7/Ksvz93AfGSonxc+JkqitZtifsThpeQOnRHk/qhB8AX01CAE52jED7DkcE
         6vCFSTRJiE9grcYida45egiKBtoFHH8Bby1cTuB8VqtAe9beeUPQGQGEqIxAVMdg8Pdt
         MSNkMivAgVX7RNX7THO7BjvaMHKaUbojDIomLnzP5Kgl1KgeoPVbTs6zSXnMXzL6+W94
         a7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B78RGtcYNsPM7z0rQsUKOeB/ul100K7y1i32+j4aazQ=;
        b=lkjWhvPO3fpCJf98s0DW7R7LaDB5Es0nAENEqVm/7P1RPihmYpK47O7p5Eo9kzvp4U
         vUozhabP/+PNOT0cpEf/ouMmd6Xp4rrUgIsPcp3xz4/BhEOjqFzI85vnWVtmPdfiKrNz
         p44/P/jaJa5hHfIr1HIB/jByA0v5FCdhQQV+4dTiP1bwYpNPAcXcZgbBItrJVKnONh68
         +yoVo+2Jte4zzJMbjJiUrt5FgEjV1EAiYYgG5XIxja93Yi5gdmbjhIWWYSqRhY+UOioF
         Wdbi1L7a5sXxJvvfQXQEmLghH+I7h+G/5OJscJwOKX1rdAw8Hh8UWp/9cI8rYUCeGIZw
         sQ2g==
X-Gm-Message-State: ABuFfoihEB7nbtQlPyXjwiWvmRoVPXOx8ohoO6o/Sw5iNrgXQbIU4EGT
	0pu5+XQlR/bPGQxzI5gkbJ4=
X-Received: by 2002:a62:ea03:: with SMTP id t3-v6mr13602554pfh.228.1538763057118;
        Fri, 05 Oct 2018 11:10:57 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id c79-v6sm12527561pfb.147.2018.10.05.11.10.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 05 Oct 2018 11:10:56 -0700 (PDT)
Date: Fri, 5 Oct 2018 23:40:50 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: vt6655: Fix coding style
 issues
Message-ID: <20181005181050.GC30924@himanshu-Vostro-3559>
References: <cover.1538752705.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538752705.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 05, 2018 at 09:09:26PM +0530, Mamta Shukla wrote:
> Fix issues found using checkpatch.pl for vt6655 staging driver.
> 
> Mamta Shukla (4):
>   staging: vt6655: Add blank line after function/struct/union/enum declarations
>   staging: vt6655: Add spaces around '*'
>   staging: vt6655: Add spaces around '-'
>   staging: vt6655: Remove space after cast
> 
>  drivers/staging/vt6655/rxtx.c | 29 +++++++++++++++--------------
>  1 file changed, 15 insertions(+), 14 deletions(-)

Don't put a cover letter for these checkpatch changes.
It doesn't convey any additional info about the patch
series and therefore isn't required.

Also, adding spaces could be squashed into a single patch.

Just remember these for future..

Otherwise, ACK for whole series!

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

