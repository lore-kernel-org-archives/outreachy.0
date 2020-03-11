X-GM-THRID: 6802937311305662464
X-Received: by 2002:a25:3b8c:: with SMTP id i134mr4235811yba.457.1583945933853;
        Wed, 11 Mar 2020 09:58:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls579968ywf.3.gmail; Wed, 11 Mar
 2020 09:58:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7qq80HmzpMXaQYLEglxF34viQXhgk89bNVLsjPOBA8ACDc17xJBzK0hhC7bXR6A7oLTUa
X-Received: by 2002:a81:1443:: with SMTP id 64mr4469968ywu.264.1583945932497;
        Wed, 11 Mar 2020 09:58:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583945932; cv=none;
        d=google.com; s=arc-20160816;
        b=Ea1kHFVm47LGz1J8cRSrHzCn1L9Od+UMpdNpjWV4RgZbIOZROx11SD4nPDYXWs9pme
         BMznU74aBCQoRGA+Bwt9ih67Go4/boYY5GNqzeXbgaeVTg3o74+36AYkCG+cPXIAFpwl
         Xe6eAScS2d+QQ6a1Ci3mOfkezlnKzg2m0vne8JgvaviGt1ieIWC7wbCIxeecHw65ZpMw
         nIABHeNB4KdmfWjCFwnPDEYswUQ8JnnFanE+k9+EEmwCi1md3Yz7yrka+Gg9lx/3DWcH
         BE2RtfmSSHh+Lbhlf5p6wSH2rvcv68yo0X74TIe630u71ZGdWCGXYOnh6VcFXvxpYSIW
         RyPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ExXE1hUxbj1Xmdw/oWFBfNlnETazNIWn3KzsoDfLRnk=;
        b=SoY1auiR0QDawR+TFXXKVZXwo/zA/29l41Q9XVa/wgUrHD1ai+mFsoG/mA1En1D70P
         pkU4EmK93aHAwguopKPX8IiINu/q1onLcPHqsx2G5N9M4Yd+fX/BXF87MYRXPv1JJZVE
         xGZHQV0YPKFtgmxRUYZhLzmSDUlz5W8kweS+hdq7yci6d6627bEGmim8q2ZPJ9OPilDA
         RA/7Fe9+oLay0ikgpSicQs/mjkL4BuMoXsVAaIyZ416OCLoWObHUlOmuWqz+hbDOCRjP
         qaJubTmslWLnmL+LbeWpATBSIvJ9aFIuwfgUAaUoM2MOzEjomrhYNjHndB3CfZBtVjKJ
         8+0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GHUlZN4c;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y19si218821yby.1.2020.03.11.09.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 09:58:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GHUlZN4c;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583945932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ExXE1hUxbj1Xmdw/oWFBfNlnETazNIWn3KzsoDfLRnk=;
	b=GHUlZN4cLFKpFfoU3hHoClEcGWiPY6qozFc+xUBLFpPZFn59Gfk+mCyQHis5iN++sBIgAG
	mlGBqtngeVE9azu1DUTZW6q47WjlWaBtW4hpqniCvoYyOCSvWyA70LiVI7t5Uc72Tqpc/F
	y5GbZEK+Jn5LXIsxLzedQGEJnzIOP78=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-A9KI-s0pPqSIQQsGxzaPCA-1; Wed, 11 Mar 2020 12:58:50 -0400
X-MC-Unique: A9KI-s0pPqSIQQsGxzaPCA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09156190B2A5;
	Wed, 11 Mar 2020 16:58:49 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90D381001DDE;
	Wed, 11 Mar 2020 16:58:46 +0000 (UTC)
Date: Wed, 11 Mar 2020 17:58:39 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: makefile variable
 longline fix
Message-ID: <20200311175839.24085e54@elisabeth>
In-Reply-To: <20200311131056.GA4361@tulip.local>
References: <20200311131056.GA4361@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Veera,

Thanks, this mostly looks good, in general. A few notes:

- the commit title is typically in an imperative form, that is, for
  example, "[...]: Fix long line in Makefile variable"

Also,

On Wed, 11 Mar 2020 18:41:02 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> A simple makefile variable longline definition fix

It would be nice to also mention if you used a tool to find this.

> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/sm750fb/Makefile | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
> index 1cf3849cef23..6f832916ba65 100644
> --- a/drivers/staging/sm750fb/Makefile
> +++ b/drivers/staging/sm750fb/Makefile
> @@ -1,5 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_FB_SM750)	+= sm750fb.o
>  
> -sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
> -sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
> +sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o
> +sm750fb-objs		+= ddk750_chip.o ddk750_power.o ddk750_mode.o
> +sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o
> +sm750fb-objs		+= ddk750_dvi.o ddk750_hwi2c.o

...and while this fixes the long lines for sure, a more common way is
to use backslashes at the end of the lines. Compare it with other
similar cases: you don't need to do something like:
	drivers/staging/wfx/Makefile

but what's done for example in:
	drivers/staging/comedi/Makefile

looks appropriate here (using 3 or 4 lines I guess).

If you send another version of this patch, don't forget to indicate
that under "---", see recent discussions on the outreachy-kernel list
for examples.

-- 
Stefano


