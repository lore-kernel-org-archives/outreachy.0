X-GM-THRID: 6210938115276668928
X-Received: by 10.66.255.3 with SMTP id am3mr29117836pad.30.1446098277114;
        Wed, 28 Oct 2015 22:57:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.160 with SMTP id m32ls161992ioi.82.gmail; Wed, 28 Oct
 2015 22:57:56 -0700 (PDT)
X-Received: by 10.68.253.136 with SMTP id aa8mr28807745pbd.14.1446098276816;
        Wed, 28 Oct 2015 22:57:56 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si5399552pac.2.2015.10.28.22.57.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:57:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so30091601pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OHYPSdLnS25Bbsncq+oh/H6LM455aWnbgKlpthFtU/g=;
        b=Lx/18EDK1/MqbHBg5vHAyWa2SWPsl7fQPErlJPFvQckrWShhddqSQ6/QqqXR7lD2Vm
         BBinOHPjjsN153Hf+oT+59DE/IWQnCSccJ0nYe5sXESK/Xh6FPA/5R0BMhs/VkqJ8Hea
         UhgBWKfXtqfR3+8rzUVacO5D2abbnBH0YZSq1xJBGb0j0xHpmhFcxN0e/uRhDpwHVXYt
         yr3Xl7TZxMUBR7x7HWfUHVFu2q+Xg/KqZZh5Hh4tOjG62iQbLvqYke+qDc/9Y32HET+t
         9nc4pIkMHNCt5A4LZxOwQlShQKwOhcX7yNcJMaIWHFs6QG8l7QbZ916ocBoNmkBrbcCu
         YRsA==
X-Received: by 10.68.254.170 with SMTP id aj10mr38902981pbd.97.1446098276702;
        Wed, 28 Oct 2015 22:57:56 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id c4sm49088661pat.46.2015.10.28.22.57.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 22:57:56 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:27:50 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: console: Remove
 irrelevant return statement
Message-ID: <20151029055750.GC16140@sudip-pc>
References: <cover.1446096468.git.shivanib134@gmail.com>
 <add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
 <20151029054828.GB16140@sudip-pc>
 <CAKHNQQF68wTk1v65i+aGEJwTmLsce-HCE0h4fiXsF-wze=_ksw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQF68wTk1v65i+aGEJwTmLsce-HCE0h4fiXsF-wze=_ksw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 11:24:59AM +0530, Shivani Bhardwaj wrote:
> On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee <
> sudipm.mukherjee@gmail.com> wrote:
> 
> > On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:
> > > Remove return statement from the function lstcon_group_ndlink_move()
> > > as its return type is void.
> > > Fix checkpatch WARNING: void function return statements are not
> > > generally useful
> > >
> > > Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>
> >
> > checkpatch is complaining about the "Signed-off-by" because of an
> > extra space.
> >
> > regards
> > sudip
> >
> 
> Sending this again. I'm sorry.

BTW, are you adding this manually? Let git add these Signed-off-by and
you do not need to worry about these anymore.

regards
sudip

