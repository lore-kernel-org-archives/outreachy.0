Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976AC110C
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 06:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="no+rlafx"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=r5wfVJ/kKLS8ub4Y8/ahtBuzYO0fFm3xI/suGcx651s=;
  b=no+rlafxiOwDMOWTI1DIuD7SGKY9tvG+Xrf7atSYoCRN/bDv7rbVUNct
   8IwOhavaHvi6a8ugrrapyjH+wBJFegS9k8heTDLbprHQHLxMayizJVPZc
   LYzJZN+kvI8vdv+KE5ycG4/s1bg6hpxlTU5MTD0oWq1CTANZWBukzXwu0
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,221,1694728800"; 
   d="scan'208";a="68593303"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2023 08:41:33 +0200
Date: Fri, 13 Oct 2023 08:41:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dorcas Litunya <anonolitunya@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy]Clarification on code section in qlge driver
In-Reply-To: <ZSjkhx+xWP9xXiAt@dorcaslitunya-virtual-machine>
Message-ID: <388ed3fe-8e5f-9be9-4072-30ebbdd17960@inria.fr>
References: <ZSjkhx+xWP9xXiAt@dorcaslitunya-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Oct 2023, Dorcas Litunya wrote:

> Hi Julia,
>
> I am trying to edit the above macro to incorporate an inline function as
> macros with control flows are highly discouraged. However, I wanted to
> inquire about some parameters in the FILL_SEG  macro below so that I can be able effectively
> create a well parameterized function.

seg_hdr and seg_regs are not vealues, they are field names.  There is no
way that you can pass a field name to a function.  You could pass the
complete values &dump->seg_hdr and dump->seg_regs, but then one could
wonder why not pass dump as well.  And then the calls would start getting
a bit large.

Since this macro is specific to a particular function and is defined right
before that function, I think it would be better to leave it as it is.

julia









>
> #42: FILE: drivers/staging/qlge/qlge_devlink.c:42:
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
>
> The fmsg parameter and the dump parameter, both
> in the qlge_fill_seg_() function inside the macro, where are they referenced from?
> Looking through the code, I cannot see global variables in relation to
> this. Are they command line arguments or does is thekernel set to
> provide them?
>
> Any assistance will be appreciated.
>
> Kind regards,
> Dorcas
>
>
