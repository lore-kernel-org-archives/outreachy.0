X-GM-THRID: 6608897994052861952
X-Received: by 2002:a63:4862:: with SMTP id x34-v6mr5095878pgk.25.1538766458093;
        Fri, 05 Oct 2018 12:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:87c6:: with SMTP id i189-v6ls1741994pge.9.gmail; Fri, 05
 Oct 2018 12:07:37 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60Zov+uGN3QG7qIHIYs13cK/zB7mm03/k1KWQ8uzXcetxEN3qBb6dF83frHCgK7bZn4iQsK
X-Received: by 2002:a62:46cf:: with SMTP id o76-v6mr5796417pfi.69.1538766457356;
        Fri, 05 Oct 2018 12:07:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538766457; cv=none;
        d=google.com; s=arc-20160816;
        b=pcQ+xBBlE6G+bIRobW+xoklo7DohqnrodubWNYWX7dJTQkmjIAYxvMhL4/TlN3Mdl/
         rJ8heDLaRTkioMoc0wdqYvlk86Vs0CfdOSxGC/kU8hR/f5lDigcHSm+eTu4MP+16AXuF
         g4NO1Wcuv8z82FEBxuW0zIaPlohLJzEmxdYO7WZrMeykISU6LG2Vc/7b7LcWJXrH52o2
         sTfswHF7vAcIUlXfMkYHqtgrDdp++4y+nL6WQlVmFYRlyIX/PiVNob/4D93vBN26CJkV
         L2GsvcznX6D8Ll2Q11moKUBKl/WwucvsHqXU5Zmob98KRO1FiIJSUQC0PsA+66XnMngk
         6rig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=VMTkNFOYmzck0rSlVIEYlHZ+1snr98DaaLeRXnVpqBk=;
        b=tBnZ2LKgnczBwpXxORkpcGUTpEaZapQtXWqk1vErgDKDiAKFZmFV7DsiHCxO15KoLp
         0ceQkP8Pkrr+83uDb+JTYM5jZs3DRczlU1jg88mMkpQ7SqXyj6k/3e/UiBXBQvlEZ5U6
         bL6Lf128s2QR6RJ2uuH8NS2RYvS6/PGvMx4tZ46FxuSVRglnAAEHHpjijSbMU2v6/4/Y
         JRTk/ARZOzQY7O3YecJ7zA6Y/LRi6QcKYgOYA0kW4gGH9guqHKXeFjEtmVbWWIAmnHZQ
         PM2TGn7dK05MG9o86d2LpmMWxVLuT5vP2Jg9K89S1e0k0BsvDXykOZ3+pY1FzaNSniLF
         hoxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-07.prod.phx3.secureserver.net (p3plsmtpa11-07.prod.phx3.secureserver.net. [68.178.252.108])
        by gmr-mx.google.com with ESMTPS id y7-v6si310458pfe.1.2018.10.05.12.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 12:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.108 as permitted sender) client-ip=68.178.252.108;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f42.google.com ([209.85.221.42])
	by :SMTPAUTH: with ESMTPSA
	id 8VRngcKDwRP6y8VRngdWXE; Fri, 05 Oct 2018 12:07:36 -0700
Received: by mail-wr1-f42.google.com with SMTP id z4-v6so14591627wrb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 12:07:35 -0700 (PDT)
X-Gm-Message-State: ABuFfoh///FHHoptA5BDOX47egM/5SoXjqdjZHD6SjSe6by1xImjamq3
	HrsiBRlvZoH5fyJyqLpc6pRx5K+1SFUpK3Z9hno=
X-Received: by 2002:a5d:4101:: with SMTP id l1-v6mr9851732wrp.45.1538766454908;
 Fri, 05 Oct 2018 12:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538752705.git.mamtashukla555@gmail.com> <20181005181050.GC30924@himanshu-Vostro-3559>
In-Reply-To: <20181005181050.GC30924@himanshu-Vostro-3559>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sat, 6 Oct 2018 00:37:21 +0530
X-Gmail-Original-Message-ID: <CAK-LDbL_OWoAfuXNBhLFUN33M6LJp=pPW9Q_9KUj+ooENidRZg@mail.gmail.com>
Message-ID: <CAK-LDbL_OWoAfuXNBhLFUN33M6LJp=pPW9Q_9KUj+ooENidRZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: vt6655: Fix coding style issues
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: mamtashukla555@gmail.com, outreachy-kernel@googlegroups.com, 
	forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfDtA/utwqGQU8/1sxb090PiWaFq4TMJjZLLbUp60ggg2XeCddyuIzj/5aAZXuYQ2s0ZTEVYTbtXws6H1nt0x06uiBBkBJJjXQ5o6mnXkZRMzFtMV2Eni
 l1fxBzo6uDrv2Y21vfaVNlMWYWSP2peL9hJ3XfPaLOmQBa/eYeVAHRN/mtrguuaCedvwcDpCqIuRTJ+yRwrvJJ8iTtvmqkASUb8=

On Fri, Oct 5, 2018 at 11:40 PM Himanshu Jha
<himanshujha199640@gmail.com> wrote:
>
> On Fri, Oct 05, 2018 at 09:09:26PM +0530, Mamta Shukla wrote:
> > Fix issues found using checkpatch.pl for vt6655 staging driver.
> >
> > Mamta Shukla (4):
> >   staging: vt6655: Add blank line after function/struct/union/enum declarations
> >   staging: vt6655: Add spaces around '*'
> >   staging: vt6655: Add spaces around '-'
> >   staging: vt6655: Remove space after cast
> >
> >  drivers/staging/vt6655/rxtx.c | 29 +++++++++++++++--------------
> >  1 file changed, 15 insertions(+), 14 deletions(-)
>
> Don't put a cover letter for these checkpatch changes.
> It doesn't convey any additional info about the patch
> series and therefore isn't required.

Himanshu, we recommend to use cover letter even for cleanup patches
for Outreachy applicants because it helps them to practice and understand
how patch series works. So, I would still prefer to have it.

Mamta, I think in this case you can probably put what sort of checkpatch.pl
issues your patch series is handling rather than just saying that it is fixing
checkpatch.pl issues.

> Also, adding spaces could be squashed into a single patch.

I agree.

> Just remember these for future..
>
> Otherwise, ACK for whole series!
>
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181005181050.GC30924%40himanshu-Vostro-3559.
> For more options, visit https://groups.google.com/d/optout.

