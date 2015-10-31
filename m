X-GM-THRID: 6211302879745015808
X-Received: by 10.68.209.129 with SMTP id mm1mr9444000pbc.5.1446273719014;
        Fri, 30 Oct 2015 23:41:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.10 with SMTP id p10ls899684iop.89.gmail; Fri, 30 Oct
 2015 23:41:58 -0700 (PDT)
X-Received: by 10.107.35.135 with SMTP id j129mr10362707ioj.27.1446273718629;
        Fri, 30 Oct 2015 23:41:58 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id fa8si1046776pab.1.2015.10.30.23.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 23:41:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so94398037pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 23:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=k4c0x/cTZVaSfEbSw9H21h9vCJUTQAClL6PyMonBdpE=;
        b=vOLQBiGBf/ddPFrdiP5r/a0cvK2ZJOz/g6YXrNMEVn7AIe5+k2MsMkJ8xWHWKEl3Qv
         9sT6X0z8U2FOqLMI/hPaQjM1y3X0T/MfJor4Mbw4dTBgbPMMQHnZyNXZoaYJzT58BYxk
         s7Doo6eC1V/c6NvSy9koc0n+Wm3nCecjnieDepNzx8720x+ODL+wa5trqb1J/PGnoHio
         4VMV8S8Tcs8LEfGzilBMHHktOV2vfOQ/zOTjyvODT4mCBQUkjd0G9IK5/7+B2ZpTUW9M
         gmtH0jXdfJrUfJdaoc9XAEdkVKcEBvyHwlryAZd0uDjXHHb4Djx+Z42NveOhFSur++IR
         /RFA==
X-Received: by 10.66.90.165 with SMTP id bx5mr13344642pab.87.1446273718495;
        Fri, 30 Oct 2015 23:41:58 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.128.226])
        by smtp.gmail.com with ESMTPSA id dg2sm11840545pbb.9.2015.10.30.23.41.56
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 23:41:57 -0700 (PDT)
Date: Sat, 31 Oct 2015 12:11:48 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: comedi: ni_mio_common:
 Fix endian sparse warning
Message-ID: <20151031064127.GA5145@sudip-pc>
References: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
 <59f1545cfe6cadeeb4e23ea099df3dab1ff9e6a3.1446181130.git.ksenija.stanojevic@gmail.com>
 <20151030071517.GB31483@sudip-pc>
 <CAL7P5j+v+ovje8fnEMz046CdmDsNKXR+HUETXSYFS20mErzTRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5j+v+ovje8fnEMz046CdmDsNKXR+HUETXSYFS20mErzTRg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 08:01:27AM -0700, Ksenija Stanojević wrote:
> HI Sudip,
> 
> On Fri, Oct 30, 2015 at 12:15 AM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Thu, Oct 29, 2015 at 10:22:45PM -0700, Ksenija Stanojevic wrote:
> >> Data is pointer of type void and can be used to store any type of data.
> >> In function ni_ai_munge:
> >> barray and array have the same 16 bit offset.
> >> blarray and larray have the same 32 bit offset.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >> ---
> >
> > Yes, it introduces build warning. You will have to do the change in such
> > a way that it does not introduce any new warnings.
> 
> My idea was to place declaration of buf and barray within #ifdef PCIDMA
> but in that case I have a new warning:
> warning: ISO C90 forbids mixed declarations and code
> [-Wdeclaration-after-statement]
>    __le16 buf, *barray = data;
>    ^
> 
> So, I'm not sure what to do and if it's possible to avoid introducing warnings.

Keep the declaration where you have kept it, add another #ifdef PCIDMA
just before the declaration of buf and barray and #endif just after
the declaration.

regards
sudip

