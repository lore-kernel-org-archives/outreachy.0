X-GM-THRID: 6525365385486663680
X-Received: by 10.202.216.133 with SMTP id p127mr3322490oig.19.1519319312387;
        Thu, 22 Feb 2018 09:08:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.8.79 with SMTP id 76ls516518oii.13.gmail; Thu, 22 Feb 2018
 09:08:31 -0800 (PST)
X-Google-Smtp-Source: AH8x224OMzoFpsVIhGwAdll/YCoqMh9wGlzQtjsbe2G8FHjvL4acLKvLNcMqMDPRXcGCK8+gSsZP
X-Received: by 10.202.230.2 with SMTP id d2mr2381630oih.67.1519319311275;
        Thu, 22 Feb 2018 09:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519319311; cv=none;
        d=google.com; s=arc-20160816;
        b=k9gozRQxCcFKlIhEFJ6HPsnNasZziUNadqla9oYpMWiWHDw2fy6xMrgCJXM0N0Hb9V
         Cfc0lsuVldfedYkYashbQhjActZMTwkd+Jith/g7uyJVx57icBDDJV4AdzjicI9LKvlc
         NYxHuK9xBRzXXl5PVu4e0N/eXUAcyMSejxjUCT1TRm4cIQZ2QZ3KIaN3BGk/Fad5w0n+
         1ZzsxOU5m97phoUnyvV/zbe9eQi5efYapxiYvfbDxF6Q65EnRBASTkJo6ejOeX0F1m7+
         n0s92N0UPRmKUQFrFffM2ilQqsylZhInXHTlhLxkwlFSv6EeafnJclZzDduYhUEGGw+3
         eWMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=+yqKRPx+d4uDzgmTrYOYVWMqkseXXvHrXIjUcMuazkU=;
        b=n7JR3VeWNfUH+y8KDiVAXgh4SInm3UwODX2eAq6s2DIZ9SeYfjHJWATYjvEqEtgPsG
         9znM+O387InPpp/tM4VJPlxwpa2qe/iL77CGl4ROpRLJb63XreJg0D6Ft8Ts9iMXnCWY
         NQvyJv7co8KsL/840Rksdm1Rlpq65GPQNzZOosCpluwMcd71pb67QP+0uzu+bytnJhNG
         N6V3r//PdzymAgyibgeE0A+bGqCGojHLph9pOuDUngTcjYBSkSG19ZHZ9yFn0/4wwoPP
         Qd+RIHkc905DE4/ROmiqiD18bO7gyK9ojmS2Yh5b2RiH2xyCwKgEiVQSi3ifeoevotI1
         pdQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1l8h+0B;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-qk0-x22c.google.com (mail-qk0-x22c.google.com. [2607:f8b0:400d:c09::22c])
        by gmr-mx.google.com with ESMTPS id 16si32444oiq.3.2018.02.22.09.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 09:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) client-ip=2607:f8b0:400d:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1l8h+0B;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22c.google.com with SMTP id o25so1814649qkl.7
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 09:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+yqKRPx+d4uDzgmTrYOYVWMqkseXXvHrXIjUcMuazkU=;
        b=Z1l8h+0BXWDL197B8mit5bXCqnqVtjulpb6fxbNkrZAEhuO/OWBMIcecECyTcRKGE3
         1ucgoqVLDumxqbIMpy6uLmSay6LjUS8DKT/CNP0S5hSbdPTXKCUZVQHH7x+e6+smppPe
         2cxHHNoKWR64f2LaTbNY+PHHWr2B6YPVijKsyU+z4XLJ82ZgMsSCSJu8XGhq+71XL2Wt
         JCiHI9eOTLFvQK1jplmLwH+HDWpMG4vKYp0C1DZoswz/NyBhDBmyXq73e5Kq32i5aylu
         X3L6V92nRvXqKYG4fypVnrTCAAyVwci6Ws3OAGOZTdymfqzkPOonqWzXAdDjDmgHB2A2
         Nc/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+yqKRPx+d4uDzgmTrYOYVWMqkseXXvHrXIjUcMuazkU=;
        b=NLjCKNq0m4kGhmQKh6HO7CWvBb7iT1xlvbW+mF4/eG9uccaTt2AXURB2DiLYvzWqdf
         UFsi7BK8+yS5kATPJnr8m5YO0cTsYQSozjKtLpGM+mEzhz+SY+ZGQCUZofCG08s8h3+A
         Y16GX4fmFkfrlxmI3P08EZopZVDsmx5jGanUGfx1tV5+lRtPQOsZuy5Bbb44yyQqW2FP
         Ke5P3MxPDJT6gPbFEBZDrv9prAfMU/2TAtGt9v5GPnIL/Yaxx3vANlzyRw4sZkCpYFF3
         e5vjBkU5Ej7jlPZfx7ZvHGct7gsRmthg/MrwojFR0wQSuZezNdq+3+wIU4q87AZBD0mQ
         q34g==
X-Gm-Message-State: APf1xPB2Htuf9Pz0Uj2e+OTTqxbUYdvpzWS6sbfNlwc92vMCdDbHGrI7
	UZpZNi43IWIDQNIKAg7huvn3HCsFw+UttOdEsoL21soO
X-Received: by 10.55.209.217 with SMTP id o86mr11252769qkl.33.1519319310890;
 Thu, 22 Feb 2018 09:08:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.195.80 with HTTP; Thu, 22 Feb 2018 09:08:29 -0800 (PST)
In-Reply-To: <1519317082-4790-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519317082-4790-1-git-send-email-shreeya.patel23498@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 22 Feb 2018 19:08:29 +0200
Message-ID: <CAHp75VdHFAtGQ7=tRJz=dZJtsSnK_pKbUV=-8WAGOSKJwOQU2w@mail.gmail.com>
Subject: Re: [PATCH NAND v5] mtd: nand: Replace printk() with appropriate
 pr_*() macro
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>, 
	David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, 
	Marek Vasut <marek.vasut@gmail.com>, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
	Maxim Levitsky <maximlevitsky@gmail.com>, 
	"open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ezequiel@vanguardiasur.com.ar, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 22, 2018 at 6:31 PM, Shreeya Patel
<shreeya.patel23498@gmail.com> wrote:
> Using pr_<loglevel>() is more concise than
> printk(KERN_<LOGLEVEL>).
> Replace printks having a log level with the appropriate
> pr_*() macros.
> Define pr_fmt() and remove other additional macros from
> the replaced printks.

It makes sense to fix indentation, like in case similar to ' mm?"":""
', and fix the specifiers, when
void *p is printed as 0x%08x or alike.

-- 
With Best Regards,
Andy Shevchenko

