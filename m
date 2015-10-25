X-GM-THRID: 6207016662523183104
X-Received: by 10.112.184.170 with SMTP id ev10mr7275861lbc.4.1445783512711;
        Sun, 25 Oct 2015 07:31:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.92.199 with SMTP id co7ls199328wib.37.gmail; Sun, 25 Oct
 2015 07:31:52 -0700 (PDT)
X-Received: by 10.180.160.194 with SMTP id xm2mr3164817wib.6.1445783512292;
        Sun, 25 Oct 2015 07:31:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d7si384692wiy.2.2015.10.25.07.31.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:31:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,196,1444687200"; 
   d="scan'208";a="151692878"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Oct 2015 15:31:51 +0100
Date: Sun, 25 Oct 2015 15:31:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: lustre: ptlrpc: Replace
 seq_printf() with seq_puts()
In-Reply-To: <CA+5yK5E=0Ed0HUtJoxx6VGKr6EuBGfdgnR8=Ja_wEUTxk7whMw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510251531180.2502@hadrien>
References: <cover.1445183494.git.amitoj1606@gmail.com> <df74c544b09b3f3205ab904fe879869400af3d5f.1445183495.git.amitoj1606@gmail.com> <20151025013856.GA8425@kroah.com> <CA+5yK5E=0Ed0HUtJoxx6VGKr6EuBGfdgnR8=Ja_wEUTxk7whMw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 25 Oct 2015, Amitoj Kaur Chawla wrote:

> On Sun, Oct 25, 2015 at 7:08 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sun, Oct 18, 2015 at 09:33:37PM +0530, Amitoj Kaur Chawla wrote:
> >> Replace seq_printf() with seq_puts() since it is more expensive than
> >> seq_puts(). Problem found using checkpatch.pl
> >> WARNING: Prefer seq_puts to seq_printf
> >>
> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> ---
> >>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> >> index 6cf9b92..23f1e26 100644
> >> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> >> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> >> @@ -923,7 +923,7 @@ static int ptlrpc_lprocfs_svc_req_history_show(struct seq_file *s, void *iter)
> >>                          (long)(req->rq_sent - req->rq_arrival_time.tv_sec),
> >>                          (long)(req->rq_sent - req->rq_deadline));
> >>               if (svc->srv_ops.so_req_printer == NULL)
> >> -                     seq_printf(s, "\n");
> >> +                     seq_puts(s, "\n");
> >
> > Shouldn't this really be seq_putc() instead?
> >
> > thanks,
> >
> > greg k-h
>
> 's' is not of char type but char *
> I build tested this and sent. After your question I had doubts again
> so I tried seq_putc() but it breaks the build.

"\n" could be '\n'.

julia

>
> --
> Amitoj
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5E%3D0Ed0HUtJoxx6VGKr6EuBGfdgnR8%3DJa_wEUTxk7whMw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

