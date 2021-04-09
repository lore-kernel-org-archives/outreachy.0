X-GM-THRID: 6949155933016555520
X-Received: by 2002:a05:620a:133b:: with SMTP id p27mr15758055qkj.382.1617990244002;
        Fri, 09 Apr 2021 10:44:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls2757792qvn.6.gmail; Fri, 09 Apr
 2021 10:44:03 -0700 (PDT)
X-Received: by 2002:ad4:522b:: with SMTP id r11mr8494423qvq.6.1617990243313;
        Fri, 09 Apr 2021 10:44:03 -0700 (PDT)
Received: by 2002:a05:620a:1394:b029:2de:7443:c762 with SMTP id k20-20020a05620a1394b02902de7443c762msqki;
        Fri, 9 Apr 2021 10:42:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxF91L/A2zs33983tqejJOYsoPniCKPtT6IInSGaD/XNXoDIOoyutCVfrGL14HbDrVBFFAx
X-Received: by 2002:a67:fd48:: with SMTP id g8mr5689372vsr.55.1617990136204;
        Fri, 09 Apr 2021 10:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617990136; cv=none;
        d=google.com; s=arc-20160816;
        b=YS/6X3/D3kt6fokWcD9tQQx2irMzgiqJTWeQr6ZiZAiQRJKRh26mDC6c0IQIHKJSRO
         7FTarl9t+1iCTtAVGlkVGpNIBTmvl0Odu+04XoX28Z0gmmx8/ZlVuwaoOWqDmUonFPzo
         W/3RJgg5Dc/gQMJfl98if3VprmpifgyD79+FNWJg1981LRi3raGmjLBQlFrC2+pHWkLf
         BRotclhSKTchZ86nnEXWCZAC2kHMxCOa7gXMriELwCZHVsRNncNhNJvAqUTYpCgRgCIX
         CK/OKC/3lQD1R+YGbXkyl3tYdaxcgZeG9UZVyxmgwwPgyFzb7M4yisjYPqsHbJOG5C3f
         qeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=eO/JX5l1WTIemRZupIvOXnydLstUMBrqa8m2sHz84QA=;
        b=MHjosO4x8dIoVWA5PWDXRcugq7MMuSaRAoWyNVDwXB+wlKpfL3Lp5xxOnprjvnqyt+
         7DnuwyJCEfGIHPK2/3Md84KHDp83DJc03UADB97FoebDanxBHiGVJoM2IMKUhQyeq1xT
         YcVEkM0M898Wtk8FmT45cq0GevCv6XNXjFosxKYf1e7oFRSu8wAMY9Eu5bJC0uXFRVGO
         3IhQ+d0ysIAnvD0h45k5UreUGAkGE3t/uJ91t6LeCf72fgEfL4PKxqkp86L3Ov91yjoy
         snWEXTzdJSkoC1e+w/RGQw5u8iximp/huqa8O3lrDdJVTx9Dr4u1ZPxMvfkNSgH+55zm
         EHGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <ezequiel@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id u22si228072vsn.0.2021.04.09.10.42.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Apr 2021 10:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: ezequiel)
	with ESMTPSA id 9377B1F469A9
Message-ID: <532a72f6fcb6f51451e12444413c0ad4441a679d.camel@collabora.com>
Subject: Re: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Julia Lawall <julia.lawall@inria.fr>, ascordeiro
	 <alinesantanacordeiro@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 14:42:02 -0300
In-Reply-To: <alpine.DEB.2.22.394.2104091924510.17316@hadrien>
References: <20210409135404.GA26172@focaruja>
	  <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
	 <138794d79c42510d9b6ae744df20216904773032.camel@gmail.com>
	 <alpine.DEB.2.22.394.2104091924510.17316@hadrien>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2021-04-09 at 19:25 +0200, Julia Lawall wrote:
> 
> 
> On Fri, 9 Apr 2021, ascordeiro wrote:
> 
> > Em sex, 2021-04-09 às 13:44 -0300, Ezequiel Garcia escreveu:
> > > Hi Aline,
> > 
> > Hi Ezequiel,
> > > 
> > > On Fri, 2021-04-09 at 10:54 -0300, Aline Santana Cordeiro wrote:
> > > > Rewrite macros resembling functions #define HANTRO_PP_REG_WRITE
> > > > and #define HANTRO_PP_RED_WRITE_S in lower case, according with
> > > > code style.
> 
> Maybe you can see if these macros can be converted to static inline
> functions.  Macros don't provide any type checking.
> 

I'd like to leave these as they are for now, tbh ^_^

A more massive refactoring is needed in this driver,
but it needs proper testing and it's a more complex plan.

Thanks!
Ezequiel


