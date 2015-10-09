X-GM-THRID: 6203392298463526912
X-Received: by 10.112.55.69 with SMTP id q5mr2318769lbp.24.1444379932513;
        Fri, 09 Oct 2015 01:38:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.230.226 with SMTP id tb2ls298359wic.49.canary; Fri, 09 Oct
 2015 01:38:51 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr1650619wib.2.1444379931821;
        Fri, 09 Oct 2015 01:38:51 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id hs5si481165wib.1.2015.10.09.01.38.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 01:38:51 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LxOBe-1ahKNs24CI-01713r; Fri, 09 Oct
 2015 10:38:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lent: add missing __user __user annotation
Date: Fri, 09 Oct 2015 10:38:49 +0200
Message-ID: <13545083.iLYdsH5vZG@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAHWJYFnS3+EvKFGDsNHz5hPvbdXvOQyxSzJAZdy77Y3W6HVbvA@mail.gmail.com>
References: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com> <6819793.vktgQQm1tK@wuerfel> <CAHWJYFnS3+EvKFGDsNHz5hPvbdXvOQyxSzJAZdy77Y3W6HVbvA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:yCxKA2qEONMmUrtYK7sg8ZWdZuITB515hB07UgwQklImSSdvaTs
 5r0q4V9oJMf0lhIdasLVxJUOo815PtGg9BnzqGWGAgF+qDwzYGCTUKO4YeOHf8fuK7TDCso
 omUWlnTsLs+nZcHMpmV2y0MPJ4pkGiUjyQso19WxlFJ1bvyZYIsKY1RiE6xgQhhbL/IYGPT
 vn2ZcBqejDrPkz5M3bWqw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:OswvKNON1DE=:3rvbhU95J1j9/02xYeSsIn
 oBw3zbQ9498KHjz+K7ReaDvhFCe3rJ7snndkzcWqAoXx600zw920hkCzdZOLFP6un8mjXXfgq
 2Jh/BiDJ/3X68FoORUN+9DNUyKNPqzdOkr0yyasbANLB2aT5w8aWViCRcNvDIjiAwl/Sfa1H5
 wiWED5wsDQhrNMULqiO/DSx1oZX9SsArVh0273iYO+FmQa0mt85cqclULX88Gp27wZGAmKU5k
 ddj1vF03C9tbfELDcaS6en4Qv20jEPBzHI4vsl1nZHD26Ii4btRwPpwoCEIhKWwSTiWic/Uj8
 wc1zNdRgb+g6FlgrF2To5A9IiUSYHpl8R1R+OKOyLRWepSx41+gyhSC7x2h+7i6FxAFDuDrL7
 +RB5rxqPruVAix05kwXCmIirWN8KsjvIG5hFQQYKCPjFPMHrflRN/CdpXrg57cASEWngZRicW
 a9rPhdc21lam3SFqZIVJnBA6MxRqcfIInom490LLFywf0UFfLAQME1LERQiX8mdHxOIiypDtl
 lCS3XXKKsx8dwiijBbR31Um7xbpe4MmzrhpRDwOJ6IByWky24MQKb1qXqPVGrP+ggw1Ylj4vr
 +OfmAsA5G1LxUpzDzKKRfSQuh0AFK2c7WZ+uZJeq/ThRAADM8mqbAfZqwq3c5h7erU0dCN1rZ
 lgTRzwbECTUxR0/QFgSilgBB6TeHcfDG67DaI2PlGZKDEMJnTZtt184ssH6qT7VKOzAkkZRvU
 gV4HjYnP1FZU1hY9

On Friday 09 October 2015 01:29:59 Ioana Ciornei wrote:
> >> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
> >> index 024aaee..7ba9022 100644
> >> --- a/drivers/staging/lustre/lnet/selftest/console.c
> >> +++ b/drivers/staging/lustre/lnet/selftest/console.c
> >> @@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t *msg,
> >>       case LST_TRANS_SESQRY:
> >>               rep = &msg->msg_body.dbg_reply;
> >>
> >> -             if (copy_to_user(&ent_up->rpe_priv[0],
> >> +             if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
> >>                                    &rep->dbg_timeout, sizeof(int)) ||
> >> -                 copy_to_user(&ent_up->rpe_payload[0],
> >> +                 copy_to_user((void __user *)&ent_up->rpe_payload[0],
> >>                                    &rep->dbg_name, LST_NAME_SIZE))
> >>                       return -EFAULT;
> >>
> >
> > This looks wrong. I have not checked what is actually going on here, but
> > you should never add a __user cast to a variable that is accessed
> > through a kernel pointer. Can you find out where the ent_up variable
> > is and why it is not marked __user itself?
> >
> 
> I searched a bit through the source code and the hierarchy of calls
> starts with an ioctl interface where a copy_from_user() is used for
> getting user data.

Ok, good.

> In the entire file (and also others browsed through searching) I do
> not see any _user annotations and, sadly, I do not understand
> perfectly what you are looking for.

The idea of the annotations is to let the compiler know whether a pointer
is for kernel (no annotation), user space (__user), memory mapped I/O (__iomem)
or one of the rarer types, and warn if some code incorrectly assigns
a pointer of one type to another.

The kernel pointers are the only ones that you are allowed to dereference
directly, the others go through special function calls (copy_from_user,
get_user, readl, memcpy_toio, ...) and can only be passed to functions
with the same annotations otherwise.

For an ioctl, you normally get the initial pointer from the ioctl
function argument, and then pass it down through other functions
as a __user * pointer. It sounds like the mistake in this code is that
the annotations are missing completely and need to be added starting
at the point where the 'unsigned long arg' is converted to a pointer.

If a cast is necessary, it should be done at the earliest possible
point, and then the pointers passed down with the same annotation.

I took a closer look at the specific ioctl here and unfortunately I
found that it's done in a rather obscure way by having linked lists
in user space that are walked by the kernel, which can complicate
things a little bit. It would be nice if you can try to add all
the right annotations here, but a better long-term outcome would
be if we could find a way to get rid of these ioctls. I don't know if
they are required for operation of lustre, or if they could be done
differently.

We certainly wouldn't merge code doing this outside of drivers/staging,
but we have made exceptions for ugly APIs in the past when they were
in widespread use.

Greg might be able to comment on the last aspect.

> Also, if there is a copy_{to/from}_user call isn't it supposed that
> the source, respectively the destination parameter, point to a
> userspace pointer?
> Or is there any other way this type of functions could be used
> successfully with only kernel space pointers?

Generally speaking no. If you ever pass a kernel pointer into copy_from_user,
you normally either have a security hole, or a crash, depending on the CPU
architecture.

> It would be very appreciated if you could expand on what I should look
> for in this situation.
> 
> Sorry for the newbie questions.

No worries.

	Arnd

