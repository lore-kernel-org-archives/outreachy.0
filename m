X-GM-THRID: 6392026082663464960
X-Received: by 10.46.88.70 with SMTP id x6mr78821ljd.22.1488264731476;
        Mon, 27 Feb 2017 22:52:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls26812ljo.45.gmail; Mon, 27 Feb 2017
 22:52:10 -0800 (PST)
X-Received: by 10.25.29.11 with SMTP id d11mr78501lfd.14.1488264730976;
        Mon, 27 Feb 2017 22:52:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si1007184wmg.3.2017.02.27.22.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:52:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,218,1484002800"; 
   d="scan'208";a="214946212"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 07:52:10 +0100
Date: Tue, 28 Feb 2017 07:52:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
    Greg KH <gregkh@linuxfoundation.org>, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Replace typedef with
 struct
In-Reply-To: <CAOCi2DF+Fk0NBasd6QD4mfkpEY1o4r0HAyewQVgdfMd=OAyW9w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702280751360.2078@hadrien>
References: <1488259405-19730-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702280744060.2078@hadrien> <CAOCi2DF+Fk0NBasd6QD4mfkpEY1o4r0HAyewQVgdfMd=OAyW9w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-506451157-1488264730=:2078"

--8323329-506451157-1488264730=:2078
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 28 Feb 2017, Gargi Sharma wrote:

> On Tue, Feb 28, 2017 at 12:14 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Tue, 28 Feb 2017, Gargi Sharma wrote:
> >
> > > As per the Linux kernel coding style guidelines, using typedef for a
> > > structure type is not recommended. Hence, occurences of typedefs have
> > > been removed.
> >
> > You have only changed the type definitions and not any uses.  Were there
> > no uses?
> I used grep for both the structures and did not find any uses. I also
> compiled the
> kernel after making these changes and it compiled without any
> errors/warnings.

OK, it could be nice to mention this in the commit log, because it would
improve the reader's understanding of why the change is correct.

julia

>
> thanks,
> gargi
> >
> > julia
> >
> > >
> > > Coccinelle script:
> > >
> > > @r1@
> > > type T;
> > > @@
> > >
> > > typedef struct { ... } T;
> > >
> > > @script:python c1@
> > > T2;
> > > T << r1.T;
> > > @@
> > > coccinelle.T2=T;
> > >
> > > @@
> > > type r1.T;
> > > identifier c1.T2;
> > > @@
> > > -typedef
> > > struct
> > > + T2
> > > { ... }
> > > -T
> > > ;
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > >  drivers/staging/lustre/lustre/include/lustre_eacl.h | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h
> b/drivers/staging/lustre/lustre/include/lustre_eacl.h
> > > index 1e71a86..c198eda 100644
> > > --- a/drivers/staging/lustre/lustre/include/lustre_eacl.h
> > > +++ b/drivers/staging/lustre/lustre/include/lustre_eacl.h
> > > @@ -49,17 +49,17 @@
> > >  #include <linux/fs.h>
> > >  #include <linux/posix_acl_xattr.h>
> > >
> > > -typedef struct {
> > > +struct ext_acl_xattr_entry {
> > >       __u16              e_tag;
> > >       __u16              e_perm;
> > >       __u32              e_id;
> > >       __u32              e_stat;
> > > -} ext_acl_xattr_entry;
> > > +};
> > >
> > > -typedef struct {
> > > -     __u32              a_count;
> > > -     ext_acl_xattr_entry     a_entries[0];
> > > -} ext_acl_xattr_header;
> > > +struct ext_acl_xattr_header {
> > > +     __u32 a_count;
> > > +     struct ext_acl_xattr_entry a_entries[0];
> > > +};
> > >
> > >  #define CFS_ACL_XATTR_SIZE(count, prefix) \
> > >       (sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1488259405-19730-1-git-s
> end-email-gs051095%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.17022807
> 44060.2078%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DF%2BFk0NBasd6QD4m
> fkpEY1o4r0HAyewQVgdfMd%3DOAyW9w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-506451157-1488264730=:2078--

