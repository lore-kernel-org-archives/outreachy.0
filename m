X-GM-THRID: 6200341306580926464
X-Received: by 10.67.24.39 with SMTP id if7mr5394546pad.24.1444056742112;
        Mon, 05 Oct 2015 07:52:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.14 with SMTP id b14ls1698315iob.5.gmail; Mon, 05 Oct
 2015 07:52:21 -0700 (PDT)
X-Received: by 10.107.34.8 with SMTP id i8mr27218670ioi.2.1444056741644;
        Mon, 05 Oct 2015 07:52:21 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si3717696pbb.0.2015.10.05.07.52.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 07:52:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy16so38937424pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 07:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=qzZQeblroxN15Rzbe37cbtHoaw7GyEyKYmxgNSeJmR8=;
        b=M8WuAydGBwEernIXgCNckJh6b9ygCYSo9uij4CeGdqOyBrbIE/GJ6Nzb3k1+QN2nj3
         vZn/5jC8yVYu2RmWmOPKnprZJcSAuTK6yCYWg/eFoLd2uE9aT+iLE93rxCgzdQLVOUix
         1EBp3J7JgO4+XEfLoeknb5qKGcG9xw4g4py8oXbqeRfw58K4NWdyIqeRLVcrIVZvS73S
         lXA28l/fm4Q4BDc22EMUYNEASQv/DMn12c8y2yljh08bw70XvHjF1emATVW3Ap1AZWRy
         TcLLZzSbGVT1rlXTRUygwbYwGzIkxwguRWqcD935xTZ4szPjki09qyljhxW8WgHkURTE
         M/UA==
X-Received: by 10.66.144.135 with SMTP id sm7mr41110955pab.106.1444056741400;
        Mon, 05 Oct 2015 07:52:21 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id fe8sm28346159pab.40.2015.10.05.07.52.18
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 07:52:20 -0700 (PDT)
Date: Mon, 5 Oct 2015 20:22:04 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>,
	y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH v2] Staging: fbtbt:
 Replace timespec with ktime_t
Message-ID: <20151005145204.GA16683@sudip-pc>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
 <5548451.nrtKaPCYPk@wuerfel>
 <20151005051705.GA20276@sudip-pc>
 <9607634.7a18Wz6LMX@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9607634.7a18Wz6LMX@wuerfel>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 10:20:12AM +0200, Arnd Bergmann wrote:
> On Monday 05 October 2015 10:47:05 Sudip Mukherjee wrote:
> > On Sun, Oct 04, 2015 at 09:34:40PM +0200, Arnd Bergmann wrote:
> > > On Saturday 03 October 2015 21:15:46 Ksenija Stanojević wrote:
> > > Two possible explanations why you don't get it:
> > > 
> > > - your .config file got changed back to CONFIG_64BIT being enabled
> > > - you don't have CONFIG_FB_TFT enabled in this build.
> > 
> > After modifying manually .config file use make oldconfig and then make
> > prepare.
> > I think i missed the beginning of the thread. Are you saying that fbtft
> > build fails on 32 bit arch?
> 
> Ksenija's patch from last week causes this build regression, but it is not
> merged yet.
Ohhh .. ok. thanks. I have also checked the thread from my archieve now.

regards
sudip

