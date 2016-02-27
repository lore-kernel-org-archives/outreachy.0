X-GM-THRID: 6255876964906696704
X-Received: by 10.107.135.93 with SMTP id j90mr10067978iod.27.1456565365667;
        Sat, 27 Feb 2016 01:29:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.104 with SMTP id dz8ls765402obb.8.gmail; Sat, 27 Feb
 2016 01:29:24 -0800 (PST)
X-Received: by 10.182.22.48 with SMTP id a16mr4694527obf.29.1456565364893;
        Sat, 27 Feb 2016 01:29:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x233.google.com (mail-oi0-x233.google.com. [2607:f8b0:4003:c06::233])
        by gmr-mx.google.com with ESMTPS id ph8si409299igb.0.2016.02.27.01.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 01:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::233 as permitted sender) client-ip=2607:f8b0:4003:c06::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x233.google.com with SMTP id x143so8125929oix.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 01:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=bWV6Bgt0LZIIIS3bwmFKvDNWB93t4Snoz+K1f49PPAE=;
        b=E9SSbouDkbQIwcsChrauwlxtmmy2/ZkOF5hXpeXAAVHYjDAM879JBmG7WlW55bkHyx
         aPaKBLWof0GvgoGsj48GXtmb5K68XGntIbq7fZAeLXSRfYZY3+6TzcpuukQiK0m2Dk7+
         Q6WL/+FU70I/QZEthxQXKYBiSVjI95OHvfwmgttIMIkYRHt4y/cvunl+y5GygBAIwn7r
         F7vlMG+eIpiVJGQs4KK52X+2cxga2cNHyrOHqDvRgpe6sYabcRJLrhCA0X6wSlRV4/bN
         NNqlfwhiPBQEJ5fp3WRXRDCSFOqCd1ljtechGKgHin5zwtTSK99Vt7PbQURVsUvwMEIn
         DjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=bWV6Bgt0LZIIIS3bwmFKvDNWB93t4Snoz+K1f49PPAE=;
        b=gFo471L4bCPnM1MRl0meS6uPxWkRv4CpSaBgTuQ3mEFbtlOpTgBmgyvOq8hQPS5OWv
         sFgXvt1SWckFaksjtrW033ATvPepJsOchL3Uj77mUT+wukgZhZF98pa7mk/X+3HcUDKE
         cczhTkTvJ+fDBEI4QAnyUNr3tDyV67N9JAFOr0F06F5NMiKKtpxKltaaaryvE0xvnlfo
         Z2/bRv+uLpjrc9WbbT2C0Ynh1j+OJnvtG5vDn7x+EQya8Faf9xown8qW+c7AcXB7usrs
         uwsMwrav97BsDgoPeE5vQmzqtPr7FPdUxs7T97kjXbvqtRK6FC+340A/nFe12xuITDJH
         RaSQ==
X-Gm-Message-State: AD7BkJK3Dcxw4G3xnCCXZxCukw99gu6KVk616DIQ9GAzkqTaPrAmrZqzAhUENvnZULWptwTeBWLJpLyeyAD99g==
MIME-Version: 1.0
X-Received: by 10.202.169.194 with SMTP id s185mr3879076oie.35.1456565364636;
 Sat, 27 Feb 2016 01:29:24 -0800 (PST)
Received: by 10.157.40.174 with HTTP; Sat, 27 Feb 2016 01:29:24 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602270858550.2284@localhost6.localdomain6>
References: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.02.1602270858550.2284@localhost6.localdomain6>
Date: Sat, 27 Feb 2016 14:59:24 +0530
Message-ID: <CAOH+1jHKrbf3zxHMfRip=vVMmqdLNHAhXdDV74CUmM2j+d9q_g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Use seq_puts/seq_putc
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113cd81a26c4fc052cbd0df7

--001a113cd81a26c4fc052cbd0df7
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 27, 2016 at 1:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sat, 27 Feb 2016, Bhumika Goyal wrote:
>
> > This patch converts the seq_printf output with constant strings to
> > seq_puts and also use seq_putc for seq_printf(...,"\n").
> > Done using coccinelle:
> >
> > @@
> > identifier a;
> > constant b;
> > @@
> > (
> > - seq_printf(a,"\n");
> > + seq_putc(a,'\n');
> > |
> > - seq_printf(a,b);
> > + seq_puts(a,b);
>
> You sem to get a good nmber of results with the first argument being an
> identifier, but I'm not sure why that has to be the case.  Unless you see
> a reason not to, you could allow it to be an expression.  Note that even
> a->b is not an identifier.  It is an expression.  An identifier is only a
> single word.
>
> julia
>
>
I actually tried using both expression and identifier but got the same
results in this case as I guess the first argument here is always an
identifier. So I used identifier here and I found no more cases for this
semantic patch.

Thanks,
Bhumika

> > )
> >
> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 10 +++++-----
> >  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 17
> ++++++-----------
> >  2 files changed, 11 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > index b56dfb6..a0d8cce 100644
> > --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > @@ -462,19 +462,19 @@ locks: ...... ...... ...... ...... ...... [......
> ...... ...... ...... ......]
> >   */
> >       lu_site_stats_print(&site->cs_lu, m);
> >       cache_stats_print(&site->cs_pages, m, 1);
> > -     seq_printf(m, " [");
> > +     seq_puts(m, " [");
> >       for (i = 0; i < ARRAY_SIZE(site->cs_pages_state); ++i)
> >               seq_printf(m, "%s: %u ", pstate[i],
> >                               atomic_read(&site->cs_pages_state[i]));
> > -     seq_printf(m, "]\n");
> > +     seq_puts(m, "]\n");
> >       cache_stats_print(&site->cs_locks, m, 0);
> > -     seq_printf(m, " [");
> > +     seq_puts(m, " [");
> >       for (i = 0; i < ARRAY_SIZE(site->cs_locks_state); ++i)
> >               seq_printf(m, "%s: %u ", lstate[i],
> >                               atomic_read(&site->cs_locks_state[i]));
> > -     seq_printf(m, "]\n");
> > +     seq_puts(m, "]\n");
> >       cache_stats_print(&cl_env_stats, m, 0);
> > -     seq_printf(m, "\n");
> > +     seq_putc(m, '\n');
> >       return 0;
> >  }
> >  EXPORT_SYMBOL(cl_site_stats_print);
> > diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> > index 28bb4e5..82a1fab 100644
> > --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> > +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> > @@ -584,7 +584,7 @@ static int obd_import_flags2str(struct obd_import
> *imp, struct seq_file *m)
> >       bool first = true;
> >
> >       if (imp->imp_obd->obd_no_recov) {
> > -             seq_printf(m, "no_recov");
> > +             seq_puts(m, "no_recov");
> >               first = false;
> >       }
> >
> > @@ -648,15 +648,10 @@ int lprocfs_rd_import(struct seq_file *m, void
> *data)
> >                    ptlrpc_import_state_name(imp->imp_state),
> >                    imp->imp_connect_data.ocd_instance);
> >       obd_connect_seq_flags2str(m,
> imp->imp_connect_data.ocd_connect_flags, ", ");
> > -     seq_printf(m,
> > -                   " ]\n"
> > -                   "    import_flags: [ ");
> > +     seq_puts(m, " ]\n    import_flags: [ ");
> >       obd_import_flags2str(imp, m);
> >
> > -     seq_printf(m,
> > -                   " ]\n"
> > -                   "    connection:\n"
> > -                   "       failover_nids: [ ");
> > +     seq_puts(m, " ]\n    connection:\n       failover_nids: [ ");
> >       spin_lock(&imp->imp_lock);
> >       j = 0;
> >       list_for_each_entry(conn, &imp->imp_conn_list, oic_item) {
> > @@ -788,7 +783,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
> >
> >       seq_printf(m, "current_state: %s\n",
> >                    ptlrpc_import_state_name(imp->imp_state));
> > -     seq_printf(m, "state_history:\n");
> > +     seq_puts(m, "state_history:\n");
> >       k = imp->imp_state_hist_idx;
> >       for (j = 0; j < IMP_STATE_HIST_LEN; j++) {
> >               struct import_state_hist *ish =
> > @@ -810,7 +805,7 @@ int lprocfs_at_hist_helper(struct seq_file *m,
> struct adaptive_timeout *at)
> >
> >       for (i = 0; i < AT_BINS; i++)
> >               seq_printf(m, "%3u ", at->at_hist[i]);
> > -     seq_printf(m, "\n");
> > +     seq_putc(m, '\n');
> >       return 0;
> >  }
> >  EXPORT_SYMBOL(lprocfs_at_hist_helper);
> > @@ -878,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m,
> void *data)
> >       flags = obd->u.cli.cl_import->imp_connect_data.ocd_connect_flags;
> >       seq_printf(m, "flags=%#llx\n", flags);
> >       obd_connect_seq_flags2str(m, flags, "\n");
> > -     seq_printf(m, "\n");
> > +     seq_putc(m, '\n');
> >       up_read(&obd->u.cli.cl_sem);
> >       return 0;
> >  }
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1456559840-7193-1-git-send-email-bhumirks%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113cd81a26c4fc052cbd0df7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Feb 27, 2016 at 1:29 PM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Sat, 27 Feb 2016, Bhumika Goyal wrote:<br>
<br>
&gt; This patch converts the seq_printf output with constant strings to<br>
&gt; seq_puts and also use seq_putc for seq_printf(...,&quot;\n&quot;).<br>
&gt; Done using coccinelle:<br>
&gt;<br>
&gt; @@<br>
&gt; identifier a;<br>
&gt; constant b;<br>
&gt; @@<br>
&gt; (<br>
&gt; - seq_printf(a,&quot;\n&quot;);<br>
&gt; + seq_putc(a,&#39;\n&#39;);<br>
&gt; |<br>
&gt; - seq_printf(a,b);<br>
&gt; + seq_puts(a,b);<br>
<br>
</span>You sem to get a good nmber of results with the first argument being=
 an<br>
identifier, but I&#39;m not sure why that has to be the case.=C2=A0 Unless =
you see<br>
a reason not to, you could allow it to be an expression.=C2=A0 Note that ev=
en<br>
a-&gt;b is not an identifier.=C2=A0 It is an expression.=C2=A0 An identifie=
r is only a<br>
single word.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>I actually tried using both expression and identifier but got=
 the same results in this case as I guess the first argument here is always=
 an identifier. So I used identifier here and I found no more cases for thi=
s semantic patch. <br><br></div><div>Thanks,<br></div><div>Bhumika <br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
&gt; )<br>
&gt;<br>
&gt; Signed-off-by: Bhumika Goyal &lt;<a href=3D"mailto:bhumirks@gmail.com"=
>bhumirks@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/obdclass/cl_object.c=C2=A0 =C2=A0 =
=C2=A0 | 10 +++++-----<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 17 +++=
+++-----------<br>
&gt;=C2=A0 2 files changed, 11 insertions(+), 16 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/driv=
ers/staging/lustre/lustre/obdclass/cl_object.c<br>
&gt; index b56dfb6..a0d8cce 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c<br>
&gt; +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c<br>
&gt; @@ -462,19 +462,19 @@ locks: ...... ...... ...... ...... ...... [.....=
. ...... ...... ...... ......]<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lu_site_stats_print(&amp;site-&gt;cs_lu, m);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cache_stats_print(&amp;site-&gt;cs_pages, m,=
 1);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot; [&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot; [&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; ARRAY_SIZE(site-&gt;cs_=
pages_state); ++i)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seq_printf(m, &q=
uot;%s: %u &quot;, pstate[i],<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_read(&amp;site-&gt;cs_pages=
_state[i]));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;]\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot;]\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cache_stats_print(&amp;site-&gt;cs_locks, m,=
 0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot; [&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot; [&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; ARRAY_SIZE(site-&gt;cs_=
locks_state); ++i)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seq_printf(m, &q=
uot;%s: %u &quot;, lstate[i],<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_read(&amp;site-&gt;cs_locks=
_state[i]));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;]\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot;]\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cache_stats_print(&amp;cl_env_stats, m, 0);<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_putc(m, &#39;\n&#39;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 EXPORT_SYMBOL(cl_site_stats_print);<br>
&gt; diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b=
/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c<br>
&gt; index 28bb4e5..82a1fab 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c<br>
&gt; +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c<br>
&gt; @@ -584,7 +584,7 @@ static int obd_import_flags2str(struct obd_import =
*imp, struct seq_file *m)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool first =3D true;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (imp-&gt;imp_obd-&gt;obd_no_recov) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;n=
o_recov&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot;no_=
recov&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0first =3D false;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -648,15 +648,10 @@ int lprocfs_rd_import(struct seq_file *m, void *=
data)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p=
tlrpc_import_state_name(imp-&gt;imp_state),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
mp-&gt;imp_connect_data.ocd_instance);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0obd_connect_seq_flags2str(m, imp-&gt;imp_con=
nect_data.ocd_connect_flags, &quot;, &quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
&quot; ]\n&quot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
&quot;=C2=A0 =C2=A0 import_flags: [ &quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot; ]\n=C2=A0 =C2=A0 import_flags:=
 [ &quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0obd_import_flags2str(imp, m);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
&quot; ]\n&quot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
&quot;=C2=A0 =C2=A0 connection:\n&quot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0failover_nids: [ &quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot; ]\n=C2=A0 =C2=A0 connection:\n=
=C2=A0 =C2=A0 =C2=A0 =C2=A0failover_nids: [ &quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;imp-&gt;imp_lock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(conn, &amp;imp-&gt;imp_c=
onn_list, oic_item) {<br>
&gt; @@ -788,7 +783,7 @@ int lprocfs_rd_state(struct seq_file *m, void *dat=
a)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;current_state: %s\n&quot=
;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p=
tlrpc_import_state_name(imp-&gt;imp_state));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;state_history:\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_puts(m, &quot;state_history:\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0k =3D imp-&gt;imp_state_hist_idx;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0; j &lt; IMP_STATE_HIST_LEN; j++=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct import_st=
ate_hist *ish =3D<br>
&gt; @@ -810,7 +805,7 @@ int lprocfs_at_hist_helper(struct seq_file *m, str=
uct adaptive_timeout *at)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; AT_BINS; i++)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seq_printf(m, &q=
uot;%3u &quot;, at-&gt;at_hist[i]);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_putc(m, &#39;\n&#39;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 EXPORT_SYMBOL(lprocfs_at_hist_helper);<br>
&gt; @@ -878,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, v=
oid *data)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0flags =3D obd-&gt;u.cli.cl_import-&gt;imp_co=
nnect_data.ocd_connect_flags;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;flags=3D%#llx\n&quot;, f=
lags);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0obd_connect_seq_flags2str(m, flags, &quot;\n=
&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0seq_printf(m, &quot;\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0seq_putc(m, &#39;\n&#39;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0up_read(&amp;obd-&gt;u.cli.cl_sem);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1456559840-7193-1-git-send-email-bhumirks%=
40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com=
/d/msgid/outreachy-kernel/1456559840-7193-1-git-send-email-bhumirks%40gmail=
.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a113cd81a26c4fc052cbd0df7--

