Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD46D20EE
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=dQIUcuMEckrKhTsNdow6v/J5/9wSBTFcCb2vcu87Xtw=;
  b=mlUZEO/Ehba6t6tFh+MotVo55Ir2y3tblyfHWqJ0SywM5ZVdJv9e8oU6
   fl2FAnZa3qeSo+voU/5hXJx4fl5Bg6dhSJVQF3KgXVVF2qinJJxMb68qW
   ALs3fF0+UxpAnrleSAdjdGCNZD39rqM3JEKths3Z4o5wYJ7NWzYTrlp4P
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,265,1673910000"; 
   d="scan'208";a="50339092"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 09:26:31 +0100
Date: Thu, 16 Mar 2023 09:26:31 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Warn on macros with flow control statements
In-Reply-To: <20230316080834.GA43491@sumitra.com>
Message-ID: <f1b47a95-7c16-44d3-b9f4-daeba3274d3@inria.fr>
References: <20230316080834.GA43491@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Mar 2023, Sumitra Sharma wrote:

>
> Hi
>
> I am working on the below chechpatch.pl check
>
> WARNING: Macros with flow control statements should be avoided
> #42: FILE: ./drivers/staging/qlge/qlge_devlink.c:42:
> +#define FILL_SEG(seg_hdr, seg_regs)                                        \
> +       do {                                                                \
> +               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> +               if (err) {                                                  \
> +                       kvfree(dump);                                       \
> +                       return err;                                         \
> +               }                                                           \
> +       } while (0)
>
>
> I was trying to change this macro into an inline function like this
>
> static inline int FILL_SEG(struct devlink_fmsg *fmsg, struct mpi_coredump_segment_header *seg_hdr, u32 *seg_regs)
> {
>         int err =0;
>
>         err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
>         if (err) {
>                 kvfree(dump);
>                 return err;
>         }
> }

This is not a promising approach.  The return that you have here will just
return from the function that you have defined, while the return in the
macro was intended to return from the function that calls the macro.

The problem with the macro is that when you look at the uses, you don't
know that a return is possible.  But given that the macro is defined right
next to the function that uses it, and that somehow extracting the return
from the macro would be hackish and complex, the code is probably ok as it
is.

The macro is pretty unpleasant, also because it captures several variables
(fmsg and dump).

Maybe a solution would be to replace all the macro calls with:

err = err || qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);

and then test for a non zero err value at the end.  But maybe wait for
someone else to weigh in before taking that approach..

julia

>
> But I am not sure whether I am going in the right direction..or how to
> move further in it. I am looking for some guidance.
>
>
>
> Regards,
>
> Sumitra
>
>
