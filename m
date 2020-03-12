X-GM-THRID: 6803299178996826112
X-Received: by 2002:a17:90a:a890:: with SMTP id h16mr4341456pjq.55.1584020328735;
        Thu, 12 Mar 2020 06:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls2870683pjo.2.canary-gmail;
 Thu, 12 Mar 2020 06:38:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvR1XiGm0DugEi+CCT2/mJ9jj+gOtVhNQpIB4uuWpsi1S2et4P30K9lH45Btg9a1zjroPcn
X-Received: by 2002:a17:902:7d8f:: with SMTP id a15mr8154352plm.107.1584020327065;
        Thu, 12 Mar 2020 06:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584020327; cv=none;
        d=google.com; s=arc-20160816;
        b=gFQxK72stVO/i+ZSgvW2tFvASbgHjU069gEPs7LaLm96CF4rUjrK2qHTqGcxNTVWhc
         bhjoxVi6oFdflSZ9TMyGWz6fU0F+E9R1utZd+Vbe8FGhEDk3CveJUXQEcTH0+BpmHyy8
         mvpZF/O0TNY9dyae1YrJVjXcqi3kiX1FaW4ewtq0eT7TVeECPq5iIFEgdw7Uj7gj8tvr
         qMohpCIVQH3jebXecNG7BhYg6R2FmDBMdyOhboaZNK9Voft+5AyXNqCpK9APy0Wo6CcY
         I4PpfuWEYibHhJye7JCmktd1ElaDRQ+h17xJr21w9poSHYt6NJGgOAl629vgTp8KP8GO
         wPOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yxaQmwt+3Qg4g9CE6GSiPBTXFGTBTlrvkEYZaPaNbew=;
        b=c319JivAkoU5f7uMHd7jkW/aVE5YnXBzaLD+r1rsy8SC1oBQytID4C3XRwaFhmwgIr
         +SLOXmvuKvTr9d7LxQgODu3Sw2HJ7QFCq772nJ/q1fXbM3SHpbvfPs0VhOprkSTV/oM/
         VJqycM3fMTKNyBQQDeRHUg++hHEvu8ufDVgo/57Nbkxla6zSgaHrha1UJVGxZYQ1QhEb
         azAuPtDKIO8MT8F31V6B0KatANDcA99RpopuZ21kgyGZHQCHCT24QSEB1Drd7g8dt+eW
         9gnLTX1QYZOF2lcUkj39eHAcXglHkVfbWrSp1VYKsfHH+FkCGeyqGpOMEBx2Z3I58Sm1
         QYbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ly8uarlr;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 83si209512pge.4.2020.03.12.06.38.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 06:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ly8uarlr;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584020325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yxaQmwt+3Qg4g9CE6GSiPBTXFGTBTlrvkEYZaPaNbew=;
	b=Ly8uarlromzBl0LX1HUn4Y951uS1PLYK31ved7x+FeXBnTl4IfW8RPFpPIbooOeLG6YKpM
	eX28i/omhSFFCS/fQ7vfQh4Fs6ldgR8xbCmpK1PGjoUjtazjtN0EXDHRb1kE8zLhyvnuUu
	1VgkXtYFPjKoMUGLvS4+RdXgPYK4dHo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-lR5V-yAeMC-5lECx765uWw-1; Thu, 12 Mar 2020 09:38:38 -0400
X-MC-Unique: lR5V-yAeMC-5lECx765uWw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E89F107ACCD;
	Thu, 12 Mar 2020 13:38:37 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EA351001B3F;
	Thu, 12 Mar 2020 13:38:34 +0000 (UTC)
Date: Thu, 12 Mar 2020 14:38:27 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Fix longline in
 makefile variable
Message-ID: <20200312143827.03e49228@elisabeth>
In-Reply-To: <20200312123512.GA5513@tulip.local>
References: <20200312123512.GA5513@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Veera,

This doesn't address some observations I had about your previous
version. Namely:

On Thu, 12 Mar 2020 18:05:17 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> A simple fix of long line makefile variable assignment.
> Found using checkpatch.pl.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---

1. you didn't note the revision log here. By the way, that would also
   assume this becomes a "v2" (indicated in title as well), and the next
   one becomes a "v3". Again, see recent discussions on this list.

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

2. this is redundant. You can use backslashes for continuation.
   "sm750fb-objs += " is an unnecessary left margin decoration in this
   file. I read your comment about "keeping the maintainer's style", but
   I had observations about that, and you didn't follow up.

Please re-send. I don't think this patch should be applied as it is.

-- 
Stefano


