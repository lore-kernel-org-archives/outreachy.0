X-GM-THRID: 6616381756005154816
X-Received: by 2002:a17:902:5c6:: with SMTP id f64-v6mr384887plf.51.1540725621604;
        Sun, 28 Oct 2018 04:20:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:938b:: with SMTP id r11-v6ls2422079pfk.12.gmail; Sun, 28
 Oct 2018 04:20:20 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fRsqFiQlm8LM+QeXXtvhpcJAY6rhFKDordyFf2l2vTiv5JygqSlgOs9OdhT8dodq3RO4wL
X-Received: by 2002:a63:4444:: with SMTP id t4-v6mr327872pgk.14.1540725620810;
        Sun, 28 Oct 2018 04:20:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540725620; cv=none;
        d=google.com; s=arc-20160816;
        b=zFpm9GDHNeC+ixI+XICZi3ePil1/EN6V0lIeuSKPseYdb/yGE85GbjRRq1T7hBuXL1
         OEU9FmpqDtCIrfCPS00Fg7i1BoWoOmiJa0pZwLbxwmx2gjGa/zKQuVHRhvJPoLVcGx4+
         ObKaeo9TUL8IjnkcKxrVPwBhTf6PL1yEPdrdcG9ZNBqcwvSceIs6k+bhUX2RST4HFLEc
         Hs3w8LlI08qBSOhLIA9pKc3WfXvldh0VxFLESaCX4x/Ka90EkLXRfBvP17XRiOz4LYk/
         d64EVqg2PglKNQd+IDhICSsIDu017zHpiMdLVWyl2kHtyp8yygWvGO9BaEcpZdRUs9sk
         vv5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=URUJOjWx2zMb8INLm3z0n3/dESvN8PI2X6HDtfi34hA=;
        b=q8rQ6hHWsbvuLwHHy0PUCFRQIzvQdgn+fXffhIF8dKLDEzQifza7rbS881rkB36ikk
         O6A3II451klQO1vMwioL93UZ/tiqJNGUEN6FTBVJZN0uzQHgtLe6qJaLnsWkCQZb9kzE
         tZFwuDH/bCFVH/xXIGqM+H05asxn49bZ0VdKFUzOU0527J9RyI9kuKexAfQWA9PIgBLY
         nxVHGb3LPYbr1k+XKmJ/TVKHAmQITlsEYnEfTVG0PpBQTzPXUz67pgTVCoYHsMFs7Sgu
         KboVtTCVjd0BCskRUinfNTjfAYPUJKK5GjvTHrjBhfB7QQEVW/eOmo9gb6u5FCaMPzaO
         Blbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pC8kmSG0;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p85-v6si848267pfa.3.2018.10.28.04.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 04:20:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pC8kmSG0;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id k1-v6so1113985pgq.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 04:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=URUJOjWx2zMb8INLm3z0n3/dESvN8PI2X6HDtfi34hA=;
        b=pC8kmSG0jf4qmgvy1e8KpRPT4wvM38fUU/wiEPLqevXNUYcRO7ewaLPheiG+c44kJY
         dJxk99v3xyGHNd4igH4tkRLvJsixCKNuz6fPdvsSg9Vhe8gWNQrihsIJx9ZUFBjX8NBq
         Tx23BMSnwZwerJgM4BQFCXbv5oe48lH3lAEL4hzCEsIk5V0i8P2+OKal/0R222zk3x2T
         Xbypx4K4k3vJI1B6+IP1L9aG6Gr+LwKWc9rizRDt9gu8QzX0fvv2un/guqY4jqIG+4jH
         dc3mwkznVd7q/+v9T7184AITTYltx1PCbgUo5BOYQ5dPN3Ye1TNci0QrUPWOO+mbqX8H
         NlLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=URUJOjWx2zMb8INLm3z0n3/dESvN8PI2X6HDtfi34hA=;
        b=GYTh+pX6d6WA92/weIph89/zZUZXI1k3lkpAYVWm/ft4tRhnPdYHPXo9qGCN+HhGQP
         gMXSXnEvp/fSjdKtfsqtGiGypZvrxV/OmZZu8F+LURl+FwtWBV9PezC6L8+KieYh+SMI
         uFd0GsfGZzkN4vQl3rn3sr41xdWO4AZiJRrwyDLD5Cw4E6LoPo0cecXeTPrgoqazyy36
         byOsjSrRpUuwl8E7Ux98er7RrW7/ju3ezMMUcywrmgfQMXcUAN5tyEzqQRgGxySukuGA
         qEczQuZ5bvZqW0Idt9ehhTSd+VgpGnEzN/bG0rS+HS2Rli2Hm5Ve4emI6E80Ys2Y1oK+
         UamQ==
X-Gm-Message-State: AGRZ1gIHsYKOYi79h16l8HS7NhKqUfeNA/9ZiaeXGk0Lkax+acPtfwoh
	GFq3CyH4pxGDBNoaHZxjFK0=
X-Received: by 2002:a62:6506:: with SMTP id z6-v6mr10823075pfb.20.1540725620243;
        Sun, 28 Oct 2018 04:20:20 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id u124-v6sm36137938pgc.0.2018.10.28.04.20.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 28 Oct 2018 04:20:19 -0700 (PDT)
Date: Sun, 28 Oct 2018 16:50:12 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sasha Levin <sashal@kernel.org>,
	Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
Message-ID: <20181028112011.GA5157@himanshu-Vostro-3559>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
 <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
 <20181026204225.GH2015@sasha-vm>
 <20181028075209.GA1938@himanshu-Vostro-3559>
 <alpine.DEB.2.21.1810280932030.2450@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810280932030.2450@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Oct 28, 2018 at 09:47:15AM +0100, Julia Lawall wrote:
> > The "possible alignement issues" in CHECK report is difficult to figure
> > out by just doing a glance analysis. :)
> >
> > Linus also suggested to use bool as the base type i.e., `bool x:1` but
> > again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.
> 
> If bool x:1 has the size of bool, then wouldn't int x:1 have the size of
> int?  But my little experiments suggest that the size is the smallest that
> fits the requested bits and alignment chosen by the compiler, regardless of
> the type.

Yes, correct!
And we can't use sizeof on bitfields *directly*, nor reference it using a
pointer.

It can be applied only when these bitfields are wrapped in a structure.

Testing:

#include <stdio.h>
#include <stdbool.h>

struct S {
bool a:1;
bool b:1;
bool c:1;
bool d:1;
};

int main(void)
{
    printf("%zu\n", sizeof(struct S));
}

Output: 1

If I change all bool to unsigned int, output is: *4*.

So, conclusion is compiler doesn't squeeze the size less than
native size of the datatype i.e., if we changed all members to
unsigned int:1, 
total width = 4 bits
padding = 4 bits

Therefore, total size should have been = 1 byte!
But since sizeof(unsigned int) == 4, it can't be squeezed to
less than it.


> bool x:1 has the advantage that anything that is not 0 is considered true.

Yes, implicit conversion rules for boolean.

> So for bool x:1, x = 4 is true, while for int x:1, x = 4 is false.

Well, int x:1 can either have 0..1 or -1..0 range due implementation
defined behavior as I said in the previous reply.

If you really want to consider negative values, then make it explicit
using `signed int x:1` which make range guaranteed to be -1..0

Regardless, integer conversion rules will kick in.

> But the :1 adds instructions, so at least for only one bool, where little
> space is saved, it is probably not worth it.

True, we should reply on a promised guideline rather than possibility.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

