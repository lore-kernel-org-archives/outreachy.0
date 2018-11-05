X-GM-THRID: 6620354100879949824
X-Received: by 2002:ac2:434b:: with SMTP id o11-v6mr1163681lfl.5.1541433070860;
        Mon, 05 Nov 2018 07:51:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:92c7:: with SMTP id k7-v6ls1005067ljh.11.gmail; Mon, 05
 Nov 2018 07:51:09 -0800 (PST)
X-Google-Smtp-Source: AJdET5d2R+wtgl7pcMpTydBZf5whHJHzy8Bnw0BVnwyEUs0w6dJtbuc781AqyjsMi88wEAyaoOzd
X-Received: by 2002:a2e:5d0c:: with SMTP id r12-v6mr643963ljb.8.1541433069726;
        Mon, 05 Nov 2018 07:51:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541433069; cv=none;
        d=google.com; s=arc-20160816;
        b=a0vdiYgGvDHx7BVbpFhPVYhPkYh4PAL4eDbv7O4dMI7C04QGTXjA3YZIFawA4qi5Gl
         KEOVQhPw1WuwYnZ5xuBEQaE5YqdGLqoDfWG1RtENGyu6Ky5D9CfO9d34KbVJcbGoyCDk
         J7+Vs/z1EjyKVml5pgVBzm8SxgjHRdrnR8RL/l24tpVRrmLpWk5JykofYTedDXlsFyQR
         /BjXbTV8iGdQ7NRWSD6qDiKG7yW2L8bq9KIi2+xDS5wvxMLP2+8jU6Zptif6/Ta7leC0
         pCFN6H9m2GV67g2ixud8mCwX18JT0e3AtzJxJN375xvEkP6CPKtT4g8iCm/ipT3Xd3Gu
         VE/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RtK2UXJ9nrj/GY3W+bWfDMG2iMAbzpkhYzrog+3XPmw=;
        b=g86gHFxL3kimFA3GqVL2Ulx8rENudK0zfXNYfa/P0BJD0SvxWdB5kL3NA2wON79QWa
         LmpTrBb7dswxSyPr7EQoReQsqSzK8xeKg9qWR4CCnjvuS0BkT1cwd1f0LCO/ZW1kJ6w0
         tVCUqcrXV/SQ7INdd5St7F1/hky5awfCICJTVUVgQVJORwLSI86c/25jNPGgSiUIXWoI
         VQv6JlcHPPNNfxpqoqlJ5RXr0qlSxyrq5UE65Fwg1fdHx0vFzXQ0SAJnjW1wUoiHPTmG
         XhhBTiwuI8Og+PgnhWu6megHMNhNpWfeefrd9AXZ45lQE9ueHsNvphSfnnIFu/e4pMYO
         2Ebg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n5-v6si504336ljh.2.2018.11.05.07.51.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 07:51:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,468,1534802400"; 
   d="scan'208";a="354212329"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 16:51:07 +0100
Date: Mon, 5 Nov 2018 16:50:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gao Xiang <gaoxiang25@huawei.com>
cc: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>, 
    Chao Yu <yuchao0@huawei.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Sasha Levin <sashal@kernel.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>, 
    linux-erofs@lists.ozlabs.org
Subject: Re: [Outreachy kernel] Re: [PATCH v3 2/2] staging: erofs: Modify
 conditional checks
In-Reply-To: <3ac63350-6bfc-0dba-2649-ad7f91dd94c9@huawei.com>
Message-ID: <alpine.DEB.2.20.1811051650270.31780@hadrien>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com> <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com> <3ac63350-6bfc-0dba-2649-ad7f91dd94c9@huawei.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Gao Xiang wrote:

> Hi Bhagyashri,
>
> On 2018/11/5 22:50, Bhagyashri P. Dighole wrote:
> > Fix coding style alignment issues detected by checkpatch.pl
> > Use ! for NULL test rather than explicitly comparing to NULL.
> >
> > Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v3:
> > - Split patch in two patches. Each patch have similar
> >   kind of changes. One patch for all alignment fixes and
> >     second patch for all conditional check fixes.
> >
> > Changes in v2:
> > - Fix for one alignment issue and one conditional check issue.
> >
> > Changes in v1:
> > - Fix for all issues in data.c
>
> As the Greg said before, there are too many patchset v3... :(
> Apart from its content, could you please resend the whole patchset
> by using a proper version number...
>
> It is really confusing for me as well...

Bhagyashri,

When you resend, you should include the Reviewed-by that you received.

julia


>
> Thanks,
> Gao Xiang
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3ac63350-6bfc-0dba-2649-ad7f91dd94c9%40huawei.com.
> For more options, visit https://groups.google.com/d/optout.
>

